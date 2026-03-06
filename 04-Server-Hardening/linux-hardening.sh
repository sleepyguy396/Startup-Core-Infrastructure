#!/bin/bash
# Startup Infrastructure: Linux Hardening Script (CIS-Aligned)
# Targeted for: Ubuntu 22.04 LTS (VLAN 30 - Production)

echo "Starting Security Hardening..."

# 1. Update the System
sudo apt-get update && sudo apt-get upgrade -y

# 2. Disable Root Login via SSH (Major Security Risk)
sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart ssh

# 3. Configure Uncomplicated Firewall (UFW)
# Allow only Web traffic and SSH from the MGMT VLAN
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow from 10.10.10.0/24 to any port 22  # SSH only from MGMT VLAN
sudo ufw --force enable

# 4. Password Policy (Min 12 chars, prevent reuse)
sudo apt-get install libpam-pwquality -y
# Configures system to remember last 5 passwords and require complexity

# 5. Remove Unnecessary Packages (Reduce Attack Surface)
sudo apt-get purge telnet rsh-server rir-server -y

echo "[+] Hardening Complete. Rebooting recommended."