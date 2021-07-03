variable "tags" {
  type        = map(string)
  description = "tags for secret"
  default     = {}
}

#tfsec:ignore:GEN003
variable "account_username" {
  type = string
  #  sensitive   = true
  description = "account username"
  default     = "CHANGE ME"
}

#tfsec:ignore:GEN003
variable "account_password" {
  type        = string
  sensitive   = true
  description = "account password"
  default     = "CHANGE ME"
}
