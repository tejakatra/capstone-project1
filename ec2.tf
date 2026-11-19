resource "aws_instance" "web_server" {
  ami           = "ami-0037855f86d0a04b4"
  instance_type = "t2.micro"

  subnet_id = data.aws_subnet.public.id

  vpc_security_group_ids = [
    aws_security_group.teja_web_sg.id
  ]

  user_data = file("userdata.sh")

  tags = {
    Name = "teja-web-server"
  }
}
