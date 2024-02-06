OPENBSD ANDROID
-------------------------------------------------------------
 ____ ____ ____ ____ ____ ____ ____ _________ ____ ____ ____ 
||O |||p |||e |||n |||B |||S |||D |||       |||7 |||. |||2 ||
||__|||__|||__|||__|||__|||__|||__|||_______|||__|||__|||__||
|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/_______\|/__\|/__\|/__\|

 ___________________________________________________________
/ OpenBSD 7.2 ARM64 under qemu-system-aarch64 on the M1/M2 / 
-----------------------------------------------------------

# Compile qemu on the M1/M2 MacOS 

http://astr0baby.online/M2-Apple/qemu-build-m2.txt

# Create Virtualization directory to hold our files 

# Create virtual disk 

qemu-img create -f qcow2 disk.img 20G 

# Get EFI and OpenBSD installer 

wget http://releases.linaro.org/components/kernel/uefi-linaro/latest/release/qemu64/QEMU_EFI.fd 
wget https://cdn.openbsd.org/pub/OpenBSD/7.2/arm64/miniroot72.img

# Run this installer script 

qemu-system-aarch64 \
-M virt \
-accel hvf \
-m 4G \
-smp 2 \
-cpu max \
-bios QEMU_EFI.fd \
-hda miniroot72.img \
-hdb disk.img \
-nographic \
-net nic,model=virtio \
-net user,hostfwd=tcp::2222-:22 \
-serial tcp::1337,server,telnet,wait


# Then connect with telnet to the TCP 1337 port to continue booting 

telnet localhost 1337 


# OpenBSD 7.2 installer will boot 

Welcome to the OpenBSD/arm64 7.2 installation program.
(I)nstall, (U)pgrade, (A)utoinstall or (S)hell? I
At any prompt except password prompts you can escape to a shell by
typing '!'. Default answers are shown in []'s and are selected by
pressing RETURN.  You can exit this program at any time by pressing
Control-C, but this can leave your system in an inconsistent state.

Terminal type? [vt220] 
System hostname? (short form, e.g. 'foo') openbsd72

Available network interfaces are: vio0 vlan0.
Which network interface do you wish to configure? (or 'done') [vio0] 

IPv4 address for vio0? (or 'autoconf' or 'none') [autoconf] 

IPv6 address for vio0? (or 'autoconf' or 'none') [none] 

Available network interfaces are: vio0 vlan0.

Which network interface do you wish to configure? (or 'done') [done] 

Using DNS domainname my.domain

Using DNS nameservers at 10.0.2.3

Password for root account? (will not echo) 

Password for root account? (again) 

Start sshd(8) by default? [yes] 

Setup a user? (enter a lower-case loginname, or 'no') [no] user

Full name for user user? [user] user

Password for user user? (will not echo) 

Password for user user? (again) 

WARNING: root is targeted by password guessing attacks, pubkeys are safer.
Allow root ssh login? (yes, no, prohibit-password) [no] yes

What timezone are you in? ('?' for list) [Somewhere on Earth] 

Available disks are: sd0 sd1.
Which disk is the root disk? ('?' for details) [sd0] sd1

MBR has invalid signature; not showing it.
Use (W)hole disk or (E)dit the MBR? [whole] w

Creating a msdos partition and an OpenBSD partition for rest of sd1...newfs_msdos: /dev/r0000000000000000.i: No such file or directory
done.

