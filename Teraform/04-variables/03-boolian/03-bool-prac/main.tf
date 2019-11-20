variable "bool" {
  default = true
}
resource "null_resource" "bool" {
  provisioner "local-exec" {
    command = "echo ${var.bool}}"
  }
}