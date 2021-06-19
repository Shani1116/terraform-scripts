resource "aws_lambda_function" "lambda" {

  function_name                  = var.function_name
  description                    = var.description
  role                           = var.role
  handler                        = var.handler
  memory_size                    = var.memory_size
  reserved_concurrent_executions = var.reserved_concurrent_executions
  runtime                        = var.runtime
  timeout                        = var.timeout
  filename                       = var.filename
  source_code_hash               = var.source_code_hash
  # layers                         = var.layers
  # publish                        = local.publish

  environment {
    variables = var.environment_vars
  }
  tags = var.tags
}