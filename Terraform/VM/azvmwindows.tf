terraform {
  required_providers {
    azurerm = {
        source = "terraform-providers/azurerm"
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
  use_oidc = true
}

