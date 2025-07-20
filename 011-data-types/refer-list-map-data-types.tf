resource "aws_instance" "instance01" {
  ami = "ami-082b5a644766e0e6f"
  instance_type = var.ami_list[1]
}

resource "aws_instance" "instance02" {
  ami = "ami-082b5a644766e0e6f"
  instance_type = var.ami_map[0]
}