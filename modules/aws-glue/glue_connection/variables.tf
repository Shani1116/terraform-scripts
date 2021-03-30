variable "jdbc_connection_url" {
  description = "JDBC connection URL"
  type = string
}

variable "connection_uname" {
  description = "JDBC connection username"
  type = string
}

variable "connection_pwd" {
  description = "JDBC connection password"
  type = string
}

variable "security_groups" {
  description = "A map of security groups"
  type = list
}

variable "subnet_id" {
  description = "subnet ID"
  type        = string
}

variable "connection_name" {
  description = "AWS glue connection name"
  type = string
}

variable "availability_zone" {
  description = "AZ name"
  type = string
}

variable "catalog_id" {
  type = string
  default = ""
}

variable "type" {
  type = string
  default = "JDBC"
}

variable "description" {
  type = string
  default = ""
}

# variable "connection_arn" {
#   type    = string
# }