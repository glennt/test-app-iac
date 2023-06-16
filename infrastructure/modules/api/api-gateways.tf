data "template_file" "api_gateway_template" {
  template = var.api_gateway_template
  vars = {
    aws_region                  = var.aws_region
    cognito_user_pool_arn       = var.cognito_user_pool_arn
    lambda_node_api_arn         = aws_lambda_function.node_api.arn
    api_gateway_name            = var.api_gateway_name
    api_gateway_authorizer_name = var.api_gateway_authorizer_name
  }
}

resource "aws_api_gateway_rest_api" "test_app" {
  name = var.api_gateway_name
  body = data.template_file.api_gateway_template.rendered
}

resource "aws_api_gateway_deployment" "default" {
  depends_on  = [aws_api_gateway_integration.test]
  rest_api_id = aws_api_gateway_rest_api.test_app.id
  stage_name  = "default"

  variables {
    deploy_at = timestamp()
  }
}

resource "aws_api_gateway_authorizer" "test_app_authorizer" {
  name                             = var.api_gateway_authorizer_name
  rest_api_id                      = aws_api_gateway_rest_api.test_app.id
  authorizer_result_ttl_in_seconds = 300
  type                             = "COGNITO_USER_POOLS"
  provider_arns = [
    var.cognito_user_pool_arn
  ]
}