# ☁️ Phase 6: Cloud-Native & Hybrid Integration

## 🎯 The Objective
To transform a static data center into a dynamic, scalable **Hybrid Cloud**. This phase ensures that the startup can leverage the infinite scale of AWS while maintaining sensitive data on-premises.

## 🏗️ Implementation Details
- **Infrastructure as Code (IaC):** Used **Terraform** to provision AWS resources, ensuring that our cloud environment is version-controlled and repeatable.
- **Identity Federation:** Configured Single Sign-On (SSO) so that employees can log into the AWS Console using their existing **Active Directory** credentials from Phase 3.
- **Immutable Storage:** Deployed S3 buckets with **Object Lock** to guarantee data integrity against administrative errors or malicious deletion.

## 🛡️ Security Impact
- **Reduced Latency:** Using Route 53 Latency-based routing to send customers to the nearest server.
- **Redundancy:** If the on-prem data center loses power, the AWS-hosted static site acts as a failover.

## 🚀 Key Takeaways for Recruiters
- **Modern Tooling:** Expertise in **Terraform** and Cloud providers (AWS).
- **Hybrid Networking:** Understanding of how to bridge local and cloud environments securely using VPN/Direct Connect.
- **Cost Optimization:** Knowledge of using S3 Lifecycle policies to move old backups to cheaper "Glacier" storage automatically.