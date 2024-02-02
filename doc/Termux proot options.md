```
proot \
    -b /system \                                            # std mountpoint to /system => system root of android
    -b /sys \                                               # std mountpoint to /sys => linux start /sys
    -b /vendor \                                            # std mountpoint to /vendor => for libs ( which wont used in proot )
    -b /proc \                                              # std linux proc mountpoint
    -b /dev \                                               # std linux dev mountpoint
    -b /dev/urandom:/dev/random \                           # urandom mountpoint
    -b /proc/self/fd/1:/dev/stdout \                        # stdout mountpoint
    -b /proc/self/fd/2:/dev/stderr \                        # stderr mountpoint
    -b /proc/self/fd/0:/dev/stdin \                         # stdin mountpoint
    -b /proc/self/fd:/dev/fd \                              # file descriptor mountpoint
    -b ${FS_PATH}/proc/.vmstat:/proc/vmstat \               # fake /proc/vmstat mountpoint
    -b ${FS_PATH}/proc/.version:/proc/version \             # fake /proc/version mountpoint
    -b ${FS_PATH}/proc/.uptime:/proc/uptime \               # fake /proc/uptime mountpoint
    -b ${FS_PATH}/proc/.stat:/proc/stat \                   # fake /proc/stat mountpoint
    -b ${FS_PATH}/proc/.loadavg:/proc/loadavg \             # fake /proc/loadavg mountpoint
    -b /linkerconfig/ld.config.txt \                        # proot l2s ldconfig file
    -b /data/data/com.termux/files/usr \                    # mountpoint to termux usr
    -b /data/data/com.termux/files/home \                   # mountpoint to termux home
    -b /data/data/com.termux/cache \                        # mountpoint to termux cache
    -b /storage/self/primary:/sdcard \                      # mountpoint to Android Internal Storage
    -b /storage \                                           # mountpoint to Android storage root
    -b /data/dalvik-cache \                                 # mount point to dalvic cache
    -b ${KALI_FS}/tmp:/dev/shm \                            # mount point to shared memory android
    --root-id \                                             # set current session root UID as 0
    --cwd=/root -L \                                        # set current working directory to /root ( which exits in any linux rootfs )
    --kernel-release=5.4.0-faked \                          # set fake kernel release string => for software compatabilty on old devices
    --sysvipc \                                             # enable sysv interprocess communication emulation by proot
    --link2symlink \                                        # linux2symlink a specific option for android
    --kill-on-exit \                                        # option to kill all container when session is closed
    --rootfs=${FS_PATH} \                                   # rootfs location
    -w $home \
       /usr/bin/env -i \
       HOME=$home \
       PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin \
       TERM=$TERM \
       LANG=C.UTF-8 \
       $start
```
