resource "aws_instance" "Web" {
  ami = var.ami
  instance_type = var.ins_type
  tags = {
    Name = var.ins_type
  }
}