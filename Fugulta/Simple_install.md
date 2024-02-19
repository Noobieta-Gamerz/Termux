`fuguita-os` `qemu` `termux` `arm64`
<h2><p align="center">FUGUITA ON TERMUX</p></h2>

<p align="center">
<img widht="80%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0EPbpJPJHm5gixgspjcNs7vqh_acaRQgQbQ&usqp=CAU"></p>

:octocat:`simple installation on termux`

##### Install Dependency on termux
```
apt update && apt upgrade -y
apt install tar qemu-utils qemu-common qemu-system-aarch64 -y
```
##### Download Fuguita OS + My save session

<h3><p align="center">TERABOX</p></h3>
<p align="center" width="100%">
  <a href="https://teraboxapp.com/s/1CkUYhH7llGZhq92FS9QTBg">
    <img src="https://nobita-gamerz.github.io/img-asset/Download.png"></a></p>
  <h3><p align="center">Users Cloud</p></h3>
<p align="center" width="100%">
  <a href="https://ouo.io/Eo2uh6">
    <img src="https://nobita-gamerz.github.io/img-asset/Download.png"></a></p>

 <h3><p align="center">FileUpload</p></h3>
<p align="center" width="100%">
  <a href="https://ouo.io/uFDZBl">
    <img src="https://nobita-gamerz.github.io/img-asset/Download.png"></a></p>
    
<h3><p align="center">Apk Admin</p></h3>
<p align="center" width="100%">
  <a href="https://ouo.io/DYdfmn">
    <img src="https://nobita-gamerz.github.io/img-asset/Download.png"></a></p>

##### Running Fuguita

```
cd /sdcard/Download
mv fuguita-qemu.tar.xz $HOME
tar -xvf fuguita-qemu.tar.xz
cd FUGUITA
bash start-fuguita
or
chmod +x start-fuguita
./start-fuguita
```

`fuguita-os` `termux` `arm64`
