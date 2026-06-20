# Emergency Shutdown Protocol (ESP)

## Summary
A platform-agnostic, manual fail-safe procedure designed to instantly terminate all cloud resources, revoke IAM permissions, and isolate agent environments in the event of a catastrophic system failure or security compromise.

## Purpose
To provide a non-AI-dependent "circuit breaker" that allows the human operator (you) to regain control of the infrastructure without relying on the Master Agent or any automated Terraform workflows that may themselves be compromised.

## Architecture
This is a "Glass-Break" protocol consisting of a pre-compiled bash script (`kill-switch.sh`) stored locally on your development machine and an emergency IAM policy (`iam-quarantine.json`) stored in a read-only, non-agent-accessible location.

## Components
- **kill-switch.sh**: A shell script that runs `terraform destroy -auto-approve` across all protected workspaces using a hardcoded, highly privileged service account key.
- **iam-quarantine.json**: An IAM policy that denies all AssumeRole and CreateResource permissions for all service accounts associated with Maroon OS agents.
- **recovery-manifest.txt**: A plaintext file containing contact details for cloud provider support (GCP/AWS/Azure) for emergency account suspension.

## Data Flows
- **Trigger**: Manual execution of `kill-switch.sh` by the developer.
- **Action**: Script cycles through `/infrastructure/terraform/` directories, forcing an infrastructure teardown.
- **Log**: Sends a final "EMERGENCY_SHUTDOWN" pulse to the BigQuery `security_findings` dataset if connectivity permits.

## Agent Interactions
- **Watcher Agent**: Automatically disabled during the execution of this protocol.
- **Master Agent**: Denied all access via the `iam-quarantine.json` policy.

## Skills Required
- Infrastructure-as-Code
- IAM-Administration
- Terraform Integration

*The `kill-switch.sh` script ignores state locks (using `-force` flags) to ensure teardown succeeds even if the state is locked by a runaway agent process.*

## BigQuery Integration
Logs the exact timestamp, triggering user ID, and cloud provider scope of the shutdown to the `security_findings` table for post-mortem analysis.

## Free-Tier Usage
N/A (This is a safety protocol, not a service component).

## Credit Usage
N/A (This is a safety protocol).

## Security
- **Air-Gapped Access**: The `kill-switch.sh` script should be stored on a local, encrypted drive, not in your GitHub repository.
- **IAM Isolation**: The service account used for this script must never be utilized by any of the agents. It is the "Admin of last resort."

## Future Expansion
- Automated notification hooks (SMS/Email) to the founder via Twilio/SendGrid immediately upon execution.
- Integration with "Offline Agent" to dump current memory states into a secure bucket before destruction.\n