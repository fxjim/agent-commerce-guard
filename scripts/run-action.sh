#!/usr/bin/env bash
set -euo pipefail

readonly endpoint="https://agent-commerce-guard.vercel.app/api/demo-evaluate"
readonly checkout_url="https://agent-commerce-guard.vercel.app/pay"
readonly x402_evaluate_url="https://agent-commerce-guard.vercel.app/api/x402-evaluate"
readonly max_body_bytes=20000
readonly max_actions=5

fail() {
  printf '::error title=Agent Commerce Guard::%s\n' "$1" >&2
  exit 1
}

manifest="${ACG_MANIFEST:-agent-commerce-actions.json}"
fail_on="${ACG_FAIL_ON:-deny}"

case "$fail_on" in
  deny|review|never) ;;
  *) fail "fail-on must be deny, review, or never." ;;
esac

if [[ "$manifest" = /* ]]; then
  manifest_path="$manifest"
else
  manifest_path="${GITHUB_WORKSPACE:-$PWD}/$manifest"
fi

[[ -f "$manifest_path" ]] || fail "Manifest not found: $manifest"
command -v curl >/dev/null 2>&1 || fail "curl is required."
command -v jq >/dev/null 2>&1 || fail "jq is required."

body_bytes="$(wc -c < "$manifest_path" | tr -d '[:space:]')"
[[ "$body_bytes" =~ ^[0-9]+$ ]] || fail "Could not measure manifest size."
(( body_bytes <= max_body_bytes )) ||
  fail "Manifest exceeds the ${max_body_bytes}-byte hosted-demo limit."

jq -e . "$manifest_path" >/dev/null 2>&1 || fail "Manifest must contain valid JSON."

action_count="$(
  jq -r '
    if type == "array" then length
    elif (.actions? | type) == "array" then .actions | length
    elif (.action? | type) == "array" then .action | length
    else 1
    end
  ' "$manifest_path"
)"
[[ "$action_count" =~ ^[0-9]+$ ]] || fail "Could not count manifest actions."
(( action_count >= 1 && action_count <= max_actions )) ||
  fail "Manifest must contain between 1 and ${max_actions} actions."

sensitive_keys="$(
  jq -r '
    [
      .. | objects | keys[]?
      | select(ascii_downcase | test("password|secret|token|private.?key|seed|credential|api.?key"))
    ]
    | unique
    | join(", ")
  ' "$manifest_path"
)"
[[ -z "$sensitive_keys" ]] ||
  fail "Manifest contains sensitive-looking keys and was not sent: $sensitive_keys"

response_file="$(mktemp)"
trap 'rm -f "$response_file"' EXIT

http_code="$(
  curl \
    --silent \
    --show-error \
    --connect-timeout 10 \
    --max-time 30 \
    --retry 2 \
    --retry-all-errors \
    --output "$response_file" \
    --write-out '%{http_code}' \
    --request POST \
    --header 'content-type: application/json' \
    --data-binary "@$manifest_path" \
    "$endpoint"
)"

if [[ "$http_code" != "200" ]]; then
  printf 'Hosted evaluator returned HTTP %s.\n' "$http_code" >&2
  jq . "$response_file" 2>/dev/null || cat "$response_file" >&2
  fail "Hosted evaluator request failed."
fi

jq -e '
  .demo == true
  and (.summary | type == "object")
  and (.results | type == "array")
' "$response_file" >/dev/null 2>&1 ||
  fail "Hosted evaluator returned an unexpected response."

allow="$(jq -r '.summary.allow // 0' "$response_file")"
review="$(jq -r '.summary.review // 0' "$response_file")"
deny="$(jq -r '.summary.deny // 0' "$response_file")"

for count in "$allow" "$review" "$deny"; do
  [[ "$count" =~ ^[0-9]+$ ]] || fail "Hosted evaluator returned invalid counts."
done

if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
  {
    printf 'allow=%s\n' "$allow"
    printf 'review=%s\n' "$review"
    printf 'deny=%s\n' "$deny"
    printf 'checkout-url=%s\n' "$checkout_url"
    printf 'x402-evaluate-url=%s\n' "$x402_evaluate_url"
  } >> "$GITHUB_OUTPUT"
fi

if [[ -n "${GITHUB_STEP_SUMMARY:-}" ]]; then
  {
    printf '## Agent Commerce Guard preflight\n\n'
    printf '| Decision | Count |\n'
    printf '| --- | ---: |\n'
    printf '| Allow | %s |\n' "$allow"
    printf '| Review | %s |\n' "$review"
    printf '| Deny | %s |\n\n' "$deny"
    printf '[Buy the private local package for 1 USDC](%s) | [Use the paid x402 evaluator](%s)\n' \
      "$checkout_url" "$x402_evaluate_url"
  } >> "$GITHUB_STEP_SUMMARY"
fi

jq '{demo, summary, results}' "$response_file"

case "$fail_on" in
  deny)
    (( deny == 0 )) || fail "${deny} action(s) were denied."
    ;;
  review)
    (( deny == 0 && review == 0 )) ||
      fail "${review} action(s) require review and ${deny} action(s) were denied."
    ;;
  never)
    ;;
esac
