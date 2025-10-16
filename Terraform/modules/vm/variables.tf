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
variable "os_disk_storage_account_type" {
  description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS, Premium_LRS, StandardSSD_ZRS and Premium_ZRS. Changing this forces a new resource to be created."
  default = "Standard_LRS"
}
variable "os_disk_caching" {
  description = "Disk caching type"
  default = "ReadWrite"
  type = string
}
variable "secure_boot_enabled" {
  description = "Enable secure boot"
  type = bool
  default = false
}
#Image variables
variable "image_publisher" {
  description = "Publisher e.g. MicrosoftWindowsServer"
}
variable "image_offer" {
  description = "Offer e.g. WindowsServer"
}
variable "image_sku" {
  description = "SKU to use e.g. 2025-datacenter or 2025-datacenter-azure-edition"
}
variable "image_version" {
  description = "Version of the image to use. Accepts 'latest'"
}
