#!/bin/bash
# Udroid restore utilty test

#
# Not ready yet!
#

TERMUX_STORAGE_PREFIX="/data/data/com.termux"
file=$1

[[ -r /sdcard ]] && {
    echo "unable to read /sdcard"
    termux-setup-storage
}

# depencies check
command -v {tar,gzip,proot,proot-distro,pv} >> /dev/null && {
    echo "depencies check passed"
} || {
    echo "force install depencies"
    apt update && apt install -y pv tar gzip proot proot-distro
}

# check for proot-distro fs structure
DIR="$TERMUX_STORAGE_PREFIX/files/usr/var/lib/proot-distro/installed-rootfs/udroid-fs"
[[ -d $DIR ]] && {
    echo "resolving proot-distro"
    mkdir -pv $DIR
}

# start restoring process with progress bar
echo "starting restore process"
pv $file | proot --link2symlink tar -xzf - -C $DIR/udroid-fs

# write temporary script
SDIR="$TERMUX_STORAGE_PREFIX/files/usr/etc/proot-distro/udroid-fs.sh"

cat <<EOF > $SDIR
DISTRO_NAME=udroid-fs
TARBALL_URL['aarch64']=""
TARBALL_SHA256['aarch64']=""
EOF
