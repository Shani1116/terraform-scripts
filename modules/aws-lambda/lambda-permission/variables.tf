variable "function_name" {
  description = "(Required) Name of the Lambda function whose resource policy you are updating"
  type        = string
}

variable "sns_topic_arn" {
  description = "(Optional) the ARN of the specific resource within that service to grant permission to."
  type        = string
}