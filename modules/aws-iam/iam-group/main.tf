resource "aws_iam_group" "group" {
  name = var.group_name
  path = var.path
}

resource "aws_iam_group_policy_attachment" "group_attach" {
  count      = length(var.group_policy_arns)
  group      = aws_iam_group.group.name
  policy_arn = var.group_policy_arns[count.index]
}