#!/data/data/com.termux/files/usr/bin/bash
echo -e "              Please waiiiitt for install package... (^_^)"
echo ""
sleep 20;
echo " lumayan lama guys 😄"sleep 3;
sleep 30; echo " sabar sabar sabar 😄";
sleep 5;
apt update > /dev/null 2>&1 && apt upgrade > /dev/null 2>&1 && apt --assume-yes install nala > /dev/null 2>&1 && nala install wget tar figlet proot && 
wget https://github.com/Noobieta-Gamerz/Termux/raw/main/qemu-termux/qemu-x86_64
chmod 755 qemu-x86_64
mv qemu-x86_65 $PREFIX/bin/
mkdir vm-termux
cd vm-termux
wget https://download939.mediafire.com/na08wg9dbxsg1ZJl2kYsSG4QN6ZYyg12uDVd8mvr7GanRjeYhYjAXFpJuwuKltCCk43WVCwzhW425lP9AFQQmrqnKaQaQj7lvM874k3ouzZOLr42O0aDmPwDW3psp6PyEipKV8VnEGukIMbOs0ilYcMSFGhWMryp08eeVvg5qcn6/xci3noeg0ho6ell/ubuntu-rootfs.tar.xz
echo ""
echo -e "   Wait for extract (^_^) ... "
echo ""
&& tar -xJf ubuntu-rootfs.tar.xz

figlet -c Finish yey

echo "  $(date)"
echo -e "    [•] Note : for start ubuntu : ./start-ubuntu.sh happiness day (^_^)"
