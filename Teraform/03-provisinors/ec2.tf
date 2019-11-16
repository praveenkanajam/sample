resource "aws_instance" "web"{
  ami           = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0611ef56442f01f44","sg-029c586e7bad3d1b1"]
  provisioner "remote-exec" { // remote-exec it is used to execute the script after instance creation
    connection {
      type     = "ssh"
      user     = "root"
      password = "Devops321"
      host     = self.public_ip
      /* Provisioner Connection Settings
      Most provisioners require access to the remote resource via SSH or WinRM, and expect a nested connection
      block with details about how to connect.*/

    }
    inline = [
      "cd /tmp",
      "git clone https://$1:$2@github.com/praveenkanajam/sample.git",
      "sh /tmp/sample/shell-scripts-master/studentapp/install.sh",
      "puppet apply",
      "consul join ${aws_instance.web.private_ip}",
    ]
  }
}