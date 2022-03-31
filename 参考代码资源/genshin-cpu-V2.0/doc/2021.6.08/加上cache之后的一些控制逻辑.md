### 加cache后CPU适配

+ *对于存在数据冒险的情况，必须等到I & D$不busy的时候，再去考虑 Data Hazard* 
+ 对于分支指令的情况
  + dcache busy时不考虑
  + icache busy时branch流动
  + 