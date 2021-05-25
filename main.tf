provider "aws" {
  region = "us-east-1"
}


module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name = "cara-vpc"
  cidr = "10.0.0.0/16"
}

module "s3-bucket" {
source = "terraform-aws-modules/s3-bucket/aws"
}

#module "ec2-instance"{
#source = "terraform-aws-modules/ec2-instance/aws"
#}

