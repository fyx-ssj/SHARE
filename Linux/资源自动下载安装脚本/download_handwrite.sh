#!/bin/sh

dir=`whoami`

if [ -f "/home/$dir/Resources/handwrite/handinput-all.zip" ];then
    echo "===================================文件已存在!!!=========================================="
    #进入目录
    cd /home/$dir/Resources/handwrite
    #解压文件
    unzip -o -d /home/$dir/Resources/handwrite handinput-all.zip
    sleep 3
    #输入系统密码
    echo 123 | sudo -S gem install fastlane
    #复制文件
    sudo cp -a -d -v handinput/* /usr/share/sogouimebs/SogouShell/dict/
    else
    echo "===================================文件不存在!!!=========================================="
    #下载文件
    wget -v -P /home/$dir/Resources/handwrite http://se.sogouqa.com/ImePC/resources/handinput/handinput-all.zip
    echo "=============================download successfully!!!===================================="
    sleep 2
    cd /home/$dir/Resources/handwrite
    unzip -o -d /home/$dir/Resources/handwrite handinput-all.zip
    sleep 3
    echo 123 | sudo -S gem install fastlane
    sudo cp -a -d -v handinput/* /usr/share/sogouimebs/SogouShell/dict/
fi

rm -rf handinput/

