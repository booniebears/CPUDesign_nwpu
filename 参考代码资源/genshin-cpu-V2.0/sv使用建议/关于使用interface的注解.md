关于使用interface的注解

在定义模块的时候使用interface的modport

module  <模块名> （<接口名称>.<modport名称>  <自己取的名字，比如pins>）；

在模块内部使用信号时，pins.<想用的信号名称>就可以了。