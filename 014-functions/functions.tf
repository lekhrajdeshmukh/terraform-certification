resource "aws_iam_user" "users" {
  name = "demo"
}

resource "aws_iam_user_policy" "user_policy" {
  name   = "demo-user-policy"
  user   = aws_iam_user.users.this.name
  policy = file("./policy/policy.json")
}
