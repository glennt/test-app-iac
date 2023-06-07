terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

  backend "s3" {
    key = "tfstate/terraform.tfstate"
  }
}

provider "aws" {
  region = var.aws_region
}

module "storage" {
  source          = "./storage"
  s3_other_bucket = var.s3_other_bucket
}