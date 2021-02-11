module "network" {
  source = "./modules/vpc"
  vpccidr = 10.0.0.0/24
  subnetcidr = 10.0.0.0/26
  vpctags = var.vpctags
  subnettags = var.subnettags
}

resource "aws_codepipeline" "codepipeline" {
  stage {
    name = 
    action {
      name = 
      provider = 
      version = 
      category = 
      owner = 
    }
  }
  name = 
  role_arn = 
  artifact_store {
    location = 
    type = 
  }
}

resource "aws_ec2_tag" "ec2_tag" {
  resource_id = 
  key = 
  value = 
}
