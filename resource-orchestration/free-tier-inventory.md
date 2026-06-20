# Free-Tier Inventory

## Summary
A complete list of every free tier across all core cloud providers.

## Purpose
This is the list your watcher agents, offline agents, and master agent will use to harvest compute, storage, inference, and bandwidth every single month.

## Google Cloud Free Tier
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
Offline agents run batch jobs on Cloud Run, OSINT agents store data in BigQuery.

## AWS Free Tier
- Lambda: 1M requests
- DynamoDB: 25 GB
- S3: 5 GB
- CloudWatch: 10 custom metrics
- EC2: 750 hours t2.micro
- API Gateway: 1M calls

**Agent usage:**
Attack-simulation agents test API Gateway, offline agents run Lambda workflows.

## Azure Free Tier
- Functions: 1M requests
- Cosmos DB: 5 GB
- App Service: 10 free apps
- Blob Storage: 5 GB

**Agent usage:**
Skills engine uses Cognitive Services.

## Hugging Face Free Tier
- Spaces CPU: Free
- Model hosting: Unlimited public
- Dataset hosting: Unlimited public

**Agent usage:**
Offline agents run embeddings.

## Cloudflare Free Tier
- Workers: 100k requests/day
- KV: 1 GB
- R2: 10 GB

**Agent usage:**
Edge agents run OSINT scrapers.

## Vercel Free Tier
- Serverless: 100 GB-hours
- Edge Functions: 1M invocations
- Blob: 5 GB

## DigitalOcean, MongoDB, PostHog
Tracked similarly for OSINT storage, lightweight functions, and analytics.
