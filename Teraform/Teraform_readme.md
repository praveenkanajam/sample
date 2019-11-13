installation:
1.download the terrafom:
    wget https://releases.hashicorp.com/terraform/0.12.13/terraform_0.12.13_linux_amd64.zip
2. unzip the file.
    unzip terraform_0.12.13_linux_amd64.zip
3. setting the env path in .bash_profile
    export PATH="$PATH:~"
4. go to teraform folder and create provider.tf file and 
        cat 01-provider.tf
        provider "aws" {}
5. like that we can add the mysql provider also.

6. the first and foremost command in teraform as below and it will download the required plugins and create a file .terraform file

    terraform init

Note: after giving the above command it will show the provider version details of aws and mysql
    * provider.aws: version = "~> 2.35"
    * provider.mysql: version = "~> 1.9"

7. we can view the plugins in the below folder.
[root@ip-172-31-88-97 Teraform]# ls .terraform/plugins/linux_amd64/
lock.json  terraform-provider-aws_v2.35.0_x4  terraform-provider-mysql_v1.9.0_x4

8. terraform init command will validate the syntax also.

9. Create new folder with the name of 02-Resources and create a file ec2.tf
    resource "aws_instance" "web" 
{
  ami           = "ami-02383135f96b2293e"
  instance_type = "t2.micro"
}