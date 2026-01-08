#Global vars
variable "subscription_id" {
  type = string
  description = "Sub id to deploy to"
}
variable "environment" {
  type = string
  description = "Environment"
  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be one of: dev, test, prod."
  }
}
variable "location" {
  type = string
  description = "Azure zone. Defaults to UK South"
  default     = "uksouth"
}

#Resource group vars
variable "resource_group_name" {
  type = string
  default = "Desired name of the resource group for our VM"
}

#VNET vars
variable "address_space" {
  type        = set(string)
  description = "Address space for the VNET"
}
variable "vnet_name" {
  type = string
  description = "Name of the VNET"
}

#Subnet vars
variable "vmsubnet_name" {
  type = string
  description = "Name of the subnet"
}
variable "vmsubnet_01" {
  type = tuple([string])
  description = "Subnet CIDR range"
}