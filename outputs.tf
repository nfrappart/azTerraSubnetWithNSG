###############################################
# This module allows the creation of a Subnet #
###############################################


#Output
output "Name" {
  value = azurerm_subnet.TerraSubnet.name
}

output "Id" {
  value = azurerm_subnet.TerraSubnet.id
}

output "AddressPrefix" {
  value = azurerm_subnet.TerraSubnet.address_prefix
}

output "RgName" {
  value = azurerm_subnet.TerraSubnet.resource_group_name
}

output "NsgId" {
  value = azurerm_network_security_group.TerraNsg.id
}

output "NsgName" {
  value = azurerm_network_security_group.TerraNsg.name
}