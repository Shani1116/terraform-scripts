variable "aws_glue_catalog_database" {
  description = "The name of the database."
  type = string
}

variable "catalog_id" {
  description = "ID of the Glue Catalog to create the database in"
  default = ""
}

variable "description" {
  description = "Description of the database"
  type = string
}

variable "location_uri" {
  description = "The location of the database"
  type = string
  default = null
}

variable "parameters" {
  description = "A list of key-value pairs that define parameters and properties of the database"
  type = map(string)
  default = null
}