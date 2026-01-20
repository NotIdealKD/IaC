subscription_id = "4d5d3655-8274-4f6a-95c8-6c295432f8fa"
dns_zones = {
  "notideal.co.uk" = {
    resource_group_name = "dns"
  },

  "testnotideal.co.uk" = {
    resource_group_name = "dns"
  }
}

dns_records = {
  "notideal.co.uk-A" = {
    zone_name = "notideal.co.uk"
    resource_group_name = "dns"
    type = "A"
    ttl = 3600
    values = ["51.104.28.83"]
  },

  "notideal.co.uk-NS" = {
    zone_name = "notideal.co.uk"
    resource_group_name = "dns"
    type = "NS"
    ttl = 3600
    values = [
      "ns1-02.azure-dns.com.",
      "ns2-02.azure-dns.net.",
      "ns3-02.azure-dns.org.",
      "ns4-02.azure-dns.info."
    ]
  }
}