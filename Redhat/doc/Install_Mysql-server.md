`Termux` `redhat-ubi8` `arm64` `mysql-server`

<h2><p align="center">Install Mysql-Server Redhat</p></h2>
<p align="center">
<img widht="80%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKnCnZBCAp9UVa4UKC9D0O0Xpnwu3lDtBIPbRlQ2-fHc5AW0eXgPQXP-Ip&s=10">
</p>

`arm64` `redhat-ubi8` `mysql-server`

##### Adding the MySQL Yum Repository
```
yum install https://repo.mysql.com//mysql80-community-release-el8-5.noarch.rpm
```
##### Check Repo
```
yum repolist
```
##### Enable Repo
```
yum repolist enabled | grep "mysql.*-community.*"
```
##### Install Mysql-Server
```
yum update
yum install mysql-community-server --nogpgcheck
```
##### Configuration And Running
```
for configuration:
nano /etc/my.cnf
add :
[mysqld]
user=root
```
[example my.cnf](https://github.com/Noobieta-Gamerz/Termux/blob/main/Redhat/doc/MySQL/my.cnf.md)


>[!NOTE]
>If can't running mysqld
>Install Mysql Server With Aapanel
>`mysql  Ver 14.14 Distrib 5.5.62, for Linux (aarch64) using readline 5.1`
>[Install Aapanel On Redhat](https://github.com/Noobieta-Gamerz/Termux/blob/main/Redhat/doc/Install_aapanel.md)

`mysql server redhat-ubi8 arm64`
