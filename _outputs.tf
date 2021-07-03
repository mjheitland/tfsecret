output "account_secret_arn" {
  value = module.account_secret.arn
}

output "account_secret_name" {
  value = module.account_secret.name
}

output "account_read_policy" {
  value = module.account_secret.read_policy
}

# returns the value currently stored in AWS SecretsManager, not the one we had initially set in TF
output "account_username" {
  value = local.account_username
}

# returns the value currently stored in AWS SecretsManager, not the one we had initially set in TF
# we should not output sensitive values, these lines are here only for testing purposes!
# output "account_password" {
#   value = local.account_password
# }