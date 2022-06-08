`ifndef MYCPU_H
    `define MYCPU_H
    //BR_BUS_WD原来是33,lab4之后修改为34(加入了br_stall),lab8修改为35(加入is_branch)
    `define BR_BUS_WD       35 
    //FS_TO_DS_BUS_WD原来是64,lab8修改为71(加入fs_bd,fs_ex,fs_ExcCode)
    `define FS_TO_DS_BUS_WD 71
    //DS_TO_ES_BUS_WD原来是136,lab6修改为137(src2_is_imm变为2位宽),修改为145(加入mf_mt和mult_div)
    //lab7再次修改为157(添加mem_control区别不同的存取数指令),lab8修改为174(加入mfc0,mtc0,eret指令
    //和mfc0_rd,sel段;加入ds_bd,ds_ex,ds_ExcCode,Overflow_inst)
    `define DS_TO_ES_BUS_WD 182
    //原为70,lab7修改为115,lab8修改为133(加入mfc0,mtc0,eret指令和mfc0_rd,sel段;加入es_bd,es_ex,es_ExcCode;)
    //lab9修改为165(加入data_sram_addr)
    `define ES_TO_MS_BUS_WD 169
    `define MS_TO_WS_BUS_WD 103
    `define WS_TO_RF_BUS_WD 38
    //CP0寄存器对应的地址(8位)
    `define Index_RegAddr    8'h00
    `define Entrylo0_RegAddr 8'h10
    `define Entrylo1_RegAddr 8'h18
    `define BadVAddr_RegAddr 8'h40
    `define Count_RegAddr    8'h48
    `define Entryhi_RegAddr  8'h50
    `define Compare_RegAddr  8'h58
    `define Status_RegAddr   8'h60
    `define Cause_RegAddr    8'h68
    `define EPC_RegAddr      8'h70
    //ExcCode编码及其对应例外类型
    `define Int                 5'b00000 //中断
    `define Mod                 5'b00001 // TLB修改例外
    `define tlb_refill_if       5'b00010 //TLB例外(取指或读数据)
    `define tlb_invalid_if      5'b00011 //TLB例外(取指或读数据)
    `define rd_tlb_refill_mem   5'b00100 //TLB例外(取指或读数据)
    `define rd_tlb_invalid_mem  5'b00101 //TLB例外(取指或读数据)
    `define wr_tlb_refill_mem   5'b00110 //TLB例外(写数据)
    `define wr_tlb_invalid_mem  5'b00111
    `define AdEL                5'b01000 //地址错例外(读数据/取指令)
    `define AdES                5'b01001 //地址错例外(写数据)
    `define Sys                 5'b01010 //syscall系统调用例外
    `define Bp                  5'b01011 //break断点例外
    `define RI                  5'b01100 //保留指令(未定义指令)例外
    `define Ov                  5'b01101 //算术溢出例外
`endif
