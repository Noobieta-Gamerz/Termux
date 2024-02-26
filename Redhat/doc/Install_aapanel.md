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
yum install -y wget && wget -O install.sh https://raw.githubusercontent.com/Noobieta-Gamerz/Termux/main/Redhat/Aapanel-redhat.sh && bash install.sh aapanel
```
>[!NOTE]
>if aapanel error hostname empty!!!
>```
>echo "localhost" > /etc/hostname
>#### reinstall again aapanel
>```

##### Aapanel Failed Start
###### Example :
<p align="center">
<img widht="80%" src="https://imagizer.imageshack.com/img922/1741/znjhdi.jpg">
</p>

>[!NOTE]
>If aapanel failed start
>```
>chmod -R 700 /www
>#### restart again
>bt restart or bt start
>```
:octocat: Be patient installing and compiling aapanel 😽 ☕ 🍰

##### screenshot aapanel on redhat arm64
<p align="center">
<img widht="center" src="https://imagizer.imageshack.com/img924/7293/lkxhq2.jpg">
</p>

:octocat: Reference 
====================
[•] [All About Aapanel](https://www.aapanel.com/new/index.html)
