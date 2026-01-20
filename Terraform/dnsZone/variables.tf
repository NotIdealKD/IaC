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

variable "dns_records" {
  type = map(object({
    zone_name           = string
    resource_group_name = string
    type                = string
    ttl                 = optional(number, 300)
    values              = list(string)
  }))
  description = "Map of all DNS records to deploy to the zone"
}

variable "tags" {
  description = "Tags to apply to resource"
  type        = map(string)
  default     = {}
}