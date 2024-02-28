resource "aws_instance" "wordpress8" {
  ami                         = "ami-0208423bef18c17d1"
  instance_type               = "t2.micro"
  key_name                    = "stockholm"
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    name = "wordpress"
  }
}
