variable "crawler_name" {
  description = "(Required) Name of the crawler"
  type = string
}

variable "instance_iam_role" {
  description = "(Required) ARN of an IAM role, used by the crawler to access other resources"
  type        = string
}

variable "crawler_s3_bucket" {
  description = "(Required) The path to the Amazon S3 target"
  type = string
}

variable "aws_glue_catalog_database" {
  description = "(Required) Glue database where results are written"
  type = string
}

variable "connection_name" {
  description = "(Optional) The name of a connection which allows crawler to access data in S3 within a VPC"
  type = string
  default = null
}

variable "classifiers" {
  description = "(Optional) List of custom classifier"
  type = list
  default = []
}

variable "configuration" {
  description = "(Optional) JSON string of configuration information"
  type = string
  default = null
}

variable "crawler_description" {
  description = "(Optional) Description of the crawler"
  type = string
  default = null
}

variable "dynamodb_target" {
  description = "(Optional) List of nested DynamoDB target arguments"
  type = list
  default = []
}

variable "jdbc_target" {
  description = "(Optional) List of nested JBDC target arguments"
  type = list
  default = []
}

variable "s3_target" {
  description = "(Optional) List nested Amazon S3 target arguments"
  type = list
  default = []
}

variable "mongodb_target" {
  description = "(Optional) List nested MongoDB target arguments"
  type = list
  default = []
}

variable "schedule" {
  description = "(Optional) A cron expression used to specify the schedule"
  type = string
  default = null
  }

# variable "schema_change_policy" {
#   description = "(Optional) Policy for the crawler's update and deletion behavior"
#   type = string
#   default = null
# }

# variable "lineage_configuration" {
#   description = "(Optional) Specifies data lineage configuration settings for the crawler"
#   type = string
#   default = null
# }

variable "recrawl_policy" {
  description = "(Optional) A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run"
  type = string
  default = null
}

variable "security_configuration" {
  description = "(Optional) The name of Security Configuration to be used by the crawler"
  type = string
  default = null
}

variable "table_prefix" {
  description = "(Optional) The table prefix used for catalog tables that are created"
  type = string
  default = null
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags"
  type = map(string)
}