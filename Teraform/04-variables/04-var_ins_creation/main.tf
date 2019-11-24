resource "aws_instance" "web" {
  ami = var.inst.ami
  instance_type = var.inst.instance_type
  tags = {
    Name = "Var ins"
  }
}

variable "inst" {
  type = "map"
  default = {
    ami = ""
    instance_type =""
  }
}