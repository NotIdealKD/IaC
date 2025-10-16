terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-core"
    storage_account_name = "ntiterraformsa"
    container_name       = "tfstate"
    key                  = "azvmwindows_VMs.tfstate"
    use_oidc             = true
  }
}