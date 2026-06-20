# Maroon OS Architecture

## Summary
This document provides an overview of the multi-cloud, multi-agent, and Terraform-first infrastructure of the Maroon OS.

## Core Design Principles
1. **Terraform-First**: All infra, IAM, and networks are code. Agents run on Terraform-defined resources.
2. **BigQuery-First**: BigQuery serves as the intelligence warehouse (logs, OSINT, state, metrics).
3. **Agent-Driven**: Offline agents handle the heavy lifting while Kiro, Claude Opus, and the Master Agent coordinate strategy and execution.
4. **Free-Tier Optimized**: Workloads default to free tiers unless a higher credit allocation is authorized.\n