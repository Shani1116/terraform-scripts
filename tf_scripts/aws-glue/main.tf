# AWS Glue connection --------------------------------------------
module "glue_connection" {
  source = "../modules/aws-glue/glue_connection"

    connection_name = "test-connection"

    jdbc_connection_url  = jsondecode(data.aws_secretsmanager_secret_version.current.secret_string)["conn_url"]
    connection_uname = jsondecode(data.aws_secretsmanager_secret_version.current.secret_string)["conn_user"]
    connection_pwd = jsondecode(data.aws_secretsmanager_secret_version.current.secret_string)["conn_pass"]
    
    security_groups = "" # (Optional) Security group ID
    subnet_id = data.terraform_remote_state.vpc_params.outputs.private_subnets[0]
    availability_zone    = var.conn_azs[0]

    type        = var.conn_type
    description = "Test connection"

}

# AWS Glue database --------------------------------------------
module "glue_database" {
  source = "../modules/aws-glue/glue_database"

  aws_glue_catalog_database = "test-database"

  description  = "Database created for testing"
  catalog_id      = module.glue_connection.catalog_id[0]

  location_uri = var.db_location_uri
  parameters       = var.db_params

}

# AWS Glue crawler --------------------------------------------
module "glue_crawler" {
  source = "../modules/aws-glue/glue_crawler"

  crawler_name = "test-crawler"
  aws_glue_catalog_database   = "test-database"       
  instance_iam_role = "" # (Required) IAM Role ARN

  crawler_s3_bucket      = var.crawl_s3_path

  # schedule     = var.crawl_schedule
  # table_prefix = var.crawl_table_prefix

  tags = var.tags
}

module "glue_job" {
  source = "../modules/aws-glue/glue_job"

  aws_glue_job_name            = "test-job"
  instance_iam_role        = "" # (Required) IAM Role ARN
  script_location = "" # (Required) Scipt location

  tags = var.tags

  # connections = var.job_connections
  # dpu         = var.job_dpu
  # arguments   = var.job_arguments
  # language    = var.job_language
  # bookmark    = var.job_bookmark
  # temp_dir    = var.job_temp_dir
}

# AWS Glue trigger --------------------------------------------
module "glue_trigger" {
  source = "../modules/aws-glue/glue_trigger"

  aws_glue_trigger_name     = "test-trigger"
  aws_glue_trigger_type        = var.trigger_type
  enabled     = var.trigger_enabled
  description = var.trigger_description

  crawler_name = "test-crawler"
  # job_name = module.glue_job.aws_glue_job_name
  
  tags = var.tags
}