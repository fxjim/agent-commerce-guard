# Agent Commerce Guard

Agent Commerce Guard is a 1 USDC Base launch pass for AI-agent commerce approval gates.

Use it before an autonomous agent spends money, calls x402 services, deploys publicly, launches tokens, posts socially, edits billing or production state, runs destructive commands, or touches credentials.

## Buy The Launch Pass

- Live product: https://agent-commerce-guard.vercel.app
- Base checkout: https://agent-commerce-guard.vercel.app/base-pay
- Purchase guide: https://agent-commerce-guard.vercel.app/BUY.md
- Machine-readable purchase guide: https://agent-commerce-guard.vercel.app/purchase.json
- Base payment request: https://agent-commerce-guard.vercel.app/payment-request.json
- Scan-to-pay QR: https://agent-commerce-guard.vercel.app/payment-request.svg

The launch pass costs `1 USDC` on Base mainnet and unlocks the packaged CLI, examples, templates, local evaluator, and installable guardrail skill.

## Agent-Native x402

- Paid policy evaluator: `POST https://agent-commerce-guard.vercel.app/api/x402-evaluate`
- Paid package download: `GET https://agent-commerce-guard.vercel.app/api/x402-download`
- x402 discovery: https://agent-commerce-guard.vercel.app/.well-known/x402
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

- Repository and release notes: https://github.com/fxjim/agent-commerce-guard
- Launch/support issue: https://github.com/fxjim/agent-commerce-guard/issues/1
- Launch discussion: https://github.com/fxjim/agent-commerce-guard/discussions/2
- GitHub profile launch links: https://github.com/fxjim/fxjim
- Current paid package shasum: `c5649a469eed67b04807e9d2bd5dcc6313df2c2b`
