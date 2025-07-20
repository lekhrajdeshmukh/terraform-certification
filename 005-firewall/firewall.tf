provider "aws" {
  region = "us-east-1"
  access_key = "A5N1P8XEYBO12HXEZWKS"
  secret_key = "EhTJoCq36ARkZhKY8UilDcCCwm0z5QyIUblEq8Nh"
}

resource "aws_security_group" "allow_tls" {
  name = "custom-firewall"
  description = "Allow TLS inbound traffic and all outbound traffic"
}

resource "aws_vpc_security_group_ingress_rule" "incoming_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 80
  ip_protocol = "tcp"
  to_port = 80
}

resource "aws_vpc_security_group_egress_rule" "outgoing_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1" #semanically equivalent to all ports and protocol
}