resource "aws_instance" "test" {
  ami = var.ami
  instance_type = var.instance_type
  volume_tags = var.volume_tags
  tags = var.tags
}
