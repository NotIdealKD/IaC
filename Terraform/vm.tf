module "rg" {
  source = "./modules/resourceGroup"
  resource_group_name = var.resource_group_name
  location = var.location
}

#
module "vnet" {
  source = "./modules/vnet"
  location = var.location
  resource_group_name = module.rg.resource_group_name
  address_space = var.address_space
  vmvnet_name = var.vmvnet_name
  vmsubnet_name = var.vmsubnet_name
  vmsubnet_01 = var.vmsubnet_01
}