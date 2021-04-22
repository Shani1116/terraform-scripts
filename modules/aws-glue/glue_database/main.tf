resource "aws_glue_catalog_database" "glue_database" {
  name = var.aws_glue_catalog_database

  description  = var.description
  catalog_id   = var.catalog_id

  location_uri = var.location_uri
  parameters = var.parameters

  # tags = var.tags
}