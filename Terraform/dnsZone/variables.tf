#Global vars
variable "subscription_id" {
  type        = string
  description = "Sub id to deploy to"
}

#Resource group vars
variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "dns_zone_name" {
  type        = string
  description = "DNS Zone name"
}

variable "tags" {
  description = "Tags to apply to resource"
  type        = map(string)
  default     = {}
}