provider "aws" {}
resource "aws_instance" "web" {
  ami = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  tags = {
    Name = "Remote Exec"
  }
  provisioner "remote-exec" {
    type = "ssh"
    username = "root"
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
output "Pub_ip" {
  value = aws_instance.web.public_ip
}