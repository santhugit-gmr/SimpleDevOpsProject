provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-01b14b7ad41e17ba4" # Amazon Linux
  instance_type = "t2.micro"
  key_name      = "nginx"

  tags = {
    Name = "DevOps-Server"
  }
}