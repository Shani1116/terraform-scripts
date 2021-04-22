# Glue connection variables--------------------------------

variable "connection_properties" {
  description = "A map of key-value pairs used as parameters for this connection"
  type = map(string)
  default = null
}

variable "conn_name" {
  description = "The name of the connection"
  type = string
  default = ""
}

variable "conn_url" {
  description = "Glue connection URL"
  default = ""
}

variable "conn_user" {
  description = "Username for the connection"
  sensitive = true
  default = ""
}

variable "conn_pass" {
  description = "Password for the connection"
  sensitive = true
  default = ""
}

variable "physical_connection_requirements" {
  description = "A map of physical connection requirements"
  type = map(string)
  default = null
} 

variable "conn_azs" {
  description = "The availability zone of the connection"
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "conn_type" {
  description = "The type of the connection"
  default = "JDBC"
}

variable "conn_description" {
  description = " Description of the connection"
  default = ""
}

# Glue database variables --------------------------------

variable "db_name" {
  description = "The name of the database"
  type = string
  default = ""
}

variable "db_description" {
  description = "Description of the database"
  default = ""
}

variable "db_location_uri" {
  description = "The location of the database"
  default = ""
}

variable "db_params" {
  description = "A list of key-value pairs that define parameters and properties of the database"
  type    = map(string)
  default = null
}

# Glue crawler variables --------------------------------

variable "crawl_name" {
  description = "Name of the crawler"
  type = string
  default = ""
}

variable "crawl_role" {
  description = "The IAM role used by the crawler to access other resources"
  default = ""
}

variable "crawl_schedule" {
  description = "A cron expression used to specify the schedule"
  default = ""
}

variable "crawl_table_prefix" {
  description = "The table prefix used for catalog tables that are created"
  default = ""
}

variable "crawl_s3_path" {
  description = "The path to the Amazon S3 target"
  default = ""
}

# Glue job variables --------------------------------

variable "job_name" {
  description = "The name assigned to this job"
  default = ""
}

variable "job_role_arn" {
  description = "The ARN of the IAM role associated with this job"
  default = ""
}

variable "job_connections" {
  description = "The list of connections used for this job"
  type    = list
  default = []
}

variable "job_dpu" {
  description = "The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs"
  default = 2
}

variable "job_script" {
  description = "Specifies the S3 path to a script that executes a job"
  default = ""
}

variable "job_language" {
  description = "Default job language"
  default = "python"
}

variable "job_bookmark" {
  description = "Default bookmark value"
  default = "disabled"
}

variable "job_arguments" {
  description = "The map of default arguments for this job"
  type    = map
  default = {}
}

# Glue trigger variables --------------------------------

variable "trigger_name" {
  description = "The name of the trigger"
  default = ""
}

variable "trigger_schedule" {
  description = "A cron expression used to specify the schedule"
  default = null
}

variable "trigger_job" {
  description = "The name of a job to be executed"
  default = null
}

variable "trigger_type" {
  description = "The type of trigger"
  default = "ON_DEMAND"
}

variable "trigger_enabled" {
  description = "Start the trigger"
  default = true
}

variable "trigger_description" {
  description = "A description of the new trigger"
  default = null
}

variable "trigger_arguments" {
  description = "Arguments to be passed to the job"
  type    = map(string)
  default = {}
}

variable "trigger_timeout" {
  description = "The job run timeout in minutes"
  default = 2880
}

variable "tags" {
  description = "Tags"
  default = {}
}