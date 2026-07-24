# Agent Commerce Guard Report

Summary: 2 allow, 0 review, 2 deny.

| ID | Decision | Severity | Findings |
| --- | --- | --- | --- |
| wallet-status | ALLOW | low | none |
| x402-paid-api | DENY | high | financial_action |
| token-launch | DENY | critical | token_launch |
| landing-draft | ALLOW | low | none |

## wallet-status: ALLOW

Reasons:
- Read-only or dry-run action; safe to run when output avoids secrets.

## x402-paid-api: DENY

Reasons:
- Action declares a non-zero amount or budget.
- Missing explicit approval for financial_action.

Required Evidence:
- Exact outbound action text or command
- User/operator approval timestamp
- Rollback or kill-switch path
- Wallet/account/profile summary before and after
- Spend, slippage, or downside scenario

## token-launch: DENY

Reasons:
- Creates or launches a token, which has compliance and reputational risk.
- Missing explicit approval for token_launch.

Required Evidence:
- Exact outbound action text or command
- User/operator approval timestamp
- Rollback or kill-switch path
- Wallet/account/profile summary before and after
- Spend, slippage, or downside scenario

## landing-draft: ALLOW

Reasons:
