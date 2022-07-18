module tlb 
#(
    parameter TLBNUM = 16
)
(
    input                             clk,
    input                             reset,
    //ITLB port
    input        [18:0]               ITLB_vpn2,
    input        [7:0]                ITLB_asid,
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
    input        [7:0]                DTLB_asid,
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

    //search port1
    assign ITLB_match[ 0] = (ITLB_vpn2 == tlb_vpn2[ 0]) && ((ITLB_asid == tlb_asid[ 0]) || tlb_g[ 0]);
    assign ITLB_match[ 1] = (ITLB_vpn2 == tlb_vpn2[ 1]) && ((ITLB_asid == tlb_asid[ 1]) || tlb_g[ 1]);
    assign ITLB_match[ 2] = (ITLB_vpn2 == tlb_vpn2[ 2]) && ((ITLB_asid == tlb_asid[ 2]) || tlb_g[ 2]);
    assign ITLB_match[ 3] = (ITLB_vpn2 == tlb_vpn2[ 3]) && ((ITLB_asid == tlb_asid[ 3]) || tlb_g[ 3]);
    assign ITLB_match[ 4] = (ITLB_vpn2 == tlb_vpn2[ 4]) && ((ITLB_asid == tlb_asid[ 4]) || tlb_g[ 4]);
    assign ITLB_match[ 5] = (ITLB_vpn2 == tlb_vpn2[ 5]) && ((ITLB_asid == tlb_asid[ 5]) || tlb_g[ 5]);
    assign ITLB_match[ 6] = (ITLB_vpn2 == tlb_vpn2[ 6]) && ((ITLB_asid == tlb_asid[ 6]) || tlb_g[ 6]);
    assign ITLB_match[ 7] = (ITLB_vpn2 == tlb_vpn2[ 7]) && ((ITLB_asid == tlb_asid[ 7]) || tlb_g[ 7]);
    assign ITLB_match[ 8] = (ITLB_vpn2 == tlb_vpn2[ 8]) && ((ITLB_asid == tlb_asid[ 8]) || tlb_g[ 8]);
    assign ITLB_match[ 9] = (ITLB_vpn2 == tlb_vpn2[ 9]) && ((ITLB_asid == tlb_asid[ 9]) || tlb_g[ 9]);
    assign ITLB_match[10] = (ITLB_vpn2 == tlb_vpn2[10]) && ((ITLB_asid == tlb_asid[10]) || tlb_g[10]);
    assign ITLB_match[11] = (ITLB_vpn2 == tlb_vpn2[11]) && ((ITLB_asid == tlb_asid[11]) || tlb_g[11]);
    assign ITLB_match[12] = (ITLB_vpn2 == tlb_vpn2[12]) && ((ITLB_asid == tlb_asid[12]) || tlb_g[12]);
    assign ITLB_match[13] = (ITLB_vpn2 == tlb_vpn2[13]) && ((ITLB_asid == tlb_asid[13]) || tlb_g[13]);
    assign ITLB_match[14] = (ITLB_vpn2 == tlb_vpn2[14]) && ((ITLB_asid == tlb_asid[14]) || tlb_g[14]);
    assign ITLB_match[15] = (ITLB_vpn2 == tlb_vpn2[15]) && ((ITLB_asid == tlb_asid[15]) || tlb_g[15]);
    
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

    //DTLB CP0共用match逻辑
    wire [18:0] common_vpn2;
    wire [ 7:0] common_asid; //vpn2,asid共用
    assign common_vpn2 = inst_tlbp ? cp0_to_tlb_vpn2 : DTLB_vpn2;
    assign common_asid = inst_tlbp ? cp0_to_tlb_asid : DTLB_asid;

    assign common_match[ 0] = (common_vpn2 == tlb_vpn2[ 0]) && ((common_asid == tlb_asid[ 0]) || tlb_g[ 0]);
    assign common_match[ 1] = (common_vpn2 == tlb_vpn2[ 1]) && ((common_asid == tlb_asid[ 1]) || tlb_g[ 1]);
    assign common_match[ 2] = (common_vpn2 == tlb_vpn2[ 2]) && ((common_asid == tlb_asid[ 2]) || tlb_g[ 2]);
    assign common_match[ 3] = (common_vpn2 == tlb_vpn2[ 3]) && ((common_asid == tlb_asid[ 3]) || tlb_g[ 3]);
    assign common_match[ 4] = (common_vpn2 == tlb_vpn2[ 4]) && ((common_asid == tlb_asid[ 4]) || tlb_g[ 4]);
    assign common_match[ 5] = (common_vpn2 == tlb_vpn2[ 5]) && ((common_asid == tlb_asid[ 5]) || tlb_g[ 5]);
    assign common_match[ 6] = (common_vpn2 == tlb_vpn2[ 6]) && ((common_asid == tlb_asid[ 6]) || tlb_g[ 6]);
    assign common_match[ 7] = (common_vpn2 == tlb_vpn2[ 7]) && ((common_asid == tlb_asid[ 7]) || tlb_g[ 7]);
    assign common_match[ 8] = (common_vpn2 == tlb_vpn2[ 8]) && ((common_asid == tlb_asid[ 8]) || tlb_g[ 8]);
    assign common_match[ 9] = (common_vpn2 == tlb_vpn2[ 9]) && ((common_asid == tlb_asid[ 9]) || tlb_g[ 9]);
    assign common_match[10] = (common_vpn2 == tlb_vpn2[10]) && ((common_asid == tlb_asid[10]) || tlb_g[10]);
    assign common_match[11] = (common_vpn2 == tlb_vpn2[11]) && ((common_asid == tlb_asid[11]) || tlb_g[11]);
    assign common_match[12] = (common_vpn2 == tlb_vpn2[12]) && ((common_asid == tlb_asid[12]) || tlb_g[12]);
    assign common_match[13] = (common_vpn2 == tlb_vpn2[13]) && ((common_asid == tlb_asid[13]) || tlb_g[13]);
    assign common_match[14] = (common_vpn2 == tlb_vpn2[14]) && ((common_asid == tlb_asid[14]) || tlb_g[14]);
    assign common_match[15] = (common_vpn2 == tlb_vpn2[15]) && ((common_asid == tlb_asid[15]) || tlb_g[15]);    

    //TLB -> DTLB 返回一项TLB
    assign DTLB_found = (common_match != 16'b0);
    assign DTLB_pfn0  = tlb_pfn0[common_index];
    assign DTLB_c0    = tlb_c0[common_index];
    assign DTLB_d0    = tlb_d0[common_index];
    assign DTLB_v0    = tlb_v0[common_index]; 
    assign DTLB_pfn1  = tlb_pfn1[common_index];
    assign DTLB_c1    = tlb_c1[common_index];
    assign DTLB_d1    = tlb_d1[common_index];
    assign DTLB_v1    = tlb_v1[common_index];   

    //TLB <-> CP0
    assign tlb_to_cp0_vpn2  = tlb_vpn2[cp0_to_tlb_index];
    assign tlb_to_cp0_asid  = tlb_asid[cp0_to_tlb_index];
    assign tlb_to_cp0_g0    = tlb_g[cp0_to_tlb_index];
    assign tlb_to_cp0_g1    = tlb_g[cp0_to_tlb_index];
    assign tlb_to_cp0_pfn0  = tlb_pfn0[cp0_to_tlb_index];
    assign tlb_to_cp0_c0    = tlb_c0[cp0_to_tlb_index];
    assign tlb_to_cp0_d0    = tlb_d0[cp0_to_tlb_index];
    assign tlb_to_cp0_v0    = tlb_v0[cp0_to_tlb_index];
    assign tlb_to_cp0_pfn1  = tlb_pfn1[cp0_to_tlb_index];
    assign tlb_to_cp0_c1    = tlb_c1[cp0_to_tlb_index];
    assign tlb_to_cp0_d1    = tlb_d1[cp0_to_tlb_index];
    assign tlb_to_cp0_v1    = tlb_v1[cp0_to_tlb_index];    
    assign tlb_to_cp0_found = (common_match != 16'b0); //与DTLB共用match逻辑
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
        
endmodule
