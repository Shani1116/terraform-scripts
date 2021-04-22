output "glue_job_id" {
  description = "Glue job name"
  value       = aws_glue_job.glue_job.*.id
}

output "glue_job_arn" {
  description = "Amazon Resource Name (ARN) of Glue Job"
  value       = aws_glue_job.glue_job.*.arn
}