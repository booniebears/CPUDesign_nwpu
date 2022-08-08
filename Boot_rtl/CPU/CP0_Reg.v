`include "global_defines.vh"

module CP0_Reg 
(
    input         clk,
    input         reset,
    input  [ 4:0] m1s_mtc0_rd,
    input  [ 2:0] m1s_sel,
    input         m1s_valid,
    input         m1s_inst_mtc0,
    input         m1s_inst_eret,
    input         m1s_bd,
    input         m1s_ex, //ms阶段 若报出例外,置为1,否则为0
    input  [31:0] m1s_alu_result, //若有地址错例外,则需要用BadVAddr寄存器记录错误的虚地址
    input  [ 5:0] ext_int, //6个外部硬件中断输入
    input  [ 4:0] Exctype, 
    input  [31:0] m1s_pc, 
    output [31:0] CP0_data, //mfc0从CP0中读出的数据
    output        eret_flush, //ERET指令修改EXL域的使能信号
    input         inst_tlbr,
    input         inst_tlbp, //判断是否为tlbp指令
    input         tlb_to_cp0_found,//tlb查找是否成功
    input  [18:0] tlb_to_cp0_vpn2, //以下为tlb写入的数据
    input  [ 7:0] tlb_to_cp0_asid ,
    input  [ 3:0] tlb_to_cp0_index, 
    input  [19:0] tlb_to_cp0_pfn0 ,//以下为entrylo0寄存器写入tlb的数据
    input  [ 2:0] tlb_to_cp0_c0 ,
    input         tlb_to_cp0_d0 ,
    input         tlb_to_cp0_v0 ,
    input         tlb_to_cp0_g0 ,
    input  [19:0] tlb_to_cp0_pfn1 ,//以下为entrylo1寄存器写入tlb的数据
    input  [ 2:0] tlb_to_cp0_c1 ,
    input         tlb_to_cp0_d1 ,
    input         tlb_to_cp0_v1 ,
    input         tlb_to_cp0_g1 ,
    output [18:0] cp0_to_tlb_vpn2, //以下为tlb读出的数据
    output [ 7:0] cp0_to_tlb_asid,
    output [19:0] cp0_to_tlb_pfn0,//以下为entrylo0寄存器读出的tlb的数据
    output [ 2:0] cp0_to_tlb_c0 ,
    output        cp0_to_tlb_d0 ,
    output        cp0_to_tlb_v0 ,
    output        cp0_to_tlb_g0 ,
    output [19:0] cp0_to_tlb_pfn1,//以下为entrylo1寄存器读出的tlb的数据
    output [ 2:0] cp0_to_tlb_c1 ,
    output        cp0_to_tlb_d1 ,
    output        cp0_to_tlb_v1 ,
    output        cp0_to_tlb_g1 ,
    output [ 3:0] cp0_to_tlb_index,//索引index
    output [ 3:0] cp0_to_tlb_random,//索引random
    output [31:0] CP0_EPC_out, 
    output        CP0_Status_IE_out,
    output        CP0_Status_EXL_out,
    output [ 7:0] CP0_Status_IM_out,
    output [ 7:0] CP0_Cause_IP_out,
    output        CP0_Cause_TI_out, 
    output [ 2:0] CP0_Config_K0_out,
    output [31:0] Exception_Addr
);

parameter TLBNUM           = 16;
`ifdef PMON_debug
    parameter Config_reset_val = {1'b1,15'b0,1'b0,2'b0,3'b0,3'b1,4'b0,3'b011}; //ucore赋值
`else
    parameter Config_reset_val = {1'b1,15'b0,1'b0,2'b0,3'b0,3'b1,4'b0,3'b011}; //K0初始赋值,为cached
`endif

wire [ 7:0] CP0_Addr; //写CP0寄存器组的地址?
wire        mtc0_we; //写CP0寄存器的写使能信号?
wire [31:0] Exception_Base;
wire [31:0] Exception_Offset;

assign CP0_Addr   = {m1s_mtc0_rd,m1s_sel}; //按照指令要求,CP0 Reg 8位读写地址由rd(这里就是m1s_mfc0_rd)和sel段拼起来
assign mtc0_we    = m1s_valid && m1s_inst_mtc0 && ~m1s_ex; //指令为mtc0,且MEM阶段没有报出例外,则写使能生效
assign eret_flush = m1s_valid && m1s_inst_eret && ~m1s_ex; //指令为eret,且MEM阶段没有报出例外,则清空流水线使能有效

