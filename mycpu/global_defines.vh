`ifndef MYCPU_H
    `define MYCPU_H
    `define OPEN_VA             //verilator仿真需要 解注释
    // `define OPEN_VA_PERF        //verilator仿真需要 解注释
    // `define ILA_debug
    // `define use_crossbar_ip   //vivado仿真需要 解注释
    `define BR_BUS_WD       68
    //FS_TO_DS_BUS_WD原来是64,lab8修改为71(加入fs_bd,fs_ex,fs_ExcCode)
    `define PS_TO_FS_BUS_WD 39
    `define BPU_TO_PS_BUS_WD 33
    `define BPU_TO_DS_BUS_WD 36
    `define FS_TO_DS_BUS_WD 71
    //DS_TO_ES_BUS_WD原来是136,lab6修改为137(src2_is_imm变为2位宽),修改为145(加入mf_mt和mult_div)
    //lab7再次修改为157(添加mem_control区别不同的存取数指令),lab8修改为174(加入mfc0,mtc0,eret指令
    //和mfc0_rd,sel段;加入ds_bd,ds_ex,ds_ExcCode,Overflow_inst)
    `define DS_TO_ES_BUS_WD 328
    //原为70,lab7修改为115,lab8修改为133(加入mfc0,mtc0,eret指令和mfc0_rd,sel段;加入es_bd,es_ex,es_ExcCode;)
    //lab9修改为165(加入data_sram_addr)
    `define ES_TO_M1_BUS_WD 175
    `define BRESULT_WD 68
    `define M1_TO_MS_BUS_WD 117
    //原为70,lab8修改为88(加入mfc0,mtc0,eret指令和mfc0_rd,sel段;加入ms_bd,ms_ex,ms_ExcCode)
    //lab9修改为120(加入data_sram_addr)
    `define MS_TO_WS_BUS_WD 71
    `define WS_TO_RF_BUS_WD 38
    //CP0寄存器对应的地址(8位)
    `define Index_RegAddr    8'h00
    `define Random_RegAddr   8'h08
    `define Entrylo0_RegAddr 8'h10
    `define Entrylo1_RegAddr 8'h18
    `define Context_RegAddr  8'h20
    `define PageMask_RegAddr 8'h28
    `define Wired_RegAddr    8'h30
    `define BadVAddr_RegAddr 8'h40
    `define Count_RegAddr    8'h48
    `define Entryhi_RegAddr  8'h50
    `define Compare_RegAddr  8'h58
    `define Status_RegAddr   8'h60
    `define Cause_RegAddr    8'h68
    `define EPC_RegAddr      8'h70
    `define Prid_RegAddr     8'h78
    `define EBase_RegAddr    8'h79
    `define Config_RegAddr   8'h80
    `define Config1_RegAddr  8'h81
    //ID阶段编码
    `define BRANCH_TYPE_NONE    4'b0000
    `define BRANCH_TYPE_BEQ     4'b0011
    `define BRANCH_TYPE_BNE     4'b0010
    `define BRANCH_TYPE_JAL     4'b0110
    `define BRANCH_TYPE_JR      4'b0101
    `define BRANCH_TYPE_J       4'b0100
    `define BRANCH_TYPE_JALR    4'b0111
    `define BRANCH_TYPE_BGEZ    4'b1001
    `define BRANCH_TYPE_BGTZ    4'b1010
    `define BRANCH_TYPE_BLEZ    4'b1011
    `define BRANCH_TYPE_BLTZ    4'b1100
    `define BRANCH_TYPE_BGEZAL  4'b1101
    `define BRANCH_TYPE_BLTZAL  4'b1110
    `define BRANCH_TYPE_ERROR   4'b1111
    //ExcCode编码及其对应例外类型 Attention:尚未映射，有误!
    `define Int                 5'b00000 //中断
    `define ITLB_EX_Refill      5'b00010 //TLB例外(取指或读数据)
    `define ITLB_EX_Invalid     5'b00011 //TLB例外(取指或读数据)
    `define DTLB_EX_RD_Refill   5'b00100 //TLB例外(取指或读数据)
    `define DTLB_EX_RD_Invalid  5'b00101 //TLB例外(取指或读数据)
    `define DTLB_EX_WR_Refill   5'b00110 //TLB例外(写数据)
    `define DTLB_EX_WR_Invalid  5'b00111
    `define DTLB_EX_Modified    5'b01000
    `define AdEL                5'b01001 //地址错例外(读数据/取指令)
    `define AdES                5'b01010 //地址错例外(写数据)
    `define Sys                 5'b01011 //syscall系统调用例外
    `define Bp                  5'b01100 //break断点例外
    `define RI                  5'b01101 //保留指令(未定义指令)例外
    `define Ov                  5'b01110 //算术溢出例外
    `define NO_EX               5'b11111 //时钟中断例外
    //定义复位与例外入口
    `define RESET_PC            32'hbfc0_0000
    `define REFILL_EX_PC        32'hbfc0_0200
    `define GENERAL_EX_PC       32'hbfc0_0380
`endif
