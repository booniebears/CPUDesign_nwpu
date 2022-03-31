### Cache

参考了[Cache的基本原理 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/102293437)

[nscscc-wiki/A14_CPU Cache支持.pdf at master · loongson-education/nscscc-wiki (github.com)](https://github.com/loongson-education/nscscc-wiki/blob/master/doc/A14_CPU Cache支持.pdf)

都是很好的资料

#### subtle things

cache line 中的line有时候被翻译成 “块”

#### 映射关系

由cpu给出数据的虚拟地址，查找Cache中数据的地址（由主存地址寻找Cache的index）index只是块号

最简单的直接映射法 

（地址）mod（cache块数）

使用tag域表示cache中数据的部分地址信息

使用valid位表示数据是否有效

offset表示cache line中的偏移（正常cpu访问一个word吧 cache line size 一般很大 所以有这个）

tag index offset 构成了全部的地址 （应该就是cache把cpu传来的地址解析成这个样子）

#### Cache属性配置（可以先不看）

##### 虚实地址

![](E:\Alog\cpu\QQ图片20210430185910.png)



Mips虚拟地址

unmapped的段（seg大概是segmention）不需要通过地址转换，(这并不意味着虚实地址是相等的，只是虚实转换是固定的)

这是关于map属性 其他的段的地址转换在功能测试的时候只是简单映射，如果要启操作系统，需要考虑通过TLB MMU进行转换。

##### cache属性

![chche属性图](E:\Alog\cpu\chche属性图.png)

![chche注意事项](E:\Alog\cpu\chche注意事项.png)

**关于第二条，倒是提醒了我在设计cache的时候，可以这样优化。（当然是在uncached的指令之间）**

#### 多路组相连

下图假设cache size大小为64byte  cache一块的大小为8byte(cache line size) 于是有八个cache块（cache line）

路的概念  我们将cache平均分成多份，每一份就是一路。因此，两路组相连缓存就是将cache平均分成2份。

组的概念  我们将所有索引一样的cache line组合在一起称之为组。



index域只与一路的cache块的块数有关 也就是说，当我们多路组相连时，就减少了 一路 的cache块数 也就减少了index域的大小 

（以两路组相连 为例 index域会减少一位 四路组相连 减少两位  ）此时的index被称为set index （组索引）



先根据index找到set，然后将组内的所有cache line对应的tag取出来和地址中的tag部分对比，如果其中一个相等就意味着命中。



##### 优点

因为其可以有助于降低cache颠簸可能性。  就是 如果cpu非常sb 每次要求访问的数据地址 都映射到了一个index域（并且不是一个地址） 我们不至于 每次都把这个cache line中的数据都换掉（人家刚进去就被赶出来）

##### 缺点

增加了硬件开销

#### Cache的分配策略

cache的分配策略是指我们什么情况下应该为数据分配cache line。cache分配策略分为读和写两种情况。

##### 读分配与写分配

读数的时候miss了 当然要分配一个cache line 安放读出的数据。默认情况下，cache都支持读分配。

当CPU写数据发生cache缺失时，才会考虑写分配策略。当我们不支持写分配的情况下，写指令只会更新主存数据，然后就结束了。当支持写分配的时候，我们首先从主存中加载数据到cache line中（相当于先做个读分配动作），然后会更新cache line中的数据。

#### Cache的更新策略

##### 写直通(write through)

当CPU执行store指令并在cache命中时，我们更新cache中的数据并且更新主存中的数据。**cache和主存的数据始终保持一致**。

##### 写回

当CPU执行store指令并在cache命中时，我们只更新cache中的数据。并且每个cache line中会有一个bit位记录数据是否被修改过，称之为dirty bit（cache line旁边有一个D就是dirty bit）。

我们会将dirty bit置位。主存中的数据只会在cache line被替换或者显示的clean操作时更新。因此，主存中的数据可能是未修改的数据，而修改的数据躺在cache中。**cache和主存的数据可能不一致。**