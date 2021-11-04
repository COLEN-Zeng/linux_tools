#!/bin/bash
#函数定义
function url() {
    echo "http://c.biancheng.net/shell/"
    echo "${COMP_WORDS[COMP_CWORD]}"
}

#函数调用
url
