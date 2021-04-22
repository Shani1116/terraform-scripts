resource "aws_glue_crawler" "glue_crawler_s3" {
  database_name = var.aws_glue_catalog_database
  name          = var.crawler_name
  role          = var.instance_iam_role

  s3_target {
    path = var.crawler_s3_bucket
  }

  description = var.crawler_description
  schedule = var.schedule
  classifiers = var.classifiers

  configuration = var.configuration
  security_configuration = var.security_configuration
  table_prefix = var.table_prefix 

  tags = var.tags
}