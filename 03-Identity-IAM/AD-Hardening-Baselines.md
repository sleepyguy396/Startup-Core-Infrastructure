## 🔒 Hardening Matrix

| Policy Area | GPO Setting / Configuration | Security Objective (Threat Mitigation) |
| :--- | :--- | :--- |
| **Protocol Security** | Disable LLMNR & NetBIOS over TCP/IP | Prevents **Responder** and **MITM** attacks that intercept local network credentials. |
| **Brute Force** | Account Lockout Threshold: 5 attempts | Mitigates **Online Brute-Force** and dictionary attacks on user passwords. |
| **Obscurity** | Rename Built-in 'Administrator' Account | Makes it significantly harder for automated bots to target the root account. |
| **Privilege Management** | Restricted Groups: Domain Admins | Ensures "Privilege Creep" is avoided by strictly controlling admin group membership. |
| **NTLM Security** | Restrict NTLM: Outgoing traffic to remote servers | Defends against **NTLM Relay** attacks by forcing Kerberos authentication. |
| **User Rights** | Deny Log on through Remote Desktop Services | Applied to non-IT staff to prevent unauthorized RDP lateral movement. |
