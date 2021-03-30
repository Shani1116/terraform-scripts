variable "aws_glue_catalog_database" {
  description = "AWS Glue catalog db name"
  type = string
}

variable "catalog_id" {
  type = string
  default = ""
}

variable "description" {
  type = string
  default = ""
}