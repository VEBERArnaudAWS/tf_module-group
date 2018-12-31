resource "aws_iam_group" "group" {
  name = "${var.name}"
}

resource "aws_iam_group_membership" "group_membership" {
  name  = "${var.name}"
  group = "${aws_iam_group.group.name}"

  users = [
    "${var.users}",
  ]
}

resource "aws_iam_group_policy_attachment" "group_policy" {
  group      = "${aws_iam_group.group.name}"
  policy_arn = "${var.policy_arn}"
}
