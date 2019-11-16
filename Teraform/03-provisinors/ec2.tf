resource "aws_instance" "web"{
  ami           = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "root"
      password = "Devops"
      host     = self.public_ip
    }
    inline = [
      "cd /tmp"
      "git clone https://gitlab.com/dops42/shell-scripts.git"
      "puppet apply",
      "consul join ${aws_instance.web.private_ip}",
    ]
  }
}