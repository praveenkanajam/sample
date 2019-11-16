Def: 
Teraform: Infrastructure as code (IAC). IAC is the process of managing and provisioning computer data center through machine - redable definition files, rather than physical Hardware configuration or interactive configuration tools.
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
        provider "mysql" {}
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
10. use the below plan command.
    terraform plan

11. it was failed as we had not provided the credentials.

12. creter user to access AWS.
To get the provider creds. login to aws ---> IAM -->Users--> Add user--> Access type --> Programatic Access -->   Next prmissions-> Attach Existing permissions --> Adminitrator Access --> Create user.

Environment variables

You can provide your credentials via the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY, environment variables, representing your AWS Access Key and AWS Secret Key, respectively. Note that setting your AWS credentials using either these (or legacy) environment variables will override the use of AWS_SHARED_CREDENTIALS_FILE and AWS_PROFILE. The AWS_DEFAULT_REGION and AWS_SESSION_TOKEN environment variables are also used, if applicable:

provider "aws" {}

Usage:

$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_DEFAULT_REGION="us-west-2"
$ terraform plan

Plan: 1 to add, 0 to change, 0 to destroy.

$ terraform apply

Output:
One Instance creEnter a value: yes

aws_instance.web: Creating...
aws_instance.web: Still creating... [10s elapsed]
aws_instance.web: Still creating... [20s elapsed]
aws_instance.web: Still creating... [30s elapsed]
aws_instance.web: Creation complete after 31s [id=i-0a1ab2e3e300a3b8f]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.ated 
Plan: 1 to add, 0 to change, 0 to destroy.
---
Now remove the instance :
# terraform destroy


  Enter a value: yes

aws_instance.web: Destroying... [id=i-0a1ab2e3e300a3b8f]
aws_instance.web: Still destroying... [id=i-0a1ab2e3e300a3b8f, 10s elapsed]
aws_instance.web: Still destroying... [id=i-0a1ab2e3e300a3b8f, 20s elapsed]
aws_instance.web: Destruction complete after 29s

Destroy complete! Resources: 1 destroyed.

-------------------------------------------------
Resource Argument Vs Resource Attribute:
In the below example ami ia argument, using the argument we are providing the input.
After creating the resource it is going to expose some information about, the resource
which is created, The information about the instance. the infomation about the created resource which was created by terraform.

Example:
ami           = "ami-02383135f96b2293e"
instance_type = "t2.micro"


local-exec Provisioner
Jump to Section

Local provisioner:
The local-exec provisioner invokes a local executable after a resource is created. This invokes a process on the machine running Terraform, not on the resource. See the remote-exec provisioner to run commands on the resource.

Note that even though the resource will be fully created when the provisioner is run, there is no guarantee that it will be in an operable state - for example system services such as sshd may not be started yet on compute resources.

Now the task is after instance creation, we need to execute the shell script.
Hear please refer the 03-providers/ec2.tf file with the auto script.

