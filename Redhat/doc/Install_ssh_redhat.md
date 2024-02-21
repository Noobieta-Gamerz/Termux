<h2><p align"center">INSTALL SSH ON REDHAT</p></h2>

##### Install SSH
```
yum update
yum install openssh-server
```
##### Generate keygen
```
ssh-keygen -t A
```
##### Setting SSH
```
nano /etc/ssh/sshd_config
uncomment port ssh #etc
```
##### Run SSHD ON PROOT
```
nohup /usr/sbin/sshd -D &
```
