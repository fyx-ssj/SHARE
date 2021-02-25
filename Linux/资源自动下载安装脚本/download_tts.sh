#!/bin/sh

dir=`whoami`

if [ -f "/home/$dir/Resources/TTs/SogouTts.zip" ];then
    echo "===================================文件已存在!!!=========================================="
    cd /home/$dir/Resources/TTs
    unzip -o -d /home/$dir/Resources/TTs SogouTts.zip
    sleep 3
    cp -a -d -v SogouTts /home/$dir/.config/SogouShell/usr
    else
    echo "===================================文件不存在!!!=========================================="
    wget -v -P /home/$dir/Resources/TTs http://se.sogouqa.com/ImePC/resources/SogouTts/SogouTts.zip
    echo "=============================download successfully!!!===================================="
    sleep 2
    cd /home/$dir/Resources/TTs
    unzip -o -d /home/$dir/Resources/TTs SogouTts.zip
    sleep 3
    cp -a -d -v SogouTts /home/$dir/.config/SogouShell/usr
fi

rm -rf SogouTts/

