variable "connection_properties" {
  description = "(Required) A map of key-value pairs used as parameters for this connection"
  type = map(string)
  default = null
}

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
  description = "(Optional) The security group ID list used by the connection"
  type = list
}

variable "subnet_id" {
  description = "(Optional) The subnet ID used by the connection"
  type        = string
}

variable "connection_name" {
  description = "(Required) The name of the connection"
  type = string
}

variable "availability_zone" {
  description = "(Optional) The availability zone of the connection"
  type = string
}

variable "catalog_id" {
  description = "(Optional) The ID of the Data Catalog in which to create the connection"
  type = string
  default = null
}

variable "type" {
  description = "(Optional) The type of the connection"
  type = string
  default = "JDBC"
}

variable "description" {
  description = "(Optional) Description of the connection"
  type = string
}

variable "physical_connection_requirements" {
  description = "(Optional) A map of physical connection requirements"
  type = map(string)
  default = null
} 

variable "match_criteria" {
  description = "(Optional) A list of criteria that can be used in selecting this connection"
  type = list
  default = []
}