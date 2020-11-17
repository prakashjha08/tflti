module "network" {
  source     = "./modules/vpc"
  vpccidr    = var.vpc_cidr
  subnetcidr = var.subnet_cidr
  vpctags    = var.vpctags
  subnettags = var.subnettags
}