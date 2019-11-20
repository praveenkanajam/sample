variable "roll" {
  default = "10"
}

resource "null_resource" "rl" {
  provisioner "local-exec" {
    command = "echo ${var.roll}"
  }
}