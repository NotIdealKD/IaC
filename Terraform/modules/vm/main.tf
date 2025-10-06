resource "azurerm_network_interface" "nic" {
  location = var.location
  name = "${var.vmname}-NIC"
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

resource "azurerm_windows_virtual_machine" "vm" {
  location = var.location
  name    = var.vmname
  resource_group_name = var.resource_group_name
  size = var.sku
  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
    name = "${var.vmname}-osdisk"
  }
  network_interface_ids = [azurerm_network_interface.nic]
  tags = var.tags
}
