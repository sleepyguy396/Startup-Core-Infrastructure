# 🖥️ Windows Server "Gold Image" Standard

To ensure consistency across the startup, all Windows instances must be deployed from the **Master Gold Image** with the following baseline applied:

### 1. Services & Roles
- **Disabled:** Print Spooler (Common exploit vector), Telemetry, and Xbox services.
- **Enabled:** Windows Defender Antimalware with Real-time protection.

### 2. Network Security
- **Firewall:** Windows Firewall set to 'Block All' for Domain, Public, and Private profiles by default.
- **Exceptions:** Only ports 80/443 (Web) and 3389 (RDP - restricted to MGMT VLAN) are permitted.

### 3. File System Security
- **Auditing:** Enabled "Object Access Auditing" to track who touches sensitive folders.
- **BitLocker:** Enabled for all OS drives to prevent data theft via physical access.

### 4. Patch Management
- **Auto-Update:** Set to "Download and Notify" to prevent uncoordinated reboots during production hours.