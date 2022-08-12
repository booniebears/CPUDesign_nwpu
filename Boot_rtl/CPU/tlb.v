module tlb 
#(
    parameter TLBNUM = 16
)
(
    input                             clk,
    input                             reset,
`ifdef ILA_debug
    input        [31:0]               prefs_pc,
    input        [31:0]               m1s_pc,
`endif
    //ITLB port
    input        [18:0]               ITLB_vpn2,
    output                            ITLB_found,
    output       [19:0]               ITLB_pfn0,
    output       [2:0]                ITLB_c0,
    output                            ITLB_d0,
    output                            ITLB_v0,    
    output       [19:0]               ITLB_pfn1,
    output       [2:0]                ITLB_c1,
    output                            ITLB_d1,
    output                            ITLB_v1,  

    //DTLB port
    input        [18:0]               DTLB_vpn2,
    output                            DTLB_found,
    output       [19:0]               DTLB_pfn0,
    output       [2:0]                DTLB_c0,
    output                            DTLB_d0,
    output                            DTLB_v0,    
    output       [19:0]               DTLB_pfn1,
    output       [2:0]                DTLB_c1,
    output                            DTLB_d1,
    output                            DTLB_v1, 

    //TLB_TO_CP0 port
    output                            tlb_to_cp0_found,//tlbp查找是否成功
    output       [18:0]               tlb_to_cp0_vpn2, //以下为tlb写入的数据
    output       [ 7:0]               tlb_to_cp0_asid ,
    output       [ 3:0]               tlb_to_cp0_index, 
    output       [19:0]               tlb_to_cp0_pfn0 ,//以下为entrylo0寄存器写入tlb的数据
    output       [ 2:0]               tlb_to_cp0_c0 ,
    output                            tlb_to_cp0_d0 ,
    output                            tlb_to_cp0_v0 ,
    output                            tlb_to_cp0_g0 ,
    output       [19:0]               tlb_to_cp0_pfn1 ,//以下为entrylo1寄存器写入tlb的数据
    output       [ 2:0]               tlb_to_cp0_c1 ,
    output                            tlb_to_cp0_d1 ,
    output                            tlb_to_cp0_v1 ,
    output                            tlb_to_cp0_g1 , 
    
    //CP0_TO_TLB port
    input                             inst_tlbwi, //TLB写使能:对应inst_tlbwi
    input                             inst_tlbwr, //TLB写使能:对应inst_tlbwr
    input                             inst_tlbp , //TLB查询:对应inst_tlbp
    input        [$clog2(TLBNUM)-1:0] cp0_to_tlb_index,
    input        [$clog2(TLBNUM)-1:0] cp0_to_tlb_random,
    input        [18:0]               cp0_to_tlb_vpn2,
    input        [7:0]                cp0_to_tlb_asid,
    input                             cp0_to_tlb_g0,
    input                             cp0_to_tlb_g1,
    input        [19:0]               cp0_to_tlb_pfn0,
    input        [2:0]                cp0_to_tlb_c0,
    input                             cp0_to_tlb_d0,
    input                             cp0_to_tlb_v0,
    input        [19:0]               cp0_to_tlb_pfn1,
    input        [2:0]                cp0_to_tlb_c1,
    input                             cp0_to_tlb_d1,
    input                             cp0_to_tlb_v1 //
);

    reg [18:0]  tlb_vpn2             [TLBNUM-1:0];
    reg [7:0]   tlb_asid             [TLBNUM-1:0];
    reg         tlb_g                [TLBNUM-1:0];
    reg [19:0]  tlb_pfn0             [TLBNUM-1:0];
    reg [2:0]   tlb_c0               [TLBNUM-1:0];
    reg         tlb_d0               [TLBNUM-1:0];
    reg         tlb_v0               [TLBNUM-1:0];
    reg [19:0]  tlb_pfn1             [TLBNUM-1:0];
    reg [2:0]   tlb_c1               [TLBNUM-1:0];
    reg         tlb_d1               [TLBNUM-1:0];
    reg         tlb_v1               [TLBNUM-1:0];

    wire [TLBNUM-1:0]         ITLB_match;
    wire [TLBNUM-1:0]         common_match;
    reg  [$clog2(TLBNUM)-1:0] ITLB_index;                      
    reg  [$clog2(TLBNUM)-1:0] common_index;
    wire [$clog2(TLBNUM)-1:0] write_index;
    //DTLB CP0共用match逻辑
    wire [18:0]               common_vpn2;
    reg  [$clog2(TLBNUM)-1:0] latched_index;
    reg  [ 7:0]               latched_asid;
    reg  [18:0]               latched_ITLB_vpn2;
    reg  [18:0]               latched_common_vpn2;

    //CP0 index与random寄存器二选一 写TLB
    assign write_index = inst_tlbwi ? cp0_to_tlb_index : cp0_to_tlb_random; 

    integer i;
    //write port
    always @(posedge clk) begin
        if(reset) begin
            for(i = 0; i < TLBNUM; i = i + 1) begin
                tlb_vpn2[i]  <= 0;
                tlb_asid[i]  <= 0;
                tlb_g   [i]  <= 0;
                tlb_pfn0[i]  <= 0;
                tlb_c0  [i]  <= 0;
                tlb_d0  [i]  <= 0;
                tlb_v0  [i]  <= 0;
                tlb_pfn1[i]  <= 0;
                tlb_c1  [i]  <= 0;
                tlb_d1  [i]  <= 0;
                tlb_v1  [i]  <= 0;
            end
        end
        if(inst_tlbwi | inst_tlbwr) begin
            tlb_vpn2[write_index] <= cp0_to_tlb_vpn2;
            tlb_asid[write_index] <= cp0_to_tlb_asid;
            tlb_g[write_index]    <= cp0_to_tlb_g0 & cp0_to_tlb_g1;
            tlb_pfn0[write_index] <= cp0_to_tlb_pfn0;
            tlb_c0[write_index]   <= cp0_to_tlb_c0;
            tlb_d0[write_index]   <= cp0_to_tlb_d0;
            tlb_v0[write_index]   <= cp0_to_tlb_v0;
            tlb_pfn1[write_index] <= cp0_to_tlb_pfn1;
            tlb_c1[write_index]   <= cp0_to_tlb_c1;
            tlb_d1[write_index]   <= cp0_to_tlb_d1;
            tlb_v1[write_index]   <= cp0_to_tlb_v1;
        end
    end

    always @(posedge clk) begin //TLB锁存相关数据
        if(reset) begin
            latched_asid        <= 0;
            latched_common_vpn2 <= 0;
            latched_ITLB_vpn2   <= 0;
            latched_index       <= 0;
        end
        else begin
            latched_asid        <= cp0_to_tlb_asid;
            latched_common_vpn2 <= common_vpn2;
            latched_ITLB_vpn2   <= ITLB_vpn2;
            latched_index       <= cp0_to_tlb_index;
        end
    end

