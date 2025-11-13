locals {
  elements = compact([
    var.prefix,
    var.resource_type,
    role != null ? var.role : null,
    substr(md5("${var.prefix}-${var.role}"), 0, 4)
  ])
  name = lower(join("-", local.elements))
}