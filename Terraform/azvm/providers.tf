terraform {
  required_version = ">= 1.14"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.35.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.8"
    }
  }
}


provider "azurerm" {
  subscription_id = var.subscription_id
  use_oidc        = true
  features {}
}

provider "random" {
}