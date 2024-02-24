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
nano /etc/nginx/nginx.conf

#### change port to 8000
```
##### Running nginx
```
nginx
check http://IP:8000
```
##### Stop nginx
```
pkill nginx
```
:octocat: Reference 
===================
[•] [ nginx official](https://www.nginx.com/)

[•] [Apa itu NGINX?Pengertian dan cara kerjanya](https://www.hostinger.co.id/tutorial/apa-itu-nginx)
