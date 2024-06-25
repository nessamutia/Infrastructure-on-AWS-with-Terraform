resource "aws_network_acl" "public_nacl" {
  vpc_id = aws_vpc.custom_vpc.id
  subnet_ids = [aws_subnet.public_subnet.id]

  egress {
    rule_no    = 100
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 65535
  }

  ingress {
    rule_no    = 100
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }

  ingress {
    rule_no    = 110
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 22
    to_port    = 22
  }

  tags = {
    Name = "public_nacl"
  }
}
