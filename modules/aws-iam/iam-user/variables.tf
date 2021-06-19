variable "username" {
  description = "Username of the IAM user"
  type        = string
}

variable "path" {
  description = "Path in which to create the user."
  type        = string
  default     = "/"
}

variable "iam_user_force_destroy" {
  description = "Whether to forcefully destory the IAM user"
  type        = bool
  default     = false
}

variable "console_access" {
  description = "Whether to Grant AWS Console access"
  type        = bool
  default     = false
}

variable "access_key_generate" {
  description = "Whether to Generate Access Keys or not"
  type        = bool
  default     = false
}

variable "iam_groups" {
  description = "List of the Groups names that user should go to"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tag's for the IAM user"
  type        = map(any)
  default     = {}
}