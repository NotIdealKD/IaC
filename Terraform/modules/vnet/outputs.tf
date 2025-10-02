output "subnet_id" {
  description = "ID of the provisioned subnet"
  value = azurerm_subnet.subnet.id  
}
output "subnet_name" {
  description = "Name of the provisioned subnet"
  value = azurerm_subnet.subnet.name
}