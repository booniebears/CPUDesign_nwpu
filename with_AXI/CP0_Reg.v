`include "global_defines.vh"
//todo 1.tlb例外是由if还是mem触发的，
//tlb例外分读和写
//查命名，接口，信号生成逻辑
//考虑加入itlb，dtlb
module CP0_Reg 
(
    input clk,
    input reset,
    input [ 4:0] ws_mfc0_rd,
    input [2:0] ws_sel,
    input ws_valid,
    input ws_inst_mtc0,
    input ws_inst_eret,
    input [31:0] ws_result,
    input ws_bd,
    input ws_ex, //ws阶段 若报出例外,置为1,否则为0
    input  [31:0] ws_data_sram_addr, //若有地址错例外,则需要用BadVAddr寄存器记录错误的虚地址
    input  [5:0] ext_int, //6个外部硬件中断输入
    input  [4:0] ExcCode, //Cause寄存器中 例外的5位编码
    input  [31:0] ws_pc, //WB阶段的PC值
    output [31:0] CP0_data, //mfc0从CP0中读出的数据
    output eret_flush, //ERET指令修改EXL域的使能信号
    input inst_tlbr,
    input inst_tlbwi,//判断是否为tlbwi指令
    input inst_tlbp,//判断是否为tlbp指令
    input           tlb_to_cp0_found,//tlb查找是否成功
    input  [18:0]   tlb_to_cp0_vpn2, //以下为tlb写入的数据
    input  [7:0]    tlb_to_cp0_asid ,
    input  [3:0]    tlb_to_cp0_index, 
    input           tlb_to_cp0_p, //TODO:没用到?
    input  [19:0]   tlb_to_cp0_pfn0 ,//以下为entrylo0寄存器写入tlb的数据
    input  [2:0]    tlb_to_cp0_c0 ,
    input           tlb_to_cp0_d0 ,
    input           tlb_to_cp0_v0 ,
    input           tlb_to_cp0_g0 ,
    input  [19:0]   tlb_to_cp0_pfn1 ,//以下为entrylo1寄存器写入tlb的数据
    input  [2:0]    tlb_to_cp0_c1 ,
    input           tlb_to_cp0_d1 ,
    input           tlb_to_cp0_v1 ,
    input           tlb_to_cp0_g1 ,
    input  [18:0]   virtual_vpn2,
    output [18:0]   cp0_to_tlb_vpn2, //以下为tlb读出的数据
    output [7:0]    cp0_to_tlb_asid ,
    output [19:0]   cp0_to_tlb_pfn0 ,//以下为entrylo0寄存器读出的tlb的数据
    output [2:0]    cp0_to_tlb_c0 ,
    output          cp0_to_tlb_d0 ,
    output          cp0_to_tlb_v0 ,
    output          cp0_to_tlb_g0 ,
    output   [19:0] cp0_to_tlb_pfn1,//以下为entrylo1寄存器读出的tlb的数据
    output   [2:0]  cp0_to_tlb_c1,
    output          cp0_to_tlb_d1 ,
    output          cp0_to_tlb_v1 ,
    output          cp0_to_tlb_g1 ,
    output   [3:0]  cp0_to_tlb_index,//tlbwr指令的索引值
    output  reg [31:0] CP0_EPC,
    output  reg CP0_Status_IE,
    output  reg CP0_Status_EXL,
    output  reg [7:0] CP0_Status_IM,
    output  reg [7:0] CP0_Cause_IP,
    output  reg CP0_Cause_TI //TI为1,触发定时中断;我们将该中断标记在ID阶段
);
reg [19:0] entrylo0_pfn;//entrylo0寄存器的值
reg [2:0] entrylo0_c;
reg entrylo0_d;
reg entrylo0_v;
reg entrylo0_g;
reg [19:0] entrylo1_pfn;//entrylo1寄存器的值
reg [2:0] entrylo1_c;
reg entrylo1_d;
reg entrylo1_v;
reg entrylo1_g;
reg [18:0] entryhi_vpn2; //EntryHi寄存器中的VPN2
reg [7:0]  entryhi_asid; //EntryHi寄存器中的ASID




wire [7:0] CP0_Addr; //写CP0寄存器组的地址
wire mtc0_we; //写CP0寄存器的写使能信号
//1.Status寄存器:分为Bev域,IM7-IM0,EXL域,IE域 其中IM,EXL,IE在端口中定义了
wire CP0_Status_Bev; 

assign CP0_Addr={ws_mfc0_rd,ws_sel}; //按照指令要求,CP0的8位读写地址由rd段(这里就是ws_mfc0_rd)和sel段拼起来
assign mtc0_we=ws_valid&&ws_inst_mtc0&&!ws_ex; //指令为mtc0,且WB阶段没有报出例外,则写使能生效

assign eret_flush=ws_valid&&ws_inst_eret&&!ws_ex; //指令为eret,且WB阶段没有报出例外,则清空流水线使能有效

assign CP0_Status_Bev=1'b1; //Bev域恒为1,只读

always @(posedge clk) begin //IM7-IM0可读可写 截取数据的[15:8]段
    if(mtc0_we&&CP0_Addr==`Status_RegAddr) 
        CP0_Status_IM<=ws_result[15:8];
