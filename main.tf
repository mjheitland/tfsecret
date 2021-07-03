module "account_secret" {
  source      = "./module/secret"
  description = "Creating secret to store user name and password of an account"
  name        = "account"
  tags        = var.tags
  value = jsonencode(
    {
      account_username = var.account_username
      account_password = var.account_password
    }
  )
}
