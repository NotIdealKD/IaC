variable "environment" {
  description = "Environment"
  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be one of: dev, test, prod."
  }
}

variable "resource_group_name" {
  description = "Resource Group we're deploying to"
  type = string
}

variable "vmname" {
  description = "Name of our VM"
  type = string
}