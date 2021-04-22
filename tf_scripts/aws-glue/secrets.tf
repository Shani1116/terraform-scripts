resource "aws_secretsmanager_secret_version" "glue_secrets"{
  secret_name  = "jdbc_creds"
  secret_value = data.template_file.glue_jdbc_json.rendered

  tags = var.tags
}

data "aws_secretsmanager_secret" "secrets" {
  name = "jdbc_creds"
}

data "aws_secretsmanager_secret_version" "current" {
  secret_id = data.aws_secretsmanager_secret.secrets.id
}