#Global vars
variable "subscription_id" {
  description = "Sub id to deploy to"
}
variable "environment" {
  description = "Environment"
  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be one of: dev, test, prod."
  }
}
variable "location" {
  description = "Azure zone. Defaults to UK South"
  default     = "uksouth"
}

#Resource group vars
variable "resource_group_name" {
  default = "Desired name of the resource group for our VM"
}

#VNET vars
variable "address_space" {
  type        = set(string)
  description = "Address space for the VNET"
}
variable "vmsubnet_01" {}
variable "vnet_name" {}
variable "vmsubnet_name" {}

#NSG vars
variable "vmsubnet_01_name" {}