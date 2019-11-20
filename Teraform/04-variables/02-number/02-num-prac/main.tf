variable "roll" {
  default = "10"
}

resource "null_resource" "rl" {
  provisioner "local-exec" {
    command = "echo The Default Number in this program is :${var.roll}"
  }
}