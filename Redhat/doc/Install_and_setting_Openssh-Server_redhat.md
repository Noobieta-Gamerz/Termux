`termux` `ssh redhat` `ane tamvan 😆`
<h2><p align="center">INSTALL AND SETTING OPENSSH-SERVER ON REDHAT</p></h2>
<p align="center">
<img widht="70%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnfHrtAX5r7KVhyH78qHQi9plSqLjV0WoNtw&usqp=CAU"></p>

##### Install SSH
```
yum update
yum install openssh-server
```
##### Test
```
/usr/sbin/sshd -D
```
>[!NOTE]
>```
>[root@localhost ~]# /usr/sbin/sshd -D
>Unable to load host key: /etc/ssh/ssh_host_rsa_key
>Unable to load host key: /etc/ssh/ssh_host_ecdsa_key
>Unable to load host key: /etc/ssh/ssh_host_ed25519_key
>sshd: no hostkeys available -- exiting.
>```
##### Generate keygen
```
ssh-keygen -A
```
##### Setting SSH
```
nano /etc/ssh/sshd_config
uncomment port ssh
#etc if you need any configuration 
```
##### Run SSHD ON PROOT
```
/usr/sbin/sshd -D &
```
##### Stop SSHD
```
pkill sshd
```
`Termux` `redhat-ubi8` `arm64` `openssh-server`
