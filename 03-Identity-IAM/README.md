# 🔑 Phase 3: Hardened Identity & Access Management (IAM)

## 🎯 The Objective
As the startup grows, managing individual logins becomes a security risk. I implemented a **Hardened Active Directory Domain** to centralize identity and enforce security policies across the entire enterprise.

## 🏗️ Implementation Details
- **Domain Controller:** Windows Server 2022 (Standard Desktop Experience).
- **Domain Name:** `secure-startup.local`
- **Organizational Units (OUs):** Divided by Department (Engineering, HR, Finance) to allow for granular Group Policy application.

## 🛡️ Security Measures
1. **Automated Onboarding:** Using PowerShell (see `New-StartupUser.ps1`) to ensure every new user starts with **Least Privilege**.
2. **Protocol Hardening:** Disabled legacy protocols (LLMNR, NetBIOS, SMBv1) that are commonly exploited by attackers to intercept credentials.
3. **Password Policy:** Enforced complexity and 12-character minimums to defend against offline cracking.

## 🚀 Key Takeaways
- **Scalability:** The IAM structure supports 5 to 500+ employees without changing the underlying security model.
