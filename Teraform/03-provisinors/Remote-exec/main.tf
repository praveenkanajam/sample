provider "aws" {}
resource "aws_instance" "web" {
  ami = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0611ef56442f01f44","sg-029c586e7bad3d1b1"]
  tags = {
    Name = "Remote Exec"
  }

provisioner "remote-exec" {
    connection {
    type = "ssh"
    user = "root"
    password = "DevOps321"
    host = self.public_ip
  }
  inline = [
    "echo This is Remote exec inline",
    "mkdir -p /tmp/remote",
    "echo $?",
    "echo IPV4 as below",
    "ifconfig >> ip.txt",
    "cat ip.txt",
    "curl http://checkip.amazonaws.com"
  ]
}
}
output "Pub_ip" {
  value = aws_instance.web.public_ip
}