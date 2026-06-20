# Offline Agent Workflows

## Summary
Definitions of the offline autonomous agents that harvest compute, feed BigQuery, and improve the system.

## Purpose
To run 24/7 background tasks utilizing free compute without human input.

## Characteristics
- Autonomous
- Scheduled
- Free-tier powered
- Non-interactive
- Task-oriented
- Kiro-supervised
- BigQuery-connected
- Terraform-aware

## The 8 Classes of Offline Agents
1. **OSINT Agents**: Crawl web, scrape data, monitor repos and pricing. Feed BigQuery.
2. **Embedding Agents**: Generate embeddings, store vectors, build semantic indexes on HF free GPUs.
3. **Batch Inference Agents**: Run inference jobs, distill models using Cloud Run/HF Spaces.
4. **Security Scan Agents**: Attack own infra, test APIs, look for misconfigurations.
5. **Terraform Agents**: Validate plans, detect drift, enforce IAM, deploy free-tier infra.
6. **BigQuery Ingestion Agents**: Pull logs, metrics, OSINT, and load into BigQuery.
7. **Browser Agents (Forked Chrome)**: Run headless Chrome, capture screenshots, extract DOM.
8. **IDE Agents (Custom IDE)**: Analyze code, suggest improvements, feed skills engine.

## Kiro Integration
Kiro is the reasoning layer for all offline agents. It provides planning, decomposition, and supervision. Kiro sits between Offline Agents and the Master Agent.

## BigQuery & Terraform Integration
All agents write their outputs (logs, results, metrics, drift) to BigQuery and use Terraform to provision and validate their sandboxed environments.\n