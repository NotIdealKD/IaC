module "public_dns_zones" {
  source              = "../modules/publicDnsZone"
  for_each            = var.dns_zones
  resource_group_name = each.value.resource_group_name
  dns_zone_name       = each.key
  tags                = var.tags
}

module "public_dns_records" {
  source          = "../modules/publicDnsZoneRecords"
  subscription_id = var.subscription_id
  records         = var.dns_records
}