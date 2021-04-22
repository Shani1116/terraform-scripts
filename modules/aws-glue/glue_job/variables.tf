variable "aws_glue_job_name" {
  description = "(Required) The unique name assign to this job"
  type = string
}

variable "instance_iam_role" {
  description = "(Required) The ARN of the IAM role associated with this job"
  type        = string
}

variable "script_location" {
  description = "(Required) Specifies the S3 path to a script that executes a job"
  type        = string
}

variable "max_retries" {
  description = "(Optional) The maximum number of times to retry this job if it fails"
  type = string  
  default = 0
}

variable "timeout" {
  description = "(Optional) The job timeout in minutes"
  type = string  
  default = 2880
}

variable "tags" {
  description = "Key-value map of resource tags"
  type    = map(string)
}

variable "connection" {
  description = "(Optional) The list of connections used for this job"
  type = list
  default = []
}

variable "default_arguments" {
  description = "(Optional) The map of default arguments for this job"
  type = map
  default = null
}

variable "non_overridable_arguments" {
  description = "(Optional) Non-overridable arguments for this job, specified as name-value pairs"
  type = list
  default = []
}

variable "description" {
  description = "(Optional) Description of the job"
  type = string
  default = null
}

variable "execution_property" {
  description = "(Optional) Execution property of the job"
  type = string
  default = null
}

variable "glue_version" {
  description = "(Optional) The version of glue to use"
  type = string
  default = null
}

variable "max_capacity" {
  description = "(Optional) The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs"
  type = string
  default = null
}

variable "notification_property" {
  description = "(Optional) Notification property of the job"
  type = string
  default = null
}

variable "security_configuration" {
  description = "(Optional) The name of the Security Configuration to be associated with the job"
  type = string
  default = null
}

variable "worker_type" {
  description = "(Optional) The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X"
  type = string
  default = null
}

variable "number_of_workers" {
  description = "(Optional) The number of workers of a defined workerType that are allocated when a job runs"
  type = string
  default = null
}

variable "command_name" {
  description = "(Optional) The name of the job command"
  type        = string
  default = "glueetl"
}

variable "python_version" {
  description = "(Optional) The Python version being used to execute a Python shell job. Allowed values are 2 or 3"
  type = string
  default = null
}

variable "max_concurrent_runs" {
  description = "(Optional) The maximum number of concurrent runs allowed for a job"
  type = string
  default = 1
}

variable "notify_delay_after" {
  description = "(Optional) After a job run starts, the number of minutes to wait before sending a job run delay notification"
  type = string
  default = null
}