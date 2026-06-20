# Free-Tier Watcher Agent

## Summary
The Watcher Agent monitors all free tiers, assigns jobs, and keeps the OS alive.

## Purpose
Tracking usage of every free tier, assigning offline agents to unused compute, preventing waste, logging everything into BigQuery, triggering Terraform, and routing workloads.

## BigQuery Integration
Writes all usage data into BigQuery:
- `free_tier_usage`
- `free_tier_resets`
- `agent_assignments`
- `cloud_cost_avoidance`

## Terraform Integration
Can trigger Terraform to spin up/destroy free-tier resources, validate plans, detect drift, and enforce IAM policies.

## Monthly Reset Logic
Tracks reset dates (Google, AWS, Azure, etc.) and schedules workloads before reset to harvest unused capacity.

## Offline Agent Assignment
Detects unused compute and assigns OSINT crawls, embedding generation, batch inference, security scans, and BigQuery ingestion.

## Claude Opus Integration
Claude Opus acts as the watcher agent's reasoning engine, anomaly detector, and optimization planner.
