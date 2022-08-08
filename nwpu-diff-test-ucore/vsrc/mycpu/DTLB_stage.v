`include "global_defines.vh"

module DTLB_stage(
    input              clk              ,
    input              reset            ,
    input              DTLB_found       ,
    input      [31:12] DTLB_VPN         , //虚地�?
    output reg [31:12] DTLB_PFN         , //实地�?
    input      [19:0]  DTLB_pfn0        ,
    input      [ 2:0]  DTLB_c0          ,
    input              DTLB_d0          ,
    input              DTLB_v0          ,
    input      [19:0]  DTLB_pfn1        ,
    input      [ 2:0]  DTLB_c1          ,
    input              DTLB_d1          ,
    input              DTLB_v1          ,
    input              DTLB_read        ,   
    input              DTLB_store       ,   
    input              TLB_Buffer_Flush ,
    output reg [ 4:0]  DTLB_Exctype     ,
    output reg         DTLB_ex          ,
    output reg         isUncache        ,
    output             DTLB_Buffer_Stall, 
    input      [ 2:0]  CP0_Config_K0_out
);

parameter    DTLB_IDLE   = 1'b0,
             DTLB_START  = 1'b1;

reg          DTLB_state;
reg          DTLB_nextstate;  
reg          DTLB_Buffer_Hit;
reg          DTLB_Buffer_valid;//todo
reg          DTLB_Buffer_found;
reg  [ 3:0]  DTLB_Buffer_index;
reg  [19:0]  DTLB_Buffer_pfn0 ;
reg  [ 2:0]  DTLB_Buffer_c0   ;
reg          DTLB_Buffer_d0   ;
reg          DTLB_Buffer_v0   ;
reg  [19:0]  DTLB_Buffer_pfn1 ;
reg  [ 2:0]  DTLB_Buffer_c1   ;
reg          DTLB_Buffer_d1   ;
reg          DTLB_Buffer_v1   ;
reg  [18:0]  DTLB_Buffer_vpn2 ;
wire         DTLB_Buffer_Wr   ;
 
always @(*) begin //虚实地址转换
    if(DTLB_VPN[31:28] == 4'hA || DTLB_VPN[31:28] == 4'hB) //实地�?把最高三位清�?
        DTLB_PFN = {3'b000, DTLB_VPN[28:12]};
    else if(DTLB_VPN[31:28] == 4'h8 || DTLB_VPN[31:28] == 4'h9) //实地�?把最高位清零
        DTLB_PFN = {1'b0  , DTLB_VPN[30:12]};
    else begin
        if(DTLB_VPN[12]) 
            DTLB_PFN = DTLB_Buffer_pfn1;
        else
            DTLB_PFN = DTLB_Buffer_pfn0;
    end
end

always @(*) begin //TODO:目前比较�?�?,没有考虑Config寄存�?.kseg1固定为uncache,kseg0先认为是cache属�??
    if(DTLB_VPN[31:28] == 4'hA || DTLB_VPN[31:28] == 4'hB)
        isUncache = 1'b1;
    else if(DTLB_VPN[31:28] == 4'h8 || DTLB_VPN[31:28] == 4'h9) begin
        if(CP0_Config_K0_out == 3'b011)
            isUncache = 1'b0;
        else
            isUncache = 1'b1;
    end
    else begin //考虑TLB控制Cache属�??
        if(DTLB_VPN[12]) begin
            if(DTLB_Buffer_c1 == 3'b011)
                isUncache = 1'b0;
            else
                isUncache = 1'b1;
        end
        else begin
            if(DTLB_Buffer_c0 == 3'b011)
                isUncache = 1'b0;
            else
                isUncache = 1'b1;
        end
    end
end

always @(*) begin //例外判定逻辑
    if(DTLB_VPN[31:28] > 4'h7 && DTLB_VPN[31:28] < 4'hC) begin //unmapped
        DTLB_Exctype = `NO_EX;
        DTLB_ex      = 1'b0;
    end
    else if(~DTLB_Buffer_Hit) begin //TLB和ITLB内容不一�?
        DTLB_Exctype = `NO_EX;
        DTLB_ex      = 1'b0;
    end   
    else begin //DTLB_Buffer_valid = 1'b1
        if(~DTLB_Buffer_found) begin
            if(DTLB_read) begin
                DTLB_Exctype = `DTLB_EX_RD_Refill;
                DTLB_ex      = 1'b1;                
            end
            else if(DTLB_store) begin //
                DTLB_Exctype = `DTLB_EX_WR_Refill;
                DTLB_ex      = 1'b1;  
            end
            else begin
                DTLB_Exctype = `NO_EX;
                DTLB_ex      = 1'b0;                
            end
        end
        else begin //DTLB_Buffer_found = 1'b1
            if(DTLB_VPN[12]) begin
                if(DTLB_Buffer_v1) begin
                    if(~DTLB_Buffer_d1 & DTLB_store) begin
                        DTLB_Exctype = `DTLB_EX_Modified;
                        DTLB_ex      = 1'b1;
                    end
                    else begin
                        DTLB_Exctype = `NO_EX;
                        DTLB_ex      = 1'b0; 
                    end
                end
                else begin //DTLB_Buffer_v1 = 1'b0
                    if(DTLB_read) begin
                        DTLB_Exctype = `DTLB_EX_RD_Invalid;
                        DTLB_ex      = 1'b1;
                    end
                    else if(DTLB_store) begin
                        DTLB_Exctype = `DTLB_EX_WR_Invalid;
                        DTLB_ex      = 1'b1;
                    end
                    else begin
                        DTLB_Exctype = `NO_EX;
                        DTLB_ex      = 1'b0;
                    end
                end
            end
            else begin
                if(DTLB_Buffer_v0) begin
                    if(~DTLB_Buffer_d0 & DTLB_store) begin
                        DTLB_Exctype = `DTLB_EX_Modified;
                        DTLB_ex      = 1'b1;
                    end
                    else begin
                        DTLB_Exctype = `NO_EX;
                        DTLB_ex      = 1'b0; 
                    end
                end
                else begin //DTLB_Buffer_v0 = 1'b0
                    if(DTLB_read) begin
                        DTLB_Exctype = `DTLB_EX_RD_Invalid;
                        DTLB_ex      = 1'b1;
                    end
                    else if(DTLB_store) begin
                        DTLB_Exctype = `DTLB_EX_WR_Invalid;
                        DTLB_ex      = 1'b1;
                    end
                    else begin
                        DTLB_Exctype = `NO_EX;
                        DTLB_ex      = 1'b0;
                    end
                end
            end
        end
    end 
