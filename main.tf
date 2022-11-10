
provider "aws" {
  region = "eu-central-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "Actividad1" {
  ami = "ami-070b208e993b59cea"
  instance_type = "t2.micro"
  key_name = "clave1"

  tags = {
    Name = "Actividad1"
  }
}

output "public_ip" {
  value = aws_instance.Actividad1.public_ip
}