<h2><p align="center">Update Redhat Without Subcription</p></h2>

### Step 1
Setelah installation redhat os kita pasti harus update atau install package yang kita butuhkan ,hanya saja untuk redhat sendiri tidak full open source menurut saya,redhat mewajibkan kita verification subcription sangat menjengkelkan !
ada beberapa cara :
1. Memebuat repository local sendiri dari iso redhat
2. Custom repo dari centos (namun jika di update nanti berubah menjadi centos os,jadi saya sarankan jangan full update ,install saja package name yang di butuhkan)
3. Free repo redhat :octocat: nice nice 😄

### kita akan menggunakan cara ke 3 
#### disable plugin redhat
```
sudo nano /etc/yum/pluginconf.d/search-disabled-repos.conf
```

