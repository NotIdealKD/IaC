locals {
  elements = compact([
    var.prefix,
    var.resource_type,
    resource_role != null ? var.resource_role : null,
    substr(md5("${var.prefix}-${var.resource_role}"), 0, 4)
  ])
  name = lower(join("-", local.elements))
}