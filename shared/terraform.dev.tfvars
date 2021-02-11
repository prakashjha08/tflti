region      = "us-east-1"
vpc_cidr    = "10.0.0.0/16"
subnet_cidr = ["10.0.0.0/20"]

vpctags = {
  Name   = "devVPC"
  Env    = "dev"
  Region = "us-east-1"
}

subnettags = {
  Name   = "devSubnet"
  Env    = "dev"
  Region = "us-east-1"
}