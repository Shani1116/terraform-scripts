output "glue_catalog_database_name" {
  description = "Name for glue catalog database"
  value = aws_glue_catalog_database.glue_database.*.name
}

output "glue_catalog_database_arn" {
  description = "ARN for glue catalog database"
  value       = aws_glue_catalog_database.glue_database.*.arn
}

output "glue_catalog_database_id" {
  description = "ID for glue catalog database"
  value       = aws_glue_catalog_database.glue_database.*.id
}