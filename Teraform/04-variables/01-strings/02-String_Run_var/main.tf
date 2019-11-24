variable "Run_var" {

}

resource "null_resource" "rn" {
  provisioner "local-exec" {
    command = "echo  hello WOrld run time var is ${var.Run_var}}"
  }
}