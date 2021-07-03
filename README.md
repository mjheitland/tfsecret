# tfsecret

Setting up a secret to store username and password in AWS SecretsManager.

Username and password have defaults of "CHANGE ME".
After deployment, they have to be changed manually in AWS console. Subsequent deployments won't overwrite the manually changed secret value as we are using 
  lifecycle {
    ignore_changes = [
      secret_string
    ]
  }

Alternative approach for setting secrets:
Set secret values in TF Enterprise or GitLab as environment variables ("TF_VAR_account_username" and "TF_VAR_account_password") and either protect access to these environment variables OR delete them after first deployment.

To suppress GitLab TFSec warnings:
  DETECT_SECRETS_OPTS: "--exclude-lines CHANGE-ME"
