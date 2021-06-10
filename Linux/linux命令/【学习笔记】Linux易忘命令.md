# Linux易忘命令：

### 1.mkdir

 （1）创建多级目录：mkdir -p /父目录/子目录

 （2）创建目录并赋予权限：mkdir -m 777 目录

### 2.mv

​	(1)  移动文件到上级目录：mv 文件  ../

​	(2)  一条命令同时移动多个文件：mv 文件1  文件2  文件n   -t   /目录

 （3）移动文件并强制覆盖：mv  文件   -f  /目录

 （4）移动文件并询问是否覆盖：mv 文件   -i   /目录

### 3.cp

 （1）复制文件：cp  文件   /目录

 （2）一条命令复制多个文件：cp  文件1   文件2  文件n   /目录

 （3）复制文件夹：cp  -r   文件夹   /目录

 （4）复制文件并强制覆盖：cp  -f  文件   /目录

 （5）复制文件并询问是否覆盖：cp  -i  文件   /目录

 （6）复制文件并把修改时间及权限也复制过来：cp  -p  文件  /目录

### 4.history

​	(1)根据关键字筛选历史命令：history |grep xxxx

 （2）查看最后（最近）10条历史命令：history 10   或    history |tail - 10

 （3）执行上一条命令：   ！！

 （4）执行序号为xxxx的命令： ！xxxx

 （5）清除历史记录：history   -c 

### 5.tar

 （1）压缩文件：tar -zcvf  xxx.tar.gz   待压缩文件1 待压缩文件2 ...

 （2）解压文件：tar -zxvf xxx.tar.gz

### 6.tail

 （1）实时动态刷新：tail -f xxx.log

 （2）实时刷新最新500条log：tail  -500f  xxx.log

 （3）显示最后5条log：  tail  -n  5  xxx.log  或  tail  -5  xxx.log

 （4）显示第5条后面的所有log：tail -n  +5   xxx.log

### 7.head

 （1）显示前5条log：head -n 5 xxx.log   或   head -5  xxx.log

 （2）显示第10-20行log：head -20  xxx.log | tail -10

 （3）显示除了最后5条之外的所有log：head  -n  -5   xxx.log

 （4）显示前100个字节内容：head -c 100 xxx.log

![image-20210610101044330](C:\Users\Sogou-SunShijiang\AppData\Roaming\Typora\typora-user-images\image-20210610101044330.png)

### 8.ls

 （1）按文件最后修改时间降序排列查找：ls  -t

 （2）按文件大小从大到小排列查找： ls -S

### 9.ps

 （1）查看所有进程：ps  -A

 （2）查看某指定的进程：ps  -ef  |grep  xxxx

 （3）显示所有进程信息，连同命令行：ps  -ef

        UID：表示用户ID
    	PID：表示进程ID
    	PPID：表示父进程号
    	C：表示CPU的占用率
    	STIME：进程的启动时间
    	TTY：登入者的终端机位置
    	TIME：表示进程执行起到现在总的CPU占用时间
    	CMD：表示启动这个进程的命令

 （4）显示所有进程更详细的信息，包括进程占用CPU、内存：ps  -aux

    	USER：表示哪个用户启动了这个进程
    	PID ：进程ID
    	%CPU：进程CPU的占用率
    	%MEM：进程物理内存的占用率
    	VSZ ：进程占用的虚拟内存量 (Kbytes)
    	RSS ：进程当前实际上占用了多少内存
    	TTY ：进程是在哪个终端机上面运作，若与终端机无关，则显示 ?，另外， tty1-tty6 是本机上面的登入者程序，若为 pts/0 等等的，则表示为由网络连接进主机的程序。
    	STAT：该程序目前的状态，主要的状态有:　
    		 R ：运行；该程序目前正在运作，或者是可被运作
    　　		D：不可中断：一般是IO进程
    　　	  	S ：中断；该程序目前正在睡眠当中 (可说是 idle 状态)，但可被某些讯 唤醒。
    　　		T ：停止：该程序目前正在侦测或者是停止了
    　　		Z ：僵尸：该程序应该已经终止，但是其父程序却无法正常的终止他，造成 zombie (僵尸) 程序的状态
    	START：该进程启动的时间点
    	TIME ：进程从启动后到现在，实际占用CPU的总时间
    	COMMAND：启动该进程的命令

 （5）根据CPU、内存使用来降序排序：ps  -aux  --sort  - pcpu        ps  -aux  --sort  -pmem

### 10.wget

 （1）只下载：wget   下载链接

 （2）下载并重命名：wget  重命名  下载链接

 （3）后台形式下载：wget  -b  下载链接

### 11.cat

 （1）无论是否为空行，都显示行号：cat  -n  xxx

 （2）显示行号，除了不显示空行：cat  -b  xxx

 （3）倒序输出显示：tac  xxx

### 12.nl

 （1）计算行号，显示行号，除了不显示空行：nl xxx    或  nl  -b   t   xxx

 （2）无论是否为空行，都显示行号：nl  -b  a  xxx

### 13.more

 （1）每次显示5行：more  -5  xxx

 （2）每次翻页时先清空屏幕内容：more  -5   -p   xxx

 （3）向后翻页：   空格键   或   z键

 （4）向前翻页：   b键  或  ctrl +b

 （5）退出more模式：q键

### 14.find

 （1）将当前目录及其子目录下所有文件后缀为 **.c** 的文件列出来：find   .  -name    "*.c"

 （2）将目前目录其其下子目录中所有一般文件列出：find  .   -type   f   

 （3）将目前目录其其下子目录中所有一般目录列出：find  .   -type  d 