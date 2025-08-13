resource "azurerm_virtual_network" "vmvnet" {
  resource_group_name = azurerm_resource_group.prod_vm_rsg01.name
  name                = var.vnet_name
  location            = var.location
  address_space       = var.address_space
}

resource "azurerm_subnet" "vmsubnet_01" {
  resource_group_name  = azurerm_virtual_network.vmvnet.resource_group_name
  virtual_network_name = azurerm_virtual_network.vmvnet.name
  name                 = var.vmsubnet_name
  address_prefixes     = var.vmsubnet_01
}