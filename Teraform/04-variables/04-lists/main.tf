variable "lists" {
  default = "apple mango goa grapes sapota"
}

resource "null_resource" "name" {
  provisioner "local-exec" {
    command = "echo ${var.lists[0]}"
  }
}