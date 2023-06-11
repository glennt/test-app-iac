resource "aws_s3_bucket" "code_deployment_bucket" {
  bucket = var.s3_code_deployment_bucket
}

