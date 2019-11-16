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
      "cd /tmp",
      "git clone https://github.com/praveenkanajam/sample.git",
      "sh /tmp/sample/shell-scripts-master/studentapp/install.sh",
      "puppet apply",
      "consul join ${aws_instance.web.private_ip}",
    ]
  }
}