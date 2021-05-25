provider "aws" {
  region = "us-east-1"
}
module "vpc"{
source = "terraform-aws-modules/vpc/aws"
Name = "UT-Env"
}

module "s3-bucket" {
source = "terraform-aws-modules/s3-bucket/aws"
}

module "ec2-instance" {
source = "terraform-aws-modules/ec2-instance/aws"
Name = "UT-server"
}
