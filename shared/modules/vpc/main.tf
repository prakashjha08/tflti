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

module "autoscaling" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "3.8.0"
  # Creates a unique name beginning with the specified prefix
  name = ""
  # Setting this will cause Terraform to wait for exactly this number of healthy instances in all attached load balancers on both create and update operations. Takes precedence over min_elb_capacity behavior.
  wait_for_elb_capacity = 1
  # Can be used instead of user_data to pass base64-encoded binary data directly. Use this instead of user_data whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption.
  user_data_base64 = ""
  # A list of subnet IDs to launch resources in
  vpc_zone_identifier = []
  # Controls how health checking is done. Values are - EC2 and ELB
  health_check_type = ""
  # The maximum size of the auto scale group
  max_size = ""
  # The minimum size of the auto scale group
  min_size = ""
  # The number of Amazon EC2 instances that should be running in the group
  desired_capacity = ""
  # The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user_data_base64 instead.
  user_data = ""
}
