resource "aws_instance" "my_instance" {
  ami             = "ami-0c1ac8a41498c1a9c"  # Change to the latest Amazon Linux AMI
  instance_type   = "t3.micro"
  subnet_id       = aws_subnet.my_subnet.id
  security_groups = [aws_security_group.my_sg.id]
  key_name        = aws_key_pair.deployer.key_name  # Replace with your key pair name

  tags = {
    Name = "MyEC2Instance"
  }
}

