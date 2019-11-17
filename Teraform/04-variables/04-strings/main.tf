variable "name" {
  default = "APPLE "
}
resource "null_resource" "name" {
  provisioner "local-exec" {
    command = "echo Hai ${var.name}}, How are u ..?"
  }
}