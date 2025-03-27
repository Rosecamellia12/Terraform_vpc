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

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL7hpjWg3O/9DKb2ilevwb/3uz0rS5whBzs2AcRJjRlk piyach60@gmail.com"
  # public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHFX8c1QL9PZTcDv0bP9q3Oer/Ui2X5wEBkbPNspr36K gaura@DESKTOP-69MDMK7"
}
