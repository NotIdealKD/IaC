variable "location" {
  description = "Azure zone to deploy to"
}
variable "resource_group_name" {
  description = "Name of the resource group to deploy to. Use Output of the rg module where possible"
}
variable "accelerated_networking_enabled" {
  description = "Bool to enable accelerated networking"
  default     = true
}
variable "tags" {
  description = "Tags to apply to the object"
}
#IP Config Vars
variable "ip_configuration" {
  description = "IP configuration settings"
  type = object({
    name           = string
    subnet_id      = string
    pip_allocation = string
    pip_version    = string("IPv4")
  })
}
#VM vars
variable "vmname" {
  description = "Name of the VM"
}
variable "sku" {
  description = "SKU to be used"
  default     = "Standard_B2s_v2"
}