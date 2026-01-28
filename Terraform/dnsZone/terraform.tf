terraform {
  required_version = ">= 1.14"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.5.0"
    }

    azapi = {
      source  = "azure/azapi"
      version = ">= 2.8.0"
    }
  }
}