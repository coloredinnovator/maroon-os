# Phase 0.5: Intelligence & Sovereignty Layer

## Summary
This layer defines the subsystems that make Maroon independent, powerful, and self-evolving.

## Components
1. **OSINT Intelligence Layer**: Collects public web data, GitHub repos, pricing, and academic signals. Feeds BigQuery and the skills engine.
2. **Data Location Mapping Layer**: Tracks where every piece of data lives across clouds (BigQuery, Cloud Storage, DynamoDB, etc.) for compliance and cost optimization.
3. **Attack Simulation Layer**: Internal red-team agents that stress test APIs, scan IAM, and look for misconfigurations strictly within Terraform-defined infra.
4. **Forked Chrome Agent**: Browser-level agent for headless browsing, DOM extraction, and web automation.
5. **Custom IDE Agent**: Sovereign development environment with built-in Kiro, Claude Opus, skills engine, and agent debugging.
6. **Academic Integration Layer**: Connects to programs (Olympic College, CWU FlexIT) to pull syllabi, reading lists, and labs, mapping them to Maroon skills.

## Connection to Phase 0
- **Free-Tier Engine**: Powers the OSINT, Chrome, and IDE agents.
- **Watcher Agent**: Monitors usage of these tools.
- **Offline Agents**: Execute tasks for these layers.
- **Kiro & Claude Opus**: Plan and review all intelligence tasks.
- **Master Agent**: Routes everything.
- **BigQuery & Terraform**: Stores data and deploys infrastructure.\n