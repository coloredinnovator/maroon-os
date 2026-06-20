# Free-Tier Watcher Agent

## Summary
The Free-Tier Watcher Agent monitors all free tiers, assigns jobs, and ensures continuous operation of the Maroon OS.

## Purpose
Acts as the resource brainstem, ensuring zero waste of available monthly free compute quotas.

## Responsibilities
- Tracking usage of every free tier
- Tracking reset cycles
- Assigning offline agents to use unused compute
- Preventing waste
- Logging everything into BigQuery
- Reporting to the master agent
- Triggering Terraform when infra needs to be created or destroyed
- Routing workloads to the cheapest available free tier

## BigQuery Integration
Writes all usage data into BigQuery:
- `free_tier_usage`
- `free_tier_resets`
- `agent_assignments`
- `resource_efficiency`
- `cloud_cost_avoidance`

## Terraform Integration
- Trigger Terraform to spin up free-tier resources
- Trigger Terraform to destroy unused resources
- Validate Terraform plans
- Detect drift
- Enforce IAM policies

## Monthly Reset Logic
Tracks reset dates across providers (monthly, daily, always-on) and schedules workloads before resets to ensure no compute is wasted.

## Offline Agent Assignment Logic
Assigns tasks to offline agents when unused compute is detected (OSINT crawls, embeddings, etc.).

## Master Agent Reporting
Reports metrics and statuses to the Master Agent, which routes workloads and improves skills.

## Security & Isolation
Never touches production, interacts only with free-tier resources using Terraform-defined IAM roles, and logs everything to BigQuery.

## Claude Opus Integration
Claude Opus acts as the watcher agent’s reasoning engine, anomaly detector, and optimization planner.\n