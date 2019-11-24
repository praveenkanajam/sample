  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = var.varweb.user
      password = var.varweb.password
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
