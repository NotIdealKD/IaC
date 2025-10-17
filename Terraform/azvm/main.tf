locals {
  common_tags = {
    environment  = var.environment
    creationDate = formatdate("YYYY-MM-DD", timestamp())
    project      = "IaC"
    source       = "Terraform"
  }

  image_doc = yamldecode(file("../../image/definitions/windows_server_2025.yml"))

  source_image_reference = { for v in local.image_doc.variables : v.name => v.value}

  vm_name = "${upper(var.environment)}-${var.vm_name_prefix}-${random_string.vm_suffix.result}"
}

resource "random_password" "local_admin_pw" {
  length = 24
  min_upper = 1
  min_special = 4
}

resource "random_string" "vm_suffix" {
  length = 6
  lower = false
  special = false
}

module "win_vm" {
  source = "../modules/vm"
  location = "uksouth"
  resource_group_name = var.resource_group_name
  vmname = var.vm_name_prefix
  ip_configuration = var.ip_configuration
  source_image_reference = local.source_image_reference
  admin_username = "${local.vm_name}-la"
  admin_password = random_password.local_admin_pw.result
  os_disk_name = "${local.vm_name}-OS"
  nic_name = "${local.vm_name}-NIC"
}