
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "Demo" {
  ami           = "ami-05c8ca4485f8b138a"
  instance_type = t2.micro
  key_name = "aaa"
  tags = {
    Name = "webserver"
  }
}
