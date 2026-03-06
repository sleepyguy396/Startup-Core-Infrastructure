# 🛡️ Phase 7: Security Operations Center (SOC) & SIEM

## 🎯 The Objective
Infrastructure is a target from the moment it goes live. I implemented **Wazuh (SIEM)** to provide total visibility into the startup's security posture, enabling real-time threat detection and incident response.

## 🏗️ Implementation Details
- **Wazuh Manager:** Deployed in the **SEC-OPS VLAN**, acting as the central "brain" for log analysis.
- **Agent Deployment:** Lightweight agents are installed on all Web Servers (Linux) and Domain Controllers (Windows).
- **File Integrity Monitoring (FIM):** Configured to alert if any core system files on our "Gold Images" are modified.

## 🚨 Incident Response Workflow
When a high-severity alert (Level 12+) is triggered:
1. **Detection:** Wazuh identifies the anomaly (e.g., Brute Force).
2. **Alerting:** An API call is sent to our **n8n Automation Hub** (from Phase 2).
3. **Notification:** n8n sends an emergency alert to the security team via Discord/Slack.
4. **Active Response:** Wazuh is configured to automatically block the attacker's IP at the pfSense firewall level for 60 minutes.

## 🚀 Key Takeaways for Recruiters
- **Security Visibility:** Demonstrated ability to monitor and defend a multi-VLAN environment.
- **Log Management:** Experience with centralized logging and SIEM dashboards.
- **Automated Defense:** Knowledge of "Active Response" to mitigate attacks without human intervention.