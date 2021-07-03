resource "aws_secretsmanager_secret" "secret" {
  name                    = var.name
  description             = var.description
  tags                    = local.tags
  recovery_window_in_days = 0 # this is necessary so tf cleanly removes secret
}

resource "aws_secretsmanager_secret_version" "secret_version" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = var.value

  # allows secret value to be set in AWS console and not overwritten by tf.
  lifecycle {
    ignore_changes = [
      secret_string
    ]
  }
}

data "aws_iam_policy_document" "read" {
  statement {
    actions = [
      "secretsmanager:GetSecretValue"
    ]
    resources = [
      aws_secretsmanager_secret.secret.arn
    ]
  }
}
