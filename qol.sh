#!/usr/bin/bash

function cache() {
    #检查缓存是否存在
    if [ -d ~/.cache/qol ]; then
        QOL_FIND_CACHE = 1
    else
        unset QOL_FIND_CACHE
    fi
    #如果没有缓存则创建缓存
    if [ ! QOL_FIND_CACHE ]; then
        mkdir ~/.cache/qol
	case QOL_PM in
            (* | apt)
	esac
	QOL_PM >> ~/.cache/qol/cache
    fi
}
