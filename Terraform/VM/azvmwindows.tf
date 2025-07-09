terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">= 3.7.0"
    }
  }
    # State file configuration
  backend "azurerm" {
    resource_group_name  = "terraform-core"
    storage_account_name = "ntiterraformsa"
    container_name       = "tfstate"
    key                  = "azvmwindows.tfstate"
    use_oidc             = true
  }
}
provider "azurerm" {
  features {}
  subscription_id = "4d5d3655-8274-4f6a-95c8-6c295432f8fa"
  use_oidc = true
}

resource "azurerm_resource_group" "prod-vm-rsg01" {
  name = var.resource_group_name
  location = var.location
}