#!/bin/sh

dir=`whoami`

if [ -f "/home/$dir/Resources/VoiceControl/SogouVoiceOperation.zip" ];then
    echo "===================================文件已存在!!!=========================================="
    cd /home/$dir/Resources/VoiceControl
    unzip -o -d /home/$dir/Resources/VoiceControl SogouVoiceOperation.zip
    sleep 3
    cp -a -d -v SogouVoiceOperation /home/$dir/.config/SogouShell/usr
    else
    echo "===================================文件不存在!!!=========================================="
    wget -v -P /home/$dir/Resources/VoiceControl http://se.sogouqa.com/ImePC/resources/SogouVoiceOperation/SogouVoiceOperation.zip
    echo "=============================download successfully!!!===================================="
    sleep 2
    cd /home/$dir/Resources/VoiceControl
    unzip -o -d /home/$dir/Resources/VoiceControl SogouVoiceOperation.zip
    sleep 3
    cp -a -d -v SogouVoiceOperation /home/$dir/.config/SogouShell/usr
fi

rm -rf SogouVoiceOperation/
