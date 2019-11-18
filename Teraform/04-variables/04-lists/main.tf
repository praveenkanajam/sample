variable "lists" {
  type = "list"
  default = ["apple","mango","praveen","kumar1"]
}
resource "null_resource" "name" {
  provisioner "local-exec" {
    command = "echo ${var.lists[0]},${var.lists[1],${var.lists[4]}}"
  }
}