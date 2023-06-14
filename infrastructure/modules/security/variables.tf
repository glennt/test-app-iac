variable "cognito_user_pool_name" {
  type        = string
  description = "Cogito user pool name"
}

variable "cognito_client_name" {
  type        = string
  description = "Cognito client name"
}

variable "lambda_execution_role_name" {
  type        = string
  description = "Lambda execution role name"
}

variable "lambda_execution_role_policy_name" {
  type        = string
  description = "Lambda execution role policy name"
}