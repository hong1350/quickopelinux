#!/usr/bin/bash

function check() {
    #检查缓存是否存在
    echo "正在检查缓存是否存在……"
    sleep 1
    #如果没有缓存则创建缓存
    if [ ! -f ~/.cache/qol/cache ]; then
	    echo "未找到缓存，即将创建新的缓存文件……"
        mkdir ~/.cache/qol
	    echo "您的软件包管理器：${QOL_PM}"
	    echo "QOL_PM=${QOL_PM}" >> ~/.cache/qol/cache
	    echo "您使用的发行版：${QOL_DISTRO}"
	    echo "QOL_DISTRO=${QOL_DISTRO}" >> ~/.cache/qol/cache
    fi
}

function main() {
    check
}

main
