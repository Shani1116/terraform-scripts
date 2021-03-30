variable "crawler_name" {
  description = "AWS Glue crawler name"
  type = string
}

variable "instance_iam_role" {
  description = "IAM Role an EC2 instance is launched with"
  type        = string
}

variable "crawler_s3_bucket" {
  description = "AWS Glue crawler S3 bucket name"
  type = string
}

variable "aws_glue_catalog_database" {
  description = "AWS Glue catalog db name"
  type = string
}