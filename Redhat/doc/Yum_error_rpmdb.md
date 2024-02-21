<h2><p align="center">Error: rpmdb open failed</h2>
<h2><p align="center">On REDHAT/CENTOS</h2>


solution
========
###### step 1 backup db
```
mkdir /root/backups.rpm.mm_dd_yyyy/
cp -avr /var/lib/rpm/ /root/backups.rpm.mm_dd_yyyy/
```
###### step 2 remove db on /var/lib/rpm
```
rm -f /var/lib/rpm/__db*
db_verify /var/lib/rpm/Packages
rpm --rebuilddb
yum clean all
```
###### step 3 update
```
yum update
```
###### check
```
example install packages
yum install httpd
```

`yum error db` `redhat error db``ane tamvan 😆`
