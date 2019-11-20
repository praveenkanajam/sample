variable "mps1" {
  type = "map"
  default = {
    company1 = "Wipro"
    company2 = "IBM"
    company3 = "Oracle"
  }
}
resource "null_resource" "map_list" {
  provisioner "local-exec" {
    command = "echo List of Software companys are: ${var.mps1["company1"]} , ${var.mps1["company3"]}"
  }
}