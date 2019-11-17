variable "bln" {
  default = true // no need to give in double quotes for boolian.
}
resource "null_resource" "name" {
  provisioner "local-exec" {
    command = "echo ${var.bln}"
  }
}