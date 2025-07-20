provider "aws" {
  region = "us-west-1"
  access_key = "123444"
  secret_key = "34544555"
}

resource "aws_instance" "instance-01" {
  ami = "ami-005e54dee72cc1d00"
  instance_type = "t3.micro"

  tags = {
    Name = "ec2-01"
  }
}

resource "aws_eip" "lb" {
  domain = "vpc"
}