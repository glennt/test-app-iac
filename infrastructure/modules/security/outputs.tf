output "lambda_execution_role_id" {
  value       = aws_iam_role.lambda_execution_role.id
  description = "Execution role for lambda functions"
}