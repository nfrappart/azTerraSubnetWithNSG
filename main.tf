###############################################
# This module allows the creation of a Subnet #
###############################################

#Creation of the subnet
resource "azurerm_subnet" "TerraSubnet" {
  name                      = var.SubnetName
  resource_group_name       = var.RgName
  virtual_network_name      = var.VNetName
  #address_prefix            = var.SubnetAddressPrefix
  address_prefixes            = var.SubnetAddressPrefix
  #below command is deprecated but necessary to avoid resource delete/add by terraform.
  #See https://github.com/terraform-providers/terraform-provider-azurerm/issues/2526 for reference
  #network_security_group_id = var.NSGid
  service_endpoints         = var.ServiceEndpointPolicies
  enforce_private_link_endpoint_network_policies = var.PrivateLinkServicePolicies
}

resource "azurerm_subnet_network_security_group_association" "Terra_Subnet_NSG_Association" {
    subnet_id                   = azurerm_subnet.TerraSubnet.id
    network_security_group_id   = var.NSGid
}
