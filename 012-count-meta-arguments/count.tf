provider "aws" {
  region = "us-east-1"
  access_key = "ZCP59AWGZ2LSPX3T3G5V"
  secret_key = "AI2XGZVm0Ap2vZPpr921+RQQoCdLnLJ5lTPvxwzg"
}

resource "aws_instance" "instances" {
  ami = "ami-082b5a644766e0e6f"
  instance_type = "m2-micro"
  count = 3
}