end

always @(posedge clk) begin //EXL域可读可写
    if(reset) 
        CP0_Status_EXL<=1'b0;
    else if(ws_ex) //出现例外,则EXL被置为1
        CP0_Status_EXL<=1'b1;
    else if(eret_flush)
        CP0_Status_EXL<=1'b0;
    else if(mtc0_we&&CP0_Addr==`Status_RegAddr)
        CP0_Status_EXL<=ws_result[1];
end

always @(posedge clk) begin //IE域可读可写
    if(reset)
        CP0_Status_IE<=1'b0;
    else if(mtc0_we&&CP0_Addr==`Status_RegAddr)
        CP0_Status_IE<=ws_result[0];
end

//2.Cause寄存器:分为BD域,TI域,IP7-IP2域,IP1-IP0域,ExcCode域
//3.Count寄存器与Compare寄存器
reg CP0_Cause_BD;
// reg CP0_Cause_TI; //该信号已在端口定义
// reg [7:0] CP0_Cause_IP; //该信号已在端口定义
reg [4:0] CP0_Cause_ExcCode;
reg [31:0] CP0_Count;
reg [31:0] CP0_Compare;
wire Count_eq_Compare; //Count寄存器与Compare寄存器相等时置为1

assign Count_eq_Compare = (CP0_Count==CP0_Compare);
always @(posedge clk) begin //BD域只读
    if(reset)
        CP0_Cause_BD<=1'b0;
    else if(ws_ex&&!CP0_Status_EXL) //只有在EXL域为0的之后,才更新BD
        CP0_Cause_BD<=ws_bd;
end

always @(posedge clk) begin //TI域只读 TODO:Count_eq_Compare时TI域置为1
    if(reset)
        CP0_Cause_TI<=1'b0;
    else if(mtc0_we&&CP0_Addr==`Compare_RegAddr) 
        CP0_Cause_TI<=1'b0; //本身不能直接由mtc0指令来写,但是用mtc0写Compare寄存器的时候,TI域清零
    else if(Count_eq_Compare)
        CP0_Cause_TI<=1'b1;
end

always @(posedge clk) begin //IP7-IP2只读 TODO: ext_int处理
    if(reset)
        CP0_Cause_IP[7:2]<=6'b0;
    else begin
        CP0_Cause_IP[7]<=CP0_Cause_TI;
        // CP0_Cause_IP[7]<=ext_int[5]|CP0_Cause_TI;
        // CP0_Cause_IP[6:2]<=ext_int[4:0];
    end
end

always @(posedge clk) begin //IP1-IP0读写
    if(reset)
        CP0_Cause_IP[1:0]<=2'b0;
    else if(mtc0_we&&CP0_Addr==`Cause_RegAddr)
        CP0_Cause_IP[1:0]<=ws_result[9:8];
