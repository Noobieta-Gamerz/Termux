<h2><p align="center">Setting Up Local Repositories - CentOS 7</p></h2>

![ss dari google cok 😄](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzeJ3nDYl8O8JD_gTJJrIZecMqprxrbPAWmw&usqp=CAU)
### Preconditions: 
1. Persyaratan penyimpanan repositori lokal didasarkan pada jumlah repositori yang Anda aktifkan dan sinkronkan. Jika Anda hanya mengaktifkan repositori yang disebutkan di bawah, 150GB sudah cukup, jika tidak- kami sarankan untuk mengalokasikan hingga 400 GB.
2. Spesifikasi perangkat keras repositori lokal didasarkan pada jumlah titik akhir yang terhubung ke repo
3. Setiap sistem operasi harus memiliki server repositori sendiri. (yaitu Repo untuk masing-masing berikut - RHEL 7, RHEL 6, CentOS 7..)
4. Repositori lokal harus memiliki konektivitas Internet
### Before We Start:
1. Harap pertimbangkan perintah 'sinkronisasi repo', yang mungkin memerlukan waktu 9-10 jam untuk diselesaikan.
2. Jika Anda sudah familiar dengan repositori yang diperlukan di organisasi Anda, selain yang disarankan di bawah ini, silakan konfigurasikan dengan cara yang persis sama.
## Step 1: Setup Nginx on the Repo Server
1. Pertama-tama mulailah dengan menginstal server HTTP Nginx dari repositori EPEL menggunakan manajer paket YUM sebagai berikut.
```
yum install epel-rilis 
yum install nginx
```
2. Setelah Anda menginstal server web Nginx, Anda dapat memulainya untuk pertama kali dan mengaktifkannya untuk memulai secara otomatis saat boot sistem.
```
systemctl mulai nginx 
systemctl aktifkan nginx
```
3. Selanjutnya, Anda perlu membuka port 80 dan 443 untuk mengizinkan lalu lintas web ke layanan Nginx, perbarui aturan firewall sistem untuk mengizinkan paket masuk di HTTP dan HTTPS menggunakan perintah di bawah ini
```
firewall-cmd --zone=publik --permanent --add-service=http 
firewall-cmd --zone=public --permanent --add-service=https 
firewall-cmd --reload
```
4. Konfirmasikan bahwa server Nginx Anda aktif dan berjalan, menggunakan URL berikut; jika Anda melihat halaman web default Nginx, semuanya baik-baik saja. http://SERVER_DOMAIN_NAME_OR_IP
## Step 2: Create Yum Local Repository
5. Instal paket yang diperlukan untuk membuat, mengonfigurasi, dan mengelola repositori lokal Anda.
```
yum instal createrepo yum-utils
```
6. Buat direktori yang diperlukan (repositori yum) yang akan menyimpan paket dan informasi terkait lainnya.
```
# mkdir -p /var/www/html/repos/{base,centosplus,extras,updates}  
mkdir -p /var/www/html/repos/base 
mkdir -p /var/www/html/repos/centosplus 
mkdir - p /var/www/html/repos/ekstra 
mkdir -p /var/www/html/repos/updates
```
7.  Gunakan reposync tools untuk menyinkronkan repositori CentOS YUM ke direktori lokal seperti yang ditunjukkan.
```
reposync -g -l -d -m --repoid=base --newest-only --download-metadata --download_path=/var/www/html/repos/base 
reposync -g -l -d -m --repoid =centosplus --hanya terbaru --download-metadata --download_path=/var/www/html/repos/centosplus 
reposync -g -l -d -m --repoid=ekstra --hanya terbaru --download-metadata --download_path=/var/www/html/repos/ekstra 
reposync -g -l -d -m --repoid=updates --newest-only --download-metadata --download_path=/var/www/html/repos /pembaruan
```
8. Buat repodata baru untuk setiap repositori dengan menjalankan perintah berikut, dengan flag -gis digunakan untuk memperbarui informasi grup paket menggunakan file .xml yang ditentukan.
```
createrepo -g comps.xml /var/www/html/repos/base/ 
createrepo /var/www/html/repos/centosplus/ 
createrepo /var/www/html/repos/extras/ 
createrepo /var/www/html/repos /perbarui/
```
9.  Untuk mengaktifkan tampilan repositori dan paket di dalamnya, melalui browser web, buat blok server Nginx yang menunjuk ke root repositori Anda seperti yang ditunjukkan.
```
vim /etc/nginx/conf.d/repos.conf
```
Tambahkan konfigurasi berikut ke file repos.conf:
```
server {
 listen 80;
 server_name repos.test.lab; #change test.lab to your real domain or IP address
 root /var/www/html/;
 location / {
 index index.php index.html index.htm;
 autoindex on; #enable listing of directory index
 }
}
```
10.  Kemudian restart server Nginx Anda dan lihat repositori dari browser web menggunakan URL berikut.
```
http://repos.test.lab
```
## Step 3: Create Cron Job to Synchronize and Create Repositories
1. Tambahkan tugas cron yang secara otomatis akan menyinkronkan repo lokal Anda dengan repo resmi CentOS untuk mendapatkan pembaruan dan patch keamanan.
```
vim /etc/cron.daily/update-localrepos
```
Tambahkan perintah ini di skrip:
```
#!/bin/bash
##specify all local repositories in a single variable
LOCAL_REPOS=”base centosplus extras updates”
##a loop to update repos one at a time
for REPO in ${LOCAL_REPOS}; do
reposync -g -l -d -m --repoid=$REPO --newest-only --download-metadata --download_path=/var/www/html/repos/
createrepo -g comps.xml /var/www/html/repos/$REPO/ 
done
```
Simpan skrip dan tutup dan atur izin yang sesuai.
```
chmod 755 /etc/cron.daily/update-localrepos
```
## Step 4: Setup Local Yum Repository on Client Machines
1. Di mesin klien CentOS Anda, tambahkan repo lokal Anda ke konfigurasi YUM. (atau jalankan skrip yang disediakan "buat-repo-jetpatch-centos")
```
vim /etc/yum.repos.d/local-repos.repo
```
```
[local-base]
name=CentOS Base
baseurl=http://repos.test.lab/base/
gpgcheck=0
enabled=1
priority=1

[local-centosplus]
name=CentOS CentOSPlus
baseurl=http://repos.test.lab/centosplus/
gpgcheck=0
enabled=1
priority=1

[local-extras]
name=CentOS Extras
baseurl=http://repos.test.lab/extras/
gpgcheck=0
enabled=1
priority=1

[local-updates]
name=CentOS Updates
baseurl=http://repos.test.lab/updates/
gpgcheck=0
enabled=1
priority=1
```
Simpan file dan mulai gunakan mirror YUM lokal Anda.
2. Jalankan perintah berikut untuk melihat repo lokal Anda dalam daftar repo YUM yang tersedia, di mesin klien.
```
yum clean all
yum repolist all
```
![ss dari https://kc.jetpatch.com/hc/en-us/articles/360037743451-Setting-Up-Local-Repositories-CentOS-7](https://www.tecmint.com/wp-content/uploads/2018/08/View-Local-Yum-Repositories-on-Client.png)
## Error Handling :
1. If you're encountering the following error when installaing nginx: yum error “Cannot retrieve metalink for repository: epel. Please verify its path and try again” updating ContextBroker

Solution:
edite both
```
nano /etc/yum.repos.d/epel.repo
nano /etc/yum.repos.d/epel-testing.repo 
```
files commenting all entries starting with mirrorlist=... and uncommenting all the entries starting with baseurl=.... ;
run again yum install nginx

2. If files do not appear when viewing the repositories from web browser:
Solution: 
```
restorecon -R /var/www/html/repos
```
3. If you have any issues such as Error 404 page not found it might be related to your nginx configuration. To view nginx errors go to /var/log/nginx/error.log . Errors might be related to nginx configuration (etc/nginx/conf.d/repos.conf). Please make sure you configured it properly. 
4. In case you have changed configurations (in repo server) do not forget to run 'yum clean all' and 'yum repolist all' afterwards. If you have changed nginx conf. restart nginx service. 
