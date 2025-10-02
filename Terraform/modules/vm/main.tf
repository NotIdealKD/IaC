resource "azurerm_network_interface" "nic" {
  location = var.location
  name = var.name
  ip_configuration {
    name = var.ip_configuration.name
    private_ip_address_allocation = var.ip_configuration.pip_llocation
    private_ip_address_version = var.ip_configuration.pip_version
    subnet_id = var.ip_configuration.subnet_id
  }
  resource_group_name = var.resource_group_name
  accelerated_networking_enabled = true
  tags = var.tags
}