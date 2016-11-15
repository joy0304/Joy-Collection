## 趣探 Mach-O：文件格式

> 本文所读的源码，可以从[这里找到](http://opensource.apple.com/source/xnu/xnu-1456.1.26/EXTERNAL_HEADERS/mach-o/loader.h)，这是 Mach-O 系列的第一篇


我们的程序想要跑起来，肯定它的可执行文件格式要被操作系统所理解，比如 `ELF` 是 `Linux `下可执行文件的格式，`PE32／PE32+`是`windows`的可执行文件的格式，那么对于`OS X `和`iOS` 来说 `Mach-O` 是其可执行文件的格式。

我们平时了解到的可执行文件、库文件、Dsym文件、动态库、动态连接器都是这种格式的。Mach-O 的组成结构如下图所示包括了`Header`、`Load commands`、`Data`（包含`Segement`的具体数据）


![](http://i2.buimg.com/4851/3ad806899468721c.jpg)

### Header 的结构
`Mach－O`的头部，使得可以快速确认一些信息，比如当前文件用于32位还是64位，对应的处理器是什么、文件类型是什么

可以拿下面的代码做一个例子

```
#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    return 0;
}
```

在终端执行以下命令，可以生成一个可执行文件` a.out`

```
192:Test Joy$ gcc -g main.c
```

我们可以使用`MachOView`（是一个查看` MachO` 格式文件信息的开源工具）来查看
`.out`文件的具体格式如何

![](http://i2.buimg.com/4851/a35cbfb4a72448bc.jpg)

看到这里肯定有点懵比，不知道这是什么东西，下面看一下 `header`的数据结构


32位结构

```
struct mach_header {
	uint32_t	magic;		/* mach magic number identifier */
	cpu_type_t	cputype;	/* cpu specifier */
	cpu_subtype_t	cpusubtype;	/* machine specifier */
	uint32_t	filetype;	/* type of file */
	uint32_t	ncmds;		/* number of load commands */
	uint32_t	sizeofcmds;	/* the size of all the load commands */
	uint32_t	flags;		/* flags */
};
```

64位架构

```
struct mach_header_64 {
	uint32_t	magic;		/* mach magic number identifier */
	cpu_type_t	cputype;	/* cpu specifier */
	cpu_subtype_t	cpusubtype;	/* machine specifier */
	uint32_t	filetype;	/* type of file */
	uint32_t	ncmds;		/* number of load commands */
	uint32_t	sizeofcmds;	/* the size of all the load commands */
	uint32_t	flags;		/* flags */
	uint32_t	reserved;	/* reserved */
};
```

32位和64位架构的头文件，没有太大的区别，只是64位多了一个保留字段罢了

* `magic：`魔数，用于快速确认该文件用于64位还是32位
* `cputype：`CPU类型，比如 arm
* `cpusubtype：`对应的具体类型，比如arm64、armv7
* ` filetype：`文件类型，比如可执行文件、库文件、Dsym文件，demo中是2 `MH_EXECUTE`，代表可执行文件

```
 * Constants for the filetype field of the mach_header
 */
#define	MH_OBJECT	0x1		/* relocatable object file */
#define	MH_EXECUTE	0x2		/* demand paged executable file */
#define	MH_FVMLIB	0x3		/* fixed VM shared library file */
#define	MH_CORE		0x4		/* core file */
#define	MH_PRELOAD	0x5		/* preloaded executable file */
#define	MH_DYLIB	0x6		/* dynamically bound shared library */
#define	MH_DYLINKER	0x7		/* dynamic link editor */
#define	MH_BUNDLE	0x8		/* dynamically bound bundle file */
#define	MH_DYLIB_STUB	0x9		/* shared library stub for static */
#define	MH_DSYM		0xa		/* companion file with only debug */
#define	MH_KEXT_BUNDLE	0xb		/* x86_64 kexts */
```

* ` ncmds ：`加载命令条数
* `sizeofcmds`：所有加载命令的大小
* `reserved：`保留字段
* `flags：`标志位，刚才`demo`中显示的都在这里了，其余的有兴趣可以阅读 `mach o `源码

```
/* Constants for the flags field of the mach_header */
#define	MH_NOUNDEFS	0x1		// 目前没有未定义的符号，不存在链接依赖
#define MH_DYLDLINK	0x4		// 该文件是dyld的输入文件，无法被再次静态链接
#define	MH_PIE 0x200000		// 加载程序在随机的地址空间，只在 MH_EXECUTE中使用
#define MH_TWOLEVEL	0x80	// 两级名称空间
```

#### 随机地址空间
进程每一次启动，地址空间都会简单地随机化。

对于大多数应用程序来说，地址空间随机化是一个和他们完全不相关的实现细节，但是对于黑客来说，它具有重大的意义。

如果采用传统的方式，程序的每一次启动的虚拟内存镜像都是一致的，黑客很容易采取重写内存的方式来破解程序。采用`ASLR`可以有效的避免黑客攻击。

#### dyld
动态链接器，他是苹果开源的一个项目，可以在这里[下载](http://opensource.apple.com/tarballs/dyld/dyld-360.18.tar.gz)，当内核执行`LC_DYLINK`（后面会说到）时，连接器会启动，查找进程所依赖的动态库，并加载到内存中。

#### 二级名称空间
这是`dyld`的一个独有特性，说是符号空间中还包括所在库的信息，这样子就可以让两个不同的库导出相同的符号，与其对应的是平坦名称空间


### Load commands 结构

`Load commands `紧跟在头部之后，这些加载指令清晰地告诉加载器如何处理二进制数据，有些命令是由内核处理的，有些是由动态链接器处理的。在源码中有明显的注释来说明这些是动态连接器处理的。

这里列举几个看上去比较熟悉的....

```
// 将文件的32位或64位的段映射到进程地址空间
#define	LC_SEGMENT	0x1	
#define	LC_SEGMENT_64	0x19	

// 唯一的 UUID，标示二进制文件
#define LC_UUID		0x1b	/* the uuid */

// 刚才提到的，启动动态加载连接器
#define LC_LOAD_DYLINKER 0xe	/* load a dynamic linker */

// 代码签名和加密
#define LC_CODE_SIGNATURE 0x1d	/* local of code signature */
#define	LC_ENCRYPTION_INFO 0x21	/* encrypted segment information */

```

`load command`的结构如下

```
struct load_command {
	uint32_t cmd;		/* type of load command */
	uint32_t cmdsize;	/* total size of command in bytes */
};

```
通过 `MachOView`来继续查看刚才Demo中的`Load commands `的一些细节，`LC_SEGMENT_64`和`LC_SEGMENT`是加载的主要命令，它负责指导内核来设置进程的内存空间

![](http://i2.buimg.com/4851/539314762a9078c0.jpg)


* ` cmd：`就是就是`Load commands `的类型，这里`LC_SEGMENT_64`代表将文件中64位的段映射到进程的地址空间。`LC_SEGMENT_64`和`LC_SEGMENT`的结构差别不大，下面只列举一个，有兴趣可以阅读源码

```
struct segment_command_64 { /* for 64-bit architectures */
	uint32_t	cmd;		/* LC_SEGMENT_64 */
	uint32_t	cmdsize;	/* includes sizeof section_64 structs */
	char		segname[16];	/* segment name */
	uint64_t	vmaddr;		/* memory address of this segment */
	uint64_t	vmsize;		/* memory size of this segment */
	uint64_t	fileoff;	/* file offset of this segment */
	uint64_t	filesize;	/* amount to map from the file */
	vm_prot_t	maxprot;	/* maximum VM protection */
	vm_prot_t	initprot;	/* initial VM protection */
	uint32_t	nsects;		/* number of sections in segment */
	uint32_t	flags;		/* flags */
};

```
* `cmdsize：`代表`load command`的大小
* `VM Address ：`段的虚拟内存地址
* `VM Size ：` 段的虚拟内存大小
* `file offset：`段在文件中偏移量
* `file size：`段在文件中的大小

将该段对应的文件内容加载到内存中：从`offset`处加载 `file size`大小到虚拟内存 `vmaddr`处，由于这里在内存地址空间中是`_PAGEZERO`段（这个段不具有访问权限，用来处理空指针）所以都是零

还有图片中的其他段，比如`_TEXT`对应的就是代码段，`_DATA`对应的是可读／可写的数据，`_LINKEDIT`是支持`dyld`的，里面包含一些符号表等数据


* `nsects：`标示了`Segment`中有多少`secetion`
* `segment name：`段的名称，当前是` __PAGEZERO`

### Segment & Section
这里有个命名的问题，如下图所示，`__TEXT`代表的是`Segment`，小写的`__text`代表 `Section`

![](http://i1.piimg.com/567571/e21cb02410cf501e.jpg)

`Section`的数据结构


```
struct section { /* for 32-bit architectures */
	char		sectname[16];	/* name of this section */
	char		segname[16];	/* segment this section goes in */
	uint32_t	addr;		/* memory address of this section */
	uint32_t	size;		/* size in bytes of this section */
	uint32_t	offset;		/* file offset of this section */
	uint32_t	align;		/* section alignment (power of 2) */
	uint32_t	reloff;		/* file offset of relocation entries */
	uint32_t	nreloc;		/* number of relocation entries */
	uint32_t	flags;		/* flags (section type and attributes)*/
	uint32_t	reserved1;	/* reserved (for offset or index) */
	uint32_t	reserved2;	/* reserved (for count or sizeof) */
};

```

* ` sectname：`比如`_text`、`stubs`
* `segname ：`该`section`所属的` segment`，比如`__TEXT`
* `addr ：` 该`section`在内存的起始位置
* `size：` 该`section`的大小
* `offset：` 该`section`的文件偏移
* `align ：`字节大小对齐 
*  `reloff ：`重定位入口的文件偏移
* `nreloc：` 需要重定位的入口数量
* `flags： `包含`section`的`type`和`attributes`


发现很多底层知识都是以 `Mach-O`为基础的，所以最近打算花时间结合`Mach-O`做一些相对深入的总结，比如符号解析、`bitcode`、逆向工程等，加油吧

### 参考链接

* 深入理解 MAC OS X & iOS 操作系统
* [mach-o/loader.h ](http://opensource.apple.com/source/xnu/xnu-1456.1.26/EXTERNAL_HEADERS/mach-o/loader.h)
* [Mach-O文件格式和程序从加载到执行过程](http://m.blog.csdn.net/article/details?id=50628310)
* [OS X ABI Mach-O File Format Reference](https://developer.apple.com/library/mac/documentation/DeveloperTools/Conceptual/MachORuntime/index.html) 


