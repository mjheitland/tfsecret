output "arn" {
  value = aws_secretsmanager_secret.secret.arn
}

output "name" {
  value = aws_secretsmanager_secret.secret.name
}

output "read_policy" {
  value = {
    document = data.aws_iam_policy_document.read.json
  }
}
