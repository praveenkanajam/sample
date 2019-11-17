variable "course" {
  default = Devops
}
resource "null_resource" "" {
provisioner "local-exec" {
  command = "echo This course is ${var.course}"
}
}