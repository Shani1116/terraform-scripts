# Get VPC Vaules -------------------------------------------------------------------------
data "terraform_remote_state" "vpc_params" {
  backend = "s3"
  config = {
    bucket  = "terraform-bucket"
    key     = "aws-glue/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

data "template_file" "glue_jdbc_json" {
  template = file("${path.module}/data/glue_jdbc.json")
}