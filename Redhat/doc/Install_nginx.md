`termux` `redhat-ubi8` `arm64` `nginx`
<h2><p align="center">INSTALL ENGINE-X ON REDHAT</p></h2>

<p align="center">
<img widht="80%" src="https://imagizer.imageshack.com/img924/1025/j2Mvb3.jpg">
</p>

:octocat: `nginx redhat arm64`
##### Install Epel
```
yum update
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
```
##### Install Nginx
```
yum install nginx
```
##### Setting Port
###### example port 8000
```
nano /etc/nginx/ports conf

#### change port to 8000
```
