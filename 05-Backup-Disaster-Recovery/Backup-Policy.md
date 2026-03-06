# 💾 Startup Backup & Data Retention Policy

## 🎯 The 3-2-1 Strategy
To ensure maximum resiliency, the startup follows the industry-standard 3-2-1 rule:
1. **3 Copies of Data:** (1 Primary + 2 Backups).
2. **2 Different Media:** (Local SSD Datastore + NAS/Network Storage).
3. **1 Offsite Copy:** (Encrypted AWS S3 Bucket with Object Lock).

## 📅 Backup Schedule
| Data Type | Frequency | Retention | Method |
| :--- | :--- | :--- | :--- |
| **Active Directory** | Daily (Incremental) | 30 Days | Windows Server Backup |
| **SQL Databases** | Hourly (Transaction Log) | 7 Days | Scripted SQL Dump |
| **vSphere VMs** | Weekly (Full Image) | 90 Days | Veeam / vSphere Snapshots |

## 🛡️ Ransomware Protection: "Immutable Backups"
Our offsite backups in AWS S3 utilize **Object Lock**. This means once a backup is uploaded, it cannot be deleted or encrypted by anyone (even an admin) for 30 days. This is our ultimate defense against Ransomware.