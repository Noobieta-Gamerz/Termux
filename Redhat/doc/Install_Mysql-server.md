`Termux` `redhat-ubi8` `arm64` `mysql-server`

<h2><p align="center">Install Mysql-Server Redhat</p></h2>
<p align="center">
<img widht="80%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKnCnZBCAp9UVa4UKC9D0O0Xpnwu3lDtBIPbRlQ2-fHc5AW0eXgPQXP-Ip&s=10">
</p>

`arm64` `redhat-ubi8` `mysql-server`

##### Adding the MySQL Yum Repository
```
https://repo.mysql.com//mysql80-community-release-el8-5.noarch.rpm
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
