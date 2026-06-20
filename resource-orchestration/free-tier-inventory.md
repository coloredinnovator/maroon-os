# Free-Tier Inventory

## Summary
A complete, categorized list of every free tier available to the Maroon OS to power watcher agents, offline agents, and the master agent.

## Purpose
To map and harvest compute, storage, inference, and bandwidth every single month from core cloud providers.

## Free-Tier Categorization

### 1. Google Cloud Free Tier
- Cloud Run: 2M requests/month
- BigQuery: 1 TB query / 10 GB storage
- Cloud Functions: 2M invocations
- Firestore: 1 GiB storage
- Cloud Storage: 5 GB
- Artifact Registry: 500 MB
- Secret Manager: 10k ops
- Vision API: 1k units
- Natural Language API: 5k units
- Translation API: 500k chars
**Agent usage:**
- Offline agents run batch jobs on Cloud Run
- OSINT agents store data in BigQuery
- Skills engine uses Vision/NLP free calls
- Terraform agents deploy infra using free quotas

### 2. AWS Free Tier
- Lambda: 1M requests
- DynamoDB: 25 GB
- S3: 5 GB
- CloudWatch: 10 custom metrics
- EC2: 750 hours t2.micro
- API Gateway: 1M calls
- SageMaker: 250 hours t2.medium notebook
**Agent usage:**
- Attack-simulation agents test API Gateway
- Offline agents run Lambda workflows
- Data agents store OSINT in DynamoDB

### 3. Azure Free Tier
- Functions: 1M requests
- Cosmos DB: 5 GB
- App Service: 10 free apps
- Blob Storage: 5 GB
- Cognitive Services: 5k calls
**Agent usage:**
- Skills engine uses Cognitive Services
- Offline agents run Functions for batch tasks

### 4. Hugging Face Free Tier
- Spaces CPU: Free
- Inference API: Limited free calls
- Model hosting: Unlimited public
- Dataset hosting: Unlimited public
**Agent usage:**
- Offline agents run embeddings
- OSINT agents store datasets
- Master agent uses HF for model routing

### 5. Cloudflare Free Tier
- Workers: 100k requests/day
- KV: 1 GB
- Durable Objects: Free dev tier
- R2: 10 GB
**Agent usage:**
- Edge agents run OSINT scrapers
- Browser agents run through Workers

### 6. Vercel Free Tier
- Serverless: 100 GB-hours
- Edge Functions: 1M invocations
- Blob: 5 GB
**Agent usage:**
- Edge agents deploy micro-skills
- Offline agents run inference at edge

### 7. DigitalOcean Free Tier
- App Platform: Starter free
- Functions: Free tier
- Spaces: 5 GB
**Agent usage:**
- Lightweight agents run DO Functions

### 8. MongoDB Free Tier
- Atlas M0 cluster: 512 MB
**Agent usage:**
- OSINT storage
- Agent logs

### 9. PostHog Free Tier
- 1M events/month
**Agent usage:**
- Agent performance analytics

## How Agents Use This Inventory
- **Offline Agents:** Run embeddings, OSINT crawls, batch inference, dataset generation, security scans, Terraform validation.
- **Watcher Agent:** Tracks usage, assigns workloads, prevents waste, reports to master agent.
- **Master Agent:** Routes workloads to the cheapest free tier, uses Claude Opus for reasoning, writes to BigQuery.\n