/*************************以下为Status寄存器部分*************************/
reg        CP0_Status_CU0; //28 R/W
reg        CP0_Status_Bev; //22 R/W
reg [ 7:0] CP0_Status_IM; //15-8 R/W
reg        CP0_Status_UM; //4 R/W
reg        CP0_Status_ERL; //2 R/W
reg        CP0_Status_EXL; //1 R/W
reg        CP0_Status_IE; //0 R/W

always @(posedge clk) begin //28 R/W
    if(reset)
        CP0_Status_CU0 <= 1'b0;
    else if(mtc0_we && CP0_Addr == `Status_RegAddr)
        CP0_Status_CU0 <= m1s_alu_result[28];
end

always @(posedge clk) begin //22 R/W Attention:与CPU设计实战定义不同,参考MIPS手册?
    if(reset)
        CP0_Status_Bev <= 1'b1; //Bev域恒为1,只读
    else if(mtc0_we && CP0_Addr == `Status_RegAddr)
        CP0_Status_Bev <= m1s_alu_result[22]; 
end

always @(posedge clk) begin //15-8 R/W
    if(mtc0_we && CP0_Addr==`Status_RegAddr) 
        CP0_Status_IM <= m1s_alu_result[15:8];
end
assign CP0_Status_IM_out = CP0_Status_IM;

always @(posedge clk) begin //4 R/W
    if(reset)
        CP0_Status_UM <= 1'b0;
    else if(mtc0_we && CP0_Addr == `Status_RegAddr)
        CP0_Status_UM <= m1s_alu_result[4];
end

always @(posedge clk) begin //2 R/W
    if(reset) 
        CP0_Status_ERL <= 1'b0; //TODO:手册上写的是1?
    else if(mtc0_we && CP0_Addr == `Status_RegAddr)
        CP0_Status_ERL <= m1s_alu_result[2];
end

always @(posedge clk) begin //1 R/W
    if(reset) 
        CP0_Status_EXL <= 1'b0;
    else if(m1s_ex) //出现例外,则EXL被置1
        CP0_Status_EXL <= 1'b1;
    else if(eret_flush)
        CP0_Status_EXL <= 1'b0;
    else if(mtc0_we && CP0_Addr == `Status_RegAddr)
        CP0_Status_EXL <= m1s_alu_result[1];
end
assign CP0_Status_EXL_out = CP0_Status_EXL;

always @(posedge clk) begin //0 R/W
    if(reset)
        CP0_Status_IE <= 1'b0;
    else if(mtc0_we && CP0_Addr == `Status_RegAddr)
        CP0_Status_IE <= m1s_alu_result[0];
end
assign CP0_Status_IE_out = CP0_Status_IE;
/*************************以上为Status寄存器部分*************************/

/*************************以下为Count&Compare寄存器部分*************************/
reg [31:0] CP0_Count;
reg [31:0] CP0_Compare;
reg        tick; //Count寄存器每两个周期加一,tick通过自身翻转计数实现该功能
always @(posedge clk) begin 
    if(reset) 
        tick <= 1'b0;
    else 
        tick <= ~tick;

    if(reset) 
        CP0_Count <= 32'b0;
    else if(mtc0_we && CP0_Addr == `Count_RegAddr)
        CP0_Count <= m1s_alu_result;
    else if(tick)
        CP0_Count <= CP0_Count + 1'b1;
end

always @(posedge clk) begin //Compare
    if(reset)
        CP0_Compare <= 32'hffff_ffff; //赋值为Max
    else if(mtc0_we && CP0_Addr == `Compare_RegAddr)
        CP0_Compare <= m1s_alu_result;
end
/*************************以上Count&Compare寄存器部分*************************/

/*************************以下为Cause寄存器部分*************************/
reg        CP0_Cause_BD; //31
reg        CP0_Cause_TI; //30 TI=1,触发定时中断;
reg [ 1:0] CP0_Cause_CE; //29-28
reg [ 7:0] CP0_Cause_IP; //15-8
reg [ 4:0] CP0_Cause_ExcCode; //6-2
wire       Count_eq_Compare; //Count寄存器与Compare寄存器相等时置为1

assign Count_eq_Compare = (CP0_Count == CP0_Compare);
always @(posedge clk) begin //31 R
    if(reset)
        CP0_Cause_BD <= 1'b0;
    else if(m1s_ex && ~CP0_Status_EXL) //只有在EXL域为0的时候,才更新BD
        CP0_Cause_BD <= m1s_bd;
end

always @(posedge clk) begin //30 R TODO:Count_eq_Compare时TI域置1
    if(reset)
        CP0_Cause_TI <= 1'b0;
    else if(mtc0_we && CP0_Addr == `Compare_RegAddr) 
        CP0_Cause_TI <= 1'b0; //本身不能直接由mtc0指令来写,但是用mtc0写Compare寄存器的时候,TI域清零
    else if(Count_eq_Compare)
        CP0_Cause_TI <= 1'b1;
