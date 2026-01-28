output "nsg_id" {
  description = "ID of the provisioned NSG"
  value       = azurerm_network_security_group.NSG.id
}