# Offline Agent Workflows

## Summary
Definitions of the agents that run 24/7 harvesting free compute, feeding BigQuery, and improving skills.

## Purpose
These agents are autonomous, scheduled, free-tier powered, non-interactive, Kiro-supervised, BigQuery-connected, and Terraform-aware.

## The 8 Classes of Offline Agents
1. **OSINT Agents**: Crawl the web, scrape public data, track cloud pricing.
2. **Embedding Agents**: Generate embeddings, build semantic indexes on HF free GPUs.
3. **Batch Inference Agents**: Run inference jobs and model distillation.
4. **Security Scan Agents**: Attack infra, simulate DDoS, look for misconfigurations.
5. **Terraform Agents**: Validate plans, detect drift, deploy free-tier infra.
6. **BigQuery Ingestion Agents**: Pull logs, normalize data, load to BQ.
7. **Browser Agents (Forked Chrome)**: Headless browsing, DOM extraction.
8. **IDE Agents (Custom IDE)**: Analyze code, generate docs.

## Kiro Integration
Kiro acts as the "local brain" for offline agents. Kiro plans, decomposes tasks, corrects errors, and selects skills. Offline Agents → Kiro → Master Agent.
