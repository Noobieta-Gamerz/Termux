<h2><p align="center">INSTALL EPEL AND RPMFusion RHEL 8</p></h2>
<p align="center">
<img widht="80%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2a2XpU8R4QTD_h3EW01x1_psVmalSOONYnQ&usqp=CAU">
</p>

##### Install Package EPEL
```
yum update
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
```
##### Add RPMFusion
```
yum install --nogpgcheck https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E %rhel).noarch.rpm
yum install --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm
```
##### check repo
```
yum repolist
yum update
```
##### All About EPEL
[•] [What Is EPEL](https://henri.web.id/penjelasan-epel-pada-centos-extra-packages-for-enterprise-linux/)

[•] [What Is RPMFusion](https://en.m.wikipedia.org/wiki/RPM_Fusion)

[•] [Setup Rhel 8 repository](https://www.dbi-services.com/blog/setup-a-rhel-8-repository-server/)
