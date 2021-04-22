output "glue_trigger_id" {
  description = "Trigger name"
  value       = aws_glue_trigger.glue_job_trigger.*.id
}

output "glue_trigger_arn" {
  description = "Amazon Resource Name (ARN) of Glue Trigger"
  value       = aws_glue_trigger.glue_job_trigger.*.arn
}