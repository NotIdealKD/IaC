variable "location" {
  description = "Azure zone to deploy to"
}
variable "resource_group_name" {
  description = "Name of the resource group to deploy to. Use Output of the rg module where possible"
}
variable "tags" {
  description = "Tags to apply to resource"
  type        = map(string)
  default     = {}
}
variable "accelerated_networking_enabled" {
  description = "Bool to enable accelerated networking"
  default     = true
}
#IP Config Vars
variable "ip_configuration" {
  description = "IP configuration settings"
  type = object({
    name           = string
    subnet_id      = string
    pip_allocation = string
    pip_version    = string
  })
}
#VM vars
variable "vmname" {
  description = "Name of the VM"
}
variable "nic_name" {
  description = "Name of the NIC"
}
variable "os_disk_name" {
  description = "Name of the OS Disk"
}
variable "sku" {
  description = "SKU to be used"
  default     = "Standard_B2s_v2"
}
variable "os_disk_storage_account_type" {
  description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS, Premium_LRS, StandardSSD_ZRS and Premium_ZRS. Changing this forces a new resource to be created"
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
#variable "source_image_reference" {
#  type = object({
#    publisher = string
#    offer = string
#    sku = string
#    version = string
#  })
#}

variable "source_image_reference" {
  type = map(string)
}
#Local admin vars
variable "admin_username" {
  description = "Local admin username"
  type = string
}
variable "admin_password" {
  description = "Local admin account password"
  type = string
  sensitive = true
}