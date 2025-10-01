locals {
  common_tags = {
    environment  = var.environment
    creationDate = formatdate("YYYY-MM-DD", timestamp())
    project      = "IaC"
    source       = "Terraform"

  }
}

module "rg" {
  source              = "../modules/resourceGroup"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = local.common_tags
}

#
module "vnet" {
  source              = "../modules/vnet"
  location            = var.location
  resource_group_name = module.rg.resource_group_name
  address_space       = var.address_space
  vnet_name           = var.vnet_name
  subnet_name         = var.vmsubnet_name
  subnet_01           = var.vmsubnet_01
  tags                = local.common_tags
}