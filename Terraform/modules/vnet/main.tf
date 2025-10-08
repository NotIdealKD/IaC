resource "azurerm_virtual_network" "vnet" {
  resource_group_name = var.resource_group_name
  name                = var.vnet_name
  location            = var.location
  address_space       = var.address_space
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  name                 = var.subnet_name
  address_prefixes     = var.subnet
}