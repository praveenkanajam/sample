variable "varweb" {
  type = "map"
  default = {
    ami = "ami-02383135f96b2293e"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0611ef56442f01f44","sg-029c586e7bad3d1b1"]
    user = "root"
    password = "DevOps321"
    tag = "remoteExec"
}}

