install phpmyadmin on termux:
<br>
<br>
apt update && apt upgrade -y
<br>
apt install php phpmyadmin -y
<br>
<br>
sebelumnya sudah terinstall mariadb dan webservernya apache2 atau nginx atau httpd!!!
<br>
<br>
Link phpmyadmin ke lokasi apache2 disini saya menggunakan apache2<br>
ln $PREFIX/share/phpmyadmin $PREFIX/share/apache2/default-site/htdocs/<br>
