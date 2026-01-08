#Location 
variable "location" {
  type = string
  default = "uksouth"
  description = "Azure zone to deploy to"
}
#VNET vars
variable "address_space" {
  type        = set(string)
  description = "Address space for the VNET"
}
variable "resource_group_name" {
  type = string
  description = "Resource group name"
}
variable "vnet_name" {
  type = string
  description = "Name of the VNET"
}
variable "tags" {
  description = "Tags to apply to resource"
  type        = map(string)
}