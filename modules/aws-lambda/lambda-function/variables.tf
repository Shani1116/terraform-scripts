variable "function_name" {
  description = "(Required) Unique name for your Lambda Function."
  type        = string
}

variable "description" {
  description = "(Optional) Description of what your Lambda Function does."
  type        = string
  default     = null
}

variable "role" {
  description = "(Required) Amazon Resource Name (ARN) of the function's execution role."
  type        = string
  default     = null
}

variable "handler" {
  description = "(Optional) Function entrypoint in your code."
  type        = string
}

variable "runtime" {
  description = "(Optional) Identifier of the function's runtime"
  type        = string
}

variable "layers" {
  description = "(Optional) List of Lambda Layer Version ARNs"
  type        = list(string)
  default     = null
}

variable "memory_size" {
  description = "(Optional) Amount of memory in MB your Lambda Function can use at runtime."
  type        = number
  default     = 128
}

variable "publish" {
  description = "(Optional) Whether to publish creation/change as new Lambda Function Version."
  type        = bool
  default     = false
}

variable "reserved_concurrent_executions" {
  description = "Optional) Amount of reserved concurrent executions for this lambda function. "
  type        = number
  default     = null
}

variable "tags" {
  description = "(Optional) Map of tags to assign to the object"
  type        = map(string)
  default     = null
}

variable "timeout" {
  description = "(Optional) Amount of time your Lambda Function has to run in seconds."
  type        = number
  default     = 3
}

variable "filename" {
  description = "(Optional) Path to the function's deployment package within the local filesystem."
  type        = string
  default     = null
}

variable "source_code_hash" {
  description = "(Optional) Used to trigger updates."
  type        = string
  default     = null
}

variable "environment_vars" {
  description = "Map of environment variables"
  default = {
    VERSION = "1.0"
  }
}