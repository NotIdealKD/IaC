module "public_dns_zones" {
  source              = "../modules/publicDnsZone"
  for_each            = var.dns_zones
  resource_group_name = each.value.resource_group_name
  dns_zone_name       = each.key
  tags                = var.tags
}

module "public_dns_records" {
  source = "../modules/publicDnsZoneRecords"
  for_each = var.dns_records
  parent_id = "/subscriptions/${var.subscription_id}/resourceGroups/${each.value.resource_group_name}/providers/Microsoft.Network/dnsZones/${each.value.zone_name}"
  records = var.dns_records
}