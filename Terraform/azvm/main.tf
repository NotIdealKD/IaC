locals {
  common_tags = {
    environment  = var.environment
    creationDate = formatdate("YYYY-MM-DD", timestamp())
    project      = "IaC"
    source       = "Terraform"
  }

  image_doc = yamldecode(file("../../image/definitions/windows_server_2025.yml"))

  source_image_reference = { for v in local.image_doc.variables : v.name => v.value}
}

resource "random_password" "local_admin_pw" {
  length = 24
  min_upper = 1
  min_special = 4
}

module "win_vm" {
  source = "../modules/vm"
  location = "uksouth"
  resource_group_name = var.resource_group_name
  vmname = var.vmname
  ip_configuration = var.ip_configuration
  source_image_reference = local.source_image_reference
  admin_username = "${var.vmname}-la"
  admin_password = random_password.local_admin_pw.result
}