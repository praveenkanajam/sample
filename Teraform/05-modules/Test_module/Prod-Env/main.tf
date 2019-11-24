module "Dev" {
  source = "../Org-Env"
  ami = var.ami
  instance_type = var.instance_type
  volume_tags = var.volume_tags
  tags = var.tags

}

