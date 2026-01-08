#Location 
variable "location" {
  type        = string
  default     = "uksouth"
  description = "Azure zone to deploy to"
}

#NSG vars
variable "name" {
  type        = string
  description = "Name of the NSG"
}
variable "resource_group_name" {
  type        = string
  description = "Resource Group the NSG will reside in"
}
variable "tags" {
  type        = map(string)
  description = "Tags for the resource"
}