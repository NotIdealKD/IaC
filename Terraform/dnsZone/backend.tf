terraform {
  required_version = ">=1.14.0"
  backend "azurerm" {
    resource_group_name  = "terraform-core"
    storage_account_name = "ntiterraformsa"
    container_name       = "dns-zone-state"
    key                  = "publicDNS"
    use_oidc             = true
  }
}