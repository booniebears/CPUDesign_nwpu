`include "global_defines.vh"

module ITLB_stage(
    input             clk             ,
    input             reset           ,
    input             ITLB_found      ,
    input      [31:0] ITLB_VAddr      , //虚地址
    output reg [31:0] ITLB_RAddr      , //实地址
    input      [ 3:0] ITLB_index      ,
    input      [19:0] ITLB_pfn        ,  
    input      [ 3:0] ITLB_asid       , //ASID
    input      [ 2:0] ITLB_c          ,
    input             ITLB_d          ,
    input             ITLB_v          ,
    output reg        ITLB_EX_Refill  ,
    output reg        ITLB_EX_Invalid ,
    output            ITLB_Buffer_Wr  ,
    output            ITLB_Buffer_Stall,
    input             TLB_Buffer_Flush,
    output reg        ITLB_Buffer_Valid_ps,
    output reg        ITLB_Buffer_found    ,
    output reg [ 3:0] ITLB_Buffer_index    ,
    output reg [19:0] ITLB_Buffer_pfn      ,
    output reg [ 2:0] ITLB_Buffer_c        ,
    output reg        ITLB_Buffer_d        ,
    output reg        ITLB_Buffer_v        
);

parameter   IDLE =   1'd0,//空闲
            SEARCH = 1'd1;//搜寻
reg ITLB_cstate;
reg ITLB_nstate;  
reg ITLB_Buffer_Hit;
reg ITLB_Buffer_Valid;
//TLB Buffer



//虚实地址转换
always @(*) begin
    if(ITLB_VAddr[31:28] == 4'hA || ITLB_VAddr[31:28] == 4'hB) //实地址把最高三位清零
        ITLB_RAddr = {3'b000, ITLB_VAddr[28:0]};
    else if(ITLB_VAddr[31:28] == 4'h8 || ITLB_VAddr[31:28] == 4'h9) //实地址把最高位清零
        ITLB_RAddr = {1'b0  , ITLB_VAddr[30:0]};
    else
        ITLB_RAddr = {ITLB_Buffer_pfn,ITLB_VAddr[11:0]};
end

//例外的加入
always @(*) begin
    if(~ITLB_Buffer_found && (ITLB_VAddr[31:28] <= 4'h7 || ITLB_VAddr[31:28] >= 4'hC))
        begin           
            ITLB_EX_Refill = 1'b1;
        end
    else
        begin
            ITLB_EX_Refill = 1'b0;
        end
        
end

always @(*) begin
    if(ITLB_Buffer_found && (ITLB_VAddr[31:28] <= 4'h7 || ITLB_VAddr[31:28] >= 4'hC) && ~ITLB_Buffer_v)
        begin 
            ITLB_EX_Invalid = 1'b1;
        end
        
    else
        begin 
            ITLB_EX_Invalid = 1'b0;
        end
end

always @(*) begin
    if((~ITLB_Buffer_found || (ITLB_Buffer_found && ~ITLB_Buffer_v)) && (ITLB_VAddr[31:28] <= 4'h7 || ITLB_VAddr[31:28] >= 4'hC) )
            ITLB_Buffer_Valid_ps  = 1'b0; 
    else
            ITLB_Buffer_Valid_ps  = 1'b1; 
end

//Buffer是否可以命中
always @(*) begin
    if(ITLB_VAddr[31:28] < 4'hC && ITLB_VAddr[31:28] > 4'h7)
        ITLB_Buffer_Hit = 1'b1;
    else if(ITLB_VAddr[31:13] == ITLB_Buffer_pfn && ITLB_Buffer_Valid)
        ITLB_Buffer_Hit = 1'b1;
    else 
        ITLB_Buffer_Hit = 1'b0;
end
assign ITLB_Buffer_Stall    = ~ ITLB_Buffer_Hit; 

//写信号
always @(posedge clk) begin
    if(reset) begin
        ITLB_cstate <= IDLE;
    end else begin
        ITLB_cstate <= ITLB_nstate;
    end    
end

always @(*) begin
        case(ITLB_cstate)
            IDLE :
               if(ITLB_Buffer_Hit == 1'b0) begin
                    ITLB_nstate = SEARCH;
                end
                else begin
                   ITLB_nstate = IDLE;
                end
            SEARCH :
                 if(ITLB_Buffer_Hit == 1'b1) begin
                    ITLB_nstate = IDLE;
                end  
                else begin
                    ITLB_nstate = SEARCH; 
                end         
     endcase
end
assign ITLB_Buffer_Wr  = (ITLB_cstate == SEARCH);

always @(posedge clk) begin
    if(reset || TLB_Buffer_Flush) begin 
       ITLB_Buffer_found    <=   1'b0   ;
       ITLB_Buffer_index    <=   4'b0   ;
       ITLB_Buffer_pfn      <=   20'b0  ;
       ITLB_Buffer_c        <=   3'b0   ;
       ITLB_Buffer_d        <=   1'b0   ;
       ITLB_Buffer_v        <=   1'b0   ;
       ITLB_Buffer_Valid    <=   1'b0   ;
    end
    else if(ITLB_Buffer_Wr) begin
        ITLB_Buffer_found   <=   ITLB_found  ;
        ITLB_Buffer_index   <=   ITLB_index  ;
        ITLB_Buffer_pfn     <=   ITLB_pfn    ;
        ITLB_Buffer_c       <=   ITLB_c      ;
        ITLB_Buffer_d       <=   ITLB_d      ;
        ITLB_Buffer_v       <=   ITLB_v      ;
        ITLB_Buffer_Valid   <=   1'b1        ;
    end
end


endmodule