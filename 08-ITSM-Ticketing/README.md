# 🎫 Phase 8: IT Service Management (ITSM) & Ticketing

## 🎯 The Objective
To move from reactive "firefighting" to organized, audited service delivery. I implemented a ticketing system to ensure every technical issue is documented, categorized, and resolved within a defined Service Level Agreement (SLA).

## 🏗️ Implementation Details
- **Platform:** Peppermint Ticket Management (Self-hosted).
- **Integration:** Connected to our **n8n Automation Hub** (Phase 2). When a high-severity alert triggers in **Wazuh** (Phase 7), n8n automatically opens a **P1 Ticket** for the IT team.
- **Asset Management:** Integrated tracking for startup hardware (MacBooks, Dell Servers, Ubiquiti APs).

## 📊 Business Value
1. **Audit Trail:** Provides a 100% history of system changes, satisfying **SOC2 Compliance** requirements.
2. **Workload Visibility:** Allows the IT Lead to justify additional headcount by showing ticket volume and "Time to Resolve" metrics.
3. **Knowledge Base:** Resolved tickets are converted into "Internal Wiki" articles to reduce repeat issues.

## 🚀 Key Takeaways
- **Operational Excellence:** Demonstrated ability to manage IT like a business unit, not just a lab.
- **Workflow Automation:** Knowledge of the "Alert-to-Ticket" pipeline (SIEM -> n8n -> Helpdesk).
- **Customer Service:** Focus on end-user experience and standardized response times.