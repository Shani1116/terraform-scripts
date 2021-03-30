variable "aws_glue_trigger_name" {
   description = "AWS Glue trigger name"
  type = string 
}

variable "aws_glue_trigger_type" {
    description = "AWS Glue trigger type"
  type = string
  default = "CONDITIONAL"
}

variable "crawler_name" {
  description = "AWS Glue crawler name"
  type = string
}

variable "aws_glue_crawler_state" {
    description = "AWS Glue crawler state"
  type = string
  default = "SUCCEEDED"
}

variable "enabled" {
  type = bool 
  default = true
}

variable "description" {
  type = string
  default = ""
}