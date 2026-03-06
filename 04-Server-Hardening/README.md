# 🛡️ Phase 4: Server Hardening & Gold Images

## 🎯 The Objective
To eliminate "Configuration Drift" and ensure that every server deployed is secure by default. By using a **Gold Image** strategy, I have created a repeatable, hardened baseline for both Linux (Production) and Windows (Core Services).

## 🏗️ Implementation Details
- **Linux Baseline:** CIS-aligned Bash script that handles SSH hardening, UFW firewalling, and package cleanup.
- **Windows Baseline:** Hardened template with disabled vulnerable services and enforced BitLocker encryption.

## 🛡️ Security Impact
By automating the hardening process:
1. **Reduced Attack Surface:** 60% fewer open ports and services compared to a standard install.
2. **Standardization:** Any server in the `PROD` or `IDENTITY` zones follows the exact same security protocols.
3. **Audit Ready:** Documentation provides a clear paper trail for future security audits.

## 🚀 Key Takeaways
- **Infrastructure as Code (IaC):** Demonstrated ability to use scripting (Bash) to enforce security policies.
