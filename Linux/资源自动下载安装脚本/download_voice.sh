#!/bin/sh

dir=`whoami`

if [ -f "/home/$dir/Resources/voice/SogouVoice.zip" ];then
    echo "===================================文件已存在!!!=========================================="
    #进入目录
    cd /home/$dir/Resources/voice
    #解压文件
    unzip -o -d /home/$dir/Resources/voice SogouVoice.zip
    sleep 3
    #输入系统密码
    echo 123 | sudo -S gem install fastlane
    #复制文件
    sudo cp -a -d -v SogouVoice /usr/share/sogouimebs/
    else
    echo "===================================文件不存在!!!=========================================="
    #下载文件
    wget -v -P /home/$dir/Resources/voice http://se.sogouqa.com/ImePC/resources/SogouVoice/SogouVoice.zip
    echo "=============================download successfully!!!===================================="
    sleep 2
    cd /home/$dir/Resources/voice
    unzip -o -d /home/$dir/Resources/voice SogouVoice.zip
    sleep 3
    echo 123 | sudo -S gem install fastlane
    sudo cp -a -d -v SogouVoice /usr/share/sogouimebs/
fi

rm -rf SogouVoice/
