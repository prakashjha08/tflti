region      = "us-east-1"
vpc_cidr    = "192.168.0.0/16"
subnet_cidr = ["192.168.0.0/16"]

vpctags = {
  Name   = "ProdVPC"
  Env    = "Prod"
  Region = "us-east-1"
}

subnettags = {
  Name   = "ProdSubnet"
  Env    = "Prod"
  Region = "us-east-1"
}