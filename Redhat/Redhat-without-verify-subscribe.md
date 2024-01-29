<h2><p align="center">Update Redhat Without Subcription</p></h2>

![maling dari google](https://cdn.arstechnica.net/wp-content/uploads/2021/01/Red-Hat-no-cost-800x456.png)

### Step 1
Setelah installation redhat os kita pasti harus update atau install package yang kita butuhkan ,hanya saja untuk redhat sendiri tidak full open source menurut saya,redhat mewajibkan kita verification subcription sangat menjengkelkan !
ada beberapa cara :
1. Memebuat repository local sendiri dari iso redhat
2. Custom repo dari centos (namun jika di update nanti berubah menjadi centos os,jadi saya sarankan jangan full update ,install saja package name yang di butuhkan)
3. Free repo redhat :octocat: nice nice 😄

### kita akan menggunakan cara ke 3 
#### Step 2 disable plugin redhat
```
sudo nano /etc/yum/pluginconf.d/search-disabled-repos.conf
```
![ss](https://imagizer.imageshack.com/v2/320xq70/r/924/hAll2J.jpg)
```
[main]
enabled=1
```
Menjadi nilai =0
```
[main]
enabled=0
```
![ss](https://imagizer.imageshack.com/img922/2857/mYnar2.jpg)
dan save ctrl+x
### Step 3 Membuat custom repo redhat
```
sudo nano /etc/yum.repos.d/redhat-custom.repo
```
copas script dibawah ini 👇
```
#for local repositories
#[InstallMedia]
#name=Red Hat Enterprise Linux 7.6
#mediaid=1539194970.388895
#metadata_expire=-1
#gpgcheck=0
#cost=500
#gpgkey=file:///etc/pki/rpm-pkg/RPM-GPG-KEY-redhat-release
[Redhat-Riken-Japan]
name=Redhat Riken -Japan
#mirrorlist=http://ftp.scientificlinux.org/linux/scientific/$slreleasever/$basearch/os/
baseurl=http://ftp.riken.jp/Linux/scientific/7.6/x86_64/os/
gpgcheck=0
enabled=1
#gpgkey=http://ftp.riken.jp/Linux/scientific/7.6/x86_64/os/RPM-GPG-KEY-redhat-release
```
### update
![ss](https://imagizer.imageshack.com/img923/157/yWgHYc.jpg)

>[!NOTE]
>gpgcheck harus bernilai 0

### selamat 🥳 redhat anda bisa update !!!
