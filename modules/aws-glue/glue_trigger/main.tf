resource "aws_glue_trigger" "glue_job_trigger" {
  name = var.aws_glue_trigger_name
  type = var.aws_glue_trigger_type

  enabled     = var.enabled
  description = var.description


  actions {
    job_name = var.aws_glue_job_name
  }

  predicate {
    conditions {
      crawler_name = var.crawler_name
      crawl_state  = var.aws_glue_crawler_state
    }
  }
}