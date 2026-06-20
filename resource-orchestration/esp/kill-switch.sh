#!/bin/bash
# ==========================================
# EMERGENCY SHUTDOWN PROTOCOL (KILL SWITCH)
# ==========================================
# WARNING: This script will DESTROY all Maroon OS infrastructure.
# Use ONLY in the event of an automated runaway or security breach.

echo "[CRITICAL] EXECUTING EMERGENCY SHUTDOWN PROTOCOL..."

# 1. Apply IAM Quarantine Policy
echo "[1/4] Applying IAM Quarantine Policy..."
gcloud iam policies set-iam-policy maroon-os-project ./iam-quarantine.json --quiet

# 2. Log to BigQuery
echo "[2/4] Logging shutdown event to BigQuery security_findings..."
bq query --use_legacy_sql=false "INSERT INTO \`maroon-os-project.security.security_findings\` (timestamp, event, severity) VALUES (CURRENT_TIMESTAMP(), 'EMERGENCY_SHUTDOWN_TRIGGERED', 'CRITICAL')" || echo "BigQuery logging failed, proceeding anyway."

# 3. Teardown Terraform Infrastructure
echo "[3/4] Forcing Terraform Teardown..."
TERRAFORM_DIRS=(
  "../../maroon-os-infrastructure/terraform/gcp/network"
  "../../maroon-os-infrastructure/terraform/gcp/security"
  "../../maroon-os-infrastructure/terraform/gcp/compute"
)

for dir in "${TERRAFORM_DIRS[@]}"; do
  if [ -d "$dir" ]; then
    echo "Destroying infrastructure in $dir..."
    cd "$dir" || continue
    terraform destroy -auto-approve -lock=false
    cd - > /dev/null
  else
    echo "Directory $dir not found. Skipping."
  fi
done

# 4. Final Confirmation
echo "[4/4] EMERGENCY SHUTDOWN COMPLETE. All active agents neutralized."
echo "Please refer to recovery-manifest.txt if manual cloud provider intervention is required."\n