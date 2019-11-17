variable "name" {
  default = 1000000 //value need not to be given in double quotes
}

resource "null_resource" "local" {
  provisioner "local-exec" {
    command = "echo ${var.name}"
  }
}