# Buy Agent Commerce Guard

Agent Commerce Guard costs `1 USDC` on Base mainnet.

## Inspect Before Paying

```bash
npx awal@2.0.3 x402 details https://agent-commerce-guard.vercel.app/api/x402-evaluate --json
npx awal@2.0.3 x402 details https://agent-commerce-guard.vercel.app/api/x402-download --json
```

Current package verification metadata:

```text
https://agent-commerce-guard.vercel.app/package-metadata.json
https://agent-commerce-guard.vercel.app/.well-known/package-metadata.json
```

Current service status and exact payment preflight:

```text
https://agent-commerce-guard.vercel.app/status.json
https://agent-commerce-guard.vercel.app/.well-known/status.json
```

LLM-readable product summary:

```text
https://agent-commerce-guard.vercel.app/llms.txt
https://agent-commerce-guard.vercel.app/.well-known/llms.txt
```

Agent-readable manifests:

```text
https://agent-commerce-guard.vercel.app/agents.json
https://agent-commerce-guard.vercel.app/agent.json
https://agent-commerce-guard.vercel.app/.well-known/agent.json
```

Install the free evaluator skill for non-sensitive manifests:

```bash
npx skills add https://agent-commerce-guard.vercel.app --skill try-agent-commerce-guard
npx skills add https://fxjim.github.io/agent-commerce-guard --skill try-agent-commerce-guard
```

Install the approval-gated buyer skill from either owned discovery origin:

```bash
npx skills add https://agent-commerce-guard.vercel.app --skill buy-agent-commerce-guard
npx skills add https://fxjim.github.io/agent-commerce-guard --skill buy-agent-commerce-guard
```

Buyer skill discovery:

```text
https://agent-commerce-guard.vercel.app/.well-known/skills/index.json
https://fxjim.github.io/agent-commerce-guard/.well-known/skills/index.json
```

## Buy With Base MCP

Base MCP purchase recipe:

```text
https://agent-commerce-guard.vercel.app/base-mcp.json
https://agent-commerce-guard.vercel.app/.well-known/base-mcp.json
https://fxjim.github.io/agent-commerce-guard/base-mcp.json
https://fxjim.github.io/agent-commerce-guard/.well-known/base-mcp.json
```

Give an authorized Base MCP assistant this prompt:

```text
Using Base MCP, prepare a transfer of exactly 1 USDC on Base mainnet (chain ID 8453) to 0xc356556Bc6025aA3536df188BD72A5F4E0fE214f. Confirm the token is Base USDC at 0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913 and the atomic amount is 1000000. Follow the current Base MCP approval flow and wait for my explicit approval before submission. After confirmation, return the transaction hash and open https://agent-commerce-guard.vercel.app/success?tx={tx} with {tx} replaced by that hash.
```

## Pay For A Policy Evaluation

```bash
npx awal@2.0.3 x402 pay https://agent-commerce-guard.vercel.app/api/x402-evaluate \
  -X POST \
  --max-amount 1000000 \
  -d '{"action":{"id":"launch-payment","actor":"codex","action":"Send 1 USDC on Base to unlock a paid package","amountUsd":1,"approved":false}}' \
  --json
```

## Pay For The Package Download

```bash
npx awal@2.0.3 x402 pay https://agent-commerce-guard.vercel.app/api/x402-download --max-amount 1000000
```

## Pay With Base Account

The official checkout leads with the Base Account payment control for a one-tap
1 USDC payment on Base mainnet. Review and confirm the payment in Base Account;
the package unlocks only after the returned transaction is verified server-side.

```text
https://agent-commerce-guard.vercel.app/pay
https://agent-commerce-guard.vercel.app/checkout
```

## Browser Wallet Or Manual Base Payment

- Chain: Base mainnet, chain id `8453`
- Token: USDC, `0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913`
- Amount: `1 USDC`
- Receiver: `0xc356556Bc6025aA3536df188BD72A5F4E0fE214f`

Pay with a browser wallet or open the exact payment URI:

```text
https://agent-commerce-guard.vercel.app/pay
https://agent-commerce-guard.vercel.app/checkout
https://agent-commerce-guard.vercel.app/base-pay
```

GitHub Pages launch page:

```text
https://fxjim.github.io/agent-commerce-guard/
```

Public buyer brief:

```text
https://gist.github.com/fxjim/869cada8014dc52f520cccbce655f0eb
```

Machine-readable Base payment request:

```text
https://agent-commerce-guard.vercel.app/pay.json
https://agent-commerce-guard.vercel.app/.well-known/pay.json
https://agent-commerce-guard.vercel.app/payment-request.json
https://agent-commerce-guard.vercel.app/.well-known/payment-request.json
```

Scan-to-pay QR:

```text
https://agent-commerce-guard.vercel.app/qr
https://agent-commerce-guard.vercel.app/payment-request.svg
https://agent-commerce-guard.vercel.app/.well-known/payment-request.svg
```

EIP-681 payment URI:

```text
ethereum:0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913@8453/transfer?address=0xc356556Bc6025aA3536df188BD72A5F4E0fE214f&uint256=1000000
```

After sending USDC, verify and download:

```text
https://agent-commerce-guard.vercel.app/verify?tx={tx}
https://agent-commerce-guard.vercel.app/success?tx={tx}
https://agent-commerce-guard.vercel.app/api/base-payment-status?tx={tx}
https://agent-commerce-guard.vercel.app/api/base-download?tx={tx}
```

## Free Probe

```bash
curl -sS https://agent-commerce-guard.vercel.app/api/demo-evaluate
```

The demo returns sanitized decisions without echoing submitted action text.

## Support

Use the pinned launch/support issue for purchase questions, x402 integration notes, failed wallet flows, or agent manifest requests:

```text
https://github.com/fxjim/agent-commerce-guard/issues/1
```

Launch discussion and product context:

```text
https://github.com/fxjim/agent-commerce-guard/discussions/2
```

## Inbound Agent Handoff

Autonomous agents, TaskMarket runners, and GitHub contributors should either buy through the official public routes above or submit a normal pull request from a fork.

After payment, paste the Base transaction hash into the checkout verifier or the public support issue:

```text
https://agent-commerce-guard.vercel.app/verify?tx={tx}
https://agent-commerce-guard.vercel.app/success?tx={tx}
https://agent-commerce-guard.vercel.app/api/base-payment-status?tx={tx}
https://github.com/fxjim/agent-commerce-guard/issues/1
```

Do not request repo write access, credentials, private keys, wallet seed material, private checkout links, or outbound payment.
