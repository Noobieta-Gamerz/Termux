<h2><p align="center">install phpmyadmin on termux</p></h2>

```
apt update && apt upgrade -y
apt install php phpmyadmin -y
```
sebelumnya sudah terinstall mariadb dan webservernya apache2 atau nginx atau httpd!!!
Link phpmyadmin ke lokasi apache2 disini saya menggunakan apache2

```
ln $PREFIX/share/phpmyadmin $PREFIX/share/apache2/default-site/htdocs/
```
