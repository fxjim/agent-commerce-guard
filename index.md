# Agent Commerce Guard

Agent Commerce Guard is a 1 USDC Base launch pass for AI-agent commerce approval gates.

Use it before an autonomous agent spends money, calls x402 services, deploys publicly, launches tokens, posts socially, edits billing or production state, runs destructive commands, or touches credentials.

## Buy The Launch Pass

- Live product: https://agent-commerce-guard.vercel.app
- Base checkout: https://agent-commerce-guard.vercel.app/pay
- Checkout alias: https://agent-commerce-guard.vercel.app/checkout
- Public Gist buyer brief: https://gist.github.com/fxjim/869cada8014dc52f520cccbce655f0eb
- Short purchase guide: https://agent-commerce-guard.vercel.app/buy
- Purchase guide: https://agent-commerce-guard.vercel.app/BUY.md
- Machine-readable purchase guide: https://agent-commerce-guard.vercel.app/purchase.json
- Short Base payment request: https://agent-commerce-guard.vercel.app/pay.json
- Short scan-to-pay QR: https://agent-commerce-guard.vercel.app/qr
- Pages LLM summary: https://fxjim.github.io/agent-commerce-guard/llms.txt
- Pages agents manifest: https://fxjim.github.io/agent-commerce-guard/agents.json
- Pages package metadata: https://fxjim.github.io/agent-commerce-guard/package-metadata.json
- Pages well-known package metadata: https://fxjim.github.io/agent-commerce-guard/.well-known/package-metadata.json
- Pages well-known x402: https://fxjim.github.io/agent-commerce-guard/.well-known/x402
- Pages well-known purchase guide: https://fxjim.github.io/agent-commerce-guard/.well-known/purchase.json
- Pages sitemap: https://fxjim.github.io/agent-commerce-guard/sitemap.xml

The launch pass costs `1 USDC` on Base mainnet and unlocks the packaged CLI, examples, templates, local evaluator, and installable guardrail skill.

## Agent-Native x402

- Paid policy evaluator: `POST https://agent-commerce-guard.vercel.app/api/x402-evaluate`
- Paid package download: `GET https://agent-commerce-guard.vercel.app/api/x402-download`
- Short x402 discovery: https://agent-commerce-guard.vercel.app/x402
- Well-known x402 discovery: https://agent-commerce-guard.vercel.app/.well-known/x402
- Package metadata: https://agent-commerce-guard.vercel.app/package-metadata.json
- Pages package metadata mirror: https://fxjim.github.io/agent-commerce-guard/package-metadata.json
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
- Current paid package shasum: `8709925719ef6c2c29a913598d181b124f7b7bc0`
