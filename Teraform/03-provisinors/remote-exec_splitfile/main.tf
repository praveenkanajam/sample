resource "aws_instance" "web" {
  ami = var.varweb["ami"]
  instance_type = var.varweb["instance_type"]
  vpc_security_group_ids = var.varweb["vpc_security_group_ids"]
  tags = {
    Name = var.varweb["tag"]
  }

  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = var.varweb["user"]
      password = var.varweb["password"]
      host = self.public_ip
    }
    inline = [
      "echo This is Remote exec inline",
      "mkdir -p /tmp/remote",
      "echo exit status of mkdir -p /tmp/remote : $?",
      "echo IPV4 as below",
      "ifconfig >> ip.txt",
      "cat ip.txt",
      "curl http://checkip.amazonaws.com"
    ]
  }
}