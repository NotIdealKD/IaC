variable "records" {
  description = "Map of DNS records to create. Key is the record name, value is an object with record details."
  type = map(object({
    zone_name           = string
    resource_group_name = string
    type                = string
    ttl                 = optional(number)
    values              = list(string)
  }))
}

variable "parent_id" {
  type        = string
  description = "Azure DNS zone ID"
}