end
assign CP0_Cause_TI_out = CP0_Cause_TI;

always @(posedge clk) begin //CE 29-28 R
    if(reset) //TODO:按照规范的话，可以不用reset
        CP0_Cause_CE <= 2'b00;
    else if(Exctype == `CpU)
        CP0_Cause_CE <= 2'b01;
end

always @(posedge clk) begin //IP7-IP2 15-10 R TODO: ext_int处理
    if(reset)
        CP0_Cause_IP[7:2] <= 6'b0;
    else begin
        // CP0_Cause_IP[7]   <= CP0_Cause_TI;
        CP0_Cause_IP[7]   <= ext_int[5] | CP0_Cause_TI;
        CP0_Cause_IP[6:2] <= ext_int[4:0];
    end
end
assign CP0_Cause_IP_out = CP0_Cause_IP;

always @(posedge clk) begin //IP1-IP0 9-8 R/W
    if(reset)
        CP0_Cause_IP[1:0] <= 2'b0;
    else if(mtc0_we && CP0_Addr == `Cause_RegAddr)
        CP0_Cause_IP[1:0] <= m1s_alu_result[9:8];
end

always @(posedge clk) begin //ExeCode 6-2 R
    if(reset)
        CP0_Cause_ExcCode <= `NO_EX;
    else if(m1s_ex) begin
        case (Exctype)
            `Int                : CP0_Cause_ExcCode <= 5'b00000;
            `ITLB_EX_Refill     : CP0_Cause_ExcCode <= 5'b00010;
            `ITLB_EX_Invalid    : CP0_Cause_ExcCode <= 5'b00010;
            `DTLB_EX_RD_Refill  : CP0_Cause_ExcCode <= 5'b00010;
            `DTLB_EX_RD_Invalid : CP0_Cause_ExcCode <= 5'b00010;
            `DTLB_EX_WR_Refill  : CP0_Cause_ExcCode <= 5'b00011;
            `DTLB_EX_WR_Invalid : CP0_Cause_ExcCode <= 5'b00011;
            `DTLB_EX_Modified   : CP0_Cause_ExcCode <= 5'b00001;
            `AdEL               : CP0_Cause_ExcCode <= 5'b00100;
            `AdES               : CP0_Cause_ExcCode <= 5'b00101;
            `Sys                : CP0_Cause_ExcCode <= 5'b01000;
            `Bp                 : CP0_Cause_ExcCode <= 5'b01001;
            `RI                 : CP0_Cause_ExcCode <= 5'b01010;
            `CpU                : CP0_Cause_ExcCode <= 5'b01011;
            `Ov                 : CP0_Cause_ExcCode <= 5'b01100;
            `Trap               : CP0_Cause_ExcCode <= 5'b01101;
            default             : CP0_Cause_ExcCode <= `NO_EX;
        endcase
    end
end
/*************************以上为Cause寄存器部分*************************/

/*************************以下为Random&Wired寄存器部分*************************/
reg  [3:0] CP0_Random_Random; //3-0 R
reg  [3:0] CP0_Wired_Wired; //3-0 R/W
wire [3:0] Random_next;

