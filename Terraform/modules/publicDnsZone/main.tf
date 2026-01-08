resource "azurerm_dns_zone" "dns_zone" {
  resource_group_name = var.dns_zone_name
  name                = var.dns_zone_name
  tags                = var.tags
}