environment = "prod"
subscription_id = "4d5d3655-8274-4f6a-95c8-6c295432f8fa"
resource_group_name = "prod-vm-rsg-01"
vmname = "Test"
ip_configuration = {
    name           = "ip-conf"
    subnet_id      = "/subscriptions/4d5d3655-8274-4f6a-95c8-6c295432f8fa/resourceGroups/prod-vm-rsg-01/providers/Microsoft.Network/virtualNetworks/prod-vm-vnet-01/subnets/VM_Subnet01"
    pip_allocation = "Dynamic"
    pip_version    = "IPv4"
}