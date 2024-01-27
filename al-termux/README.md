AL-TERMUX (ALPINE AND TERMUX)
=============================
## CARA INSTALL<br>
1. Install proot-distro terlebih dahulu :
```
apt install proot-distro
```
2. Install alpine linux
```
proot-distro install alpine
```
3. Setelah selesa install alpine copas 👇 di termux
```
curl -sL https://raw.githubusercontent.com/Noobieta-Gamerz/Termux/main/al-termux/install.sh | sh
```

Configuration
=============
See ~/.mixedtermuxrc file

Sound Support
=============
Start pulseaudio by executing this command

  pulseaudio --start --exit-idle-time=-1

Pulseaudio is known to be Battery intensive, So you should kill it often after finishing using pulseaudio

  pulseaudio --kill

Or, if you want to start pulseaudio so it has sound support everytime you execute some command, You may execute this command (Note: Execute once. Twice will cause fatal problem):

  echo "! pulseaudio --check && pulseaudio --start --exit-idle-time=-1" >> ~/.mixedtermuxrc

Uninstalling
============
Uninstalling step is very easy. Just do this:

  pkg reinstall command-not-found bash termux-tools
### Reference
*https://github.com/Yonle/MixedTermux
