#! /bin/bash

# 将磁盘中的代码放到本地git中保存

set -e

mount_file="mnt"
local_file="hd2"
loop_dev=""
upload=""
clean=""

do_mount()
{
	loop_dev=`losetup -f`
	losetup -o 63504384 ${loop_dev} hdc-0.11-new.img
	mount ${loop_dev} ${mount_file}
}
do_umount()
{
	sync
	sleep 2
	umount ${loop_dev}
	losetup -d ${loop_dev}
}
err_usage()
{
	echo "USAGE: $0 upload|download [clean]"
	exit
}
err_root()
{
	echo "ERROR: must be root"
	exit
}

if [ ${EUID} -ne 0 ]; then
	err_root
fi

if [ ! -z $1 ]; then
	if [ $1 = "upload" ]; then
		upload="yes"
	fi
	if [ $1 = "download" ]; then
		upload="no"
	fi
fi

if [ -z ${upload} ];then
	err_usage
fi

if [ ! -z $2 ]; then
	if [ $2 = "clean" ]; then
		clean="Y"
	fi
fi

if [ ! -d "${mount_file}" ]; then
	mkdir ${mount_file}
fi

do_mount

if [ ${upload} = "no" ]; then
	if [ "`ls -A ${mount_file}`" != "" ]; then
		if [ ! -z ${clean} ]; then
			rm ${local_file}/* -rf
		fi
		cp ${mount_file}/* ${local_file} -af
	fi
else
	if [ "`ls -A ${local_file}`" != "" ]; then
		if [ ! -z ${clean} ]; then
			rm ${mount_file}/* -rf
		fi
		cp ${local_file}/* ${mount_file} -af
	fi
fi

do_umount

rm ${mount_file} -rf


