###############################################
# This module allows the creation of a Subnet #
###############################################

#Variable declaration for Module

variable "SubnetName" {
  type    = string
}

variable "RgName" {
  type    = string
}

variable "VNetName" {
  type = string
}

variable "NsgName" {
  type = string
}

variable "NsgLocation" {
  type = string
  default = "westeurope"
}

variable "SubnetAddressPrefix" {
   type = list
}

variable "PrivateLinkServicePolicies"{
  type = string
  default = "true"
}

variable "ServiceEndpointPolicies" {
  type    = list
  default = ["Microsoft.AzureCosmosDB", "Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.ServiceBus", "Microsoft.EventHub"]
}

# Tags
variable "EnvironmentTag" {
  default = "Test"
}
variable "OwnerTag" {
  default = "Nate"
}
variable "ProvisioningModeTag" {
  default = "Terraform"
}