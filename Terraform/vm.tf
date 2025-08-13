module "rg" {
  source = "./modules/resourceGroup"
  resource_group_name = var.resource_group_name
  location = var.location
}

#
module "vnet" {
  source = "./modules/vnet"
  location = var.location
  address_space = var.address_space
  vnet_name = var.vnet_name
  vmsubnet_name = var.vmsubnet_name
  vmsubnet_01 = var.vmsubnet_01
  vmsubnet_01_name = var.vmsubnet_01_name
}