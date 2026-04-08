provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-01b14b7ad41e17ba4" # Amazon Linux
  instance_type = "t3.micro"
  key_name      = "nginx"
  subnet_id = "subnet-0822b76743060b731"
  associate_public_ip_address = true

  tags = {
    Name = "DevOps-Server"
  }
}