end

always @(posedge clk) begin //ExeCode域只读
    if(reset)
        CP0_Cause_ExcCode<=5'b0;
    else if(ws_ex)
        CP0_Cause_ExcCode<=ExcCode;
end

reg tick; //Count寄存器每两个周期加一,tick通过自身翻转计数实现该功能
always @(posedge clk) begin 
    if(reset) 
        tick<=1'b0;
    else 
        tick<=~tick;

    if(reset) CP0_Count<=32'b0;
    else if(mtc0_we&&CP0_Addr==`Count_RegAddr)
        CP0_Count<=ws_result;
    else if(tick)
        CP0_Count<=CP0_Count+1'b1;
end

always @(posedge clk) begin //Compare
    if(reset) 
        CP0_Compare<=32'h000155cc; //TODO:目前是凑出来的,之后要根据时间间隔和主频来计算
    else if(mtc0_we&&CP0_Addr==`Compare_RegAddr)
        CP0_Compare<=ws_result;
end

//4.EPC寄存器
always @(posedge clk) begin
    if(ws_ex&&!CP0_Status_EXL) begin //EXL为0的时候才能写EPC
        CP0_EPC<=ws_bd ? ws_pc-3'h4 : ws_pc; //指令在延迟槽,EPC指向延迟槽对应的分支跳转指令;否则指向指令本身
    end
    else if(mtc0_we&&CP0_Addr==`EPC_RegAddr)
        CP0_EPC<=ws_result;
end

//5.BadVAddr寄存器
reg [31:0] CP0_BadVAddr;
always @(posedge clk) begin //BadVAddr寄存器只读 只要有地址错(读写sram或者读inst_ram)就记录
    if(ws_ex) begin
        if(ExcCode==`AdES)
            CP0_BadVAddr<=ws_data_sram_addr;
        else if(ExcCode==`AdEL)
            CP0_BadVAddr<=ws_pc[1:0]?ws_pc:ws_data_sram_addr;
        else if(ExcCode==`TLBL||ExcCode==`TLBS ||ExcCode==`Mod)
            CP0_BadVAddr <= ws_data_sram_addr;
    end
