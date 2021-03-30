variable "aws_glue_job_name" {
  description = "AWS Glue job name"
  type = string
}

variable "instance_iam_role" {
  description = "IAM Role an EC2 instance is launched with"
  type        = string
}

variable "script_location" {
  description = "AWS Glue job script location"
  type        = string
}

variable "description" {
  type = string  
  default = ""
}

variable "max_retries" {
  type = string  
  default = 0
}

variable "timeout" {
  type = string  
  default = 2880
}