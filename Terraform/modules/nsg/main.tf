resource "azurerm_network_security_group" "NSG" {
  resource_group_name = var.resource_group_name
  name                = var.vmsubnet_01_name
  location            = var.location
}

resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = var.subnet_id
  network_security_group_id = var.nsg_id
}