variable "name" {
  default = "1"
}

resource "null_resource" "local" {
  provisioner "local-exec" {
    command = "echo ${var.name}}"
  }
}