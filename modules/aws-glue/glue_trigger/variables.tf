variable "aws_glue_trigger_name" {
  description = "(Required) The name of the trigger"
  type = string 
}

variable "aws_glue_trigger_type" {
  description = "(Required) The type of trigger"
  type = string # ["CONDITIONAL", "ON_DEMAND", "SCHEDULED"]
}

variable "crawler_name" {
  description = "(Optional) The name of the crawler to be executed"
  type = string
  default = ""
}

variable "crawler_state" {
  description = "(Optional) The condition crawl state"
  type = string
  default = null # ["SUCCEEDED", "RUNNING", "CANCELLED", "FAILED"]
}

variable "enabled" {
  description = "(Optional) Start the trigger"
  type = bool 
  default = true
}

variable "description" {
  description = "(Optional) A description of the new trigger"
  type = string
  default = null
}

variable "aws_glue_job_name" {
  description = "(Optional) The name of a job to be executed"
  type = string
  default = ""
}

variable "predicate" {
  description = "(Optional) A predicate to specify when the new trigger should fire"
  type = map
  default = null
}

variable "schedule" {
  description = "(Optional) A cron expression used to specify the schedule"
  type = string
  default = null
}

variable "workflow_name" {
  description = "(Optional) A workflow to which the trigger should be associated to"
  type = string
  default = null
}

variable "arguments" {
  description = "(Optional) Arguments to be passed to the job"
  type = map
  default = null
}

variable "timeout" {
  description = "(Optional) The job run timeout in minutes"
  type = string
  default = null
}

variable "security_configuration" {
  description = "(Optional) The name of the Security Configuration structure to be used with this action"
  type = string
  default = null
}

variable "notification_property" {
  description = "(Optional) Specifies configuration properties of a job run notification"
  type = string
  default = null
}

variable "notify_delay_after" {
  description = "(Optional) After a job run starts, the number of minutes to wait before sending a job run delay notification"
  type = string
  default = null
}

variable "conditions" {
  description = "(Optional) A list of the conditions that determine when the trigger will fire"
  type = list
  default = []
}

variable "predicate_logical" {
  description = "(Optional) How to handle multiple conditions"
  type = string
  default = null # ["AND", "ANY"]
}

variable "job_state" {
  description = "(Optional) The condition job state"
  type = string
  default = null # ["SUCCEEDED", "STOPPED", "TIMEOUT", "FAILED"]
}

variable "logical_operator" {
  description = "(Optional) A logical operator"
  type = string
  default = "EQUALS"
}

variable "tags" {
  description = "Key-value map of resource tags"
  type    = map(string)
}