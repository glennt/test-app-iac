variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "tf_state_bucket" {
  type        = string
  description = "S3 bucket to store terraform state"
}

variable "tf_state_lock_dynamodb_table" {
  type        = string
  description = "Dynamo DB tf state lock table"
}
