# 🌐 Phase 1: Virtual Data Center & Network Segmentation

## 🎯 The Objective
The goal of this phase is to establish a **Secure-by-Design** foundation. By moving away from a "flat" network where all devices can see each other, we implement **Micro-segmentation**. This ensures that if a single server (like a web server) is compromised, the attacker cannot reach the core infrastructure or identity databases.

## 🏗️ Logical Network Architecture
I have designed a four-zone architecture using a **pfSense Virtual Appliance** as the core firewall/router.



### 🔢 IP addressing & VLAN Schema
| Zone | VLAN | Subnet | Gateway | Purpose |
| :--- | :--- | :--- | :--- | :--- |
| **MGMT** | 10 | 10.10.10.0/24 | 10.10.10.1 | Infrastructure Management (vCenter, ESXi, n8n) |
| **IDENTITY** | 20 | 10.10.20.0/24 | 10.10.20.1 | Identity & Access Management (Active Directory) |
| **PROD** | 30 | 10.10.30.0/24 | 10.10.30.1 | Customer-facing Web Servers |
| **WAN** | 99 | DHCP/Static | N/A | External Internet Gateway |

---

## 🛡️ Firewall Policy (The Traffic Laws)
We follow a **"Default Deny"** posture. All traffic is blocked by default, and we only open "holes" for specific business needs.

### **Core Security Rules:**
1. **Management Isolation:** VLAN 10 (MGMT) can initiate connections to all other VLANs for administration, but no other VLAN can initiate a connection *into* MGMT.
2. **The "Identity" Gate:** VLAN 30 (PROD) can only talk to VLAN 20 (IDENTITY) on specific ports required for authentication (DNS:53, LDAP:389). All other ports are blocked.
3. **WAN Restriction:** Only the PROD servers and the MGMT update-manager have outbound access to the internet. The Identity server is completely "dark" to the outside world.

---

## ⚙️ VMware vSphere Configuration
To support this architecture, the following vSphere components were configured:
- **Virtual Switches (vSwitch):** Standard/Distributed switches with tagged VLAN trunking.
- **Port Groups:** Created four distinct port groups mapped to the VLAN IDs above.
- **Promiscuous Mode:** Disabled on all port groups to prevent packet sniffing between VMs.