always @(posedge clk) begin
    if(reset)
        CP0_Wired_Wired <= 4'b0;
    else if(mtc0_we && CP0_Addr == `Wired_RegAddr)
        CP0_Wired_Wired <= m1s_alu_result[3:0];
end

assign Random_next = CP0_Random_Random + 1'b1; //由于只有四位,故上限为TLBNUM - 1'b1
always @(posedge clk) begin //Random 3-0 R
    if(reset)
        CP0_Random_Random <= 4'b1111;
    else //Random的赋值 从CP0_Wired_Wired变化到TLBNUM - 1'b1
        CP0_Random_Random <= (CP0_Wired_Wired < Random_next) ? Random_next : CP0_Wired_Wired;
end
assign cp0_to_tlb_random = CP0_Random_Random;
/*************************以上为Random&Wired寄存器部分*************************/

/*************************以下为Context寄存器部分*************************/
reg [8:0]  CP0_Context_PTEBase; //31-23 R/W
reg [18:0] CP0_Context_BadVPN2; //22-4 R

always @(posedge clk) begin //PTEBase 31-23 R/W
    if(mtc0_we && CP0_Addr == `Context_RegAddr)
        CP0_Context_PTEBase <= m1s_alu_result[31:23];
end

always @(posedge clk) begin //BadVPN2 22-4 R
    if(Exctype == `ITLB_EX_Refill || Exctype == `ITLB_EX_Invalid)   
        CP0_Context_BadVPN2 <= m1s_pc[31:13];
    else if(Exctype == `DTLB_EX_RD_Refill || Exctype == `DTLB_EX_RD_Invalid  || 
    Exctype == `DTLB_EX_WR_Refill || Exctype == `DTLB_EX_WR_Invalid || Exctype == `DTLB_EX_Modified)
        CP0_Context_BadVPN2 <= m1s_alu_result[31:13];
end
/*************************以上为Context寄存器部器*************************/

//PageMask寄存器
reg [31:0] CP0_PageMask; 
always @(posedge clk) begin
    if(reset) //PageMask设零（固定为4K页大小）
        CP0_PageMask <= 32'b0;
end

//EPC寄存器
reg [31:0] CP0_EPC;
always @(posedge clk) begin
    if(m1s_ex && ~CP0_Status_EXL) begin //EXL为0的时候才能写EPC
        // if(Exctype == `Int && m1s_inst_mtc0) //TODO: not very rigorous
        //     CP0_EPC <= m1s_pc + 4; //EPC points to the instruction following mtc0
        // else
        CP0_EPC <= m1s_bd ? m1s_pc - 4 : m1s_pc; //指令在延迟槽,EPC指向延迟槽对应的分支跳转指令;否则指向指令本身
    end
    else if(mtc0_we && CP0_Addr == `EPC_RegAddr)
        CP0_EPC <= m1s_alu_result;
end
assign CP0_EPC_out = CP0_EPC;

//BadVAddr寄存器
reg [31:0]  CP0_BadVAddr;
always @(posedge clk) begin //
    if(m1s_ex) begin
        if(Exctype == `AdES)
            CP0_BadVAddr <= m1s_alu_result;
        else if(Exctype == `AdEL)
            CP0_BadVAddr <= (m1s_pc[1:0] != 0) ? m1s_pc : m1s_alu_result;
        else if(Exctype == `ITLB_EX_Refill || Exctype == `ITLB_EX_Invalid) 
            CP0_BadVAddr <= m1s_pc;
        else if(Exctype == `DTLB_EX_RD_Refill || Exctype == `DTLB_EX_RD_Invalid  || 
    Exctype == `DTLB_EX_WR_Refill || Exctype == `DTLB_EX_WR_Invalid || Exctype == `DTLB_EX_Modified)
            CP0_BadVAddr <= m1s_alu_result;
    end
end

/*************************以下为EntryHi寄存器部分*************************/
reg [18:0] CP0_Entryhi_VPN2; //EntryHi寄存器中的VPN2
reg [ 7:0] CP0_Entryhi_ASID; //EntryHi寄存器中的ASID
always @(posedge clk) begin
    if(reset) begin
        CP0_Entryhi_VPN2 <= 19'b0 ;
        CP0_Entryhi_ASID <= 8'b0 ;
    end
    else if(mtc0_we && CP0_Addr == `Entryhi_RegAddr) begin
        CP0_Entryhi_VPN2 <= m1s_alu_result[31:13];
        CP0_Entryhi_ASID <= m1s_alu_result[7:0];
    end
    else if(inst_tlbr) begin
        CP0_Entryhi_VPN2 <= tlb_to_cp0_vpn2 ;
        CP0_Entryhi_ASID <= tlb_to_cp0_asid ;
    end
    else if(Exctype == `ITLB_EX_Refill || Exctype == `ITLB_EX_Invalid) 
        CP0_Entryhi_VPN2 <= m1s_pc[31:13];
    else if(Exctype == `DTLB_EX_RD_Refill || Exctype == `DTLB_EX_RD_Invalid  || 
    Exctype == `DTLB_EX_WR_Refill || Exctype == `DTLB_EX_WR_Invalid || Exctype == `DTLB_EX_Modified)
        CP0_Entryhi_VPN2 <= m1s_alu_result[31:13];
