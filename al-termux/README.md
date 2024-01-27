AL-TERMUX (ALPINE AND TERMUX)
=============================
<br>
#CARA INSTALL<br>
1.install proot-distro terlebih dahulu :</br>
```apt install proot-distro
```
<br>
2.clone repo <br>
```
test
```
<br>

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
