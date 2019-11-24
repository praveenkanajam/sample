resource "aws_instance" "Web" {
  ami = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  tags {
    Name = "OriVM"
  }
}