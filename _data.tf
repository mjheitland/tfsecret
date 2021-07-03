data "aws_secretsmanager_secret" "account" {
  arn = module.account_secret.arn # data.terraform_remote_state.tfsecret.outputs.account_secret_arn
}

data "aws_secretsmanager_secret_version" "account" {
  secret_id = data.aws_secretsmanager_secret.account.id
}
