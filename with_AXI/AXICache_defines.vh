`ifndef AXICACHE_DEFINES_VH
    `define AXICACHE_DEFINES_VH
/*******************AXI定义部分如下******************/
    //ICache,DCache读状态机
    `define I_RD_IDLE  3'b000
    `define I_AR_SHAKE 3'b001
    `define I_R_SHAKE1 3'b010
    `define I_R_SHAKE2 3'b011
    `define I_R_SHAKE3 3'b100
    `define I_R_SHAKE4 3'b101
    
    `define D_RD_IDLE  3'b000
    `define D_AR_SHAKE 3'b001
    `define D_R_SHAKE1 3'b010
    `define D_R_SHAKE2 3'b011
    `define D_R_SHAKE3 3'b100
    `define D_R_SHAKE4 3'b101
    //DCache写状态机
    `define D_WR_IDLE  3'b000
    `define D_AW_SHAKE 3'b001
    `define D_W_SHAKE1 3'b010
    `define D_W_SHAKE2 3'b011
    `define D_W_SHAKE3 3'b100
    `define D_W_SHAKE4 3'b101
    `define D_B_SHAKE  3'b110


/*******************AXI定义部分如上******************/
`endif 