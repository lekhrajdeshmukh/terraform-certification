provider "aws" {
  region = "us-west-1"
  access_key = "12344"
  secret_key = "2323232"
}

resource "aws_instance" "instance_01" {
    tags = {
      "Name" = "instance-01"
    }
    ami = var.ami
    instance_type = var.instance_type
  
}