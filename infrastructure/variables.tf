variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

#storage
variable "s3_other_bucket" {
  type        = string
  description = "Other S3 bucket"
}

#api
variable "api_gateway_name" {
  type = string
}

#security
variable "cognito_user_pool_name" {
  type = string
}