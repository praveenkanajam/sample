/* This code is to create the instance and tag the instance with Name */
resource "aws_instance" "web"{
  ami           = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  tags ={
    Name = "VM1"
  }
  }

