provider "aws" {
  region = "us-west-2"
  access_key = "259524996521"
  secret_key = "b__ZZ94QQ27Jxp"
}

resource "aws_iam_user" "iam_user" {
  name = var.username
}