#!/bin/bash
#----------参数列表--------------------

# 1-推送设备列表
clients=(
    "oS3oSEsy9QKgbki5aWqwqP"
    "enFQspVukouiwoomQR6dx4"
)

# 2-标题
title="这里是标题"

# 3-内容
body="这里是内容"

# 4-图标地址
icon="https://s3.bmp.ovh/imgs/2023/03/03/b57680cc6f074fb7.png"

# 5-推送分组[倒数日 提醒]
group="tixing"

#--------------------------------------

# 参数：1-标题；2-内容；3-图标链接；4-分组
push(){
    # 推送地址
    url="https://api.day.app"

    # 遍历 clients
    for client in "${1[@]}";
    do 
        # 推送消息
        curl -O "$url/$client/$2/$3/?icon=$4&group=$5" 

        # 打印已推送设备
        echo "已推送:$client" 
    done 

}

# 函数调用
push ${clients[@]} $title $body $icon $group
