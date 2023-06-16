resource "aws_cognito_user_pool" "user_pool" {
  name = var.cognito_user_pool_name
}

resource "aws_cognito_user_pool_client" "client" {
  name = var.cognito_client_name

  user_pool_id = aws_cognito_user_pool.user_pool.id

  generate_secret = true
  explicit_auth_flows = [
    "ALLOW_REFRESH_TOKEN_AUTH",
    "ALLOW_USER_PASSWORD_AUTH",
    "ALLOW_ADMIN_USER_PASSWORD_AUTH"
  ]
}

resource "aws_cognito_user_pool_client" "client_no_secret" {
  name = var.cognito_client_name_no_secret

  user_pool_id = aws_cognito_user_pool.user_pool.id

  generate_secret = false
  explicit_auth_flows = [
    "ALLOW_REFRESH_TOKEN_AUTH",
    "ALLOW_USER_PASSWORD_AUTH",
    "ALLOW_ADMIN_USER_PASSWORD_AUTH"
  ]
}