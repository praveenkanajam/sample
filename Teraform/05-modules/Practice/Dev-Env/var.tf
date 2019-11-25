variable "ami" {
  default = "ami-02383135f96b2293e"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "volume_tags" {
  type = "map"
  default = {
    Name = "DEV-VM"
    Unique_id = "001"
  }
}

variable "tags" {
  type = "map"
  default = {
    Name = "DEV-VM"
    Unique_id = "001"
  }
}