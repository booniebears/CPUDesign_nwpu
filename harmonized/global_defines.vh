`ifndef MYCPU_H
    `define MYCPU_H
    /*********************模块使能定义*********************/
    // `define FPU_EX_Valid
    // `define CacheInst_EN
    `define OPEN_VA             //verilator仿真需要 注释
    //`define OPEN_VA_PERF        //verilator仿真需要 注释
    // `define use_crossbar_ip   //vivado仿真需要 解注释

    /*********************通道宽度*********************/
    `define ALUOP_WD            29
    `define DS_TO_ES_NOALU_WD   274
    `define BR_BUS_WD           68
    `define BRESULT_WD          68
    `define BPU_TO_PS_BUS_WD    33
    `define BPU_TO_DS_BUS_WD    36

    `define PS_TO_FS_BUS_WD     39
    `define FS_TO_DS_BUS_WD     71
    `define DS_TO_ES_BUS_WD     (`ALUOP_WD + `DS_TO_ES_NOALU_WD)
    `define ES_TO_M1_BUS_WD     180
    `define M1_TO_MS_BUS_WD     118
    `define MS_TO_WS_BUS_WD     150
    `define WS_TO_RF_BUS_WD     38

    /*********************CP0寄存器地址定义*********************/
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
    `define EntryHI_RegNum   5'd10

/*********************BRANCH 指令编码*********************/
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

    /*********************ExcCode编码及其对应例外类型*********************/
    `define Int                 5'b00000 //中断
    `define ITLB_EX_Refill      5'b00010 
    `define ITLB_EX_Invalid     5'b00011 
    `define DTLB_EX_RD_Refill   5'b00100 
    `define DTLB_EX_RD_Invalid  5'b00101 
    `define DTLB_EX_WR_Refill   5'b00110 
    `define DTLB_EX_WR_Invalid  5'b00111
    `define DTLB_EX_Modified    5'b01000
    `define AdEL                5'b01001 //地址错例外(读数据/取指令)
    `define AdES                5'b01010 //地址错例外(写数据)
    `define Sys                 5'b01011 //syscall系统调用例外
    `define Bp                  5'b01100 //break断点例外
    `define RI                  5'b01101 //保留指令(未定义指令)例外
    `define Ov                  5'b01110 //算术溢出例外
    `define CpU                 5'b01111 //Coprocessor Unusable exception
    `define Trap                5'b10000 //自陷例外
    `define NO_EX               5'b11111 

    /*********************定义复位与例外入口*********************/
    `define RESET_PC            32'hbfc0_0000
    `define REFILL_EX_PC        32'hbfc0_0200
    `define GENERAL_EX_PC       32'hbfc0_0380

    /*********************FPU指令类型*********************/
    `define NOT_FPU             2'b00
    `define FPU_RESERVED        2'b01
    `define FPU_INST            2'b10

    /*********************Trap指令类型*********************/
    `define NOT_TRAP            3'b000
    `define TGE_TYPE            3'b001
    `define TGEU_TYPE           3'b010
    `define TLT_TYPE            3'b011
    `define TNE_TYPE            3'b100
    `define TLTU_TYPE           3'b101
    `define TEQ_TYPE            3'b110

    /*********************Cache指令类型*********************/
    `define NOT_CACHEINST         3'b000
    `define ICache_IDX_INVALID    3'b001
    `define ICache_IDX_STORETAG   3'b010
    `define ICache_HIT_INVALID    3'b011
    `define DCache_IDX_WB_INVALID 3'b100
    `define DCache_IDX_STORETAG   3'b101
    `define DCache_HIT_INVALID    3'b110
    `define DCache_HIT_WB_INVALID 3'b111

`endif
