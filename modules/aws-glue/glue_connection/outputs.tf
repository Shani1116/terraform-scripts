output "connection_name" {
  description = "glue connection name"
  value = aws_glue_connection.glue_connection_vpc.*.name
}

output "vpc_settings" {
  description = "glue connection physical requirements"
  value = aws_glue_connection.glue_connection_vpc.*.physical_connection_requirements
}

output "catalog_id" {
  description = "catalog id"
  value = aws_glue_connection.glue_connection_vpc.*.catalog_id
}