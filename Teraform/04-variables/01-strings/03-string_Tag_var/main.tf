variable "tag" {

}
resource "aws_instance" "awsins" {
  ami = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  tags = {
    Name = var.tag
  }
}