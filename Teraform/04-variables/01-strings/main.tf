variable "sample" {
  default = "Hellow world.."
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample}"

  }
}