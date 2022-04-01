Hello And Welcome.
This CPU design is based on mips instruction set.

@Author: csy
##项目结构：

    study_record @ 08711e4:
        - AXI
        - Cache
        - TLB
        - Tools


    无总线文件夹:
        目前该项目已经完成了57条指令以及例外、中断部分（硬件中断还没有处理，软件中断已经处理过了），尚未配置AXI总线、cache等。
    整个项目主要参照《CPU设计实战》完成。
    现在本人还没有写“使用说明”的打算，有必要时我会详细写的。
        需要指明本人已经用到的IP核：
            clk,inst_ram,data_ram(这三个是原来的lab资源自带的)
            mydiv,mydiv_unsigned(有符号除法和无符号除法IP,具体调用参考《CPU设计实战》第五章)
            还有其实也算调用的乘法（直接用 * 解决了,实际上就是调用了IP核,只是并不是显式的）......
    
    AXI总线文件夹:
        目前本人的计划是：把AXI和后面的cache部分相结合。AXI需要和Icache,Dcache,Uncache(包括inst和data存储器)进行交互。

    参考代码资源:
        目前已有一份。
    
    周报.md:
        本人会每周坚持写周报，请各位查阅。
---
希望各位能够多多commit,一天的学习我觉得是需要总结的。大家把自己的发现的一些比较难懂的地方,或者重要的地方写成readme.md文档,
上传到study_record中对应的部分，有问题一起解决。我本人每周会写周报，总结大家一周成果，同时分享一些我的感想，以及未来规划。
我希望到时候这个repository能多多看到各位的贡献。

