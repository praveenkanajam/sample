module "Dev" {
  source = "../orginal/original.tf"
 ami = var.ami
  ins_type = var.ins_type
  tags = {
  Name = var.tags
  }
}