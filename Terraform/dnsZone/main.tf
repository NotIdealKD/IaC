module "public_dns_zones" {
  source              = "../modules/publicDnsZone"
  for_each            = var.dns_zones
  resource_group_name = each.value.resource_group_name
  dns_zone_name       = each.key
  tags                = var.tags
}