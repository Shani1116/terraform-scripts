resource "aws_glue_trigger" "glue_job_trigger" {
  name = var.aws_glue_trigger_name
  type = var.aws_glue_trigger_type

  enabled     = var.enabled
  description = var.description

  workflow_name = var.workflow_name

  tags = var.tags

  # arguments = var.arguments 
  # timeout = var.timeout

  # security_configuration = var.security_configuration
  # notification_property = var.notification_property
  # notify_delay_after = var.notify_delay_after


# For an On-Demand trigger ----------------------------------------------
  actions {
    job_name = var.aws_glue_job_name
    # job_state = var.job_state
    crawler_name = var.crawler_name
  }


# For a Conditional trigger ----------------------------------------------
  # predicate {
  #   conditions {
  #     crawler_name = var.crawler_name
  #     crawl_state  = var.crawler_state
  #   }
  # }


# For a scheduled trigger ----------------------------------------------
  # schedule = var.schedule

}