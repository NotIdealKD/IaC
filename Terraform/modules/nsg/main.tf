resource "azurerm_network_security_group" "NSG" {
  resource_group_name = var.resource_group_name
  name                = var.name
  location            = var.location
  tags                = var.tags
}