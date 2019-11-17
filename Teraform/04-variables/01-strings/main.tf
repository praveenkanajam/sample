variable "sample" {
  default = "Hellow wold"
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample}"
  }
}