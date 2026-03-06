# ☁️ Hybrid Cloud Architecture

To expand our footprint, I have established a **Site-to-Site VPN** between our on-prem pfSense firewall and the AWS Virtual Private Cloud (VPC).

### 🛰️ Connectivity Details
- **On-Prem:** pfSense (10.10.0.0/16)
- **Cloud:** AWS VPC (172.16.0.0/16)
- **Tunnel:** IPsec VPN (AES-256 Encryption)



### 🛠️ Cloud-Native Services Utilized
1. **AWS S3:** Offsite, immutable backup storage.
2. **AWS Route 53:** Global DNS management with health checks.
3. **AWS IAM:** Integrated with our On-Prem Active Directory via **SAML 2.0 (SSO)**.