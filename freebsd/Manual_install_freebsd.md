`Manual Install` `termux`
<h2><p align="center">Install Manual FreeBSD on Android</p></h2>

<p align="center">
<img width="100%" src="https://upload.wikimedia.org/wikipedia/commons/d/d4/FreeBSD_13.0_boot_loader_screenshot.png"></p>

`for example : FreeBSD 12`

#### Download AArch64 VM qemu image of FreeBSD 
##### Install package :
```
apt update && apt upgrade -y
apt install wget -y
apt install xz-utils -y
```
##### Download Image :
```
wget https://download.freebsd.org/ftp/releases/VM-IMAGES/12.2-BETA1/aarch64/Latest/FreeBSD-12.2-BETA1-arm64-aarch64.qcow2.xz
```
##### unxz image :
```
unxz FreeBSD-12.2-BETA1-arm64-aarch64.qcow2.xz
```
>[!NOTE]
>if error download check source and change source for download :
>[site freebsd image](https://download.freebsd.org/ftp/releases/VM-IMAGES/)
>
##### or this 👇
##### FreeBSD 14
```
wget https://mirrors.ustc.edu.cn/freebsd/releases/VM-IMAGES/14.0-RELEASE/aarch64/Latest/FreeBSD-14.0-RELEASE-arm64-aarch64.qcow2.xz
```
#### Download EFI boot loader from:
```
wget https://releases.linaro.org/components/kernel/uefi-linaro/15.12/release/qemu64/QEMU_EFI.fd
```
#### Start Qemu with:
##### Install package :
```
apt update && apt install qemu-common qemu-utils qemu-system-aarch64 -y
```
##### Run Qemu :
```
qemu-system-aarch64 -m 1024M -cpu cortex-a57 -M virt -bios QEMU_EFI.fd -serial telnet::4444,server -nographic -drive if=none,file="FreeBSD-12.2-BETA1-arm64-aarch64.qcow2",id=hd0 -device virtio-blk-device,drive=hd0 -device virtio-net-device,netdev=net0 -netdev user,id=net0
```
#### Open new Termux window/session and type:
`Telnet Access`
```
telnet 127.0.0.1 4444
```
