# Data Layer & Warehouse Extensions

## Summary
While BigQuery remains the central intelligence warehouse, these tools extend the data ecosystem.

## Components
- **Snowflake / Databricks**: Advanced data lakehouse capabilities for external client integrations or massive spark workloads.
- **MongoDB**: Used by the Free-Tier Engine for unstructured OSINT storage and agent logs.
- **PostHog**: Product and agent performance analytics. Tracks agent success rates, API latency, and failure domains.

## System Integration
Data Location Mapping Layer ensures seamless synchronization between MongoDB unstructured dumps and structured BigQuery materialized views.\n