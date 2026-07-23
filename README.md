# Agent Commerce Guard

Approval gates and receipts for AI agents that can spend money, sell services, post socially, launch tokens, deploy publicly, or touch wallets.

Agent Commerce Guard is a local-first CLI and skill pack for builders adding x402, ACP, wallets, seller runtimes, paid APIs, or social integrations to autonomous agents.

![Agent Commerce Guard preview](https://agent-commerce-guard.vercel.app/og-image.png)

[![Agent Skills installs](https://www.skills.sh/b/fxjim/agent-commerce-guard)](https://www.skills.sh/fxjim/agent-commerce-guard/buy-agent-commerce-guard)

Use the GitHub Sponsor button or the Base payment page to buy the `1 USDC` launch pass.

## Install The Buyer Skill

Install the free public buyer workflow for Codex, Claude Code, Cursor, and other
Agent Skills-compatible assistants:

```bash
npx skills add https://github.com/fxjim/agent-commerce-guard --skill buy-agent-commerce-guard
```

The same skill is also available from the canonical product domain:

```bash
npx skills add https://agent-commerce-guard.vercel.app --skill buy-agent-commerce-guard
```

The skill preflights the public offer and requires explicit approval before any
Base Account, Base MCP, x402, browser-wallet, or manual payment. Its source is available at
[`skills/buy-agent-commerce-guard/SKILL.md`](./skills/buy-agent-commerce-guard/SKILL.md).
Its indexed directory page is available on
[skills.sh](https://www.skills.sh/fxjim/agent-commerce-guard/buy-agent-commerce-guard).
The paid product package remains available only after a verified `1 USDC`
payment.

## GitHub Action

Run the free hosted policy preflight in an `ubuntu-latest` workflow:

```yaml
- uses: fxjim/agent-commerce-guard@v1
  with:
    manifest: agent-commerce-actions.json
    fail-on: deny
```

The manifest may be a single action, an action array, or an object with an
`actions` array. The Action sends at most five actions and 20 KB to the public
hosted evaluator, prints sanitized decisions, and can fail on denied actions or
actions requiring review. It rejects obvious secret-bearing JSON keys before
the request.

Do not submit secrets, private source, credentials, or sensitive customer data.
Use the paid local package when an action manifest cannot leave the runner.
See [`examples/github-actions/`](./examples/github-actions/) for a complete
workflow and harmless example manifest.

## Launch Pass

The launch pass is available for `1 USDC` on Base.

- Product page: https://agent-commerce-guard.vercel.app
- GitHub Pages launch page: https://fxjim.github.io/agent-commerce-guard/
- Public Gist buyer brief: https://gist.github.com/fxjim/869cada8014dc52f520cccbce655f0eb
- Short Base checkout: https://agent-commerce-guard.vercel.app/pay
- One-tap Base Account checkout: the official `/pay` page leads with a user-confirmed 1 USDC Base Account payment and verifies the returned transaction server-side before unlock.
- Checkout alias: https://agent-commerce-guard.vercel.app/checkout
- Short payment verifier: https://agent-commerce-guard.vercel.app/verify?tx={tx}
- Success unlock page: https://agent-commerce-guard.vercel.app/success?tx={tx}
- Agent x402 download: https://agent-commerce-guard.vercel.app/api/x402-download
- Agent x402 evaluation API: https://agent-commerce-guard.vercel.app/api/x402-evaluate
- Agent-readable offer: https://agent-commerce-guard.vercel.app/offer.json
- Well-known offer: https://agent-commerce-guard.vercel.app/.well-known/agent-commerce-guard.json
- Well-known offer alias: https://agent-commerce-guard.vercel.app/.well-known/offer.json
- GitHub Pages offer mirror: https://fxjim.github.io/agent-commerce-guard/offer.json
- GitHub Pages well-known offer mirror: https://fxjim.github.io/agent-commerce-guard/.well-known/agent-commerce-guard.json
- GitHub Pages well-known offer alias: https://fxjim.github.io/agent-commerce-guard/.well-known/offer.json
- Short x402 discovery: https://agent-commerce-guard.vercel.app/x402
- Well-known x402 discovery: https://agent-commerce-guard.vercel.app/.well-known/x402
- Package metadata: https://agent-commerce-guard.vercel.app/package-metadata.json
- Well-known package metadata: https://agent-commerce-guard.vercel.app/.well-known/package-metadata.json
- Service status: https://agent-commerce-guard.vercel.app/status.json
- Well-known service status: https://agent-commerce-guard.vercel.app/.well-known/status.json
- License terms: https://agent-commerce-guard.vercel.app/license
- Well-known license terms: https://agent-commerce-guard.vercel.app/.well-known/license.md
- GitHub Pages license mirror: https://fxjim.github.io/agent-commerce-guard/license/
- GitHub Pages well-known license mirror: https://fxjim.github.io/agent-commerce-guard/.well-known/license.md
- Agents manifest: https://agent-commerce-guard.vercel.app/agents.json
- Singular agent manifest alias: https://agent-commerce-guard.vercel.app/agent.json
- Well-known singular agent manifest alias: https://agent-commerce-guard.vercel.app/.well-known/agent.json
- Coding-agent quickstart: https://agent-commerce-guard.vercel.app/AGENTS.md
- Short purchase guide: https://agent-commerce-guard.vercel.app/buy
- Purchase guide: https://agent-commerce-guard.vercel.app/BUY.md
- Machine-readable purchase guide: https://agent-commerce-guard.vercel.app/purchase.json
- Short Base USDC payment request: https://agent-commerce-guard.vercel.app/pay.json
- Well-known short payment request: https://agent-commerce-guard.vercel.app/.well-known/pay.json
- Base MCP purchase recipe: https://agent-commerce-guard.vercel.app/base-mcp.json
- Well-known Base MCP purchase recipe: https://agent-commerce-guard.vercel.app/.well-known/base-mcp.json
- GitHub Pages Base MCP purchase recipe: https://fxjim.github.io/agent-commerce-guard/base-mcp.json
- GitHub Pages well-known Base MCP purchase recipe: https://fxjim.github.io/agent-commerce-guard/.well-known/base-mcp.json
- Public buyer skill: https://github.com/fxjim/agent-commerce-guard/tree/main/skills/buy-agent-commerce-guard
- Canonical buyer-skill index: https://agent-commerce-guard.vercel.app/.well-known/skills/index.json
- GitHub Pages buyer-skill index: https://fxjim.github.io/agent-commerce-guard/.well-known/skills/index.json
- Canonical Base USDC payment request: https://agent-commerce-guard.vercel.app/payment-request.json
- Well-known payment request: https://agent-commerce-guard.vercel.app/.well-known/payment-request.json
- Short scan-to-pay QR: https://agent-commerce-guard.vercel.app/qr
- Canonical scan-to-pay QR: https://agent-commerce-guard.vercel.app/payment-request.svg
- Well-known scan-to-pay QR: https://agent-commerce-guard.vercel.app/.well-known/payment-request.svg
- Mirrored GitHub purchase guide: ./BUY.md
- Mirrored GitHub pay page: ./pay/
- Mirrored GitHub purchase JSON: ./purchase.json
- Mirrored GitHub short payment request JSON: ./pay.json
- Mirrored GitHub payment request JSON: ./payment-request.json
- Mirrored GitHub well-known short payment request JSON: ./.well-known/pay.json
- Mirrored GitHub payment QR SVG: ./payment-request.svg
- Mirrored GitHub service status JSON: ./status.json
- Mirrored GitHub well-known service status JSON: ./.well-known/status.json
- Mirrored GitHub license page: ./license/
- Mirrored GitHub well-known license terms: ./.well-known/license.md
- AI plugin manifest: https://agent-commerce-guard.vercel.app/.well-known/ai-plugin.json
- GitHub Pages AI plugin mirror: https://fxjim.github.io/agent-commerce-guard/.well-known/ai-plugin.json
- OpenAPI spec: https://agent-commerce-guard.vercel.app/openapi.json
- Well-known OpenAPI spec: https://agent-commerce-guard.vercel.app/.well-known/openapi.json
- GitHub Pages OpenAPI mirror: https://fxjim.github.io/agent-commerce-guard/openapi.json
- GitHub Pages well-known OpenAPI mirror: https://fxjim.github.io/agent-commerce-guard/.well-known/openapi.json
- LLM-readable summary: https://agent-commerce-guard.vercel.app/llms.txt
- Well-known LLM summary: https://agent-commerce-guard.vercel.app/.well-known/llms.txt
- GitHub Pages LLM summary: https://fxjim.github.io/agent-commerce-guard/llms.txt
- GitHub Pages agents manifest: https://fxjim.github.io/agent-commerce-guard/agents.json
- GitHub Pages singular agent manifest: https://fxjim.github.io/agent-commerce-guard/agent.json
- GitHub Pages package metadata: https://fxjim.github.io/agent-commerce-guard/package-metadata.json
- GitHub Pages well-known package metadata: https://fxjim.github.io/agent-commerce-guard/.well-known/package-metadata.json
- GitHub Pages service status: https://fxjim.github.io/agent-commerce-guard/status.json
- GitHub Pages well-known service status: https://fxjim.github.io/agent-commerce-guard/.well-known/status.json
- GitHub Pages well-known x402: https://fxjim.github.io/agent-commerce-guard/.well-known/x402
- GitHub Pages well-known agents manifest: https://fxjim.github.io/agent-commerce-guard/.well-known/agents.json
- GitHub Pages well-known singular agent manifest: https://fxjim.github.io/agent-commerce-guard/.well-known/agent.json
- GitHub Pages well-known purchase guide: https://fxjim.github.io/agent-commerce-guard/.well-known/purchase.json
- GitHub Pages sitemap: https://fxjim.github.io/agent-commerce-guard/sitemap.xml
- Social preview image: https://agent-commerce-guard.vercel.app/og-image.png
- Robots/sitemap discovery: https://agent-commerce-guard.vercel.app/robots.txt
- Hosted demo: https://agent-commerce-guard.vercel.app/api/demo-evaluate
- Free GitHub Action: ./action.yml
- Pinned launch/support issue: https://github.com/fxjim/agent-commerce-guard/issues/1
- Public launch discussion: https://github.com/fxjim/agent-commerce-guard/discussions/2
- Package unlock: pay with Base Account or a browser wallet, or paste the Base transaction hash after manual payment.
- Current paid package shasum: `c67fb09bd83da591c58ae5fae002a6a59557fc97`

## What It Includes

- CLI policy engine.
- Agent skill pack for Codex, Claude, and OpenClaw-style workflows.
- Approval log and launch checklist templates.
- Action manifest examples.
- Local HTTP evaluator.
- Vercel-gated download flow.
- Hosted demo endpoint that returns sanitized decisions without echoing submitted action text.
- Free GitHub Action for CI policy preflight with local secret-key rejection and configurable failure behavior.
- Demo responses include paid purchase metadata and exact x402 next-action commands.
- Agent/plugin manifests for coding-agent, OpenAPI, x402, and LLM discovery.
- Copy-paste purchase guides for x402 agents and manual Base buyers.
- Machine-readable Base USDC payment request with an EIP-681 transfer URI.
- Machine-readable payment metadata advertises both `/verify?tx={tx}` and `/success?tx={tx}` as post-payment unlock pages.
- Product-specific Base MCP purchase recipe with exact chain, token, receiver, amount, and explicit approval constraints.
- Free installable buyer skill with preflight, approval, verification, and unlock steps.
- Scan-to-pay SVG QR for mobile wallet payment.
- Homepage buyer-command section with exact x402 inspect/pay commands and copy buttons.
- Social preview image wired into OG/Twitter/schema metadata.
- Structured Product/SoftwareApplication metadata on the live homepage for search and crawler discovery.
- IndexNow key route and refreshed submitted URL batch for faster search discovery.
- Pinned GitHub launch/support issue for buyer questions and x402 integration notes.
- Public GitHub launch discussion for product context and buyer discovery.
- GitHub Pages launch page for search and buyer discovery.
- Public GitHub Gist buyer brief with exact Base/x402 purchase commands.
- GitHub Pages agent-readable mirrors for `llms.txt`, `agents.json`, `agent.json`, `offer.json`, `.well-known/agent-commerce-guard.json`, `.well-known/offer.json`, `openapi.json`, `.well-known/openapi.json`, `.well-known/ai-plugin.json`, `package-metadata.json`, `.well-known/package-metadata.json`, `status.json`, `.well-known/status.json`, `.well-known/x402`, `.well-known/agents.json`, `.well-known/agent.json`, `.well-known/purchase.json`, `pay/`, `robots.txt`, and `sitemap.xml`.
- OpenAPI 3.1 spec for paid and demo endpoints.
- x402 paid package endpoint for agent-native purchase on Base mainnet.
- x402 paid evaluation endpoint for agent-native policy decisions over POSTed action manifests.
- Discovery metadata for agent workflow validation, command-risk scoring, destructive-action review, and wallet-spend approval.
- x402 Bazaar metadata tags: `agent-commerce`, `agent-safety`, `guardrails`, `approval-gates`, `codex`, `x402`.

## Why It Exists

Agent commerce is moving faster than agent governance. This tool blocks or escalates actions that cross financial, production, social, token, or credential boundaries until there is explicit evidence and approval.

## Agent Buyer Flow

1. Read `https://agent-commerce-guard.vercel.app/offer.json`.
2. Open `https://agent-commerce-guard.vercel.app/pay` and use the official Base Account control to review and confirm `1 USDC` on Base mainnet.
3. Or load `https://agent-commerce-guard.vercel.app/base-mcp.json` in an authorized Base MCP assistant, read `https://agent-commerce-guard.vercel.app/pay.json` for the exact manual Base payment request, or scan `https://agent-commerce-guard.vercel.app/qr`.
4. Verify the transaction at `/verify?tx={tx}`, `/success?tx={tx}`, or `/api/base-payment-status?tx={tx}`.
5. Download the package from `/success?tx={tx}` or `/api/base-download?tx={tx}`.

Agent buyers can also call `https://agent-commerce-guard.vercel.app/api/x402-download` directly and satisfy the returned x402 payment requirement.

Agent workflows can call `POST https://agent-commerce-guard.vercel.app/api/x402-evaluate` and satisfy the returned x402 payment requirement to receive a sanitized policy decision.

The x402 endpoints return Base-mainnet `exact` payment requirements for `1000000` atomic USDC and include route-level Bazaar metadata for agent discovery.

Purchase questions, wallet-flow issues, and x402 integration notes can go in the pinned launch/support issue: https://github.com/fxjim/agent-commerce-guard/issues/1.

Launch context and buyer discovery thread: https://github.com/fxjim/agent-commerce-guard/discussions/2.
