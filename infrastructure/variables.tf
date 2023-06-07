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