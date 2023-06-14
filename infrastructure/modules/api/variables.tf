variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "api_gateway_name" {
  type        = string
  description = "API Gateway name"
}

variable "api_gateway_template" {
  type        = string
  description = "Path to API Gateway template openapi.yaml"
}

variable "api_gateway_authorizer_name" {
  type        = string
  description = "API Gatway authorizer name"
}

variable "lambda_node_api_name" {
  type        = string
  description = "Nodejs API name"
}

variable "lambda_execution_role_arn" {
  type        = string
  description = "Lambda execution role arn"
}

variable "cognito_user_pool_arn" {
  type        = string
  description = "Cognito user pool arn"
}