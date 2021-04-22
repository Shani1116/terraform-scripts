output "glue_crawler_id" {
  description = "Crawler name"
  value = aws_glue_crawler.glue_crawler_s3.*.id
}

output "crawler_db_name" {
  description = "Database name associated with the crawler"
  value = aws_glue_crawler.glue_crawler_s3.*.database_name
}

output "glue_crawler_arn" {
  description = "The ARN of the crawler"
  value       = aws_glue_crawler.glue_crawler_s3.*.arn
}