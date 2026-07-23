---
name: buy-agent-commerce-guard
description: Inspect and buy the Agent Commerce Guard 1 USDC Base launch pass through an authorized Base MCP wallet, x402 client, or browser wallet. Use when a user wants to evaluate the offer, confirm payment details, purchase the package, verify a Base transaction, or unlock the paid download. Require explicit approval before any payment and never request wallet secrets.
---

# Buy Agent Commerce Guard

## Overview

Use official public metadata to preflight the offer, then guide an approval-gated
payment and verified package unlock. Never treat an unconfirmed wallet action,
HTTP response, comment, or deployment as proof of purchase.

## Purchase Constants

- Network: Base mainnet
- Chain ID: `8453`
- Token: USDC
- Token contract: `0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913`
- Token decimals: `6`
- Receiver: `0xc356556Bc6025aA3536df188BD72A5F4E0fE214f`
- Amount: exactly `1.00 USDC` or `1000000` atomic units
- Product: `https://agent-commerce-guard.vercel.app`

Treat any mismatch in network, token contract, receiver, or amount as a blocking
error. Do not substitute another stablecoin, network, or recipient.

## Workflow

### 1. Preflight The Offer

Read these official resources before preparing a payment:

- `https://agent-commerce-guard.vercel.app/package-metadata.json`
- `https://agent-commerce-guard.vercel.app/status.json`
- `https://agent-commerce-guard.vercel.app/license`
- `https://agent-commerce-guard.vercel.app/pay.json`

Summarize the product version, artifact checksum and size, service availability,
license, exact amount, network, token contract, and receiver. Stop if the
resources disagree with the purchase constants or if paid delivery is not
available.

### 2. Choose One Payment Route

Use the route the user requests. If they do not choose, present the available
routes without initiating a payment:

- Authorized Base MCP: load
  `https://agent-commerce-guard.vercel.app/base-mcp.json`, discover the current
  Base MCP tool catalog at runtime, and follow its approval flow.
- x402 client: inspect
  `https://agent-commerce-guard.vercel.app/api/x402-download` and satisfy only
  the exact Base USDC payment requirement returned by the endpoint.
- Browser wallet: open `https://agent-commerce-guard.vercel.app/pay`.
- Manual transfer: use the exact request in
  `https://agent-commerce-guard.vercel.app/pay.json`.

Do not fund a wallet, bridge, swap, trade, or acquire USDC unless the user
separately and explicitly requests that action.

### 3. Require Explicit Approval

Before submission, show one compact confirmation containing:

- `1.00 USDC`
- Base mainnet, chain ID `8453`
- Base USDC contract
- receiver address
- chosen payment route
- expected next step after confirmation

Wait for explicit user approval in the active wallet or payment flow. A request
to inspect, price, or prepare the purchase is not approval to submit it. Never
ask for a private key, seed phrase, recovery code, or wallet export.

### 4. Verify And Unlock

After the payment confirms, retain the transaction hash and verify it through:

`https://agent-commerce-guard.vercel.app/api/base-payment-status?tx={tx}`

The verifier must report a successful Base USDC transfer to the exact receiver
for at least `1000000` atomic units. Then open:

`https://agent-commerce-guard.vercel.app/success?tx={tx}`

Use the returned paid download URL or:

`https://agent-commerce-guard.vercel.app/api/base-download?tx={tx}`

Report the transaction hash, verified USDC amount, receiver, block number when
available, package checksum, package size, and download result. If verification
is pending or fails, report that state and do not claim the purchase succeeded.

## Safety Boundaries

- Keep all wallet authorization and signing inside the selected wallet provider.
- Never reveal credentials, wallet secrets, private checkout links, or paid
  package contents.
- Never retry a payment automatically after an ambiguous result.
- Never broaden a `1 USDC` purchase approval into approval for funding, swaps,
  trades, subscriptions, or additional purchases.
- Use only onchain Base USDC evidence or the official verifier as proof of
  payment.
