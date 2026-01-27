terraform {
  required_version = ">= 1.14"
  required_providers {
    azapi = {
      source = "azure/azapi"
      version = ">= 2.8.0"
    }
  }
}