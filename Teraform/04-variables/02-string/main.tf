variable "sample" {
  default = "Good Morning Hyderabad"
}

variable "sample1" {
  default = "Hellow World"
}
resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.sample}}"

  }
}