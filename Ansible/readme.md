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


