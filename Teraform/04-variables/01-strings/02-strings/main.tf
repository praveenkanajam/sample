variable "Model" {
  default = "Dell"
  }
resource "null_resource" "mod" {
  provisioner "local-exec" {
    command = "echo Default laptop is :${var.Model}"
  }
}