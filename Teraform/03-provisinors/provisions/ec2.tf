variable "root_password" {
  type = "list"
  default = ["DevOps321"]
  }
}
resource "aws_instance" "web" {
  ami = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  tags = {
    Name = "Web server"
  }
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "root"
      password = "${var.root_password["0"]}"
      host     = self.public_ip
    }

  }


}