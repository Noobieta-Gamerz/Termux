#!/bin/bash
if [ $# != 2 ]; then
echo "Usage: Dgrive.sh [ID] [save_name]"
exit 0
fi
confirm=$(wget --quiet --save-cookies $PREFIX/tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.usercontent.google.com/download?id='$1 -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')
echo -e "
        ████████╗██████╗        ██████╗ ██████╗ ██████╗ ██╗██╗   ██╗███████╗
        ╚══██╔══╝██╔══██╗      ██╔════╝ ██╔══██╗██╔══██╗██║██║   ██║██╔════╝
           ██║   ██║  ██║█████╗██║  ███╗██║  ██║██████╔╝██║██║   ██║█████╗
           ██║   ██║  ██║╚════╝██║   ██║██║  ██║██╔══██╗██║╚██╗ ██╔╝██╔══╝
           ██║   ██████╔╝      ╚██████╔╝██████╔╝██║  ██║██║ ╚████╔╝ ███████╗
           ╚═╝   ╚═════╝        ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝  ╚══════╝

"
echo ""
sleep 3; echo "                     iyaaaay wait am checking your gdrive...."
echo ""
echo -ne '>>>                       [20%]\r'
# some task
sleep 2
echo -ne '>>>>>>>                   [40%]\r'
# some task
sleep 2
echo -ne '>>>>>>>>>>>>>>            [60%]\r'
# some task
sleep 2
echo -ne '>>>>>>>>>>>>>>>>>>>>>>>   [80%]\r'
# some task
sleep 2
echo -ne '>>>>>>>>>>>>>>>>>>>>>>>>>>[100%]\r'
echo -ne '\n'
echo ""
sleep 2

echo "                         yeaaah l'am found hihi (^_^) [${wiw}] "wiw="$(sleep 5)"
sleep 2
echo ""
echo "                        Download Gdrive Content On The Way"
sleep 3;
echo ""
echo $confirm
wget --load-cookies $PREFIX/tmp/cookies.txt "https://drive.usercontent.google.com/download?=download&confirm=$confirm&id=$1" -O $2 && rm -rf /tmp/cookies.txt
