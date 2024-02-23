`Termux` `arm64` `aapanel` `redhat-ubi8`
<h2><p align="center">Install Aapanel Redhat</p></h2>
<p align="center">
<img widht="80%" src="https://res.cloudinary.com/upwork-cloud/image/upload/c_scale,w_1000/v1694952540/catalog/1703380056886456320/lpghfksxtziwxmmwfkbu.jpg">
</p>

##### Install Epel Release
```
yum update
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
```
##### Check Repo
```
yum repolist
yum update
```
##### Install Hostname
```
yum install hostname
```
##### Set Hostname
```
hostname localhost
```
##### Install Aapanel
```
yum install -y wget && wget -O install.sh http://www.aapanel.com/script/install_6.0_en.sh && bash install.sh aapanel
```
>[!NOTE]
>if aapanel error hostname empty!!!
>```
>echo "localhost" > /etc/hostname
>```
