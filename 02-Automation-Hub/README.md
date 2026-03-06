# 🤖 Phase 2: Autonomous Infrastructure Monitoring

## 🎯 The Objective
To maintain 99.9% uptime for the startup without manual intervention, I deployed an automation engine (**n8n**) to act as a 24/7 Virtual Junior Admin.

## ⚙️ Implementation
- **Platform:** Dockerized n8n instance on Ubuntu 22.04.
- **Network Placement:** Located in **VLAN 10 (MGMT)** with restricted outbound access.
- **Logic:** The system utilizes a "Heartbeat" mechanism to ping critical production nodes.

## 📈 Featured Workflow: Infrastructure Heartbeat
I created a workflow (see `infrastructure-heartbeat.json`) that:
1. Pings the Production Gateway every 15 minutes.
2. If the response is not `HTTP 200`, it triggers an emergency Webhook to the IT Alert channel.
3. This ensures that the Lead Engineer is notified of an outage before customers report it.

## 🚀 Key Takeaways
- **Scalability:** By using Docker Compose, the entire automation suite can be migrated or scaled across different cloud environments in minutes.
- **Incident Response:** Automation reduces **MTTD (Mean Time to Detect)** by removing the human element from status monitoring.
