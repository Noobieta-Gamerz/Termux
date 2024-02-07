`Termux` `arm64` `qemu`
<h2><p align="center">OPENBSD MANUAL INSTALL</p></h2>
<p align="center">
  <img width="80%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUAxrzFL_8HUrf39QerjtcvMCaK4NxBCrYmg&usqp=CAU"></p>
  
:octocat: `OpenBSD 7.4`

##### Download OpenBSD image
```
mkdir iso
cd iso
wget https://cdn.openbsd.org/pub/OpenBSD/7.4/arm64/install74.img
```
##### Download Bootloader Openbsd
```
mkdir bootloader
cd bootloader
wget https://github.com/Noobieta-Gamerz/Termux/raw/main/OpenBSD/openbsd-arm64EFI.fd
```
##### Create Image qemu
```
mkdir img
cd img

qemu-img create -f qcow2 obsd_aarch64.qcow2 32G
```
#### installation
##### running qemu
```
qemu-system-aarch64 \
-M virt \
-m 1024 \
-cpu cortex-a57 \
-bios bootloader/QEMU_EFI.fd \
-drive file=iso/install74.img,format=raw,id=drive1 \
-drive file=img/obsd_aarch64.qcow2,if=none,id=drive0,format=qcow2 \
-device virtio-blk-device,drive=drive0 \
-net user \
-net nic \
-nographic \
-monitor tcp::4450,server,telnet,nowait
```
