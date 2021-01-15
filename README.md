# Subnet Module
Simple module to create a Subnet (requires NSG creatd beforehand)

## Usage Example :

```hcl
module "SN-test_Nate-Fr" {
  source              = "git::ssh://git@ssh.dev.azure.com/v3/Covage-dsi-infra/iac-terraform-modules/TerraSubnetWithNSG"
  SubnetName          = "SN-test_Nate-${var.Env}-Fr"
  RgName              = module.RG-Core-Fr.Name #ref to an existing RG created via module named RG-Core-Fr
  VNetName            = module.VN-Fr.Name #ref to an existing VNet created via module named VN-Fr 
  SubnetAddressPrefix = "${var.IPSpace_Fr}7.0/24" #IPSpace_Fr is a variable predefined in _global_variables.tf file
  NSGid               = module.NSG-Core-Fr.Id #ref to an existing NSG created via module named NSG-Core-Fr
}
```
