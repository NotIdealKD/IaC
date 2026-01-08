resource "azapi_resource" "dns_record" {
  for_each = var.records
  type = "microsoft.networks/dnsZones/${each.value.type}@2018-05-01"
  parent_id = var.parent_id
  name = var.name
  body = var.records
}