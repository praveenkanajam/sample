variable "maps" {
  type = "map"
  default = {
    Course_Name = "Devops"
    Timing = "6AMIST"
    Trainer = "Raghu"

  }
}

resource "null_resource" "null_res" {
  provisioner "local-exec" {
    command = "echo Name of the Course is : ${var.maps["Course_Name"]}"
  }
}