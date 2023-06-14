output "lambda_execution_role_arn" {
  value       = aws_iam_role.lambda_execution_role.arn
  description = "Execution role for lambda functions"
}

output "cognito_user_pool_arn" {
  value       = aws_cognito_user_pool.user_pool.arn
  description = "Cognito user pool arn"
}