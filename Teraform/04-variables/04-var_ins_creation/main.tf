resource "aws_instance" "web" {
  ami = var.inst.ami
  instance_type = var.inst.instance_type
  tags = {
    Name = var.inst.tag
  }
}

variable "inst" {
  type = "map"
  default = {
    ami = "ami-02383135f96b2293e"
    instance_type ="t2.micro"
    tag = "VirtTag"
  }
}
output "Public_IP" {
  value = aws_instance.web.public_ip
}