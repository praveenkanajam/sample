variable "var1" {
  default = "Manas Simha"
}
resource "null_resource" "var1" {
  provisioner "local-exec" {
    command = "echo ${var.var1}"
  }
}

