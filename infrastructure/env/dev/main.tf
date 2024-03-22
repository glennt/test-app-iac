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
  s3_code_deployment_bucket = "dev.gt.test.app.code.deployment"
}

module "api" {
  source                      = "../../modules/api"
  api_gateway_name            = "dev-test-app-api"
  api_gateway_template        = file("./assets/api-gateway/test-api/openapi.yml")
  api_gateway_authorizer_name = "dev-test-api-authorizer"
  cognito_user_pool_arn       = module.security.cognito_user_pool_arn
  lambda_execution_role_arn   = module.security.lambda_execution_role_arn
  lambda_node_api_name        = "dev-test-app-node-api"
  aws_region                  = var.aws_region
}

module "security" {
  source                            = "../../modules/security"
  cognito_user_pool_name            = "dev-test-app-user-pool"
  cognito_client_name               = "dev-test-app-client"
  cognito_client_name_no_secret     = "dev-test-app-client-no-secret"
  lambda_execution_role_name        = var.lambda_execution_role_name
  lambda_execution_role_policy_name = var.lambda_execution_role_policy_name
}
