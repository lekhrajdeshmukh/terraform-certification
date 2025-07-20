provider "aws" {
  region = "us-west-1"
  access_key = "123444"
  secret_key = "2323232"
}

resource "aws_eip" "pip" {
  domain = "vpc"
}

resource "aws_instance" "sandbox01" {
  tags = {
    name = "sandbox"
  }
  ami = "ami-5189a661"
  instance_type = "e2.micro"
}

output "public_ip" {
  value = aws_eip.pip.public_ip
}

output "current_url" {
    value = "http://${aws_eip.pip.public_ip}:8080"
}