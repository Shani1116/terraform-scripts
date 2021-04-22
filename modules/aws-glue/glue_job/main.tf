resource "aws_glue_job" "glue_job" {
  name     = var.aws_glue_job_name
  role_arn = var.instance_iam_role

  command {
    name = var.command_name
    script_location = var.script_location
    python_version = var.python_version
  }

  default_arguments = {
  }

  non_overridable_arguments = {
  }

  connections = var.connection 
  description = var.description
  glue_version = var.glue_version

  # execution_property = var.execution_property
  # notification_property = var.notification_property
  security_configuration = var.security_configuration

  max_retries = var.max_retries
  timeout     = var.timeout
  worker_type = var.worker_type
  number_of_workers = var.number_of_workers

  # max_concurrent_runs = var.max_concurrent_runs
  # notify_delay_after = var.notify_delay_after

  tags = var.tags
  
}