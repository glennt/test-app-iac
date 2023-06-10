terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.0.0"

  backend "s3" {
    key = "tfstate/terraform.tfstate"
  }
}


provider "aws" {
  region = var.aws_region
}

module "storage" {
  source          = "./modules/storage"
  s3_other_bucket = var.s3_other_bucket
}

module "api" {
  source           = "./modules/api"
  api_gateway_name = var.api_gateway_name
}

module "security" {
  source                 = "./modules/security"
  cognito_user_pool_name = var.cognito_user_pool_name
}