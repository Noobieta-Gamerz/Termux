<h2><p align="center">RESIZE DISK QEMU FREEBSD</h2></p>

##### Resize image qemu
```
qemu-img resize [your image] +[size on G]
```
>[!NOTE]
>G = gigabyte
>
##### example
```
qemu-img resize img/FreeBSD-14.0-RELEASE-arm64-aarch64.qcow2 +100G
```
