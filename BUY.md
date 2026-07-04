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

LLM-readable discovery:

```text
https://agent-commerce-guard.vercel.app/llms.txt
https://agent-commerce-guard.vercel.app/.well-known/llms.txt
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

## Manual Base Payment

- Chain: Base mainnet, chain id `8453`
- Token: USDC, `0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913`
- Amount: `1 USDC`
- Receiver: `0xc356556Bc6025aA3536df188BD72A5F4E0fE214f`

Pay with a browser wallet:

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
https://agent-commerce-guard.vercel.app/api/base-payment-status?tx={tx}
https://github.com/fxjim/agent-commerce-guard/issues/1
```

Do not request repo write access, credentials, private keys, wallet seed material, private checkout links, or outbound payment.
