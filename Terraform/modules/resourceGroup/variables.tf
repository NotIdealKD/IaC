#Location 
variable "location" {
  description = "Azure Zone. Default to UK South"
  default = "uksouth"
}

#Resource group vars
variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "tags" {
  
}