generate
    genvar j;
    for(j = 0; j < TLBNUM; j = j + 1) begin
        assign ITLB_match[j] = (latched_ITLB_vpn2 == tlb_vpn2[j]) && 
                              ((latched_asid == tlb_asid[j])|| tlb_g[j]) ;
    end
endgenerate
    
    //TLB -> ITLB 返回一项TLB
    assign ITLB_found = (ITLB_match != 16'b0);
    assign ITLB_pfn0  = tlb_pfn0[ITLB_index];
    assign ITLB_c0    = tlb_c0[ITLB_index];
    assign ITLB_d0    = tlb_d0[ITLB_index];
    assign ITLB_v0    = tlb_v0[ITLB_index]; 
    assign ITLB_pfn1  = tlb_pfn1[ITLB_index];
    assign ITLB_c1    = tlb_c1[ITLB_index];
    assign ITLB_d1    = tlb_d1[ITLB_index];
    assign ITLB_v1    = tlb_v1[ITLB_index];    

    always @(*) begin          
         case(ITLB_match)
            16'b0000_0000_0000_0001: ITLB_index = 4'd0;
            16'b0000_0000_0000_0010: ITLB_index = 4'd1;
            16'b0000_0000_0000_0100: ITLB_index = 4'd2;
            16'b0000_0000_0000_1000: ITLB_index = 4'd3;
            16'b0000_0000_0001_0000: ITLB_index = 4'd4;
            16'b0000_0000_0010_0000: ITLB_index = 4'd5;
            16'b0000_0000_0100_0000: ITLB_index = 4'd6;
            16'b0000_0000_1000_0000: ITLB_index = 4'd7;
            16'b0000_0001_0000_0000: ITLB_index = 4'd8;
            16'b0000_0010_0000_0000: ITLB_index = 4'd9;
            16'b0000_0100_0000_0000: ITLB_index = 4'd10;
            16'b0000_1000_0000_0000: ITLB_index = 4'd11;
            16'b0001_0000_0000_0000: ITLB_index = 4'd12;
            16'b0010_0000_0000_0000: ITLB_index = 4'd13;
            16'b0100_0000_0000_0000: ITLB_index = 4'd14;
            16'b1000_0000_0000_0000: ITLB_index = 4'd15;
            default: ITLB_index = 4'd0;
        endcase
    end

    assign common_vpn2 = inst_tlbp ? cp0_to_tlb_vpn2 : DTLB_vpn2;

generate
    genvar k;
    for(k = 0; k < TLBNUM; k = k + 1) begin
        assign common_match[k] = (latched_common_vpn2 == tlb_vpn2[k]) && 
                                ((latched_asid == tlb_asid[k]) || tlb_g[k]);
    end
endgenerate

    //TLB -> DTLB 返回一项TLB
    assign DTLB_found = |common_match;
    assign DTLB_pfn0  = tlb_pfn0[common_index];
    assign DTLB_c0    = tlb_c0[common_index];
    assign DTLB_d0    = tlb_d0[common_index];
    assign DTLB_v0    = tlb_v0[common_index]; 
    assign DTLB_pfn1  = tlb_pfn1[common_index];
    assign DTLB_c1    = tlb_c1[common_index];
    assign DTLB_d1    = tlb_d1[common_index];
    assign DTLB_v1    = tlb_v1[common_index];   

    //TLB <-> CP0
    assign tlb_to_cp0_vpn2  = tlb_vpn2[latched_index];
    assign tlb_to_cp0_asid  = tlb_asid[latched_index];
    assign tlb_to_cp0_g0    = tlb_g[latched_index];
    assign tlb_to_cp0_g1    = tlb_g[latched_index];
    assign tlb_to_cp0_pfn0  = tlb_pfn0[latched_index];
    assign tlb_to_cp0_c0    = tlb_c0[latched_index];
    assign tlb_to_cp0_d0    = tlb_d0[latched_index];
    assign tlb_to_cp0_v0    = tlb_v0[latched_index];
    assign tlb_to_cp0_pfn1  = tlb_pfn1[latched_index];
    assign tlb_to_cp0_c1    = tlb_c1[latched_index];
    assign tlb_to_cp0_d1    = tlb_d1[latched_index];
    assign tlb_to_cp0_v1    = tlb_v1[latched_index];    
    assign tlb_to_cp0_found = |common_match; //与DTLB共用match逻辑
    assign tlb_to_cp0_index = common_index; 

    always @(*) begin
         case(common_match)
            16'b0000_0000_0000_0001:common_index = 4'd0;
            16'b0000_0000_0000_0010:common_index = 4'd1;
            16'b0000_0000_0000_0100:common_index = 4'd2;
            16'b0000_0000_0000_1000:common_index = 4'd3;
            16'b0000_0000_0001_0000:common_index = 4'd4;
            16'b0000_0000_0010_0000:common_index = 4'd5;
            16'b0000_0000_0100_0000:common_index = 4'd6;
            16'b0000_0000_1000_0000:common_index = 4'd7;
            16'b0000_0001_0000_0000:common_index = 4'd8;
            16'b0000_0010_0000_0000:common_index = 4'd9;
            16'b0000_0100_0000_0000:common_index = 4'd10;
            16'b0000_1000_0000_0000:common_index = 4'd11;
            16'b0001_0000_0000_0000:common_index = 4'd12;
            16'b0010_0000_0000_0000:common_index = 4'd13;
            16'b0100_0000_0000_0000:common_index = 4'd14;
            16'b1000_0000_0000_0000:common_index = 4'd15;
            default:common_index = 4'd0;
        endcase
    end
// `ifdef ILA_debug
//     TLB_ila U_TLB_ila(
//         .clk(clk),
//         .probe0 (prefs_pc),
//         .probe1 (m1s_pc),
//         .probe2 (latched_index),
//         .probe3 (latched_ITLB_vpn2),
//         .probe4 (latched_common_vpn2),
//         .probe5 (ITLB_pfn0),
//         .probe6 (ITLB_pfn1),
//         .probe7 (DTLB_pfn0),
//         .probe8 (DTLB_pfn1),
//         .probe9 (common_index),
//         .probe10 (ITLB_index),
//         .probe11 (cp0_to_tlb_pfn0),
//         .probe12 (cp0_to_tlb_pfn1),
//         .probe13 (write_index),
//         .probe14 (inst_tlbwi),
//         .probe15 (inst_tlbwr)
//     );
// `endif
     
endmodule
