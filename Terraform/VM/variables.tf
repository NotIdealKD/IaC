#Global vars
variable "location" {}
#Resource group vars
variable "resource_group_name" {}
#VNET vars
variable "address_space" {
    type = set(string)
    description = "Address space for the VNET"
    default = ["10.10.0.0/22"]
}
variable "vmsubnet_01" {}
variable "vnet_name" {}