end

assign cp0_to_tlb_vpn2 = CP0_Entryhi_VPN2;
assign cp0_to_tlb_asid = CP0_Entryhi_ASID;
/*************************以上为EntryHi寄存器部分*************************/

/*************************以下为EntryLo0寄存器部分*************************/
reg [19:0] CP0_Entrylo0_PFN0;
reg [ 2:0] CP0_Entrylo0_C0;
reg        CP0_Entrylo0_D0;
reg        CP0_Entrylo0_V0;
reg        CP0_Entrylo0_G0;
always @(posedge clk) begin
    if(reset) begin
        CP0_Entrylo0_PFN0 <= 20'b0;
        CP0_Entrylo0_C0   <= 3'b0;
        CP0_Entrylo0_D0   <= 1'b0;
        CP0_Entrylo0_V0   <= 1'b0;
        CP0_Entrylo0_G0   <= 1'b0;
    end
    else if(mtc0_we && CP0_Addr == `Entrylo0_RegAddr) begin
        CP0_Entrylo0_PFN0 <= m1s_alu_result[25:6];
        CP0_Entrylo0_C0   <= m1s_alu_result[5:3];
        CP0_Entrylo0_D0   <= m1s_alu_result[2];
        CP0_Entrylo0_V0   <= m1s_alu_result[1];
        CP0_Entrylo0_G0   <= m1s_alu_result[0];
    end
    else if (inst_tlbr) begin
        CP0_Entrylo0_PFN0 <= tlb_to_cp0_pfn0;
        CP0_Entrylo0_C0   <= tlb_to_cp0_c0  ;
        CP0_Entrylo0_D0   <= tlb_to_cp0_d0  ;
        CP0_Entrylo0_V0   <= tlb_to_cp0_v0  ;
        CP0_Entrylo0_G0   <= tlb_to_cp0_g0  ;
    end
end

assign cp0_to_tlb_pfn0 = CP0_Entrylo0_PFN0;
assign cp0_to_tlb_c0   = CP0_Entrylo0_C0  ;
assign cp0_to_tlb_d0   = CP0_Entrylo0_D0  ;
assign cp0_to_tlb_v0   = CP0_Entrylo0_V0  ;
assign cp0_to_tlb_g0   = CP0_Entrylo0_G0  ;
/*************************以上为EntryLo0寄存器部分*************************/

/*************************以下为EntryLo1寄存器部分*************************/
reg [19:0] CP0_Entrylo1_PFN1;
reg [ 2:0] CP0_Entrylo1_C1;
reg        CP0_Entrylo1_D1;
reg        CP0_Entrylo1_V1;
reg        CP0_Entrylo1_G1;
always @(posedge clk) begin
    if(reset) begin
        CP0_Entrylo1_PFN1 <= 20'b0;
        CP0_Entrylo1_C1   <= 3'b0;
        CP0_Entrylo1_D1   <= 1'b0;
        CP0_Entrylo1_V1   <= 1'b0;
        CP0_Entrylo1_G1   <= 1'b0;
    end
    else if(mtc0_we && CP0_Addr == `Entrylo1_RegAddr) begin
        CP0_Entrylo1_PFN1 <= m1s_alu_result[25:6];
        CP0_Entrylo1_C1   <= m1s_alu_result[5:3];
        CP0_Entrylo1_D1   <= m1s_alu_result[2];
        CP0_Entrylo1_V1   <= m1s_alu_result[1];
        CP0_Entrylo1_G1   <= m1s_alu_result[0];
    end
    else if (inst_tlbr) begin
        CP0_Entrylo1_PFN1 <= tlb_to_cp0_pfn1;
        CP0_Entrylo1_C1   <= tlb_to_cp0_c1  ;
        CP0_Entrylo1_D1   <= tlb_to_cp0_d1  ;
        CP0_Entrylo1_V1   <= tlb_to_cp0_v1  ;
        CP0_Entrylo1_G1   <= tlb_to_cp0_g1  ;
    end
