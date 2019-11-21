variable "maps" {
  type = "map"
  default = {
    State = "Telangana"
    City = "Hyderabad"
    Country = "India"
  }
}

resource "null_resource" "mp" {
  provisioner "local-exec" {
    command = "echo Our state is :${var.maps["State"]} Our City is : ${var.maps["City"]}"
  }
}