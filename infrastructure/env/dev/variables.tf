variable "aws_region" {
  type        = string
  description = "AWS region"
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
  type        = string
  description = "API Gateway name"
}

variable "lambda_node_api_name" {
  type        = string
  description = "Nodejs API name"
}

variable "api_gateway_authorizer_name" {
  type        = string
  description = "API Gatway authorizer name"
}

#security
variable "cognito_user_pool_name" {
  type        = string
  description = "Cogito user pool name"
}

variable "cognito_client_name" {
  type        = string
  description = "Cognito client name"
}

variable "cognito_client_name_no_secret" {
  type        = string
  description = "Cognito client name with not secret"
}

variable "lambda_execution_role_name" {
  type        = string
  description = "Lambda execution role name"
}

variable "lambda_execution_role_policy_name" {
  type        = string
  description = "Lambda execution role policy name"
}