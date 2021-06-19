#Creating the IAM User
resource "aws_iam_user" "username" {
  name          = var.username
  path          = var.path
  force_destroy = var.iam_user_force_destroy
  tags          = var.tags
}

#Giving the AWS Console Access
resource "aws_iam_user_login_profile" "console_access" {
  count   = var.console_access == true ? 1 : 0
  user    = aws_iam_user.username.name
  pgp_key = "keybase:username"
}

#Generating Access Keys
resource "aws_iam_access_key" "user_access_keys" {
  count = var.access_key_generate == true ? 1 : 0
  user  = aws_iam_user.username.name
}

#Adding to the groups
resource "aws_iam_user_group_membership" "user_groups" {
  user   = aws_iam_user.username.name
  groups = var.iam_groups
}