The auto-allocated layout for sd1 is:
#                size           offset  fstype [fsize bsize   cpg]
  a:           623.3M            65536  4.2BSD   2048 16384     1 # /
 
  b:          1026.6M          1342048    swap                    
 
  c:         20480.0M                0  unused                    
 
  d:           877.2M          3444544  4.2BSD   2048 16384     1 # /tmp
 
  e:          1310.6M          5241152  4.2BSD   2048 16384     1 # /var
  f:          2446.6M          7925184  4.2BSD   2048 16384     1 # /usr
 
  g:           668.0M         12935808  4.2BSD   2048 16384     1 # /usr/X11R6

  h:          2443.9M         14303808  4.2BSD   2048 16384     1 # /usr/local

  i:            16.0M            32768   MSDOS                    
 
  j:          1689.3M         19308896  4.2BSD   2048 16384     1 # /usr/src

  k:          5498.6M         22768608  4.2BSD   2048 16384     1 # /usr/obj
 
  l:          3863.9M         34029792  4.2BSD   2048 16384     1 # /home

Use (A)uto layout, (E)dit auto layout, or create (C)ustom layout? [a] a
newfs: reduced number of fragments per cylinder group from 79776 to 79144 to enlarge last cylinder group
/dev/rsd1a: 623.3MB in 1276512 sectors of 512 bytes
5 cylinder groups of 154.58MB, 9893 blocks, 19840 inodes each
/dev/rsd1l: 3863.9MB in 7913248 sectors of 512 bytes
20 cylinder groups of 202.50MB, 12960 blocks, 25920 inodes each
/dev/rsd1d: 877.2MB in 1796608 sectors of 512 bytes
5 cylinder groups of 202.50MB, 12960 blocks, 25920 inodes each
/dev/rsd1f: 2446.6MB in 5010624 sectors of 512 bytes
13 cylinder groups of 202.50MB, 12960 blocks, 25920 inodes each
newfs: reduced number of fragments per cylinder group from 85496 to 84816 to enlarge last cylinder group
/dev/rsd1g: 668.0MB in 1368000 sectors of 512 bytes
5 cylinder groups of 165.66MB, 10602 blocks, 21248 inodes each
/dev/rsd1h: 2443.9MB in 5005088 sectors of 512 bytes
13 cylinder groups of 202.50MB, 12960 blocks, 25920 inodes each
/dev/rsd1k: 5498.6MB in 11261184 sectors of 512 bytes
28 cylinder groups of 202.50MB, 12960 blocks, 25920 inodes each
/dev/rsd1j: 1689.3MB in 3459712 sectors of 512 bytes
9 cylinder groups of 202.50MB, 12960 blocks, 25920 inodes each
/dev/rsd1e: 1310.6MB in 2684032 sectors of 512 bytes
7 cylinder groups of 202.50MB, 12960 blocks, 25920 inodes each
Available disks are: sd0.
Which disk do you wish to initialize? (or 'done') [done] 
/dev/sd1a (72d81c288658c134.a) on /mnt type ffs (rw, asynchronous, local)
/dev/sd1l (72d81c288658c134.l) on /mnt/home type ffs (rw, asynchronous, local, nodev, nosuid)
/dev/sd1d (72d81c288658c134.d) on /mnt/tmp type ffs (rw, asynchronous, local, nodev, nosuid)
/dev/sd1f (72d81c288658c134.f) on /mnt/usr type ffs (rw, asynchronous, local, nodev)
/dev/sd1g (72d81c288658c134.g) on /mnt/usr/X11R6 type ffs (rw, asynchronous, local, nodev)
/dev/sd1h (72d81c288658c134.h) on /mnt/usr/local type ffs (rw, asynchronous, local, nodev)
/dev/sd1k (72d81c288658c134.k) on /mnt/usr/obj type ffs (rw, asynchronous, local, nodev, nosuid)
/dev/sd1j (72d81c288658c134.j) on /mnt/usr/src type ffs (rw, asynchronous, local, nodev, nosuid)
/dev/sd1e (72d81c288658c134.e) on /mnt/var type ffs (rw, asynchronous, local, nodev, nosuid)

