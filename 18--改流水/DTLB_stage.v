`include "global_defines.vh"

module DTLB_stage(
    input             clk             ,
    input             reset           ,
    input             DTLB_found,
    input      [31:0] DTLB_VAddr, //虚地址
    input      [3:0]  DTLB_asid, //ASID
    output reg [31:0] DTLB_RAddr, //实地址
    input      [ 3:0] DTLB_index,
    input      [19:0] DTLB_pfn,
    input      [ 2:0] DTLB_c,
    input             DTLB_d,
    input             DTLB_v,
    output reg        isUncache,
    input             DTLB_read,   
    input             DTLB_store,   
    output reg        DTLB_EX_RD_Refill,
    output reg        DTLB_EX_WR_Refill,
    output reg        DTLB_EX_RD_Invalid,
    output reg        DTLB_EX_WR_Invalid,
    output reg        DTLB_EX_Modified, //,
    input             TLB_Buffer_Flush,
    output            DTLB_Buffer_Wr  ,
    output            DTLB_Buffer_Stall,
    output reg        DTLB_Buffer_Valid_m1s
);

parameter   IDLE =   4'd0,//空闲
            SEARCH = 4'd1;//搜寻
reg         DTLB_cstate;
reg         DTLB_nstate;  
reg         DTLB_Buffer_Hit;
reg        DTLB_Buffer_Valid;//todo
//TLB Buffer
reg          DTLB_Buffer_found     ;
reg  [ 3:0]  DTLB_Buffer_index     ;
reg  [19:0]  DTLB_Buffer_pfn       ;
reg  [ 2:0]  DTLB_Buffer_c         ;
reg          DTLB_Buffer_d         ;
reg          DTLB_Buffer_v         ;
reg          DTLB_Buffer_read      ;
reg          DTLB_Buffer_store     ;


always @(*) begin
    if(DTLB_VAddr[31:28] == 4'hA || DTLB_VAddr[31:28] == 4'hB) //实地址把最高三位清零
        DTLB_RAddr <= {3'b000, DTLB_VAddr[28:0]};
    else if(DTLB_VAddr[31:28] == 4'h8 || DTLB_VAddr[31:28] == 4'h9) //实地址把最高位清零
        DTLB_RAddr <= {1'b0  , DTLB_VAddr[30:0]};
    else
        DTLB_RAddr <= {DTLB_Buffer_pfn,DTLB_VAddr[11:0]};
end

always @(*) begin //TODO:目前比较简化,没有考虑TLB.kseg1固定为uncache,kseg0先认为是cache属性
    if(DTLB_VAddr[31:28] == 4'hA || DTLB_VAddr[31:28] == 4'hB)
        isUncache <= 1'b1;
    else
        isUncache <= 1'b0;
end

always @(*) begin
    if(~DTLB_Buffer_found && (DTLB_VAddr[31:28] <= 4'h7 || DTLB_VAddr[31:28] >= 4'hC) && DTLB_Buffer_read)
        begin
            DTLB_EX_RD_Refill <= 1'b1;
        end
        
    else
        begin
            DTLB_EX_RD_Refill <= 1'b0;
        end  
end

always @(*) begin
    if(DTLB_Buffer_found && (DTLB_VAddr[31:28] <= 4'h7 || DTLB_VAddr[31:28] >= 4'hC) && ~DTLB_Buffer_v && DTLB_Buffer_read)
        begin
            DTLB_EX_RD_Invalid <= 1'b1;
        end
        
    else
        begin
            DTLB_EX_RD_Invalid <= 1'b0;    
        end   
end

always @(*) begin
    if(~DTLB_Buffer_found && (DTLB_VAddr[31:28] <= 4'h7 || DTLB_VAddr[31:28] >= 4'hC) && DTLB_Buffer_store)
        begin
            DTLB_EX_WR_Refill <= 1'b1;
        end
        
    else
        begin
            DTLB_EX_WR_Refill <= 1'b0;
        end
        
end

always @(*) begin
    if(DTLB_Buffer_found && (DTLB_VAddr[31:28] <= 4'h7 || DTLB_VAddr[31:28] >= 4'hC) && ~DTLB_Buffer_v && DTLB_Buffer_store)
        begin
            DTLB_EX_WR_Invalid <= 1'b1;
        end
    else
        begin
            DTLB_EX_WR_Invalid <= 1'b0;   
        end      
end

always @(*) begin
    if(DTLB_Buffer_found && (DTLB_VAddr[31:28] <= 4'h7 || DTLB_VAddr[31:28] >= 4'hC) && DTLB_Buffer_v && ~DTLB_Buffer_d  && DTLB_Buffer_store)
       begin
            DTLB_EX_Modified <= 1'b1;
       end
       
    else
        begin
            DTLB_EX_Modified <= 1'b0;
        end
end

always @(*) begin
    if(DTLB_VAddr[31:28] <= 4'h7 || DTLB_VAddr[31:28] >= 4'hC)
            if(~DTLB_Buffer_found && DTLB_Buffer_read) 
                DTLB_Buffer_Valid_m1s <= 1'b0;
            else if(DTLB_Buffer_found && ~DTLB_Buffer_v && DTLB_Buffer_read) 
                DTLB_Buffer_Valid_m1s <= 1'b0;
            else if(~DTLB_Buffer_found && DTLB_Buffer_store) 
                DTLB_Buffer_Valid_m1s <= 1'b0;
            else if(DTLB_Buffer_found && ~DTLB_Buffer_v && DTLB_Buffer_store)   
                DTLB_Buffer_Valid_m1s <= 1'b0;
            else if(DTLB_Buffer_found  && DTLB_Buffer_v && ~DTLB_Buffer_d && DTLB_Buffer_store) 
                DTLB_Buffer_Valid_m1s <= 1'b0;
            else 
                DTLB_Buffer_Valid_m1s <= 1'b1;
    else 
                DTLB_Buffer_Valid_m1s <= 1'b1;

end

//Buffer是否可以命中
always @(*) begin
    if(DTLB_VAddr[31:28] < 4'hC && DTLB_VAddr[31:28] > 4'h7)
            DTLB_Buffer_Hit = 1'b1;
    else if(DTLB_Buffer_read || DTLB_Buffer_store)
        if(DTLB_VAddr[31:13] == DTLB_Buffer_pfn && DTLB_Buffer_Valid )
            DTLB_Buffer_Hit = 1'b1;
        else 
            DTLB_Buffer_Hit = 1'b0;
    else 
            DTLB_Buffer_Hit = 1'b1;
end
assign DTLB_Buffer_Stall    = ~ DTLB_Buffer_Hit; 

//写信号
always @(posedge clk) begin
    if(reset) begin
        DTLB_cstate <= IDLE;
    end else begin
        DTLB_cstate <= DTLB_nstate;
    end    
end

always @(*) begin
        case(DTLB_cstate)
            IDLE :
               if(DTLB_Buffer_Hit == 1'b0) begin
                    DTLB_nstate = SEARCH;
                end
                else begin
                   DTLB_nstate = IDLE;
                end
            SEARCH :
                 if(DTLB_Buffer_Hit == 1'b1) begin
                    DTLB_nstate = IDLE;
                end  
                else begin
                    DTLB_nstate = SEARCH; 
                end         
     endcase
end
assign DTLB_Buffer_Wr  = (DTLB_cstate == SEARCH);

always @(posedge clk) begin
    if(reset || TLB_Buffer_Flush) begin 
       DTLB_Buffer_found    <=   1'b0   ;
       DTLB_Buffer_index    <=   4'b0   ;
       DTLB_Buffer_pfn      <=   20'b0  ;
       DTLB_Buffer_c        <=   3'b0   ;
       DTLB_Buffer_d        <=   1'b0   ;
       DTLB_Buffer_v        <=   1'b0   ;
       DTLB_Buffer_Valid    <=   1'b0   ;
       DTLB_Buffer_read     <=   1'b0   ;
       DTLB_Buffer_store    <=   1'b0   ;
    end
    else if(DTLB_Buffer_Wr) begin
        DTLB_Buffer_found   <=   DTLB_found  ;
        DTLB_Buffer_index   <=   DTLB_index  ;
        DTLB_Buffer_pfn     <=   DTLB_pfn    ;
        DTLB_Buffer_c       <=   DTLB_c      ;
        DTLB_Buffer_d       <=   DTLB_d      ;
        DTLB_Buffer_v       <=   DTLB_v      ;
        DTLB_Buffer_Valid   <=   DTLB_Buffer_read || DTLB_Buffer_store;
        DTLB_Buffer_read    <=   DTLB_read   ;
        DTLB_Buffer_store   <=   DTLB_store  ;  
    end
end
endmodule