#Global vars
variable "subscription_id" {
  type        = string
  description = "Sub id to deploy to"
}

variable "dns_zones" {
  type = map(object({
    resource_group_name = string
  }))
  description = "DNS Zones"
}

variable "tags" {
  description = "Tags to apply to resource"
  type        = map(string)
  default     = {}
}