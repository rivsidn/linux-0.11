## 前言

本文记录了自己阅读了《linux内核完全注释》之后根据本书提供的材料搭建调试环境的过程。

本过程相对比较复杂，后续的调试主要在自己搭建的环境上进行，如果不感兴趣可以直接跳过，看内核调试部分，具体参见[调试内核](./调试内核.md)。



## 材料准备

文件下载[下载链接](http://www.oldlinux.org/Linux.old/bochs/linux-0.11-devel-060625.zip)，下载之后解压：

```bash
# 解压zip文件
unzip linux-0.11-devel-060625.zip
```



文件主要包括几部分：

* README

* SYSTEM.MAP文件

* bochs安装包

* bochs配置文件

* 镜像文件

  | 文件名            | 描述                                               |
  | ----------------- | -------------------------------------------------- |
  | bootimage-0.11    | 0.11 内核编译生成的镜像文件，ROOT_DEV 设置为0x0000 |
  | bootimage-0.11-fd | 0.11 内核编译生成的镜像文件，ROOT_DEV 设置为0x021d |
  | bootimage-0.11-hd | 0.11 内核编译生成的镜像文件，ROOT_DEV 设置为0x0301 |
  | bootimage-0.12-fd | 同上，忽略                                         |
  | bootimage-0.12-hd | 同上，忽略                                         |
  | diska.img         | dos格式的磁盘镜像文件                              |
  | diskb.img         | 同上                                               |
  | hdc-0.11-new.img  | 含有两个分区的硬盘根文件系统(minix文件系统)        |
  | rootimage-0.11    | 软盘根文件系统(minix文件系统)                      |

  

## Bochs 虚拟机运行

用新版本的bochs虚拟机运行系统，需要：

* 镜像文件(bootimage-0.11-hd)
* 硬盘根文件系统(hdc-0.11-new.img)

镜像文件包含内核代码中的`bootsect`，`setup`，`system` 部分，最终由tools/build 合并成镜像文件，具体可以参考源码。

设备上电之后会将镜像加载到内存中，根据ROOT_DEV设备加载根文件系统。



Bochs虚拟机需要设置**floppya** 和 **ata0-master**，具体设置如下所示：

```bash
# floppy设置
floppya: type=1_44, 1_44="/home/rivsidn/gitHub/linux-0.11/Discovery/linux-0.11-devel-060625/bootimage-0.11-hd", status=inserted, write_protected=1
# 磁盘设置
ata0-master: type=disk, path="/home/rivsidn/gitHub/linux-0.11/Discovery/linux-0.11-devel-060625/hdc-0.11-new.img", mode=flat, cylinders=410, heads=16, spt=38, model="Generic 1234", biosdetect=auto, translation=auto
```

其中，`bootimage-0.11-hd`， `hdc-0.11-new.img` 为具体的存放路径，需要根据实际情况改变。

设置之后保存，后续可以通过`-f` 选项选中对应配置文件直接启动。



## 内核编译

启动之后本应该直接可以开始调试，但调试过程中发现提供的SYSTEM.MAP 文件跟镜像不匹配，所以需要自己重新编译内核，生成镜像和system.map文件。

* 将代码放到第二个分区中

  ```bash
  sudo losetup -o 63504384 /dev/loop2 hdc-0.11-new.img
  sudo mount -t minix /dev/loop2 /mnt
  sudo cp linux-0.11.tar.gz /mnt
  sudo tar xzvf linux-0.11.tar.gz
  ```

* 修改makefile文件， 去掉makefile文件中的`-mstring-insns`选项

* 编译

  ```bash
  make 		# 直接make即可将
  ```

* 取出编译生成文件

  * Image
  * System.map
  * boot/bootsect，boot/bootsect.o
  * boot/setup，boot/setup.o
  * tools/system



## 镜像替换

直接编译生成的`Image` 文件设置的ROOT_DEV为0x0306，跟当前环境不符合，需要手动改成0x0301，修改之后设置bochs配置文件，将第一个软盘指向新生成的镜像文件即可。



## 附录

### 查看磁盘镜像内容

* 查看不含分区的磁盘镜像内容

  ```bash
  # 查看diska[b].img 文件内容
  sudo losetup /dev/loop0 diska.img
  sudo mount -t msdos /dev/loop0 /mnt/
  # 退出
  sudo umount /dev/loop0
  sudo losetup -d /dev/loop0
  
  # 查看rootimage-0.11 文件内容
  sudo losetup /dev/loop0 rootimage-0.11
  sudo mount -t minix /dev/loop0 /mnt/
  # 退出
  sudo umount /dev/loop0
  sudo losetup -d /dev/loop0
  ```

* 查看含分区的磁盘镜像内容

  ```bash
  sudo losetup /dev/loop0 hdc-0.11-new.img
  sudo fdisk -l /dev/loop0
  
  Disk /dev/loop0: 121.7 MiB, 127631360 bytes, 249280 sectors
  Units: sectors of 1 * 512 = 512 bytes
  Sector size (logical/physical): 512 bytes / 512 bytes
  I/O size (minimum/optimal): 512 bytes / 512 bytes
  Disklabel type: dos
  Disk identifier: 0x00000000
  
  Device       Boot  Start    End Sectors  Size Id Type
  /dev/loop0p1           2 124031  124030 60.6M 81 Minix / old Linux
  /dev/loop0p2      124032 248063  124032 60.6M 81 Minix / old Linux
  
  # 查看第一个分区内容
  # 此处losetup时需要加偏移量，偏移量为Start*512，单位是字节
  sudo losetup -o 1024 /dev/loop1 hdc-0.11-new.img
  sudo mount -t minix /dev/loop1 /mnt/
  
  # 退出
  sudo umount /dev/loop1
  sudo losetup -d /dev/loop1
  sudo losetup -d /dev/loop0
  ```

  

## 参考资料

* 《linux内核完全注释》

