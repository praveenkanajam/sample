variable "sample" {
  default = "Good Morning Hyderabad"
}

resource "null_resource" "sample"  {
  provisioner "local-exec" {
    command = "echo ${var.sample}}"

  }
}