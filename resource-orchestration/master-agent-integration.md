# Master Agent Integration

## Summary
The brainstem of the Maroon OS. Ties Kiro, Claude Opus, offline agents, free-tier harvesting, Terraform, BigQuery, OSINT, and infrastructure into one unified system.

## Purpose
The master agent is the executive intelligence layer. It reads all system data, supervises all agents, delegates tasks, and manages free tiers, credits, resources, Terraform, BigQuery, OSINT, Kiro, and Claude Opus.

## Core Responsibilities
1. **Workload Routing**: Decides which cloud, agent, and model to use.
2. **Agent Supervision**: Monitors all offline and specialty agents.
3. **Kiro Orchestration**: Uses Kiro for planning, decomposition.
4. **Claude Opus Oversight**: Uses Claude for architecture and reasoning.
5. **Terraform Control**: Deploys infra, detects drift.
6. **BigQuery Intelligence**: Reads OSINT, logs, metrics.
7. **Free-Tier Optimization**: Ensures zero waste.
8. **Credit Allocation**: Decides when to burn credits.
9. **Security Oversight**: Supervises attack-simulation.
10. **OSINT Integration**: Routes external signals to BQ.

## Architecture
```text
                   ┌──────────────────────────┐
                   │      Claude Opus         │
                   │  (Executive Reasoning)   │
                   └────────────┬─────────────┘
                                │
                                ▼
                   ┌──────────────────────────┐
                   │          Kiro            │
                   │ (Planning + Decomposition)│
                   └────────────┬─────────────┘
                                │
                                ▼
                   ┌──────────────────────────┐
                   │      Master Agent        │
                   │ (Orchestration + Control)│
                   └────────────┬─────────────┘
        ┌────────────────────────┼────────────────────────┐
        ▼                        ▼                        ▼
┌──────────────┐       ┌────────────────┐       ┌────────────────┐
│ Offline Agents│       │ Terraform Layer│       │ BigQuery Layer │
└──────────────┘       └────────────────┘       └────────────────┘
        │                        │                        │
        ▼                        ▼                        ▼
┌──────────────┐       ┌────────────────┐       ┌────────────────┐
│ Free Tiers    │       │ Cloud Providers│       │ OSINT + Data   │
└──────────────┘       └────────────────┘       └────────────────┘
```
