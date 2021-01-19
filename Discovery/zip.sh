#! /bin/bash

# 磁盘文件太大，git传输不上去，git commit 需要压缩Bochs，
# linux-0.11-devel-060625下文件

bochs_file="Bochs"
linux_devel_file="linux-0.11-devel-060625"

if [ -d "${bochs_file}" ]; then
	echo "zip ${bochs_file}..."
	zip -r ${bochs_file}.zip ${bochs_file}/*
	rm ${bochs_file} -rf
fi

if [ -d "${linux_devel_file}" ]; then
	echo "zip ${linux_devel_file}..."
	zip -r ${linux_devel_file}-local.zip ${linux_devel_file}/*
	rm ${linux_devel_file} -rf
fi


