resource "aws_instance" "test" {
  ami = var.aws
  instance_type = var.intance_type
  tags = var.tags
}