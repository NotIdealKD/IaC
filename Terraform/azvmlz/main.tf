locals {
  common_tags = {
    environment  = var.environment
    creationDate = formatdate("YYYY-MM-DD", timestamp())
    project      = "IaC"
    source       = "Terraform"

  }
}

module "vmrg" {
  source              = "../modules/resourceGroup"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = local.common_tags
}

module "vmvnet" {
  source              = "../modules/vnet"
  location            = var.location
  resource_group_name = module.vmrg.resource_group_name
  address_space       = var.address_space
  vnet_name           = var.vnet_name
  tags                = local.common_tags
}

module "subnet" {
  source              = "../modules/subnet"
  resource_group_name = module.vmrg.resource_group_name
  vnet_name           = module.vmvnet.vnet_name
  subnet_name         = var.vmsubnet_name
  subnet              = var.vmsubnet_01
}

module "vmnsg" {
  source              = "../modules/nsg"
  resource_group_name = module.vmrg.resource_group_name
  name                = "${module.subnet.subnet_name}-nsg"
  tags                = local.common_tags
}

resource "azurerm_subnet_network_security_group_association" "subnet01assoc" {
  network_security_group_id = module.vmnsg.nsg_id
  subnet_id                 = module.subnet.subnet_id
}