resource "azurerm_virtual_network" "vmvnet" {
  resource_group_name = var.resource_group_name
  name                = var.vnet_name
  location            = var.location
  address_space       = var.address_space
}

resource "azurerm_subnet" "vmsubnet_01" {
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  name                 = var.subnet_name
  address_prefixes     = var.vmsubnet_01
}