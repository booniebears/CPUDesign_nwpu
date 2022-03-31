### dcache状态机的描述

使用两个状态机 一个主状态机 一个store辅助状态机

#### 主状态机

##### IDLE 空闲态 

如果这个状态下isStore 为0 ，表示 当前这一拍 没有store引起的写入block ram的操作， 所以当前拍可以接收CPU访存请求

##### LOOKUP 

表示接收了请求的下一拍 ，在LOOKUP拍给出上一拍访存请求的命中信息（是否命中） 

如果命中且上一拍访存请求不是uncache的 且这一拍 没有isStore ，那么这一拍可以接收新的访存请求

如果不命中 或者上一拍访存请求是uncache的 或是这一拍有isStore， 那么这一拍不能接收新的访存请求

注 一拍的访存请求是否是uncache的 在下一拍得出

##### MISSCLEAN

表示上上拍 的 访存请求缺失了 ，在上一拍LOOKUP 得到缺失信息，同时在LOOKUP拍读出的dirty信息是干净的 所以这一拍是MISSCLEAN

在MISSCLEAN 发出读请求，在握手之后，随后转入REFILL阶段 最终写入新块的内容。

##### MISSDIRTY

与MISSCLEAN相比，在LOOKUP读出的dirty信息是脏的 所以先把脏块的数据写回axi ram。在MISSDIRTY发出写请求 写请求握手之后转入WRITEBACK

##### WRITEBACK

等待AXI模块发出写结束的信号 随后跳转到MISSCLEAN

##### REFILL

等待AXI模块 返回数据 在REFILL 的最后一周期写入。

##### REQ

在LOOKUP拍 得到信息 上一拍访存请求的uncache的 所以这一排跳转到REQ 向AXI发出访存请求 握手之后跳转到WAIT

##### WAIT

等到AXI模块　返回uncache访存请求的结束信息　在等到结束信息之后　下一拍跳入IDLE

#### 主状态机跳转归纳

##### IDLE

IDLE->IDLE    当前没有或者不能接收访存请求 不能是因为isStore占据了端口

IDLE->LOOKUP 当前有访存请求 并且可以接收

##### LOOKUP

LOOKUP->LOOKUP 当前有访存请求 且当前拍可以接收访存请求 且上一拍访存请求命中且不是uncache 

LOOKUP->IDLE  当前拍无访存请求 或者不能接收

LOOKUP->MISSCLEAN 不命中 需要替换的cache line是干净的

LOOKUP->MISSDIRTY  不命中 需要替换的cache line是脏 的

LOOKUP->REQ 上一拍访存请求是uncache的

##### MISSCLEAN

MISSCLEAN->MISSCLEAN 　与AXI　模块读请求未握手

MISSCLEAN->REFILL　与AXI　模块读请求已握手

##### MISSDIRTY

MISSDIRTY->MISSDIRTY　与AXI 写请求未握手

MISSDIRTY->WRETEBACK  与AXI写请求已握手

##### WRITEBACK

WRITEBACK->WRITEBACK  写返回未握手

WRITEBACK->MISSCLEAN 写返回已握手

##### REFILL

REFILL->REFILL 数据尚未返回

REFILL->IDLE 数据在当前排有效

##### REQ

REQ->REQ 访存请求未握手

REQ->WAIT 访存请求已握手

##### WAIT

WAIT->WAIT 访存的返回信息未握手

WAIT->IDLE

#### store辅助状态机

##### IDLE_STORE

表示当前拍 不用写block ram  只有在主状态机在LOOKUP阶段命中了 且不是uncache的 才在下一周期跳转到WRITE_STORE

##### WRITE_STORE

表示当前拍要写 block ram

