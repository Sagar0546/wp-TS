resource "aws_instance" "wordpress" {
  ami                         = "ami-000c0df09737657b6"
  instance_type               = "t3.micro"
  key_name                    = "master-1"
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    name = "wordpress"
  }
}
