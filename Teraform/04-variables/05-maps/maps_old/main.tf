variable "maps1" {
  type = "map"
  default = {
    company1 = Wipro
    company2 = IBM
    company3 = Oracle
  }
}
resource "null_resource" "map_list" {
  provisioner "local-exec" {
    command = "echo List of Software companys are: ${var.maps1["company1"]} , ${var.maps1["company3"]} and ${var.maps1["company3"]}"
  }
}