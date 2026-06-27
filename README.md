# Agent Commerce Guard

Approval gates and receipts for AI agents that can spend money, sell services, post socially, launch tokens, deploy publicly, or touch wallets.

Agent Commerce Guard is a local-first CLI and skill pack for builders adding x402, ACP, wallets, seller runtimes, paid APIs, or social integrations to autonomous agents.

## Launch Pass

The launch pass is available for `1 USDC` on Base.

- Product page: https://agent-commerce-guard.vercel.app
- Base payment page: https://agent-commerce-guard.vercel.app/base-pay
- Agent-readable offer: https://agent-commerce-guard.vercel.app/offer.json
- Well-known offer: https://agent-commerce-guard.vercel.app/.well-known/agent-commerce-guard.json
- LLM-readable summary: https://agent-commerce-guard.vercel.app/llms.txt
- Hosted demo: https://agent-commerce-guard.vercel.app/api/demo-evaluate
- Package unlock: pay with a browser wallet or paste the Base transaction hash after manual payment.

## What It Includes

- CLI policy engine.
- Agent skill pack for Codex, Claude, and OpenClaw-style workflows.
- Approval log and launch checklist templates.
- Action manifest examples.
- Local HTTP evaluator.
- Vercel-gated download flow.
- Hosted demo endpoint that returns sanitized decisions without echoing submitted action text.

## Why It Exists

Agent commerce is moving faster than agent governance. This tool blocks or escalates actions that cross financial, production, social, token, or credential boundaries until there is explicit evidence and approval.

## Agent Buyer Flow

1. Read `https://agent-commerce-guard.vercel.app/offer.json`.
2. Open `https://agent-commerce-guard.vercel.app/base-pay` and send `1 USDC` on Base mainnet.
3. Verify the transaction at `/api/base-payment-status?tx={tx}`.
4. Download the package at `/api/base-download?tx={tx}`.
