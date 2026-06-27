# Agent Commerce Guard

Approval gates and receipts for AI agents that can spend money, sell services, post socially, launch tokens, deploy publicly, or touch wallets.

Agent Commerce Guard is a local-first CLI and skill pack for builders adding x402, ACP, wallets, seller runtimes, paid APIs, or social integrations to autonomous agents.

![Agent Commerce Guard preview](https://agent-commerce-guard.vercel.app/og-image.png)

Use the GitHub Sponsor button or the Base payment page to buy the `1 USDC` launch pass.

## Launch Pass

The launch pass is available for `1 USDC` on Base.

- Product page: https://agent-commerce-guard.vercel.app
- Base payment page: https://agent-commerce-guard.vercel.app/base-pay
- Agent x402 download: https://agent-commerce-guard.vercel.app/api/x402-download
- Agent x402 evaluation API: https://agent-commerce-guard.vercel.app/api/x402-evaluate
- Agent-readable offer: https://agent-commerce-guard.vercel.app/offer.json
- Well-known offer: https://agent-commerce-guard.vercel.app/.well-known/agent-commerce-guard.json
- Well-known x402 discovery: https://agent-commerce-guard.vercel.app/.well-known/x402
- Agents manifest: https://agent-commerce-guard.vercel.app/agents.json
- Coding-agent quickstart: https://agent-commerce-guard.vercel.app/AGENTS.md
- Purchase guide: https://agent-commerce-guard.vercel.app/BUY.md
- Machine-readable purchase guide: https://agent-commerce-guard.vercel.app/purchase.json
- Base USDC payment request: https://agent-commerce-guard.vercel.app/payment-request.json
- Well-known payment request: https://agent-commerce-guard.vercel.app/.well-known/payment-request.json
- Mirrored GitHub purchase guide: ./BUY.md
- Mirrored GitHub purchase JSON: ./purchase.json
- Mirrored GitHub payment request JSON: ./payment-request.json
- AI plugin manifest: https://agent-commerce-guard.vercel.app/.well-known/ai-plugin.json
- OpenAPI spec: https://agent-commerce-guard.vercel.app/openapi.json
- Well-known OpenAPI spec: https://agent-commerce-guard.vercel.app/.well-known/openapi.json
- LLM-readable summary: https://agent-commerce-guard.vercel.app/llms.txt
- Social preview image: https://agent-commerce-guard.vercel.app/og-image.png
- Robots/sitemap discovery: https://agent-commerce-guard.vercel.app/robots.txt
- Hosted demo: https://agent-commerce-guard.vercel.app/api/demo-evaluate
- Package unlock: pay with a browser wallet or paste the Base transaction hash after manual payment.
- Current paid package shasum: `9b42b32feb2874363c71d471fe51546ead6980da`

## What It Includes

- CLI policy engine.
- Agent skill pack for Codex, Claude, and OpenClaw-style workflows.
- Approval log and launch checklist templates.
- Action manifest examples.
- Local HTTP evaluator.
- Vercel-gated download flow.
- Hosted demo endpoint that returns sanitized decisions without echoing submitted action text.
- Demo responses include paid purchase metadata and exact x402 next-action commands.
- Agent/plugin manifests for coding-agent, OpenAPI, x402, and LLM discovery.
- Copy-paste purchase guides for x402 agents and manual Base buyers.
- Machine-readable Base USDC payment request with an EIP-681 transfer URI.
- Homepage buyer-command section with exact x402 inspect/pay commands and copy buttons.
- Social preview image wired into OG/Twitter/schema metadata.
- Structured Product/SoftwareApplication metadata on the live homepage for search and crawler discovery.
- IndexNow key route and refreshed submitted URL batch for faster search discovery.
- OpenAPI 3.1 spec for paid and demo endpoints.
- x402 paid package endpoint for agent-native purchase on Base mainnet.
- x402 paid evaluation endpoint for agent-native policy decisions over POSTed action manifests.
- Discovery metadata for agent workflow validation, command-risk scoring, destructive-action review, and wallet-spend approval.
- x402 Bazaar metadata tags: `agent-commerce`, `agent-safety`, `guardrails`, `approval-gates`, `codex`, `x402`.

## Why It Exists

Agent commerce is moving faster than agent governance. This tool blocks or escalates actions that cross financial, production, social, token, or credential boundaries until there is explicit evidence and approval.

## Agent Buyer Flow

1. Read `https://agent-commerce-guard.vercel.app/offer.json`.
2. Open `https://agent-commerce-guard.vercel.app/base-pay` and send `1 USDC` on Base mainnet.
3. Or read `https://agent-commerce-guard.vercel.app/payment-request.json` for the exact manual Base payment request and EIP-681 URI.
4. Verify the transaction at `/api/base-payment-status?tx={tx}`.
5. Download the package at `/api/base-download?tx={tx}`.

Agent buyers can also call `https://agent-commerce-guard.vercel.app/api/x402-download` directly and satisfy the returned x402 payment requirement.

Agent workflows can call `POST https://agent-commerce-guard.vercel.app/api/x402-evaluate` and satisfy the returned x402 payment requirement to receive a sanitized policy decision.

The x402 endpoints return Base-mainnet `exact` payment requirements for `1000000` atomic USDC and include route-level Bazaar metadata for agent discovery.
