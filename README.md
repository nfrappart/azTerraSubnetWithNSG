# Subnet Module
Simple module to create a Subnet with an NSG. You'll need to create the rules afterwards.

# Required Resources:
- a Resource Group
- a Virtual Network (VNet)

# Usage Example :

```hcl
module "SN-test_Nate-Fr" {
  source              = "github.com/nfrappart/azTerraSubnetWithNSG?ref=v1.0.0"
  SubnetName          = "sn-test_Nate-Fr"
  NsgName             = "nsg-test_Nate-Fr"
  NsgLocation         = module.vn-hub-eu.Location #ref to an existing VNet Location created via named VN-Fr 
  RgName              = module.rg-core-eu.Name #ref to an existing RG created via module named RG-Core-Fr
  VNetName            = module.vn-hub-eu.Name #ref to an existing VNet created via module named VN-Fr 
  SubnetAddressPrefix = "10.0.0.0/24" #CIDR lock must be part of VNet IPspace
  ProvisioningDateTag = timestamp()
}
```
