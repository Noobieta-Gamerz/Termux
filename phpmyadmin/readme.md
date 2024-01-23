install phpmyadmin on termux:
<br>
apt update && apt upgrade -y
<br>
apt install php phpmyadmin -y
<br>
sebelumnya sudah terinstall mariadb dan webservernya apache2 atau nginx au httpd!!!
<br>
Link phpmyadmin ke lokasi apache2 disini saya menggunakan apache2<br>
ln $PREFIX/share/phpmyadmin $PREFIX/share/apache2/default-site/htdocs/<br>
