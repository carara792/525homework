provider "aws" {
  region = "us-east-1"
}
module "vpc"{
source = "terraform-aws-modules/vpc/aws"
name = "UT-Env"
}

#module "s3-bucket" {
#source = "terraform-aws-modules/s3-bucket/aws"
#}

module "ec2-instance" {
source = "terraform-aws-modules/ec2-instance/aws"
instance_type = "t2.micro"
ami = "ami-2757f631"
}

