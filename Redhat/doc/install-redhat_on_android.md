<h2><p align="center">INSTALL REDHAT OS ON ANDROID</p></h2>

![my ss oooy](https://imagizer.imageshack.com/img922/2455/aEOcpi.jpg)

### copy paste on your termux
```
apt update && apt upgrade -y
apt install curl -y
```
```
curl -sL https://raw.githubusercontent.com/Noobieta-Gamerz/Termux/main/Redhat/rootfs-arm64/install_redhat08.sh | bash
```
#### Review Video 

[![my video](https://img.youtube.com/vi/XdpjWWzThJY/mqdefault.jpg)](https://www.youtube.com/watch?v=XdpjWWzThJY)

- [x] update
- [x] install packages redhat
- [ ] ps -a
      
>[!WARNING]
>`ps -a`
>Error: /proc must be mounted
  To mount /proc at boot you need an /etc/fstab line like:
      proc   /proc   proc    defaults
  In the meantime, run "mount proc /proc -t proc"

![my ss](https://imagizer.imageshack.com/img924/7167/GLNAOr.jpg)

>[!NOTE]
> We need `setenforce 0`
>how to ?
>```
>tsu
>setenforce 0
>```

