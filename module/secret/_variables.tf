variable "name" {
  type        = string
  description = "The name of the Secret."

  validation {
    condition     = can(regex("^[[:alpha:]]+[[:alnum:]-]+[[:alnum:]]+$", var.name))
    error_message = "The name must contain only letters, numbers, or hypen (-). It must start with a letter and cannot end with a hyphen."
  }
}

variable "value" {
  type        = string
  description = "The value of the Secret"
}

variable "description" {
  type        = string
  description = "Description of the Secret"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags for the Secret."
}

locals {
  tags = merge(var.tags, { Name = var.name })
}
