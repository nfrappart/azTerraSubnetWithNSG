###############################################
# This module allows the creation of a Subnet #
###############################################

#Variable declaration for Module

variable "SubnetName" {
  type    = string
  default = "DefaultSubnet"
}

variable "RgName" {
  type    = string
  default = "DefaultRG"
}

variable "VNetName" {
  type = string
}

variable "SubnetAddressPrefix" {
#  type = string
   type = list
}


variable "NSGid" {
  type = string
}

variable "PrivateLinkServicePolicies"{
  type = string
  default = "true"
}

variable "ServiceEndpointPolicies" {
  type    = list
  default = ["Microsoft.AzureCosmosDB", "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.ServiceBus", "Microsoft.EventHub"]
}
