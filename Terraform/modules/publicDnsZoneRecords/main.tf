resource "azapi_resource" "dns_record" {
  for_each  = var.records
  type      = "Microsoft.Network/dnsZones/${each.value.type}@2018-05-01"
  parent_id = var.parent_id
  name      = each.key
  body = {
    properties = merge(
      {
        TTL = each.value.ttl
      },
      lookup({
        "A"      = { ARecords      = [for ip in each.value.values : { ipv4Address = ip }] },
        "AAAA"   = { AAAARecords   = [for ip in each.value.values : { ipv6Address = ip }] },
        "CNAME"  = { CNAMERecord   = { cname = each.value.values[0] } },
        "TXT"    = { TXTRecords    = [for t in each.value.values : { value = [t] }] },
        "MX"     = { MXRecords     = [for m in each.value.values : { preference = 10, exchange = m }] },
        "SRV"    = { SRVRecords    = [for s in each.value.values : { priority=10, weight=10, port=80, target=s }] },
        "NS"     = { NSRecords     = [for n in each.value.values : { nsdname = n } ]}
      }, each.value.type, {})
    )
  }
}