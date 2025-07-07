provider "aws" {
  region = "us-west-2"
  access_key = "1234555"
  secret_key = "342323233"
}

resource "aws_instance" "web" {
  ami = "ami-005e54dee72cc1d00"
  instance_type = "t3.micro"

  tags = {
    Name = "ec2-01"
  }
}