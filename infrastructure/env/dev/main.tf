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
  source                    = "../../modules/storage"
  s3_code_deployment_bucket = var.s3_code_deployment_bucket
}

module "api" {
  source                   = "../../modules/api"
  api_gateway_name         = var.api_gateway_name
  lambda_execution_role_id = module.security.lambda_execution_role_id
}

module "security" {
  source                            = "../../modules/security"
  cognito_user_pool_name            = var.cognito_user_pool_name
  cognito_client_name               = var.cognito_client_name
  lambda_execution_role_name        = var.lambda_execution_role_name
  lambda_execution_role_policy_name = var.lambda_execution_role_policy_name
}