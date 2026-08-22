# Interactive Bash Wizards & Scripting (`wizard`)

## When to Generate a Wizard
For manual, human-only tasks:
- Provisioning cloud infrastructure (AWS/GCP/Vercel).
- Setting up OAuth clients, Stripe API keys, or webhooks.
- Navigating third-party vendor dashboards.
- One-off production database cutovers.

## Wizard Architecture Invariants
1. **Secret Masking**: Use `read -s` for secret tokens so they are never printed in plaintext terminal logs.
2. **URL Openers**: Automatically launch browser URLs (`xdg-open`, `open`, or `start`) directly to the target configuration page.
3. **Step-by-Step Verification**: Verify each prerequisite before proceeding to the next step.
