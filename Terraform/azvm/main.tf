locals {
  common_tags = {
    environment  = var.environment
    creationDate = formatdate("YYYY-MM-DD", timestamp())
    project      = "IaC"
    source       = "Terraform"
  }
}

module "win_vm" {
  source = "../modules/vm"
  location = "uksouth"
  resource_group_name = var.resource_group_name
  vmname = var.vmname
  ip_configuration = win_vm.network_interface_ids
  source_image_reference = var.source_image_reference
}