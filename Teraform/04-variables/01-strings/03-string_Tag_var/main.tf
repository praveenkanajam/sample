variable "tag" {

}
resource "aws_instance" "awsins" {
  ami = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
  tags = {
    Name = var.tag 
  }
}

/* 
Input / Output: We can able to dynamically create the tags 
# terraform apply -auto-approve -var tag="Virutal_Tag"
aws_instance.awsins: Creating...
aws_instance.awsins: Still creating... [10s elapsed]
aws_instance.awsins: Still creating... [20s elapsed]
aws_instance.awsins: Still creating... [30s elapsed]
aws_instance.awsins: Creation complete after 32s [id=i-064839380b2c931aa]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

*/
