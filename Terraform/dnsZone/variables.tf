#Global vars
variable "subscription_id" {
  description = "Sub id to deploy to"
}
variable "environment" {
  description = "Environment"
  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be one of: dev, test, prod."
  }
}

#Resource group vars
variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "dns_zone_name" {
  type = string
  description = "DNS Zone name"
}

variable "tags" {
  description = "Tags to apply to resource"
  type        = map(string)
  default     = {}
}