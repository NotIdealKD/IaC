resource "random_string" "name_suffix" {
  length  = 6
  special = false
}

locals {
  elements = compact([
    var.prefix,
    var.resource_type,
    var.resource_role != null ? var.resource_role : null,
    random_string.name_suffix.result
  ])
  name = lower(join("-", local.elements))
}