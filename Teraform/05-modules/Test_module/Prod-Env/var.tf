variable "ami" {
  default = "ami-02383135f96b2293e"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "tags" {
  type = "map"
  default = {
    Name  = "Dev-Env001"
    Version = "1.0"
    date = "nov 24 2019"
  }
}
variable "volume_tags" {
  Name = "Dev-Env001"
}
