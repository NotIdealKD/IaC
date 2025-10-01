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
  description = "Tags to apply to resource"
  type        = map(string)
  default     = {}
}