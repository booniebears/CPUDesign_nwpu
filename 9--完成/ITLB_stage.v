`include "global_defines.vh"

module ITLB_stage(
    input         clk,
    input         reset,
    input             ITLB_found,
    input      [31:0] ITLB_VAddr, //虚地址
    output reg [31:0] ITLB_RAddr, //实地址
    input      [ 3:0] ITLB_index,
    input      [19:0] ITLB_pfn,
    input      [3:0]  ITLB_asid, //ASID
    input      [ 2:0] ITLB_c,
    input             ITLB_d,
    input             ITLB_v,
    output  reg       ITLB_EX_Refill,
    output  reg       ITLB_EX_Invalid
    //output  reg       ITLB_Buffer_Hit,
    //output            ITLB_Buffer_valid 

);

always @(*) begin
    if(ITLB_VAddr[31:28] == 4'hA || ITLB_VAddr[31:28] == 4'hB) //实地址把最高三位清零
        ITLB_RAddr <= {3'b000, ITLB_VAddr[28:0]};
    else if(ITLB_VAddr[31:28] == 4'h8 || ITLB_VAddr[31:28] == 4'h9) //实地址把最高位清零
        ITLB_RAddr <= {1'b0  , ITLB_VAddr[30:0]};
     else
        ITLB_RAddr <= {ITLB_pfn,ITLB_VAddr[11:0]};
    //else
     //   ITLB_RAddr <= ITLB_VAddr;
end

 always @(*) begin
     if(~ITLB_found && (ITLB_VAddr[31:28] <= 4'h7 || ITLB_VAddr[31:28] >= 4'hC))
         ITLB_EX_Refill <= 1'b1;
     else
         ITLB_EX_Refill <= 1'b0;
 end
//assign ITLB_EX_Refill = 1'b0;

always @(*) begin
    if(ITLB_found && (ITLB_VAddr[31:28] <= 4'h7 || ITLB_VAddr[31:28] >= 4'hC) && ~ITLB_v)
        ITLB_EX_Invalid <= 1'b1;
    else
        ITLB_EX_Invalid <= 1'b0;
end
//assign ITLB_EX_Invalid = 1'b0;

reg ITLB_Buffer_Hit;
wire ITLB_Buffer_valid;
always @(*) begin
    if(ITLB_VAddr[31:28] < 4'hC && ITLB_VAddr[31:28] > 4'h7)
        ITLB_Buffer_Hit = 1'b1;
    else if(ITLB_VAddr[31:13] == ITLB_pfn && ITLB_Buffer_valid)
        ITLB_Buffer_Hit = 1'b1;
    else 
        ITLB_Buffer_Hit = 1'b0;
end


parameter   IDLE =   4'd0,
            SEARCH = 4'd1;
reg ITLB_cstate;
reg ITLB_nstate;  
wire ITLB_Buffer_Wr;

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

assign ITLB_Buffer_Wr  = (ITLB_cstate == SEARCH);  //在state2状态下打开TLB Buffer的写使能

endmodule