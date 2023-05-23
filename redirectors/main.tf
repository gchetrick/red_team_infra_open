terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  access_key = var.aws-akey
  secret_key = var.aws-skey
  region     = "us-east-1"
}

resource "random_id" "server" {
  count = var.num_inst
  byte_length = 4
}

resource "aws_instance" "http-rdir" {
  count = var.num_inst
  tags = {
    Name = "http-rdir-${random_id.server.*.hex[count.index]}"
  }
  
  ami = var.amis
  instance_type = var.instance_type
  key_name                    = aws_key_pair.grog.key_name
  vpc_security_group_ids      = [aws_security_group.http-rdir.id]
  subnet_id                   = aws_subnet.default.id
  associate_public_ip_address = true
}
