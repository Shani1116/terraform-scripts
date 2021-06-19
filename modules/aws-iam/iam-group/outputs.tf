output "id" {
  description = "The Group's ID"
  value       = aws_iam_group.group.id
}

output "arn" {
  description = "The ARN assigned by AWS to this group"
  value       = aws_iam_group.group.arn
}

output "name" {
  description = "The name of the group"
  value       = aws_iam_group.group.name
}

output "path" {
  description = "The path of the policy in IAM"
  value       = aws_iam_group.group.path
}

output "unique_id" {
  description = "The unique ID assigned by AWS."
  value       = aws_iam_group.group.unique_id
}