provider "aws" {
  region = "us-west-2"
  access_key = "12345666"
  secret_key = "242332344"
}

resource "aws_instance" "sandbox-01" {
  ami = "ami-5189a661"
  instance_type = "t2.micro"
  tags = {
    "Name" = "sandbox-01"
  }
}

resource "aws_eip" "lb" {
  domain = "vpc"
}