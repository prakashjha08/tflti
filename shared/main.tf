module "network" {
  source = "./modules/vpc"
  vpccidr = 10.0.0.0/24
  subnetcidr = 10.0.0.0/26
  vpctags = var.vpctags
  subnettags = var.subnettags
}
