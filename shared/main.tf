module "network" {
  source = "./modules/vpc"
  vpccidr = 10.0.0.0
  subnetcidr = 10.0.0.0
  vpctags = var.vpctags
  subnettags = var.subnettags
  subnet1 = var.subnet1
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
    # Assign IPv6 address on elasticache subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
    # Assign IPv6 address on private subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
    # List of maps of ingress rules to set on the default security group
    # The ARN of the Permissions Boundary for the VPC Flow Log IAM Role
    # Should be true to enable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic.
    # Assign IPv6 address on redshift subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
    # The ARN of the KMS Key to use when encrypting log data for VPC flow logs.
    # Assign IPv6 address on public subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
    # The Availability Zone for the VPN Gateway
    # Assign IPv6 address on database subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
    # Specifies the number of days you want to retain log events in the specified log group for VPC flow logs.
    # Should be true to enable ClassicLink DNS Support for the VPC. Only valid in regions and accounts that support EC2 Classic.
    # Assign IPv6 address on intra subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
    # List of maps of egress rules to set on the default security group
    # The fields to include in the flow log record, in the order in which they should appear.
  cidr_block = var.subnetcidr1
}
