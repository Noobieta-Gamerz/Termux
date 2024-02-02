#!/data/data/com.termux/files/usr/bin/bash
echo -e "              Please waiiiitt for install package... (^_^)"
echo ""
sleep 20;
echo " lumayan lama guys 😄";sleep 3;
sleep 30; echo " sabar sabar sabar ini ujian 😄";
sleep 5;
apt update > /dev/null 2>&1 && echo "  be patien 😄" && apt upgrade --assume-yes > /dev/null 2>&1 && echo " Bentar lagi beres gan 😆" && apt --assume-yes install nala > /dev/null 2>&1 && nala install wget tar figlet proot && 
wget https://github.com/Noobieta-Gamerz/Termux/raw/main/qemu-termux/qemu-x86_64
chmod 755 qemu-x86_64
mv qemu-x86_65 $PREFIX/bin/
mkdir vm-termux
cd ~/vm-termux
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=10E63Hd1QKXaHNnz5QSLF8fEgnWM9Quq1' -O ubuntu-rootfs.tar.xz
echo ""
echo -e "   Wait for extract (^_^) ... "
echo ""
tar -xvf ubuntu-rootfs.tar.xz
cd ~/vm-termux
figlet -c Finish yey

echo "  $(date)"
echo -e "    [•] Note : for start ubuntu : ./start-ubuntu.sh happiness day (^_^)"
