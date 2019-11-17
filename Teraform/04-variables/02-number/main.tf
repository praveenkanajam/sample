variable "name" {
  default = "1000000"
}

resource "null_resource" "local" {
  provisioner "local-exec" {
    command = "echo ${var.name}}"
  }
}