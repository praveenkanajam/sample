variable "fruits" {
}
resource "null_resource" "frt" {
  provisioner "local-exec" {
    command = "echo My Favourate Fruit is: ${var.fruits}"
  }
}