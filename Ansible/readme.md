Prereq:
instal the Gitbash s/w
create the pem and pub file using below command.
$ ssh-keygen -f devops 
now two files 
    1. devops.pem
    2. devops


login to aws server and follow the below ins.

[root@ip-172-31-90-171 ~]# ls
devops  sample
[root@ip-172-31-90-171 ~]# useradd test
[root@ip-172-31-90-171 ~]# su -  test
[test@ip-172-31-90-171 ~]$ mkdir .ssh
[test@ip-172-31-90-171 ~]$ chmod 700 .ssh
[test@ip-172-31-90-171 ~]$ ls -ld .ssh
drwx------ 2 test test 6 Nov 12 11:21 .ssh
[test@ip-172-31-90-171 ~]$ pwd
/home/test
[test@ip-172-31-90-171 ~]$ mkdir .ssh
[test@ip-172-31-90-171 ~]$ chmod 700 .ssh/
[test@ip-172-31-90-171 ~]$ cd .ssh/
[test@ip-172-31-90-171 .ssh]$ vi authorized_keys -- Copy the content of devops.pub file^C
[test@ip-172-31-90-171 .ssh]$ vi authorized_keys

Now open the new terminal and use the following commands.

1. with out ssh key it will ask the password, lets check .
    kanakuma@MSORUPAK-LAP1 MINGW64 ~
$ ssh -i devops test@54.84.151.82
test@54.84.151.82's password:

2. with passing the ssh key.
kanakuma@MSORUPAK-LAP1 MINGW64 ~
$ ssh -i devops test@54.84.151.82
Last login: Tue Nov 12 11:40:17 2019 from 223.230.39.147
[test@ip-172-31-90-171 ~]$

in the above devops is key pair. if the both files matches, it will allow for login.
--------

we are uploading the key pair in AWS 
after that launch the new instance. this time with aws-linux , select devops pub file as keypar. Hear it will auto create the ssh file in machine and do the authorized keys also.

once aws linux os installed. the default user name of aws is : ec2-user
connect with ip:
ssh -i devops ec2-user@ipaddr

the details also available in connect after launch instance.

---
for putty we need to do small change .we need to convert the devops file in putty understandale format.

1.open puttygen:
load --> select devops file --> save private file -> yes --> save file as devops-putty.

2.open putty:
provide ip--> connection-->ssh-->auth--> brouse --> devops-putty-->username: ec2-user

-------------
Ansible Installation ( Different Ways)

    1.Yum. 
    2.Python Module.
    3.Source Compilation.

    1.yum: 
    yum install ansible* -y
    2. Python Module:
    Go to https://github.com/ansible/ansible/releases 
    yum install python2-pip -y
    
    pip search ansible
    pip install ansible
    ansible --version
------------
in workstation. copied the pem and pub fies in centos home dir.
created hosts file which will used as inventory.
3.83.158.123
18.206.249.34

ansible -i  hosts all --private-key devops.pem -u centos -m ping
3.83.158.123 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    }, 
    "changed": false, 
    "ping": "pong"
}
18.206.249.34 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    }, 
    "changed": false, 
    "ping": "pong"
}

[centos@ip-172-31-90-171 ~]$ ansible -i  hosts all --private-key devops.pem -u centos -m shell -a
uptime
18.206.249.34 | CHANGED | rc=0 >>
 13:54:48 up 28 min,  2 users,  load average: 0.00, 0.01, 0.01

3.83.158.123 | CHANGED | rc=0 >>
 13:54:49 up 26 min,  1 user,  load average: 0.00, 0.01, 0.01

 [centos@ip-172-31-90-171 ~]$ ls .ansible/
cp  tmp
[centos@ip-172-31-90-171 ~]$ ls .ssh/
authorized_keys  known_hosts
[centos@ip-172-31-90-171 ~]$ cat .ssh/known_hosts
18.206.249.34 ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBD7KL70buMtNQEdKyMbGtTAI2m6k8TlB84fEirEFlZGsBOGMnWBd1DvvQj6usYYxC8qhg93TjwqSJCfYR32WROM=
3.83.158.123 ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBD7KL70buMtNQEdKyMbGtTAI2m6k8TlB84fEirEFlZGsBOGMnWBd1DvvQj6usYYxC8qhg93TjwqSJCfYR32WROM=

dd

