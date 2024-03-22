variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "env" {
  type        = string
  description = "Environment"
}

variable "lambda_execution_role_name" {
  type        = string
  description = "Lambda execution role name"
}

variable "lambda_execution_role_policy_name" {
  type        = string
  description = "Lambda execution role policy name"
}