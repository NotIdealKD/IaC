locals {
  common_tags = {
    environment  = var.environment
    creationDate = formatdate("YYYY-MM-DD", timestamp())
    project      = "IaC"
    source       = "Terraform"
  }

  image_doc = yamldecode(file("../../image/definitions/windows_server_2025.yml"))

  source_image_reference = { for var in local.image_doc.variables : v.name => v.value}
}

module "win_vm" {
  source = "../modules/vm"
  location = "uksouth"
  resource_group_name = var.resource_group_name
  vmname = var.vmname
  ip_configuration = module.win_vm.network_interface_ids
  source_image_reference = local.source_image_reference
}