variable "Run_var" {

}

resource "null_resource" "rn" {
  provisioner "local-exec" {
    command = "echo  hello WOrld run time var is ${var.Run_var}}"
  }
}

/* I/o:
# terraform apply -auto-approve -var Run_var="Run Time variable"
null_resource.rn: Creating...
null_resource.rn: Provisioning with 'local-exec'...
null_resource.rn (local-exec): Executing: ["/bin/sh" "-c" "echo  hello WOrld run time var is Run Time variable}"]
null_resource.rn (local-exec): hello WOrld run time var is Run Time variable}
null_resource.rn: Creation complete after 0s [id=5059577103106956147]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
*/