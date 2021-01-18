## 文件作用

| 文件名            | 作用                                                     |
| ----------------- | -------------------------------------------------------- |
| bootimage-0.11    | 系统镜像文件(boot，setup，system)，启动有问题            |
| bootimage-0.11-fd | 系统镜像文件(设置fd为root_dev) ，启动有问题              |
| bootimage-0.11-hd | 系统镜像文件(设置hd为root_dev)                           |
| diska.img         | 通过msdos文件系统存储的资料(可以通过mount -t msdos查看)  |
| diskb.img         | 通过msdos文件系统存储的资料                              |
| hdc-0.11-new.img  | 磁盘文件，两个分区，根文件系统，(这里边应该也有一个boot) |
| rootimage-0.11    | 根文件系统，minix文件系统，启动有问题                    |



## BOCHS调试

通过bochs调试系统，最少需要以下一些资源：

* BIOS镜像文件(自带)
* VGA BIOS镜像文件(自带)
* 引导启动磁盘镜像文件
* 根文件系统



启动linux系统需要设置：

* boot设备为floopya，镜像为 bootimage-0.11-hd，此时为从磁盘启动
* 设置ata0，镜像为 hdc-0.11-new.img

```bash
bochs -f bochs.bxrc							# 已经设置好的启动文件
```



## 命令解析

```bash
# loop 设备
mount -t minix rootimage-0.11 /mnt -o loop
# 上边这条命令等同与下边两条命令
losetup /dev/loop[x] rootimage-0.11
mount -t minix /dev/loop[x]
```



## 附录

### loop设备说明

> loop设备是一种伪设备，是使用文件来模拟块设备的一种技术，文件模拟成块设备后, 就像一个磁盘或光盘一样使用。
>
> 一般在linux中会有8个loop设备，一般是/dev/loop0~loop7，可用通过losetup -a查看所有的loop设备，如果命令没有输出就说明所有的loop设备都没有被占用，你可以按照以下步骤创建自己的loop设备。
>
> 1）创建一个文件
> dd if=/dev/zero of=/var/loop.img bs=1M count=10240
>
> 2）使用losetup将文件转化为块设备
> losetup /dev/loop0 /var/loop.img
>
> 3）通过lsblk查看刚刚创建的块设备
> lsblk |grep loop0
> losetup -a
>
> 3）通过lsblk查看刚刚创建的块设备
> lsblk |grep loop0
> losetup -a
>
> 4)   /dev/loop[x]设备关联文件之后，可以当成磁盘设备来用
>
> 5）要删除这个loop设备可以执行以下命令
> losetup -d /dev/loop0



## 参考资料

* 《linux内核完全注释》
* [linux-0.11-devel-060625.zip 下载链接](http://www.oldlinux.org/Linux.old/bochs/linux-0.11-devel-060625.zip)

