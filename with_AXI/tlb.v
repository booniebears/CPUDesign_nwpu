module tlb 
#(
    parameter TLBNUM = 16
)
(
    input                             clk,
    //ICache search
    //用于取指的虚实指令转换
    input        [18:0]               s0_vpn2,
    input                             s0_odd_page,
    input        [7:0]                s0_asid,
    output                            s0_found,
    output   reg [$clog2(TLBNUM)-1:0] s0_index,
    output   reg [19:0]               s0_pfn,
    output   reg [2:0]                s0_c,
    output   reg                      s0_d,
    output   reg                      s0_v,

    //DCache search
    //用于访存的虚实地址转换
    input        [18:0]               s1_vpn2,
    input                             s1_odd_page,
    input        [7:0]                s1_asid,
    output                            s1_found,
    output   reg [$clog2(TLBNUM)-1:0] s1_index,
    output   reg [19:0]               s1_pfn,
    output   reg [2:0]                s1_c,
    output   reg                      s1_d,
    output   reg                      s1_v,

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
    input                             inst_tlbp , //TLB查询:对应inst_tlbp
    input        [$clog2(TLBNUM)-1:0] cp0_to_tlb_index,
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
    input                             cp0_to_tlb_v1
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
    //TLB模块的接口与内部主要信号的定义

    wire [TLBNUM-1:0]                 match0;
    wire [TLBNUM-1:0]                 match1;

    //write port
    always @(posedge clk) begin
        if(inst_tlbwi) begin
            tlb_vpn2[cp0_to_tlb_index] <= cp0_to_tlb_vpn2;
            tlb_asid[cp0_to_tlb_index] <= cp0_to_tlb_asid;
            tlb_g[cp0_to_tlb_index]    <= cp0_to_tlb_g0 & cp0_to_tlb_g1;
            tlb_pfn0[cp0_to_tlb_index] <= cp0_to_tlb_pfn0;
            tlb_c0[cp0_to_tlb_index]   <= cp0_to_tlb_c0;
            tlb_d0[cp0_to_tlb_index]   <= cp0_to_tlb_d0;
            tlb_v0[cp0_to_tlb_index]   <= cp0_to_tlb_v0;
            tlb_pfn1[cp0_to_tlb_index] <= cp0_to_tlb_pfn1;
            tlb_c1[cp0_to_tlb_index]   <= cp0_to_tlb_c1;
            tlb_d1[cp0_to_tlb_index]   <= cp0_to_tlb_d1;
            tlb_v1[cp0_to_tlb_index]   <= cp0_to_tlb_v1;
        end
    end

    //read port
    assign tlb_to_cp0_vpn2 = tlb_vpn2[cp0_to_tlb_index];
    assign tlb_to_cp0_asid = tlb_asid[cp0_to_tlb_index];
    assign tlb_to_cp0_g0   = tlb_g[cp0_to_tlb_index];
    assign tlb_to_cp0_g1   = tlb_g[cp0_to_tlb_index];
    assign tlb_to_cp0_pfn0 = tlb_pfn0[cp0_to_tlb_index];
    assign tlb_to_cp0_c0   = tlb_c0[cp0_to_tlb_index];
    assign tlb_to_cp0_d0   = tlb_d0[cp0_to_tlb_index];
    assign tlb_to_cp0_v0   = tlb_v0[cp0_to_tlb_index];
    assign tlb_to_cp0_pfn1 = tlb_pfn1[cp0_to_tlb_index];
    assign tlb_to_cp0_c1   = tlb_c1[cp0_to_tlb_index];
    assign tlb_to_cp0_d1   = tlb_d1[cp0_to_tlb_index];
    assign tlb_to_cp0_v1   = tlb_v1[cp0_to_tlb_index];    

    //search port1
    assign match0[ 0] = (s0_vpn2 == tlb_vpn2[ 0]) && ((s0_asid == tlb_asid[ 0]) || tlb_g[ 0]);
    assign match0[ 1] = (s0_vpn2 == tlb_vpn2[ 1]) && ((s0_asid == tlb_asid[ 1]) || tlb_g[ 1]);
    assign match0[ 2] = (s0_vpn2 == tlb_vpn2[ 2]) && ((s0_asid == tlb_asid[ 2]) || tlb_g[ 2]);
    assign match0[ 3] = (s0_vpn2 == tlb_vpn2[ 3]) && ((s0_asid == tlb_asid[ 3]) || tlb_g[ 3]);
    assign match0[ 4] = (s0_vpn2 == tlb_vpn2[ 4]) && ((s0_asid == tlb_asid[ 4]) || tlb_g[ 4]);
    assign match0[ 5] = (s0_vpn2 == tlb_vpn2[ 5]) && ((s0_asid == tlb_asid[ 5]) || tlb_g[ 5]);
    assign match0[ 6] = (s0_vpn2 == tlb_vpn2[ 6]) && ((s0_asid == tlb_asid[ 6]) || tlb_g[ 6]);
    assign match0[ 7] = (s0_vpn2 == tlb_vpn2[ 7]) && ((s0_asid == tlb_asid[ 7]) || tlb_g[ 7]);
    assign match0[ 8] = (s0_vpn2 == tlb_vpn2[ 8]) && ((s0_asid == tlb_asid[ 8]) || tlb_g[ 8]);
    assign match0[ 9] = (s0_vpn2 == tlb_vpn2[ 9]) && ((s0_asid == tlb_asid[ 9]) || tlb_g[ 9]);
    assign match0[10] = (s0_vpn2 == tlb_vpn2[10]) && ((s0_asid == tlb_asid[10]) || tlb_g[10]);
    assign match0[11] = (s0_vpn2 == tlb_vpn2[11]) && ((s0_asid == tlb_asid[11]) || tlb_g[11]);
    assign match0[12] = (s0_vpn2 == tlb_vpn2[12]) && ((s0_asid == tlb_asid[12]) || tlb_g[12]);
    assign match0[13] = (s0_vpn2 == tlb_vpn2[13]) && ((s0_asid == tlb_asid[13]) || tlb_g[13]);
    assign match0[14] = (s0_vpn2 == tlb_vpn2[14]) && ((s0_asid == tlb_asid[14]) || tlb_g[14]);
    assign match0[15] = (s0_vpn2 == tlb_vpn2[15]) && ((s0_asid == tlb_asid[15]) || tlb_g[15]);
    
    assign s0_found = (match0 == 16'b0) ? 1'b0 : 1'b1; //s0_found生成逻辑，port0是否hit

    always @(*) begin
        if(~s0_found) begin//未命中
            s0_pfn <= 20'b0;
            s0_c   <= 3'b0;
            s0_d   <= 1'b0;
            s0_v   <= 1'b0;
        end
        else begin             //根据oddpage，即地址第12位判断取 前半段 还是取 后半段
            if(~s0_odd_page) begin
                s0_pfn <= tlb_pfn0[s0_index];
                s0_c   <= tlb_c0[s0_index];
                s0_d   <= tlb_d0[s0_index];
                s0_v   <= tlb_v0[s0_index];
            end
            else begin
                s0_pfn <= tlb_pfn1[s0_index];
                s0_c   <= tlb_c1[s0_index];
                s0_d   <= tlb_d1[s0_index];
                s0_v   <= tlb_v1[s0_index];
            end
        end
    end

    always @(*) begin          //s0_index生成逻辑
         case(match0)
            16'b0000_0000_0000_0001: s0_index = 4'd0;
            16'b0000_0000_0000_0010: s0_index = 4'd1;
            16'b0000_0000_0000_0100: s0_index = 4'd2;
            16'b0000_0000_0000_1000: s0_index = 4'd3;
            16'b0000_0000_0001_0000: s0_index = 4'd4;
            16'b0000_0000_0010_0000: s0_index = 4'd5;
            16'b0000_0000_0100_0000: s0_index = 4'd6;
            16'b0000_0000_1000_0000: s0_index = 4'd7;
            16'b0000_0001_0000_0000: s0_index = 4'd8;
            16'b0000_0010_0000_0000: s0_index = 4'd9;
            16'b0000_0100_0000_0000: s0_index = 4'd10;
            16'b0000_1000_0000_0000: s0_index = 4'd11;
            16'b0001_0000_0000_0000: s0_index = 4'd12;
            16'b0010_0000_0000_0000: s0_index = 4'd13;
            16'b0100_0000_0000_0000: s0_index = 4'd14;
            16'b1000_0000_0000_0000: s0_index = 4'd15;
            default: s0_index = 4'd0;
        endcase
    end

    //search port2  DCache & tlbp search端口共用
    wire [18:0] common_vpn2;
    wire [ 7:0] common_asid; //vpn2,asid共用
    assign common_vpn2 = inst_tlbp ? cp0_to_tlb_vpn2 : s1_vpn2;
    assign common_asid = inst_tlbp ? cp0_to_tlb_asid : s1_asid;

    assign match1[ 0] = (common_vpn2 == tlb_vpn2[ 0]) && ((common_asid == tlb_asid[ 0]) || tlb_g[ 0]);
    assign match1[ 1] = (common_vpn2 == tlb_vpn2[ 1]) && ((common_asid == tlb_asid[ 1]) || tlb_g[ 1]);
    assign match1[ 2] = (common_vpn2 == tlb_vpn2[ 2]) && ((common_asid == tlb_asid[ 2]) || tlb_g[ 2]);
    assign match1[ 3] = (common_vpn2 == tlb_vpn2[ 3]) && ((common_asid == tlb_asid[ 3]) || tlb_g[ 3]);
    assign match1[ 4] = (common_vpn2 == tlb_vpn2[ 4]) && ((common_asid == tlb_asid[ 4]) || tlb_g[ 4]);
    assign match1[ 5] = (common_vpn2 == tlb_vpn2[ 5]) && ((common_asid == tlb_asid[ 5]) || tlb_g[ 5]);
    assign match1[ 6] = (common_vpn2 == tlb_vpn2[ 6]) && ((common_asid == tlb_asid[ 6]) || tlb_g[ 6]);
    assign match1[ 7] = (common_vpn2 == tlb_vpn2[ 7]) && ((common_asid == tlb_asid[ 7]) || tlb_g[ 7]);
    assign match1[ 8] = (common_vpn2 == tlb_vpn2[ 8]) && ((common_asid == tlb_asid[ 8]) || tlb_g[ 8]);
    assign match1[ 9] = (common_vpn2 == tlb_vpn2[ 9]) && ((common_asid == tlb_asid[ 9]) || tlb_g[ 9]);
    assign match1[10] = (common_vpn2 == tlb_vpn2[10]) && ((common_asid == tlb_asid[10]) || tlb_g[10]);
    assign match1[11] = (common_vpn2 == tlb_vpn2[11]) && ((common_asid == tlb_asid[11]) || tlb_g[11]);
    assign match1[12] = (common_vpn2 == tlb_vpn2[12]) && ((common_asid == tlb_asid[12]) || tlb_g[12]);
    assign match1[13] = (common_vpn2 == tlb_vpn2[13]) && ((common_asid == tlb_asid[13]) || tlb_g[13]);
    assign match1[14] = (common_vpn2 == tlb_vpn2[14]) && ((common_asid == tlb_asid[14]) || tlb_g[14]);
    assign match1[15] = (common_vpn2 == tlb_vpn2[15]) && ((common_asid == tlb_asid[15]) || tlb_g[15]);    

    assign s1_found = (match1 == 16'b0) ? 1'b0 : 1'b1; //s1_found生成逻辑，port1是否hit
    assign tlb_to_cp0_found = s1_found; //共用了DCache的s1_found生成逻辑
    assign tlb_to_cp0_index = s1_index; //共用了DCache的s1_index生成逻辑

    always @(*) begin
        if(~s1_found) begin//未命中
            s1_pfn   = 20'b0;
            s1_c     = 3'b0;
            s1_d     = 1'b0;
            s1_v     = 1'b0;
        end
        else begin             //根据oddpage，即地址第12位判断取 前半段 还是取 后半段
            if(~s1_odd_page) begin
                s1_pfn = tlb_pfn0[s1_index];
                s1_c   = tlb_c0[s1_index];
                s1_d   = tlb_d0[s1_index];
                s1_v   = tlb_v0[s1_index];
            end
            else begin
                s1_pfn = tlb_pfn1[s1_index];
                s1_c   = tlb_c1[s1_index];
                s1_d   = tlb_d1[s1_index];
                s1_v   = tlb_v1[s1_index];
            end
        end
    end

    always @(*) begin          //s1_index生成逻辑
         case(match1)
            16'b0000_0000_0000_0001:s1_index = 4'd0;
            16'b0000_0000_0000_0010:s1_index = 4'd1;
            16'b0000_0000_0000_0100:s1_index = 4'd2;
            16'b0000_0000_0000_1000:s1_index = 4'd3;
            16'b0000_0000_0001_0000:s1_index = 4'd4;
            16'b0000_0000_0010_0000:s1_index = 4'd5;
            16'b0000_0000_0100_0000:s1_index = 4'd6;
            16'b0000_0000_1000_0000:s1_index = 4'd7;
            16'b0000_0001_0000_0000:s1_index = 4'd8;
            16'b0000_0010_0000_0000:s1_index = 4'd9;
            16'b0000_0100_0000_0000:s1_index = 4'd10;
            16'b0000_1000_0000_0000:s1_index = 4'd11;
            16'b0001_0000_0000_0000:s1_index = 4'd12;
            16'b0010_0000_0000_0000:s1_index = 4'd13;
            16'b0100_0000_0000_0000:s1_index = 4'd14;
            16'b1000_0000_0000_0000:s1_index = 4'd15;
            default:s1_index = 4'd0;
        endcase
    end
        
endmodule
