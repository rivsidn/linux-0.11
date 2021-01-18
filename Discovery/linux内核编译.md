## 编译

### 内核编译

* 启动linux-0.11内核
* 删除Makefile中 CFLAGS 中的`-mstring-insns` 
* 内核目录下直接执行make



### 制作根文件系统















## 附录

### `SYSTEM.MAP` 文件

* 该文件是如何生成的？

  编译之后会在目录地下自动生成一个`System.map` 文件

  ```bash
  # -s -x 选项根符号表相关
  # -M, --print-map 将符号表打印到标准输出
  gld -s -x -M boot/head.o init/main.o kernel/kernel.o mm/mm.o fs/fs.o kernel/blk_drv/blk_drv.a kernel/char_drv/char_drv.a kernel/math/math.a lib/lib.a -o /tools/system > System.map
  
  
  # TODO: 如何将.o文件链接成可执行文件？链接脚本
  
  ```
  
  





