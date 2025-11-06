resource "azurerm_network_interface" "nic" {
  location = var.location
  name     = var.nic_name
  ip_configuration {
    name                          = lookup(var.ip_configuration, "name", "")
    private_ip_address_allocation = lookup(var.ip_configuration, "pip_allocation", "")
    private_ip_address_version    = lookup(var.ip_configuration, "pip_version", "")
    subnet_id                     = lookup(var.ip_configuration, "subnet_id", "")
  }
  resource_group_name            = var.resource_group_name
  accelerated_networking_enabled = true
  tags                           = var.tags
}

resource "azurerm_windows_virtual_machine" "vm" {
  location            = var.location
  name                = var.vmname
  resource_group_name = var.resource_group_name
  size                = var.sku
  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_storage_account_type
    name                 = var.os_disk_name
  }
  source_image_reference {
    publisher = lookup(var.source_image_reference, "publisher", "")
    offer     = lookup(var.source_image_reference, "offer", "")
    sku       = lookup(var.source_image_reference, "sku", "")
    version   = lookup(var.source_image_reference, "version", "")
  }
  patch_mode            = "AutomaticByPlatform"
  network_interface_ids = [azurerm_network_interface.nic.id]
  tags                  = var.tags
  secure_boot_enabled   = var.secure_boot_enabled
  #local admin details
  admin_username = var.admin_username
  admin_password = var.admin_password
}
