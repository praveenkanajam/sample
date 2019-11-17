variable "sample" {
  default = "Hellow world.." //variable should be given in double quotes as it is a string.
}

resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample}"

  }
}