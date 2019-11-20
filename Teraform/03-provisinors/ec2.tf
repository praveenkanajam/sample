resource "aws_instance" "web"{
  ami           = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0611ef56442f01f44","sg-029c586e7bad3d1b1"]
  #// remote-exec it is used to execute the script after instance creation
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "root"
      password = "DevOps321"
      host     = self.public_ip
      /* Provisioner Connection Settings
      Most provisioners require access to the remote resource via SSH or WinRM, and expect a nested connection
      block with details about how to connect.*/
    }
    inline = [
      "cd /tmp",
      "git clone https://praveenkanaja:Td@github.com/praveenkanajam/sample.git",
      "sh /tmp/sample/Shell-Script/studentapp/install.sh",
      "sleep 10",
      "echo Unmout the git Clone",
      "rm -rf /tmp/sample",
      "echo exit status $?",
      "echo ipaddress:",
      "curl http://checkip.amazonaws.com",
          ]
  }
}