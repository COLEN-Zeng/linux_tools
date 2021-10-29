#!/bin/sh
# wsl获取宿主机代理
# source ./**.sh 才能生效
hostip=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')
wslip=$(hostname -I | awk '{print $1}')
port=1080

PROXY_HTTP="http://${hostip}:${port}"

set_proxy(){
    # echo "set proxy http: ${PROXY_HTTP}"

    export http_proxy="${PROXY_HTTP}"
    export HTTP_PROXY="${PROXY_HTTP}"

    export https_proxy="${PROXY_HTTP}"
    export HTTPS_PROXY="${PROXY_HTTP}"

    # export ALL_PROXY="${PROXY_SOCKS5}"
    # export all_proxy=${PROXY_SOCKS5}
}

unset_proxy(){
    echo "unset proxy"

    unset http_proxy
    unset HTTP_PROXY
    unset https_proxy
    unset HTTPS_PROXY
    unset ALL_PROXY
    unset all_proxy
}

test_setting(){
    echo "Host ip:" ${hostip}
    echo "WSL ip:" ${wslip}
    echo "Current proxy:" $https_proxy
}

if [ "$1" = "set" ]
then
    set_proxy

elif [ "$1" = "unset" ]
then
    unset_proxy

elif [ "$1" = "test" ]
then
    test_setting
else
    echo "Unsupported arguments."
fi

# 可以添加到~/.zshrc或~/.bashrc自动设置代理
# alias proxy="source /path/proxy.sh"
# source /path/to/proxy.sh set
# 取消则可以使用 proxy unset
# example:
# alias proxy="source ~/tools/proxy.sh"
# . ~/tools/proxy.sh set
