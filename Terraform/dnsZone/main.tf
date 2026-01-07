module "dns_zone" {
  source = "../modules/publicDnsZone"
  resource_group_name = var.resource_group_name
  dns_zone_name = var.dns_zone_name
  tags = var.tags
}