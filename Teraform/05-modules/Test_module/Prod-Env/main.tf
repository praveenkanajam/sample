module "Dev" {
  source = "../Org-Env"
  ami = var.ami
  instance_type = var.instance_type
  tags = var.tags
  volume_tags = var.volume_tags
  }

