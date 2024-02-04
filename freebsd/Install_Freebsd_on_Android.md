<h2><p align="center">INSTALL FREEBDS ON ANDROID</p></h2>

Download AArch64 VM qemu image of FreeBSD
$ wget https://download.freebsd.org/ftp/releases/VM-IMAGES/12.2-BETA1/aarch64/Latest/FreeBSD-12.2-BETA1-arm64-aarch64.qcow2.xz
$ unxz FreeBSD-12.2-BETA1-arm64-aarch64.qcow2.xz

Download EFI boot loader from:
$ wget https://releases.linaro.org/components/kernel/uefi-linaro/15.12/release/qemu64/QEMU_EFI.fd

Start Qemu with:
$ qemu-system-aarch64 -m 1024M -cpu cortex-a57 -M virt
-bios QEMU_EFI.fd -serial telnet::4444,server -nographic
-drive if=none,file="FreeBSD-12.2-BETA1-arm64-aarch64.qcow2",id=hd0
-device virtio-blk-device,drive=hd0
-device virtio-net-device,netdev=net0
-netdev user,id=net0

Open new Termux window/session and type:
$ telnet 127.0.0.1 4444
