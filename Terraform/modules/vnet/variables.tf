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
variable "subnet_01" {}
variable "vnet_name" {}
variable "subnet_name" {}
variable "tags" {
  description = "Tags to apply to resource"
}