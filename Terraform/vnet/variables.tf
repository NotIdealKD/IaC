#Location 
variable "location" {}
#Resource group vars
variable "resource_group_name" {}
#VNET vars
variable "address_space" {
    type = set(string)
    description = "Address space for the VNET"
}
variable "vmsubnet_01" {}
variable "vnet_name" {}
variable "vmsubnet_name" {}

#NSG vars
variable "vmsubnet_01_name" {}
