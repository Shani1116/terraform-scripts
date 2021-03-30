resource "aws_glue_job" "glue_job" {
  name     = var.aws_glue_job_name
  role_arn = var.instance_iam_role

  command {
    script_location = var.script_location
  }

  description = var.description
  max_retries = var.max_retries
  timeout     = var.timeout
}