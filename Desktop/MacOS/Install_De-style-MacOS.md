<h2><p align="center">Style MacOS</p></h2>

<p align="center">
<img width="80%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5O_qBedlyFdF3DqM_hXvI9qkj-4zTGXF8Hg&usqp=CAU">
</p>

##### Update & Install
```
pkg update && pkg upgrade -y
pkg install root-repo -y
pkg install x11-repo -y
```
##### Install De xfce4
```
apt install xfce4 xfce4-goodies xfce4-terminal rofi git curl wget openssh tigervnc -y
```
##### Download Themes
```
wget https://github.com/vinceliuice/WhiteSur-gtk-theme/archive/refs/tags/2021-12-28.zip
```
##### Download icons
```
git clone https://github.com/vinceliuice/WhiteSur-icon-theme
```
##### Download Cursors
```
git clone https://github.com/vinceliuice/WhiteSur-cursors
```
##### Download xapple Menu
```
wget https://github.com/Noobieta-Gamerz/Termux/raw/main/Desktop/MacOS/xpple_menu.zip
```
##### unzip themes
```
unzip 2021-12-28.zip
```
##### create folder
```
mkdir .themes
mkdir .icons
```
##### move themes
```
cd WhiteSur-gtk-themes-2021-12-28/release/
cp *.tar.xz $HOME/.themes/
```
##### extract themes
```
cd $HOME/.themes/
tar -xvf WhiteSur-light-40-0.tar.xz
tar -xvf WhiteSur-dark-40-0.tar.xz
```
##### Move icons or install icons
```
cd $HOME/WhiteSur-icon-theme
./install.sh
```
##### Move or Install Cursors
```
cd $HOME/WhiteSur-cursors/
./install.sh
```
##### Test Desktop Xfce4
```
vncserver
#input password
#verify password
n for no
vnc running on localhost:1
```
##### Open Realvnc Viwer on android or PC
```
###android
#input
localhost:5901
name example termux-desktop
#input password vnc
###PC
Download vnc viewer for PC
https://www.realvnc.com/en/connect/download/viewer/
#input
ip:5901
ip: termux
check ip: ifconfig
```
>[!NOTE]
>##### if black screen
>```
>nano .vnc/xstartup
>comment # for aterm and # twm &
>add startxfce4 &
>```
>##### geometry
>```
>nano .vnc/config
>uncomment # geometry
>change to 1280x800
>```
>##### example xstartup
>```
>#!/data/data/com.termux/files/usr/bin/sh
>## This file is executed during VNC server
>## startup.
>
># Launch terminal emulator Aterm.
># Requires package 'aterm'.
>#aterm -geometry 80x24+10+10 -ls &
>
># Launch Tab Window Manager.
># Requires package 'xorg-twm'.
>#twm &
>startxfce4 &
>```
>##### example config
>```
>## Supported server options to pass to vncserver upon invocation can be listed
>## in this file. See the following manpages for more: vncserver(1) Xvnc(1).
>## Several common ones are shown below. Uncomment and modify to your liking.
>##
># securitytypes=vncauth,tlsvnc
># desktop=sandbox
>geometry=1280x800
># localhost
># alwaysshared
>```
##### Download wellpaper etc 
```
wget https://www.opencode.net/lsteam/xfce-big-sur-setup-file/-/raw/master/update-xfce-bigsur.zip
```


