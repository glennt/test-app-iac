resource "aws_cognito_user_pool" "user_pool" {
  name = var.cognito_user_pool_name
}