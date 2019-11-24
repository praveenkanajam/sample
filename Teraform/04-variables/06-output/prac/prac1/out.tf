provider "aws" {

}
resource "aws_instance" "web1" {
  ami = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  tags = {
    Name = "DOut_VMDEV"
  }
}

output "wb" {
  value = aws_instance.web1.private_ip
}