resource "azurerm_network_security_group" "NSG" {
  resource_group_name = azurerm_resource_group.prod_vm_rsg01.name
  name                = var.vmsubnet_01_name
  location            = var.location
}

resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = azurerm_subnet.vmsubnet_01.id
  network_security_group_id = azurerm_network_security_group.vmsubnet_01_NSG.id
}