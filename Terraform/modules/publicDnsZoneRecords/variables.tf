variable "records" {
  description = "Map of DNS records to create. Key is the record name, value is an object with record details."
  type = map(object({
    zone_name           = string
    resource_group_name = string
    prefix              = string
    type                = string
    ttl                 = optional(number)
    values              = optional(list(string))
    mx_values = optional(list(object
      ({
        preference = number
        address    = string
    })))
  }))
}

variable "subscription_id" {
  type        = string
  nullable    = true
  description = "Sub ID for the parent_id variable"
}