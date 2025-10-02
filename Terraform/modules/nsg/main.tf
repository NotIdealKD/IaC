resource "azurerm_network_security_group" "NSG" {
  resource_group_name = var.resource_group_name
  name                = var.subnet_name
  location            = var.location
  tags                = var.tags
}