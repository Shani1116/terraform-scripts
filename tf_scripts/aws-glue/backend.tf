terraform {
  backend "s3" {
    bucket  = "terraform-bucket"
    key     = "aws-glue/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}