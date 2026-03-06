# 🔄 Phase 5: Backup & Disaster Recovery (DR)

## 🎯 The Objective
To guarantee that the startup's data is indestructible. This phase focuses on the **Recovery Time Objective (RTO)**—the goal is to restore core services within 4 hours of a disaster.

## 🏗️ Implementation Details
- **Local Backups:** Automated snapshots stored on a dedicated "Backup VLAN" (isolated from PROD).
- **Offsite Backups:** Encrypted backups sent to the Cloud (AWS S3) to protect against physical site failure.
- **Automation:** Using VMware PowerCLI to automate snapshots before every maintenance window.

## 🛡️ Recovery Testing (The "Fire Drill")
A backup is useless if it doesn't work. I have established a **Quarterly Restore Test**:
1. Randomly select 2 VMs.
2. Restore them to an isolated "Sandbox VLAN."
3. Verify that the application and database services start correctly.

## 🚀 Key Takeaways
- **Risk Management:** Demonstrated ability to protect company assets against Ransomware and hardware failure.
- **Cloud Integration:** Knowledge of using AWS S3 for secure, immutable offsite storage.
- **PowerCLI Skills:** Using automation to reduce the risk of human error during maintenance.