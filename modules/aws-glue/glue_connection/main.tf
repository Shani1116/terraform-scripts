resource "aws_glue_connection" "glue_connection_vpc" {
  name = var.connection_name

  connection_properties = {
    JDBC_CONNECTION_URL = var.jdbc_connection_url
    PASSWORD            = var.connection_pwd
    USERNAME            = var.connection_uname
  }

  physical_connection_requirements {
    availability_zone      = var.availability_zone
    security_group_id_list = var.security_groups
    subnet_id              = var.subnet_id
  }

  catalog_id      = "${var.catalog_id}"
  connection_type = "${var.type}"
  description     = "${var.description}"
}
