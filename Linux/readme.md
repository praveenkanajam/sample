rsync: https://www.youtube.com/watch?v=oS5uH0mzMTg


Job Dedcription:

1. Required Knowledge on different Linux Distributions types like 
Redhat,CentOS,Suse,Ubuntu and Debian with Basic Commands,Editors,Backup,Compressing tools and Network configuration

2. Manage users  & groups with SUDO privileges, 
Set the Basic File Permsision,Advance File Permission and ACL,
Install and update software packages Using tools RPM,YUM and APT-GET.

3. Configure the Partitions,Create,Mount and use EXT4 & XFS file systems along with Configuration of LVM & RAID Levels mount file systems at boot by universally unique ID and SWAP configuration.

4. Knowledge of Boot Process,
Enter the Single User Mode & Chroot Environment and 
configure services to start automatically at boot along with firewall service(Firewalld & SELinux)

5.Produce and deliver reports on system utilization 
(processor, memory, disk, and network),Network service configuration like 
HTTP,DNS,DHCP,NFS,SMB,SSH and NTP,Troubleshooting of kernel panic and Grub.




LVM:

Logical Volume Manager:

1. create a partition and mount to a file system
	temporary mount 
	permenent mount
	
to unmont: umount /mntpoint
   force unmont fuser -ck /mntpoint
				umount -l /mntpoint 
				
				
LVextend :

	create new pv
	add to vg
	extend : lvextend -L +200M /dev/myvg/mylv
	resize2fs /dev/myvg/mylv for ext partions
	xfsgrow  for xfs partions.
	
	


how to fix the Grub issue: if /boot/grub2/grub.cfg modified or corrupted. [root@server3 ~]# vi /boot/grub2/grub.cfg  [root@server3 ~]# reboot 
 
 
step 1: press down arrow 
step 2: select rescue mode 
step 3: login to root 
step 4: regenerate the config file using grug2-mkconfig cmd 
 
[root@server3 ~]# grub2-mkconfig -o /boot/grub2/grub.cfg  
Generating grub configuration file ... 
Found linux image: /boot/vmlinuz-3.10.0-123.el7.x86_64 
Found initrd image: /boot/initramfs-3.10.0-123.el7.x86_64.img 
Found linux image: /boot/vmlinuz-0-rescue-946cb0e817ea4adb916183df8c4fc817 
Found initrd image: /boot/initramfs-0-rescue-946cb0e817ea4adb916183df8c4fc817.img done 

	
How to resolve fstab issue: temp corrupting the fstab with wrong input 
 
[root@server3 ~]# cat /etc/fstab  
 
# # /etc/fstab # Created by anaconda on Wed May  7 01:22:57 2014 # # Accessible filesystems, by reference, are maintained under '/dev/disk' # See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info # UUID=9bf6b9f7-92ad-441b-848e-0257cbb883d1 /                       xfs     defaults        1 1 /dev/vdb1    /mnt  ext4  defaults   0   0                        /dev/vdb0000000000   /dnd defaults 0 0  
 
[root@server3 ~]# mount -a  -- if it gives any error, then after next reboot, it will not allowed to login mount: mount point /dnd does not exist 
 
# reboot 

 step 1:in grub menu , press down key 
 step 2:select 1st kernal line  
 step 3: press 'e' to edit step 
 4: search with line with starts with linux16 , 
 go end of the line type after one space  "systemd.unit=emergency.target" 
 
step 5: press ctrl + X to start 
 
step 6: enter root password  
 
step 7: type mount  -->it will be ro--> readonly 
 
step 8: mount -o remount,rw / 
 
step 9: now check the permission using mount for / partion changed to rw. 
 
step 10: reboot

----------------
	
ssh-keygen:

[root@desktop .ssh]# ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/root/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /root/.ssh/id_rsa.
Your public key has been saved in /root/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:yYWU3PueF6D2ZX7n0V2J19gFJkxaSADWX0D5wmBCFto root@desktop.example.com
The key's randomart image is:
+---[RSA 2048]----+
|     .*=o*+*+ o  |
|     =..*.+ooo . |
|    . Eo.+o+    .|
|       . o= o .o+|
|        S  + o.o+|
|          o . = +|
|         . o = oo|
|            + o +|
|             . oo|
+----[SHA256]-----+
[root@desktop .ssh]# ls
authorized_keys  id_rsa  id_rsa.pub  known_hosts
[root@desktop .ssh]# ssh-copy-id root@server
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/root/.ssh/id_rsa                                                                             .pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter                                                                              out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompt                                                                             ed now it is to install the new keys
root@server's password:

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'root@server'"
and check to make sure that only the key(s) you wanted were added.

[root@desktop .ssh]# ssh server
Last login: Thu Nov 28 06:57:14 2019 from desktop.example.com


	
	
	