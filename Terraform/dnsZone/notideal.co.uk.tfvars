subscription_id = "4d5d3655-8274-4f6a-95c8-6c295432f8fa"
dns_zones = {
  "notideal.co.uk" = {
    resource_group_name = "dns"
  },
}

dns_records = {
  "notideal.co.uk-A" = {
    zone_name           = "notideal.co.uk"
    resource_group_name = "dns"
    prefix              = "@"
    type                = "A"
    ttl                 = 3600
    values              = ["51.104.28.83"]
  },

  "notideal.co.uk-NS" = {
    zone_name           = "notideal.co.uk"
    resource_group_name = "dns"
    prefix              = "@"
    type                = "NS"
    ttl                 = 172800
    values = [
      "ns1-02.azure-dns.com.",
      "ns2-02.azure-dns.net.",
      "ns3-02.azure-dns.org.",
      "ns4-02.azure-dns.info."
    ]
  },

  "notideal.co.uk-TXT@" = {
    zone_name           = "notideal.co.uk"
    resource_group_name = "dns"
    prefix              = "@"
    type                = "TXT"
    ttl                 = 216000
    values = [
      "MS=ms55017100",
      "v=spf1 include:spf.protection.outlook.com -all"
    ]
  },

  "notideal.co.uk-MX" = {
    zone_name           = "notideal.co.uk"
    resource_group_name = "dns"
    prefix              = "@"
    type                = "MX"
    ttl                 = 3600
    mx_values = [
      { preference = 0, address = "notideal-co-uk.mail.protection.outlook.com" }
    ]
  }
}

#terraform import -var-file "notideal.co.uk.tfvars" 'module.public_dns_records.azapi_resource.dns_record["notideal.co.uk-A"]' "/subscriptions/4d5d3655-8274-4f6a-95c8-6c295432f8fa/resourceGroups/dns/providers/Microsoft.Network/dnsZones/notideal.co.uk/A/@"