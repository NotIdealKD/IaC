variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}
variable "subnet" {
  type        = list(string)
  description = "Address space for the subnet in CIDR notation"
}
variable "vnet_name" {
  type        = string
  description = "Name of the VNET"
}
variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}