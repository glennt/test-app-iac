variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "env" {
  type        = string
  description = "Environment"
}

#storage
variable "s3_code_deployment_bucket" {
  type        = string
  description = "S3 code deployment bucket"
}

#api
variable "api_gateway_name" {
  type = string
}

variable "lambda_node_api_name" {
  type = string
}

#security
variable "cognito_user_pool_name" {
  type = string
}

variable "cognito_client_name" {
  type = string
}

variable "lambda_execution_role_name" {
  type = string
}

variable "lambda_execution_role_policy_name" {
  type = string
}