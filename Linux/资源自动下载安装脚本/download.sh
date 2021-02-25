#!/bin/sh

while getopts ":a:b:c:d:e:f:g:h:i:j:" opt
do
    case $opt in
        a)
        #全下载
        sh download_voice.sh
        sleep 3
        sh download_handwrite.sh
        sleep 3
        sh download_tts.sh
        sleep 3
        sh download_voicecontrol.sh
        ;;
        b)
        #下载语音识别&手写&合成
        sh download_voice.sh
        sleep 3
        sh download_handwrite.sh
        sleep 3
        sh download_tts.sh
        ;;
        c)
        #下载语音识别&合成&控制
        sh download_voice.sh
        sleep 3
        sh download_tts.sh
        sleep 3
        sh download_voicecontrol.sh
        ;;
        d)
        #下载手写&合成&控制
        sh download_handwrite.sh
        sleep 3
        sh download_tts.sh
        sleep 3
        sh download_voicecontrol.sh
        ;;
        e)
        #下载语音识别&手写
        sh download_handwrite.sh
        sleep 3
        sh download_voice.sh
        ;;
        f)
        #下载语音识别&合成
        sh download_voice.sh
        sleep 3
        sh download_tts.sh
        ;;
        g)
        #下载语音识别&操作
        sh download_voice.sh
        sleep 3
        sh download_voicecontrol.sh
        ;;
        h)
        #下载手写&合成
        sh download_handwrite.sh
        sleep 3
        sh download_tts.sh
        ;;
        i)
        #下载手写&控制
        sh download_handwrite.sh
        sleep 3
        sh download_voicecontrol.sh
        ;;
        j)
        #下载合成&控制
        sh download_tts.sh
        sleep 3
        sh download_voicecontrol.sh
        ;;
        ?)
        echo "未知参数"
        exit 1;;
    esac
done
