#Location 
variable "location" {}
#VNET vars
variable "address_space" {
  type        = set(string)
  description = "Address space for the VNET"
}
variable "resource_group_name" {}
variable "vmsubnet_01" {}
variable "vnet_name" {}
variable "vmvnet_name" {}
variable "vmsubnet_name" {}