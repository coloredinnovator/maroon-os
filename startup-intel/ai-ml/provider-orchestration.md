# AI/ML Provider Orchestration

## Summary
The intelligence layer routing logic for Maroon OS, coordinating between top-tier and open-source models.

## Providers
- **Anthropic (Claude Opus)**: The Chief Executive Reasoning Engine. Handles architecture, security reviews, and master-level decomposition.
- **OpenAI**: Fallback reasoning and generalized NLP processing.
- **Google Vertex AI**: High-throughput, tightly coupled model endpoints for BigQuery data processing.
- **IBM watsonx**: Confidential and highly regulated inference workloads.
- **NVIDIA / Fireworks / Baseten**: High-performance open-source model hosting (e.g., Llama-3, embedding models) and low-latency inference.

## System Integration
**Kiro** handles the routing. Based on token cost, context window requirements, and data privacy constraints, Kiro dynamically assigns inference tasks to the optimal provider.\n