end
assign cp0_to_tlb_pfn1 = CP0_Entrylo1_PFN1;
assign cp0_to_tlb_c1   = CP0_Entrylo1_C1  ;
assign cp0_to_tlb_d1   = CP0_Entrylo1_D1  ;
assign cp0_to_tlb_v1   = CP0_Entrylo1_V1  ;
assign cp0_to_tlb_g1   = CP0_Entrylo1_G1  ;
/*************************以上为EntryLo1寄存器部分*************************/

/*************************以下为Index寄存器部分*************************/
reg       CP0_Index_P;
reg [3:0] CP0_Index_Index;

always @(posedge clk) begin
    if(reset) 
        CP0_Index_P <= 1'b0;
    else if(inst_tlbp) begin
        CP0_Index_P <= ~tlb_to_cp0_found;
    end
end

always @(posedge clk) begin
    if(reset) begin
        CP0_Index_Index <= 4'b0;
    end
    else if(mtc0_we && CP0_Addr == `Index_RegAddr) begin
        CP0_Index_Index <= m1s_alu_result[3:0];
    end
    else if(inst_tlbp && tlb_to_cp0_found) begin
        CP0_Index_Index <= tlb_to_cp0_index;
    end
end
assign cp0_to_tlb_index = CP0_Index_Index;
/*************************以上为Index寄存器部分*************************/

//Config寄存器
reg [31:0] CP0_Config;

always @(posedge clk) begin
    if(reset)
        CP0_Config      <= Config_reset_val;
    else if(mtc0_we && CP0_Addr == `Config_RegAddr) //K0 R/W
        CP0_Config[2:0] <= m1s_alu_result[2:0];
end
assign CP0_Config_K0_out = CP0_Config[2:0];

//Prid寄存器
reg [31:0] CP0_Prid;
always @(posedge clk) begin //R
    if(reset) begin
        CP0_Prid <= 32'h00004220;
    end
end

//EBase寄存器
reg [31:0] CP0_EBase;

