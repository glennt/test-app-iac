resource "aws_s3_bucket" "terraform_state" {
  bucket = var.tf_state_bucket
}
