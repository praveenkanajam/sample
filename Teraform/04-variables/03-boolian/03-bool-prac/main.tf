variable "bool" {
  default = true
}
resource "null_resource" "bool" {
  provisioner "local-exec" {
    command = "echo The defualt boolian in the prg is:${var.bool}}"
  }
}