end

/********************TLB装填TLB Buffer逻辑********************/
always @(*) begin
    if(DTLB_VPN[31:28] < 4'hC && DTLB_VPN[31:28] > 4'h7)
        DTLB_Buffer_Hit = 1'b1;
    else if(DTLB_read | DTLB_store) begin
        if(DTLB_VPN[31:13] == DTLB_Buffer_vpn2 && DTLB_Buffer_valid)
            DTLB_Buffer_Hit = 1'b1;
        else 
            DTLB_Buffer_Hit = 1'b0;
    end
    else 
        DTLB_Buffer_Hit = 1'b1;
end
assign DTLB_Buffer_Stall = ~DTLB_Buffer_Hit; 

always @(posedge clk) begin
    if(reset) begin
        DTLB_state <= DTLB_IDLE;
    end else begin
        DTLB_state <= DTLB_nextstate;
    end    
end

always @(*) begin
    case(DTLB_state)
        DTLB_IDLE:
            if(DTLB_Buffer_Hit == 1'b0) 
                DTLB_nextstate = DTLB_START;
            else 
                DTLB_nextstate = DTLB_IDLE;
        DTLB_START:
            if(DTLB_Buffer_Hit == 1'b1) 
                DTLB_nextstate = DTLB_IDLE;
            else
                DTLB_nextstate = DTLB_START; 
     endcase
end
assign DTLB_Buffer_Wr = (DTLB_state == DTLB_START);
/********************TLB装填TLB Buffer逻辑********************/

always @(posedge clk) begin
    if(reset | TLB_Buffer_Flush) begin 
        DTLB_Buffer_found  <=  1'b0 ;
        DTLB_Buffer_index  <=  4'b0 ;
        DTLB_Buffer_pfn0   <=  20'b0;
        DTLB_Buffer_c0     <=  3'b0 ;
        DTLB_Buffer_d0     <=  1'b0 ;
        DTLB_Buffer_v0     <=  1'b0 ;
        DTLB_Buffer_pfn1   <=  20'b0;
        DTLB_Buffer_c1     <=  3'b0 ;
        DTLB_Buffer_d1     <=  1'b0 ;
        DTLB_Buffer_v1     <=  1'b0 ;
        DTLB_Buffer_valid  <=  1'b0 ;
        DTLB_Buffer_vpn2   <=  19'b0;
    end
    else if(DTLB_Buffer_Wr) begin
        DTLB_Buffer_found  <=  DTLB_found;
        DTLB_Buffer_pfn0   <=  DTLB_pfn0 ;
        DTLB_Buffer_c0     <=  DTLB_c0   ;
        DTLB_Buffer_d0     <=  DTLB_d0   ;
        DTLB_Buffer_v0     <=  DTLB_v0   ;
        DTLB_Buffer_pfn1   <=  DTLB_pfn1 ;
        DTLB_Buffer_c1     <=  DTLB_c1   ;
        DTLB_Buffer_d1     <=  DTLB_d1   ;
        DTLB_Buffer_v1     <=  DTLB_v1   ;
        DTLB_Buffer_valid  <=  1'b1;
        DTLB_Buffer_vpn2   <=  DTLB_VPN[31:13];
    end
end
endmodule
