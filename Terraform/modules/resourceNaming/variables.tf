variable "prefix" {
  type        = string
  description = "Resource name prefix indicating environment"
  validation {
    condition     = contains(["dev", "test", "prod"], var.prefix)
    error_message = "Prefix not one of dev, test, prod"
  }
}
variable "resource_type" {
  type        = string
  description = "Resource type"
}
variable "resource_role" {
  type        = string
  description = "Resouce role"
  nullable    = true
}
