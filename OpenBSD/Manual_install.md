`Termux` `arm64` `qemu`
<h2><p align="center">OPENBSD MANUAL INSTALL</p></h2>

:octocat: `OpenBSD 7.4`

##### Download OpenBSD image
```
wget https://cdn.openbsd.org/pub/OpenBSD/7.4/arm64/install74.img
```
##### Download Bootloader Openbsd
```
wget https://github.com/Noobieta-Gamerz/Termux/raw/main/OpenBSD/openbsd-arm64EFI.fd
```
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