Let's install the sets!
Location of sets? (disk http nfs or 'done') [http] 
HTTP proxy URL? (e.g. 'http://proxy:8080', or 'none') [none] 
HTTP Server? (hostname, list#, 'done' or '?') [ftp.OpenBSD.org] 
Server directory? [pub/OpenBSD/7.2/arm64] 

Select sets by entering a set name, a file name pattern or 'all'. De-select
sets by prepending a '-', e.g.: '-game*'. Selected sets are labelled '[X]'.
    [X] bsd           [X] base72.tgz    [X] game72.tgz    [X] xfont72.tgz
    [X] bsd.mp        [X] comp72.tgz    [X] xbase72.tgz   [X] xserv72.tgz
    [X] bsd.rd        [X] man72.tgz     [X] xshare72.tgz
Set name(s)? (or 'abort' or 'done') [done] 

Get/Verify SHA256.sig   100% |**************************|  1544       00:00    
Signature Verified
Get/Verify bsd          100% |**************************| 14649 KB    00:17    
Get/Verify bsd.mp       100% |**************************| 14712 KB    00:40    
Get/Verify bsd.rd       100% |**************************| 17269 KB    00:39    
Get/Verify base72.tgz    45% |***********               |   115 MB    04:35 ETA
Get/Verify base72.tgz   100% |**************************|   250 MB    09:22    
Get/Verify comp72.tgz   100% |**************************| 70507 KB    02:39    
Get/Verify man72.tgz    100% |**************************|  7610 KB    00:23    
Get/Verify game72.tgz   100% |**************************|  2715 KB    00:04    
Get/Verify xbase72.tgz  100% |**************************| 47817 KB    01:04    
Get/Verify xshare72.tgz 100% |**************************|  4560 KB    00:07    
Get/Verify xfont72.tgz  100% |**************************| 22967 KB    00:24    
Get/Verify xserv72.tgz  100% |**************************| 10583 KB    00:14    
Installing bsd          100% |**************************| 14649 KB    00:00    
Installing bsd.mp       100% |**************************| 14712 KB    00:00    
Installing bsd.rd       100% |**************************| 17269 KB    00:00    
Installing base72.tgz   100% |**************************|   250 MB    00:12    
Extracting etc.tgz      100% |**************************|   257 KB    00:00    
Installing comp72.tgz   100% |**************************| 70507 KB    00:06    
Installing man72.tgz    100% |**************************|  7610 KB    00:01    
Installing game72.tgz   100% |**************************|  2715 KB    00:00    
Installing xbase72.tgz  100% |**************************| 47817 KB    00:03    
Extracting xetc.tgz     100% |**************************|  7242       00:00    
Installing xshare72.tgz 100% |**************************|  4560 KB    00:01    
Installing xfont72.tgz  100% |**************************| 22967 KB    00:01    
Installing xserv72.tgz  100% |**************************| 10583 KB    00:00    
Location of sets? (disk http nfs or 'done') [done] Saving configuration files... done.
Making all device nodes... done.
Multiprocessor machine; using bsd.mp instead of bsd.
fw_update: added none; updated none; kept none
Relinking to create unique kernel... done.

CONGRATULATIONS! Your OpenBSD install has been successfully completed!

When you login to your new system the first time, please read your mail
using the 'mail' command.

Exit to (S)hell, (H)alt or (R)eboot? [reboot] h
syncing disks... done

The operating system has halted.
Please press any key to reboot.


# Then to start the installed OpenBSD system we run the following script 

qemu-system-aarch64 \
-M virt \
-accel hvf \
-m 4G \
-smp 2 \
-cpu max \
-bios QEMU_EFI.fd \
-device intel-hda -device hda-duplex \
-hda disk.img \
-net nic,model=virtio \
-device virtio-rng-pci \
-nographic \
-net nic,model=virtio \
-net user,hostfwd=tcp::2222-:22 \
-serial tcp::1337,server,telnet,wait

# Connect to the virtual machine with telnet 

telnet localhost 1337 

# Enjoy the OpenBSD 7.2 on the Apple M1/M2 under qemu-system-aarch64 fully accelerated :) 
Webserver 1.0
