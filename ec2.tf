resource "aws_instance" "ec2-control" {
  ami                    = "ami-0b9932f4918a00c4f" #ubuntu image
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_custom.id]
  key_name               = "nessakeypair"

  tags = {
    Name = "ec2-control"
  }
}


resource "aws_instance" "ec2-control1" {
  ami                    = "ami-0b9932f4918a00c4f" #ubuntu image
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_custom.id]
  key_name               = "nessakeypair"

  tags = {
    Name = "ec2-control1"
  }
}


resource "aws_instance" "ec2-control2" {
  ami                    = "ami-0b9932f4918a00c4f" #ubuntu image
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_custom.id]
  key_name               = "nessakeypair"

  tags = {
    Name = "ec2-control2"
  }
}