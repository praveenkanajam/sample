Step 1:
Check the GIT package installed or not.
...
# rpm -qa git
git-1.8.3.1-20.el7.x86_64

	or
# rpm -qa git
git-1.8.3.1-20.el7.x86_64
...

...
Step 2:if GIT package not installed.

Install required GIT package
#yum install git -y
...

...
Step3:
copy the path of clone with https in GIT HUB.
https://github.com/praveenkanajam/sample.git
...

...
step4:
clone GIT REPO in aws console.
# git clone https://github.com/praveenkanajam/sample.git
Cloning into 'sample'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.

[root@ip-172-31-84-217 ~]# ls
sample
[root@ip-172-31-84-217 ~]# ls sample/
script1.sh
...


