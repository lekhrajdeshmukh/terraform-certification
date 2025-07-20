provider "aws" {
  region = "us-swest-2"
  access_key = "1234"
  secret_key = "23232"
}

resource "aws_instance" "name" {
  instance_type = var.environment == "dev" ? "t2.micro" : "m5.large"
  ami = "ami-12345678"
}