#global
aws_region = "us-east-1"

#state buckets
tf_state_bucket              = "dev.gt.test.app.tfstate"
tf_state_lock_dynamodb_table = "dev-tf-state-lock"

#storage
s3_code_deployment_bucket = "dev.gt.test.app.code.deployment"

#api
api_gateway_name = "dev-test-app-api"

#security
cognito_user_pool_name = "dev-test-app-user-pool"
cognito_client_name    = "dev-test-app-client"