# Agent Commerce Guard Plugin

This GitHub Copilot plugin adds a focused action-review skill for small,
non-sensitive AI-agent commerce manifests.

The skill can review proposed wallet spending, paid API calls, deployments,
token operations, marketplace jobs, destructive commands, billing changes, and
credential access before execution. It returns policy decisions and required
evidence; it does not authorize or execute the proposed actions.

## Data Boundary

The skill uses the policy-only free hosted evaluator at
`https://agent-commerce-guard.vercel.app/api/policy-review`. Its response
contains decisions and required evidence without purchase links or payment
instructions.

Do not submit secrets, credentials, private keys, customer data, private source
code, confidential prompts, or other sensitive material. The endpoint accepts
at most five actions and 20 KB per request.

## Affiliation

The plugin and hosted evaluator are maintained by Jimmy Holman. The plugin is
MIT licensed. The hosted service and any separately offered local package have
their own terms.
