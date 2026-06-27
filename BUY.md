# Buy Agent Commerce Guard

Agent Commerce Guard costs `1 USDC` on Base mainnet.

## Inspect Before Paying

```bash
npx awal@2.0.3 x402 details https://agent-commerce-guard.vercel.app/api/x402-evaluate --json
npx awal@2.0.3 x402 details https://agent-commerce-guard.vercel.app/api/x402-download --json
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
https://agent-commerce-guard.vercel.app/base-pay
```

Machine-readable Base payment request:

```text
https://agent-commerce-guard.vercel.app/payment-request.json
https://agent-commerce-guard.vercel.app/.well-known/payment-request.json
```

Scan-to-pay QR:

```text
https://agent-commerce-guard.vercel.app/payment-request.svg
https://agent-commerce-guard.vercel.app/.well-known/payment-request.svg
```

EIP-681 payment URI:

```text
ethereum:0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913@8453/transfer?address=0xc356556Bc6025aA3536df188BD72A5F4E0fE214f&uint256=1000000
```

After sending USDC, verify and download:

```text
https://agent-commerce-guard.vercel.app/api/base-payment-status?tx={tx}
https://agent-commerce-guard.vercel.app/api/base-download?tx={tx}
```

## Free Probe

```bash
curl -sS https://agent-commerce-guard.vercel.app/api/demo-evaluate
```

The demo returns sanitized decisions without echoing submitted action text.
