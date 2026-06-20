# Master Agent Integration

## Summary
The architectural definition of the Master Agent, the executive intelligence layer of the Maroon OS.

## Purpose
To supervise all agents, delegate tasks, manage clouds/credits, and serve as the brainstem of the ecosystem.

## Core Responsibilities
1. Workload Routing
2. Agent Supervision
3. Kiro Orchestration
4. Claude Opus Oversight
5. Terraform Control
6. BigQuery Intelligence
7. Free-Tier Optimization
8. Credit Allocation
9. Security Oversight
10. OSINT Integration

## Architecture
```
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

## Agent Interactions
- **Kiro**: Strategic planner. Decomposes tasks for the Master Agent to assign.
- **Claude Opus**: Chief architect. Provides reviews, data modeling, and safety checks.

## Control Systems
- **Terraform**: The infra spine. Validated, deployed, and destroyed by the Master Agent.
- **BigQuery**: The memory warehouse. Master Agent reads state, intelligence, and metrics from here.
- **Free Tiers**: Master Agent orchestrates workloads to maximize $0 compute usage.
- **OSINT & Security**: Constantly feeds external signals and internal vulnerability reports to update system strategies.\n