output "console_password" {
  description = "Console Password"
  value       = aws_iam_user_login_profile.console_access.*.encrypted_password
}

output "iam_access_key" {
  description = "IAM Access Key"
  value       = aws_iam_access_key.user_access_keys.*.id
}

output "iam_secret_key" {
  description = "IAM Secret Key"
  value       = aws_iam_access_key.user_access_keys.*.encrypted_secret
}