variable "maps" {
  type = "map"
  default = {
    Topic_Name = "MAP"
    Couse_Name = "DevOps"
    Timings    = "6AIST"
  }
}

resource "null_resource" "map_list" {

  provisioner "local-exec" {
    command = "echo  Topic Name is :${var.maps["Topic_Name"]} , Couse name is : ${var.maps["Couse_Name"]}"
  }
}