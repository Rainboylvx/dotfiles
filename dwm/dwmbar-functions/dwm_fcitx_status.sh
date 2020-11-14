#!/bin/bash
# 得到fcitx输入法的状态

fcitxState (){
    fcitxstate=$(fcitx-remote)
    if [ "$IDENTIFIER" = "unicode" ]; then
        if [ "$fcitxstate" = "1" ];then
            printf ""
        else
            printf ""
        fi
    else
        if [ "$fcitxstate" = "1" ];then
            printf "NAC"
        else
            printf "AC"
        fi
    fi
}

