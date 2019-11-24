module "Dev" {
  source = "../orginal"
  ami = var.ami
  ins_type = var.ins_type
  tags = {
    Name = var.tags
  }
}