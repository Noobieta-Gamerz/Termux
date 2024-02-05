<h2><p align"center">
QEMU ON BACKGROUND</p></h2>

##### change and add
```
#Change :
-serial telnet::4444,server
-monitor telnet::4444,server
#add :
,nowait -serial mon:stdio
```

##### example
```
qemu-system-aarch64 -m 1024M -cpu cortex-a57 -M virt \
-bios bootloader/QEMU_EFI.fd -monitor telnet::4444,server,nowait -serial mon:stdio \
-drive if=none,file="img/FreeBSD-14.0-RELEASE-arm64-aarch64.qcow2",id=hd0 \
-device virtio-blk-device,drive=hd0 \
-device virtio-net-device,netdev=net0 \
-netdev user,id=net0,hostfwd=tcp::2222-:22,hostfwd=tcp::9000-:9000 \
-nographic
```
