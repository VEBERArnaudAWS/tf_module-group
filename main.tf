resource "aws_iam_group" "group" {
  count = var.bypass ? 0 : 1

  name = var.name
}

resource "aws_iam_group_membership" "group_membership" {
  count = var.bypass ? 0 : 1

  name  = var.name
  group = aws_iam_group.group[0].name

  users = var.users
}

resource "aws_iam_group_policy_attachment" "group_policy" {
  count = var.bypass ? 0 : 1

  group      = aws_iam_group.group[0].name
  policy_arn = var.policy_arn
}
