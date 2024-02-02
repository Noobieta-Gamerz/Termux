#/bin/bash
echo -e "              Please waiiiitt for install package... (^_^)"
apt update > /dev/null 2>&1 && apt upgrade > /dev/null 2>&1 && apt --assume-yes install nala wget tar > /dev/null 2>&1 && nala install figlet proot
cd
wget https://github.com/Noobieta-Gamerz/Termux/raw/main/qemu-termux/qemu-x86_64

chmod 755 qemu-x86_64
mv qemu-x86_65 $PREFIX/bin/
mkdir vm-termux
cd vm-termux
wget https://download939.mediafire.com/na08wg9dbxsg1ZJl2kYsSG4QN6ZYyg12uDVd8mvr7GanRjeYhYjAXFpJuwuKltCCk43WVCwzhW425lP9AFQQmrqnKaQaQj7lvM874k3ouzZOLr42O0aDmPwDW3psp6PyEipKV8VnEGukIMbOs0ilYcMSFGhWMryp08eeVvg5qcn6/xci3noeg0ho6ell/ubuntu-rootfs.tar.xz
echo ""
echo -e "   Wait for extract (^_^) ... "
echo ""
tar -xJf ubuntu-rootfs.tar.xz

figlet -c Finish yey

echo "  $(date)"
echo -e "    [•] Note : for start ubuntu : ./start-ubuntu.sh happiness day (^_^)"
