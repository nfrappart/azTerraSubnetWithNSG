# Subnet Module
Simple module to create a Subnet (requires NSG creatd beforehand)

# Required Resources:
- a Resource Group
- a Virtual Network (VNet)

# Usage Example :

```hcl
module "SN-test_Nate-Fr" {
  source              = "github.com/nfrappart/azTerraSubnetWithNSG"
  SubnetName          = "SN-test_Nate-Fr"
  NsgName             = "NSG-test_Nate-Fr"
  NsgLocation         = module.VN-Fr.Name #ref to an existing VNet Location created via named VN-Fr 
  RgName              = module.RG-Core-Fr.Name #ref to an existing RG created via module named RG-Core-Fr
  VNetName            = module.VN-Fr.Name #ref to an existing VNet created via module named VN-Fr 
  SubnetAddressPrefix = "10.0.0.0/24" #CIDR lock must be part of VNet IPspace
}
```
