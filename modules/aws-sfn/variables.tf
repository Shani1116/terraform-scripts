variable "name" {
  description = "(Required) The name of the state machine."
  type        = string
}

variable "iam_role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the IAM role to use for this state machine"
  type        = string
}

variable "definition" {
  description = "(Required) The Amazon States Language definition of the state machine"
  type        = string
}

variable "type" {
  description = "(Optional) Determines whether a Standard or Express state machine is created"
  default     = null
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags"
  default     = null
}