resource "azurerm_resource_group" "prod_vm_rsg01" {
  name      = var.resource_group_name
  location  = var.location
}
