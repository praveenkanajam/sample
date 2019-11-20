variable "list" {
  type = "list"
  default = ["apple","mango",10,false]
}

resource "null_resource" "lst" {
  provisioner "local-exec" {

        command = "echo first index is :${var.list["0"]}, Second Index is ${var.list["3"]}"
  }
}