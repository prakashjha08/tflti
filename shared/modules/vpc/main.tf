resource "aws_vpc" "vpc" {
  cidr_block = var.vpccidr
  tags       = var.vpctags
}

resource "aws_subnet" "subnet" {
  count      = length(var.subnetcidr)
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnetcidr[count.index]
  tags       = var.subnettags
}
