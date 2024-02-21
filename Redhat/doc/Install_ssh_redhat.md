`termux` `ssh redhat` `ane tamvan 😆`
<h2><p align="center">INSTALL SSH ON REDHAT</p></h2>
<p align="center">
<img widht="70%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnfHrtAX5r7KVhyH78qHQi9plSqLjV0WoNtw&usqp=CAU"></p>

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
uncomment port ssh
#etc if you need any configuration 
```
##### Run SSHD ON PROOT
```
nohup /usr/sbin/sshd -D &
```
