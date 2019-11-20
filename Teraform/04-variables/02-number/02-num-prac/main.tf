variable "num" {
  default = 100000000
}
resource "null_resource" "num" {
  provisioner "local-exec" {
    command = "echo The Default number in this program is :${var.num}"
  }
}