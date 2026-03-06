# 📑 Technical Specifications & Resource Allocation

As the IT Lead, I have allocated resources based on a balance of performance and cost-efficiency for our initial startup phase.

### 🖥️ Virtual Machine Inventory
| VM Name | OS | CPU | RAM | Disk | Roles |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **pfSense-GW** | FreeBSD | 2 vCPU | 2 GB | 20 GB | Firewall, DHCP, VPN |
| **n8n-Host** | Ubuntu 22.04 | 2 vCPU | 4 GB | 40 GB | Automation, Docker, Webhooks |
| **vCenter-App** | Photon OS | 4 vCPU | 12 GB | 250 GB | Management (VDC Controller) |
| **DC-01** | Win Server 2022| 2 vCPU | 4 GB | 60 GB | Identity (AD, DNS, Group Policy) |
| **Web-Prod-01** | Ubuntu 22.04 | 2 vCPU | 2 GB | 30 GB | Customer Web Application |

### 💾 Storage Strategy
- **Datastore 1 (SSD):** High-speed storage for Production VMs and the Identity Database.
- **Datastore 2 (HDD):** Mass storage for ISOs and non-critical logs.

### 🔌 Virtual Switch Logic
I am utilizing a **VMware Distributed Switch (vDS)**. This allows the network configuration to persist even if we add a second or third ESXi host to the cluster in the future.
