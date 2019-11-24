resource "aws_instance" "test" {
  ami = var.ami
  instance_type = var.instance_type
  tags = var.tags
  volume_tags = {
    Name = var.tags
  }
}