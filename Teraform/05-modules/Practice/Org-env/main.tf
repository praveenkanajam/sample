resource "aws_instance" "org" {
  ami = var.ami
  instance_type =var.instance_type
  volume_tags = var.volume_tags
}

