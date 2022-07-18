`include "global_defines.vh"

module ITLB_stage(
    input              clk              ,
    input              reset            ,
    input              ITLB_found       ,
    input      [31:12] ITLB_VPN         , //virtual
    output reg [31:12] ITLB_PFN         , //physical
    input      [19:0]  ITLB_pfn0        ,  
    input      [ 2:0]  ITLB_c0          ,
    input              ITLB_d0          ,
    input              ITLB_v0          ,
    input      [19:0]  ITLB_pfn1        ,  
    input      [ 2:0]  ITLB_c1          ,
    input              ITLB_d1          ,
    input              ITLB_v1          ,
    output reg [ 4:0]  ITLB_Exctype     ,
    output reg         ITLB_ex          ,
    output             ITLB_Buffer_Stall,
    input              TLB_Buffer_Flush //
);

parameter    IDLE   = 1'b0,
             SEARCH = 1'b1;

reg          ITLB_state;
reg          ITLB_nextstate;  
reg          ITLB_Buffer_Hit;
reg          ITLB_Buffer_valid;
reg          ITLB_Buffer_found;
reg  [18:0]  ITLB_Buffer_vpn2 ;
reg  [ 3:0]  ITLB_Buffer_index;
reg  [19:0]  ITLB_Buffer_pfn0 ;
reg  [ 2:0]  ITLB_Buffer_c0   ;
reg          ITLB_Buffer_d0   ;
reg          ITLB_Buffer_v0   ;
reg  [19:0]  ITLB_Buffer_pfn1 ;
reg  [ 2:0]  ITLB_Buffer_c1   ;
reg          ITLB_Buffer_d1   ;
reg          ITLB_Buffer_v1   ;
wire         ITLB_Buffer_Wr   ;

always @(*) begin //虚实地址转换
    if(ITLB_VPN[31:28] == 4'hA || ITLB_VPN[31:28] == 4'hB) //实地址把最高三位清零
        ITLB_PFN = {3'b000, ITLB_VPN[28:12]};
    else if(ITLB_VPN[31:28] == 4'h8 || ITLB_VPN[31:28] == 4'h9) //实地址把最高位清零
        ITLB_PFN = {1'b0  , ITLB_VPN[30:12]};
    else begin
        if(ITLB_VPN[12]) 
            ITLB_PFN = ITLB_Buffer_pfn1;
        else
            ITLB_PFN = ITLB_Buffer_pfn0;
    end
end

always @(*) begin //例外判定逻辑
    if(ITLB_VPN[31:28] > 4'h7 && ITLB_VPN[31:28] < 4'hC) begin //unmapped
        ITLB_Exctype = `NO_EX;
        ITLB_ex      = 1'b0;
    end
    else if(~ITLB_Buffer_Hit) begin //TLB和ITLB内容不一致
        ITLB_Exctype = `NO_EX;
        ITLB_ex      = 1'b0;
    end
    else begin
        if(~ITLB_Buffer_found) begin
            ITLB_Exctype = `ITLB_EX_Refill;
            ITLB_ex      = 1'b1;
        end
        else begin //ITLB_Buffer_found = 1'b1
            if((ITLB_VPN[12] & ITLB_Buffer_v1) | (~ITLB_VPN[12] & ITLB_Buffer_v0)) begin
                ITLB_Exctype = `NO_EX;
                ITLB_ex      = 1'b0;
            end
            else begin
                ITLB_Exctype = `ITLB_EX_Invalid;
                ITLB_ex      = 1'b1; 
            end
        end
    end
end

/********************TLB装填TLB Buffer逻辑********************/
always @(*) begin
    if(ITLB_VPN[31:28] < 4'hC && ITLB_VPN[31:28] > 4'h7)
        ITLB_Buffer_Hit = 1'b1;
    else if(ITLB_VPN[31:13] == ITLB_Buffer_vpn2 && ITLB_Buffer_valid)
        ITLB_Buffer_Hit = 1'b1;
    else 
        ITLB_Buffer_Hit = 1'b0;
end
assign ITLB_Buffer_Stall = ~ITLB_Buffer_Hit; 

always @(posedge clk) begin
    if(reset) begin
        ITLB_state <= IDLE;
    end else begin
        ITLB_state <= ITLB_nextstate;
    end    
end

always @(*) begin
    case(ITLB_state)
        IDLE :
            if(ITLB_Buffer_Hit == 1'b0) 
                ITLB_nextstate = SEARCH;
            else 
                ITLB_nextstate = IDLE;
        SEARCH :
            if(ITLB_Buffer_Hit == 1'b1) 
                ITLB_nextstate = IDLE;
            else 
                ITLB_nextstate = SEARCH; 
     endcase
end
assign ITLB_Buffer_Wr  = (ITLB_state == SEARCH);
/********************TLB装填TLB Buffer逻辑********************/

always @(posedge clk) begin
    if(reset | TLB_Buffer_Flush) begin 
        ITLB_Buffer_found  <=  1'b0 ;
        ITLB_Buffer_pfn0   <=  20'b0;
        ITLB_Buffer_c0     <=  3'b0 ;
        ITLB_Buffer_d0     <=  1'b0 ;
        ITLB_Buffer_v0     <=  1'b0 ;
        ITLB_Buffer_pfn1   <=  20'b0;
        ITLB_Buffer_c1     <=  3'b0 ;
        ITLB_Buffer_d1     <=  1'b0 ;
        ITLB_Buffer_v1     <=  1'b0 ;
        ITLB_Buffer_valid  <=  1'b0 ;
        ITLB_Buffer_vpn2   <=  19'b0;
    end
    else if(ITLB_Buffer_Wr) begin
        ITLB_Buffer_found  <=  ITLB_found     ;
        ITLB_Buffer_pfn0   <=  ITLB_pfn0      ;
        ITLB_Buffer_c0     <=  ITLB_c0        ;
        ITLB_Buffer_d0     <=  ITLB_d0        ;
        ITLB_Buffer_v0     <=  ITLB_v0        ;
        ITLB_Buffer_pfn1   <=  ITLB_pfn1      ;
        ITLB_Buffer_c1     <=  ITLB_c1        ;
        ITLB_Buffer_d1     <=  ITLB_d1        ;
        ITLB_Buffer_v1     <=  ITLB_v1        ;
        ITLB_Buffer_valid  <=  1'b1           ;
        ITLB_Buffer_vpn2   <=  ITLB_VPN[31:13];
    end
end

endmodule