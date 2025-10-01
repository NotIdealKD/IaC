#Location 
variable "location" {
  default = "uksouth"
}
#VNET vars
variable "address_space" {
  type        = set(string)
  description = "Address space for the VNET"
}
variable "resource_group_name" {}
variable "subnet" {
  description = "Address space for the subnet in CIDR notation"
}
variable "vnet_name" {}
variable "subnet_name" {
  description = "Name of the subnet"
}
variable "tags" {
  description = "Tags to apply to resource"
  type        = map(string)
  default     = {}
}