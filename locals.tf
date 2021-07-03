locals {
  account_secret_string = data.aws_secretsmanager_secret_version.account.secret_string
  # returns the value currently stored in AWS SecretsManager, not the one we had initially set in TF
  account_username      = jsondecode(local.account_secret_string)["account_username"]
  # returns the value currently stored in AWS SecretsManager, not the one we had initially set in TF
  account_password      = jsondecode(local.account_secret_string)["account_password"]
}