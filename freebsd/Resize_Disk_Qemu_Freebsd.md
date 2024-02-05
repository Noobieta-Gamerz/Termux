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
##### login freebsd
```
gpart show
sysctl kern.geom.debugflags=16
gpart recover /dev/vtbd0
gpart resize -i 3 vtbd0 (hardisk number)
growfs /dev/vtbd0p3
#if error (growfs /dev/vtbd0p3)
service growfs onestart
```
