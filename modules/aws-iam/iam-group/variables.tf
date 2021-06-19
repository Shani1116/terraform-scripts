variable "group_name" {
  description = "The IAM Group name"
  type        = string
}

variable "path" {
  description = "The IAM Group path"
  type        = string
  default     = "/"
}

variable "group_policy_arns" {
  description = "Policy ARN's list for gorup"
  type        = list(string)
  default     = []
}