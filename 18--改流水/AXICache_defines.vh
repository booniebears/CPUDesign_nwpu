`ifndef AXICACHE_DEFINES_VH
    `define AXICACHE_DEFINES_VH
/*******************AXI???¿ù??????******************/
    //ICache,DCache??????
    `define I_RD_IDLE   3'b000
    `define I_AR_SHAKE  3'b001
    `define I_R_SHAKE1  3'b010
    `define I_R_SHAKE2  3'b011
    `define I_R_SHAKE3  3'b100
    `define I_R_SHAKE4  3'b101
    
    
    `define D_RD_IDLE   3'b000
    `define D_AR_SHAKE  3'b001
    `define D_R_SHAKE1  3'b010
    `define D_R_SHAKE2  3'b011
    `define D_R_SHAKE3  3'b100
    `define D_R_SHAKE4  3'b101
    //DCache§Õ????
    `define D_WR_IDLE   3'b000
    `define D_AW_SHAKE  3'b001
    `define D_W_SHAKE1  3'b010
    `define D_W_SHAKE2  3'b011
    `define D_W_SHAKE3  3'b100
    `define D_W_SHAKE4  3'b101
    `define D_B_SHAKE   3'b110
    //Uncache(DCache)??????
    `define UD_RD_IDLE  2'b00
    `define UD_AR_SHAKE 2'b01
    `define UD_R_SHAKE  2'b10
    //Uncache(DCache)§Õ????
    `define UD_WR_IDLE  2'b00
    `define UD_AW_SHAKE 2'b01
    `define UD_W_SHAKE  2'b10    
    `define UD_B_SHAKE  2'b11

/*******************?????******************/

    `define I_RD_EMPTY   3'b000
    `define I_RD_RECREQ  3'b001
    `define I_RD_WAIT1   3'b010
    `define I_RD_WAIT2   3'b011
    `define I_RD_WAIT3   3'b100
    `define I_RD_WAIT4   3'b101
    `define I_RD_FINISH  3'b110

    `define D_RD_EMPTY   3'b000
    `define D_RD_RECREQ  3'b001
    `define D_RD_WAIT1   3'b010
    `define D_RD_WAIT2   3'b011
    `define D_RD_WAIT3   3'b100
    `define D_RD_WAIT4   3'b101
    `define D_RD_FINISH  3'b110

    `define D_WR_EMPTY   3'b000
    `define D_WR_RECREQ  3'b001
    `define D_WR_WAIT1   3'b010
    `define D_WR_WAIT2   3'b011
    `define D_WR_WAIT3   3'b100
    `define D_WR_WAIT4   3'b101
    `define D_WR_S       3'b110
    `define D_WR_FINISH  3'b111

    `define U_RD_EMPTY   2'b00
    `define U_RD_RECREQ  2'b01
    `define U_RD_WAIT1   2'b10 
    `define U_RD_FINISH  2'b11

    `define U_WR_EMPTY   3'b000
    `define U_WR_RECREQ  3'b001
    `define U_WR_WAIT1   3'b010
    `define U_WR_S       3'b011
    `define U_WR_FINISH  3'b100
    
/*******************AXI???¿ù??????******************/
`endif 