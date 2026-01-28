terraform {
  required_version = ">=1.14.0"
  backend "azurerm" {
    resource_group_name  = "terraform-core"
    storage_account_name = "ntiterraformsa"
    container_name       = "tfstate"
    key                  = "azvmwindows.tfstate"
    use_oidc             = true
  }
}