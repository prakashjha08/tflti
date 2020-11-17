terraform {
  backend "s3" {
    key = "terraform/landingzone.tfstate"
  }
}