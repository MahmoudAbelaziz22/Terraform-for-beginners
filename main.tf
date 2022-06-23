resource "aws_iam_user" "admin-user" {
  name = "lucy"
  tags = {
    tag-key = "Technical team leader"
  }
}

resource "aws_iam_policy" "adminUser" {
  name        = "adminUser"
  policy = file("admin-policy.json")
}

resource "aws_iam_policy_attachment" "test-attach" {
  name = "test"
  users      = [aws_iam_user.admin-user.name]
  policy_arn = aws_iam_policy.adminUser.arn
}




