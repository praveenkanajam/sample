module "Dev" {
  source = "../Org-Env"
  ami = var.ami
  intance_type = var.instance_type
  tags = var.tags
  }

resource "aws_instance" "" {
  ami = ""
  instance_type = ""
}