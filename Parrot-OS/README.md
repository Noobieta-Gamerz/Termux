`Termux` `arm64` `proot`
<h2><p align="center">PARROT-OS ANDROID</h2>

:octocat: `Parrot-OS Electro Ara`

<p align="center">
<img widht="80%" src="https://www.parrotsec.org/_next/static/media/parrot-security-1.c044d5dd.png"></p>

>[!NOTE]
>l'am not make script because lazy 😪
>

##### Install Electro Ara
```
apt update && apt upgrade -y
apt install proot tar -y
```
##### Download Rootfs 

<p align="center" width="100%">
  <a href="https://sfl.gl/ItCk">
    <img src="https://nobita-gamerz.github.io/img-asset/Download.png"></a></p>

#### Extract 
```
mkdir parrot-os
cd /sdcard/Download
mv parrotos_arm64-rootfs.tar.xz $HOME/parrot-os
cd $HOME/parrot-os
tar -xvf parrotos_arm64-rootfs.tar.xz
rm parrotos_arm64-rootfs.tar.xz

## For start parrot-os
chmod +x parrot-arm64.sh
./parrot-arm64.sh
```
😄 njoooy with coffee ☕

##### reference
[•][parrot sites](#)
