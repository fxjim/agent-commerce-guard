# Agent Commerce Guard

Agent Commerce Guard is a 1 USDC Base launch pass for AI-agent commerce approval gates.

Use it before an autonomous agent spends money, calls x402 services, deploys publicly, launches tokens, posts socially, edits billing or production state, runs destructive commands, or touches credentials.

## Buy The Launch Pass

- Live product: https://agent-commerce-guard.vercel.app
- Base checkout: https://agent-commerce-guard.vercel.app/pay
- Checkout alias: https://agent-commerce-guard.vercel.app/checkout
- Short payment verifier: https://agent-commerce-guard.vercel.app/verify?tx={tx}
- Public Gist buyer brief: https://gist.github.com/fxjim/869cada8014dc52f520cccbce655f0eb
- Pages offer mirror: https://fxjim.github.io/agent-commerce-guard/offer.json
- Pages well-known offer mirror: https://fxjim.github.io/agent-commerce-guard/.well-known/agent-commerce-guard.json
- Pages well-known offer alias: https://fxjim.github.io/agent-commerce-guard/.well-known/offer.json
- Short purchase guide: https://agent-commerce-guard.vercel.app/buy
- Purchase guide: https://agent-commerce-guard.vercel.app/BUY.md
- Machine-readable purchase guide: https://agent-commerce-guard.vercel.app/purchase.json
- Short Base payment request: https://agent-commerce-guard.vercel.app/pay.json
- Short scan-to-pay QR: https://agent-commerce-guard.vercel.app/qr
- Vercel LLM summary: https://agent-commerce-guard.vercel.app/llms.txt
- Vercel well-known LLM summary: https://agent-commerce-guard.vercel.app/.well-known/llms.txt
- Pages LLM summary: https://fxjim.github.io/agent-commerce-guard/llms.txt
- Pages well-known LLM summary: https://fxjim.github.io/agent-commerce-guard/.well-known/llms.txt
- Pages agents manifest: https://fxjim.github.io/agent-commerce-guard/agents.json
- Pages singular agent manifest: https://fxjim.github.io/agent-commerce-guard/agent.json
- Pages well-known singular agent manifest: https://fxjim.github.io/agent-commerce-guard/.well-known/agent.json
- Pages AI plugin mirror: https://fxjim.github.io/agent-commerce-guard/.well-known/ai-plugin.json
- Pages OpenAPI mirror: https://fxjim.github.io/agent-commerce-guard/openapi.json
- Pages well-known OpenAPI mirror: https://fxjim.github.io/agent-commerce-guard/.well-known/openapi.json
- Pages package metadata: https://fxjim.github.io/agent-commerce-guard/package-metadata.json
- Pages well-known package metadata: https://fxjim.github.io/agent-commerce-guard/.well-known/package-metadata.json
- Vercel service status: https://agent-commerce-guard.vercel.app/status.json
- Pages service status: https://fxjim.github.io/agent-commerce-guard/status.json
- Pages well-known service status: https://fxjim.github.io/agent-commerce-guard/.well-known/status.json
- Vercel license terms: https://agent-commerce-guard.vercel.app/license
- Pages license mirror: https://fxjim.github.io/agent-commerce-guard/license/
- Pages well-known license mirror: https://fxjim.github.io/agent-commerce-guard/.well-known/license.md
- Pages well-known x402: https://fxjim.github.io/agent-commerce-guard/.well-known/x402
- Pages well-known purchase guide: https://fxjim.github.io/agent-commerce-guard/.well-known/purchase.json
- Pages sitemap: https://fxjim.github.io/agent-commerce-guard/sitemap.xml

The launch pass costs `1 USDC` on Base mainnet and unlocks the packaged CLI, examples, templates, local evaluator, and installable guardrail skill.

## Agent-Native x402

- Paid policy evaluator: `POST https://agent-commerce-guard.vercel.app/api/x402-evaluate`
- Paid package download: `GET https://agent-commerce-guard.vercel.app/api/x402-download`
- Offer mirror: https://fxjim.github.io/agent-commerce-guard/offer.json
- Well-known offer alias: https://fxjim.github.io/agent-commerce-guard/.well-known/offer.json
- Short x402 discovery: https://agent-commerce-guard.vercel.app/x402
- Well-known x402 discovery: https://agent-commerce-guard.vercel.app/.well-known/x402
- AI plugin mirror: https://fxjim.github.io/agent-commerce-guard/.well-known/ai-plugin.json
- OpenAPI spec mirror: https://fxjim.github.io/agent-commerce-guard/openapi.json
- Package metadata: https://agent-commerce-guard.vercel.app/package-metadata.json
- Pages package metadata mirror: https://fxjim.github.io/agent-commerce-guard/package-metadata.json
- Service status: https://agent-commerce-guard.vercel.app/status.json
- Pages service status mirror: https://fxjim.github.io/agent-commerce-guard/status.json
- Inspect evaluator:

```bash
npx awal@2.0.3 x402 details https://agent-commerce-guard.vercel.app/api/x402-evaluate --json
```

Both paid x402 endpoints return Base-mainnet `exact` payment requirements for `1000000` atomic USDC to receiver `0xc356556Bc6025aA3536df188BD72A5F4E0fE214f`.

## What It Includes

- CLI policy engine for action manifests.
- Skill pack for Codex, Claude, and OpenClaw-style workflows.
- Approval log and launch checklist templates.
- Local HTTP evaluator.
- Hosted demo endpoint with sanitized responses.
- Base tx-hash gated download flow.

## Public Links

- GitHub Pages launch page: https://fxjim.github.io/agent-commerce-guard/
- Repository and release notes: https://github.com/fxjim/agent-commerce-guard
- Public Gist buyer brief: https://gist.github.com/fxjim/869cada8014dc52f520cccbce655f0eb
- Launch/support issue: https://github.com/fxjim/agent-commerce-guard/issues/1
- Launch discussion: https://github.com/fxjim/agent-commerce-guard/discussions/2
- GitHub profile launch links: https://github.com/fxjim/fxjim
- Current paid package shasum: `d2dae769092e055b0ea3737e4dfd27a66772ac7a`
