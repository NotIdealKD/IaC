resource "azapi_resource" "dns_record" {
  for_each  = var.records
  type      = "Microsoft.Network/dnsZones/${each.value.type}@2018-05-01"
  parent_id = "/subscriptions/${var.subscription_id}/resourceGroups/${each.value.resource_group_name}/providers/Microsoft.Network/dnsZones/${each.value.zone_name}"
  name      = each.value.prefix
  body = {
    properties = merge(
      {
        TTL = each.value.ttl
      },

      each.value.type == "A" ? { ARecords = [for ip in each.value.values : { ipv4Address = ip }] } : null,
      each.value.type == "AAAA" ? { AAAARecords = [for ip in each.value.values : { ipv6Address = ip }] } : null,
      each.value.type == "CNAME" ? { CNAMERecord = { cname = each.value.values[0] } } : null,
      each.value.type == "TXT" ? { TXTRecords = [for t in each.value.values : { value = [t] }] } : null,
      each.value.type == "MX" ? { MXRecords = [for m in each.value.mx_values : { preference = m.preference, exchange = m.address }] } : null,
      each.value.type == "SRV" ? { SRVRecords = [for s in each.value.values : { priority = 10, weight = 10, port = 80, target = s }] } : null,
      each.value.type == "NS" ? { NSRecords = [for n in each.value.values : { nsdname = n }] } : null
    )
  }
}