Hello And Welcome.
This CPU design is based on mips instruction set.

目前该项目已经完成了57条指令以及例外、中断部分（硬件中断还没有处理，软件中断已经处理过了），尚未配置AXI总线、cache等。
整个项目主要参照《CPU设计实战》完成。
现在本人还没有写“使用说明”的打算，有必要时我会详细写的。

需要指明本人已经用到的IP核：
clk,inst_ram,data_ram(这三个是原来的lab资源自带的)
mydiv,mydiv_unsigned(有符号除法和无符号除法IP,具体调用参考《CPU设计实战》第五章)
还有其实也算调用的乘法（直接用 * 解决了,实际上就是调用了IP核,只是并不是显式的）......
这几个运算用到的IP核之后想个办法要去掉，换成自己写的。
