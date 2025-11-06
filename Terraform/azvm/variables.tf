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

variable "vm_name_prefix" {
  description = "VM name prefix"
  type        = string
  default     = "WIN"
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