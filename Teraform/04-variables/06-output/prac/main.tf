provider "aws" {
}
resource "aws_instance" "web" {
  ami = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  tags = {
    Name = "OUTTestVM"
  }

}
output "web1" {

  value = aws_instance.web.public_ip
 
}