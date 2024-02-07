`Termux` `arm64` `qemu` `live os`
<h2><p align="center">FUGUITA MANUAL INSTALL</p></h2>


##### Download img fuguita
```
wget https://jp2.dl.fuguita.org/LiveSD/FuguIta-7.4-arm64-202401171.img.gz
```
##### Download Bios fugu arm64
```
wget https://github.com/Noobieta-Gamerz/Termux/raw/main/Fugulta/bootloader/fugu-arm64EFI.fd
```
##### Check the integrity of the downloaded FuguIta file.
```
sha256 -C SHA256 FuguIta-7.4-arm64-202401171.img.gz
```
##### extract fugita
```
apt install gzip 
gzip -d FuguIta-7.4-arm64-202401171.img.gz
```
