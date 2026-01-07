terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-core"
    storage_account_name = "ntiterraformsa"
    container_name       = "dns-zone-state"
    key                  = "publicDNS"
    use_oidc             = true
  }
}