always @(posedge clk) begin
    if(reset)
        CP0_EBase        <= 32'h8000_0000;
    else if(mtc0_we && CP0_Addr == `EBase_RegAddr) //R/W
        CP0_EBase[29:12] <= m1s_alu_result[29:12];
end

/*************************以下为Config1寄存器部分*************************/

reg [31:31] CP0_Config1_M;
reg [30:25] CP0_Config1_MMUSize;
reg [24:22] CP0_Config1_IS;
reg [21:19] CP0_Config1_IL;
reg [18:16] CP0_Config1_IA;
reg [15:13] CP0_Config1_DS;
reg [12:10] CP0_Config1_DL;
reg [  9:7] CP0_Config1_DA;
`ifdef PMON_debug
always @(posedge clk) begin
    if(reset) begin //R
        CP0_Config1_M       <= 1'b0;   //Config2未实现
        CP0_Config1_MMUSize <= 31;     //NEMU TLB 32items
        CP0_Config1_IS      <= 3'b010; //ICache每路有256个Cache line,编码为3'b010
        CP0_Config1_IL      <= 3'b011; //ICache每个Cache line有128bits,16bytes,编码为3'b011
        CP0_Config1_IA      <= 3'b011; //ICache四路组相连,编码为3'b011;
        CP0_Config1_DS      <= 3'b010; //DCache每路有256个Cache line,编码为3'b010
        CP0_Config1_DL      <= 3'b011; //DCache每个Cache line有128bits,16bytes,编码为3'b011
        CP0_Config1_DA      <= 3'b011; //DCache四路组相脸,编码为3'b011;
    end
end
`else
always @(posedge clk) begin
    if(reset) begin //R
        CP0_Config1_M       <= 1'b0; //Config2未实现
        CP0_Config1_MMUSize <= TLBNUM - 1;
        CP0_Config1_IS      <= 3'b010; //ICache每路有256个Cache line,编码为3'b010
        CP0_Config1_IL      <= 3'b011; //ICache每个Cache line有128bits,16bytes,编码为3'b011
        CP0_Config1_IA      <= 3'b001; //ICache两路组相连,编码为3'b001;
        CP0_Config1_DS      <= 3'b010; //DCache每路有256个Cache line,编码为3'b010
        CP0_Config1_DL      <= 3'b011; //DCache每个Cache line有128bits,16bytes,编码为3'b011
        CP0_Config1_DA      <= 3'b001; //DCache两路组相脸,编码为3'b001;
    end
end
`endif
/*************************以上为Config1寄存器部分*************************/

//mfc0指令实现:
assign CP0_data = (CP0_Addr == `BadVAddr_RegAddr)? CP0_BadVAddr:
                  (CP0_Addr == `Count_RegAddr   )? CP0_Count:
                  (CP0_Addr == `Compare_RegAddr )? CP0_Compare:
                  (CP0_Addr == `Status_RegAddr  )? {3'b0,CP0_Status_CU0,5'b0,CP0_Status_Bev,6'b0,CP0_Status_IM,3'b0,
                                                    CP0_Status_UM,1'b0,CP0_Status_ERL,CP0_Status_EXL,CP0_Status_IE}:
                  (CP0_Addr == `Cause_RegAddr   )? {CP0_Cause_BD,CP0_Cause_TI,CP0_Cause_CE,12'b0,CP0_Cause_IP,
                                                    1'b0,CP0_Cause_ExcCode,2'b0}:
                  (CP0_Addr == `EPC_RegAddr     )? CP0_EPC:
                  (CP0_Addr == `Index_RegAddr   )? {CP0_Index_P,27'b0,CP0_Index_Index}:
                  (CP0_Addr == `Entryhi_RegAddr )? {CP0_Entryhi_VPN2,5'b0,CP0_Entryhi_ASID}:
                  (CP0_Addr == `Entrylo0_RegAddr)? {6'b0,CP0_Entrylo0_PFN0,CP0_Entrylo0_C0,CP0_Entrylo0_D0,CP0_Entrylo0_V0,CP0_Entrylo0_G0}:
                  (CP0_Addr == `Entrylo1_RegAddr)? {6'b0,CP0_Entrylo1_PFN1,CP0_Entrylo1_C1,CP0_Entrylo1_D1,CP0_Entrylo1_V1,CP0_Entrylo1_G1}:
                  (CP0_Addr == `Random_RegAddr  )? {28'b0,CP0_Random_Random}:
                  (CP0_Addr == `Wired_RegAddr   )? {28'b0,CP0_Wired_Wired}:
                  (CP0_Addr == `Context_RegAddr )? {CP0_Context_PTEBase,CP0_Context_BadVPN2,4'b0}:
                  (CP0_Addr == `Prid_RegAddr    )? CP0_Prid:
                  (CP0_Addr == `EBase_RegAddr   )? CP0_EBase:
                  (CP0_Addr == `Config_RegAddr  )? CP0_Config: 
                  (CP0_Addr == `Config1_RegAddr )? {CP0_Config1_M,CP0_Config1_MMUSize,CP0_Config1_IS,
                                                    CP0_Config1_IL,CP0_Config1_IA,CP0_Config1_DS,CP0_Config1_DL,
                                                    CP0_Config1_DA,7'b0}:
                                                   32'b0; //TODO:目前CP0_data默认32'b0
//例外地址入口
assign Exception_Base   = CP0_Status_Bev ? `GENERAL_EX_BASE : CP0_EBase; //例外基地址
assign Exception_Offset = (Exctype == `ITLB_EX_Refill || Exctype == `DTLB_EX_RD_Refill
                        || Exctype == `DTLB_EX_WR_Refill) ? 0: `GENERAL_EX_OFFSET; //例外偏移量
assign Exception_Addr   = Exception_Base + Exception_Offset;

`ifdef ILA_debug
wire has_int; //判定是否接收到中断 需要满足下面的条件
assign has_int = ((CP0_Cause_IP_out & CP0_Status_IM_out) != 0) && 
                   CP0_Status_IE_out && !CP0_Status_EXL_out;
    CP0_ila U_CP0_ila(
        .clk(clk),
        .probe0 (mtc0_we),
        .probe1 (CP0_EPC),
        .probe2 (CP0_BadVAddr),
        .probe3 (Exception_Addr),
        .probe4 (m1s_alu_result),
        .probe5 (m1s_pc),
        .probe6 (CP0_Cause_IP),
        .probe7 (has_int),
        .probe8 (CP0_data)
    );
`endif
endmodule //CP0_Reg