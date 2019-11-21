variable "MPP" {
  type = "map"
  default = {
    Fridge = "Godrej"
    Board  = "Ikea"
    Chair  = "Nilkamal"
  }
}
resource "null_resource" "web" {
  provisioner "local-exec" {
    command = "echo MY fridge company is :${var.MPP["Fridge"]}."
  }
}


