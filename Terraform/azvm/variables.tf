variable "environment" {
  description = "Environment"
  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be one of: dev, test, prod."
  }
}

variable "resource_group_name" {
  description = "Resource Group we're deploying to"
  type        = string
}

variable "subscription_id" {
}

variable "resource_role" {
  description = "Resource Role"
  type        = string
  nullable    = true
}

variable "ip_configuration" {
  description = "IP configuration settings"
  type = object({
    name           = string
    subnet_id      = string
    pip_allocation = string
    pip_version    = string
  })
}