end
//6.EntryHi寄存器
reg [31:0] CP0_EntryHi;
always @(posedge clk) begin
    if(reset) begin
        CP0_EntryHi <= 32'h0 ;
    end
    else if(inst_tlbr) begin
        entryhi_vpn2 <= tlb_to_cp0_vpn2 ;
        entryhi_asid <= tlb_to_cp0_asid ;
    end

    else if(ExcCode==`TLBL||ExcCode==`TLBS ||ExcCode==`Mod) begin
        entryhi_vpn2<=virtual_vpn2;
    end
end

assign  cp0_to_tlb_vpn2 = inst_tlbwi ? entryhi_vpn2 : 19'b0 ;
assign  cp0_to_tlb_asid = inst_tlbwi ? entryhi_asid : 8'b0 ;

//7.EntryLo0寄存器
reg [31:0] CP0_EntryLo0;
always @(posedge clk) begin
    if(reset) begin
        CP0_EntryLo0<=32'h0;
    end
    else if (inst_tlbr) begin
        entrylo0_pfn  <= tlb_to_cp0_pfn0;
        entrylo0_c    <= tlb_to_cp0_c0  ;
        entrylo0_d    <= tlb_to_cp0_d0  ;
        entrylo0_v    <= tlb_to_cp0_v0  ;
        entrylo0_g    <= tlb_to_cp0_g0  ;
    end
end
assign cp0_to_tlb_pfn0 = inst_tlbwi ? entrylo0_pfn  : 20'b0 ;
assign cp0_to_tlb_c0   = inst_tlbwi ? entrylo0_c    : 3'b0  ;
assign cp0_to_tlb_d0   = inst_tlbwi ? entrylo0_d    : 1'b0  ;
assign cp0_to_tlb_v0   = inst_tlbwi ? entrylo0_v    : 1'b0  ;
assign cp0_to_tlb_g0   = inst_tlbwi ? entrylo0_g    : 1'b0  ;
//8.EntryLo1寄存器，只实现了描述中的功能
reg [31:0] CP0_EntryLo1;
always @(posedge clk) begin
    if(reset) begin
        CP0_EntryLo1<=32'h0;
    end
    else if (inst_tlbr) begin
        entrylo1_pfn <= tlb_to_cp0_pfn1 ;
        entrylo1_c   <= tlb_to_cp0_c1   ;
        entrylo1_d   <= tlb_to_cp0_d1   ;
        entrylo1_v   <= tlb_to_cp0_v1   ;
        entrylo1_g   <= tlb_to_cp0_g1   ;
    end
end
assign cp0_to_tlb_pfn1 = inst_tlbwi ? entrylo1_pfn  : 20'b0 ;
assign cp0_to_tlb_c1   = inst_tlbwi ? entrylo1_c    : 3'b0  ;
assign cp0_to_tlb_d1   = inst_tlbwi ? entrylo1_d    : 1'b0  ;
assign cp0_to_tlb_v1   = inst_tlbwi ? entrylo1_v    : 1'b0  ;
assign cp0_to_tlb_g1   = inst_tlbwi ? entrylo1_g    : 1'b0  ;
//9.index寄存器
reg CP0_Index_P;
reg [3:0] CP0_Index_Index;

always @(posedge clk) begin
    if(reset) 
        CP0_Index_P <= 1'b0;
    else if(inst_tlbp) begin
        if(tlb_to_cp0_found) begin
            CP0_Index_P <= 1'b1;
        end 
        else if(!tlb_to_cp0_found) begin
            CP0_Index_P <= 1'b0;
        end
    end
end

always @(posedge clk) begin
    if(reset) begin
        CP0_Index_Index <= 4'b0;
    end
    else if(inst_tlbp&&tlb_to_cp0_found) begin
        CP0_Index_Index <= tlb_to_cp0_index;
    end
    else if(inst_tlbp&&!tlb_to_cp0_found) begin
        CP0_Index_Index <= 4'b0;
    end
    else if(inst_tlbwi) begin
        CP0_Index_Index <= tlb_to_cp0_index;
    end
end

assign cp0_to_tlb_index = (inst_tlbr||inst_tlbwi) ? CP0_Index_Index : 4'b0 ;

//mfc0指令实现:
assign CP0_data = 
                  CP0_Addr == `BadVAddr_RegAddr? CP0_BadVAddr:
                  CP0_Addr == `Count_RegAddr   ? CP0_Count:
                  CP0_Addr == `Compare_RegAddr ? CP0_Compare:
                  CP0_Addr == `Status_RegAddr  ? {9'b0,CP0_Status_Bev,6'b0,CP0_Status_IM,6'b0,
                                                  CP0_Status_EXL,CP0_Status_IE}:
                  CP0_Addr == `Cause_RegAddr   ? {CP0_Cause_BD,CP0_Cause_TI,14'b0,CP0_Cause_IP,
                                                  1'b0,CP0_Cause_ExcCode,2'b0}:
                  CP0_Addr == `EPC_RegAddr     ? CP0_EPC:
                  CP0_Addr == `Entryhi_RegAddr ? {entryhi_vpn2,5'b0,entryhi_asid}:
                  CP0_Addr == `Entrylo0_RegAddr? {6'b0,entrylo0_pfn,entrylo0_c,entrylo0_d,entrylo0_v,entrylo0_g}:
                  CP0_Addr == `Entrylo1_RegAddr? {6'b0,entrylo1_pfn,entrylo1_c,entrylo1_d,entrylo1_v,entrylo1_g}:
                  CP0_Addr == `Index_RegAddr   ? {CP0_Index_P,27'b0,CP0_Index_Index}:
                                                 32'b0; //TODO:目前CP0_data默认32'b0

endmodule //CP0_Reg