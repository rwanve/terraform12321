

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "Demo" {
  ami           = "ami-05c8ca4485f8b138a"
  instance_type = var.instacetype
  key_name = "aaa"
  tags = {
    Name = "webserver"
  }
}


#Elastic Ip
resource "aws_eip" "example" {
  vpc = true
}

#Elastic Ip allocation
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.Demo.id
  allocation_id = aws_eip.example.id
}

#output value 
output "publicip" {
  value = aws_instance.Demo.public_ip
}
