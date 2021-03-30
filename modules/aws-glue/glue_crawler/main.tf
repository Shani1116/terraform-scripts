resource "aws_glue_crawler" "glue_crawler_s3" {
  database_name = var.aws_glue_catalog_database
  name          = var.crawler_name
  role          = var.instance_iam_role

  s3_target {
    path = var.crawler_s3_bucket
  }
}