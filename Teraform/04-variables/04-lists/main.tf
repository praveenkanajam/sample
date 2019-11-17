variable "lists" {
  type = "list"
  default = ["apple","mango"]
}
resource "null_resource" "name" {
  provisioner "local-exec" {
    command = "echo ${var.lists[0]}"
  }
}