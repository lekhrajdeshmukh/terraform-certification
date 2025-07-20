resource "aws_instance" "instances01" {
  ami = "ami-082b5a644766e0e6f"
  instance_type = "m2-micro"
  count = 3
  tags = {
    Name = "instance-${count.index}"
  }
}

resource "aws_iam_user" "users" {
  name = var.users[count.index]
  count = 3
}