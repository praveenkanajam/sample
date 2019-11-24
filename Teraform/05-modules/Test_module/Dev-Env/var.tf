variable "ami" {
  default = "ami-02383135f96b2293e"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "tags" {
  type = "map"
  default = {
    Name  = Dev-Env
    Version = "1.0"
    date = "nov 24 2019"
  }
}
