# The block below configures Terraform to use the 'remote' backend with Terraform Cloud.
# For more information, see https://www.terraform.io/docs/backends/types/remote.html
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.42.0"
    }
  }
  required_version = ">= 0.13.0"
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "cara"

    workspaces {
      name = "525homework"
    }
  }
}
