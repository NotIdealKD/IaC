output "subnet_id" {
  description = "ID of the provisioned subnet"
  value = azurerm_subnet.subnet.id  
}