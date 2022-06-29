`include "global_defines.vh"

module CP0_Reg 
(
    input             clk,
    input             reset,
    input [ 4:0]      ms_mfc0_rd,
    input [ 2:0]      ms_sel,
    input             ms_valid,
    input             ms_inst_mtc0,
    input             ms_inst_eret,
    input [31:0]      ms_result,
    input             ms_bd,
    input             ms_ex, //ws阶段 若报出例外,置为1,否则为0
    input  [31:0]     ms_alu_result, //若有地址错例外,则需要用BadVAddr寄存器记录错误的虚地址
    input  [ 5:0]     ext_int, //6个外部硬件中断输入
    input  [ 4:0]     ExcCode, //Cause寄存器中 例外的5位编码
    input  [31:0]     ms_pc, //WB阶段的PC值
    output [31:0]     CP0_data, //mfc0从CP0中读出的数据
    output            eret_flush, //ERET指令修改EXL域的使能信号
    input             inst_tlbr,
    input             inst_tlbp,//判断是否为tlbp指令
    input             tlb_to_cp0_found,//tlb查找是否成功
    input  [18:0]     tlb_to_cp0_vpn2, //以下为tlb写入的数据
    input  [ 7:0]     tlb_to_cp0_asid ,
    input  [ 3:0]     tlb_to_cp0_index, 
    input  [19:0]     tlb_to_cp0_pfn0 ,//以下为entrylo0寄存器写入tlb的数据
    input  [ 2:0]     tlb_to_cp0_c0 ,
    input             tlb_to_cp0_d0 ,
    input             tlb_to_cp0_v0 ,
    input             tlb_to_cp0_g0 ,
    input  [19:0]     tlb_to_cp0_pfn1 ,//以下为entrylo1寄存器写入tlb的数据
    input  [ 2:0]     tlb_to_cp0_c1 ,
    input             tlb_to_cp0_d1 ,
    input             tlb_to_cp0_v1 ,
    input             tlb_to_cp0_g1 ,
    output [18:0]     cp0_to_tlb_vpn2, //以下为tlb读出的数据
    output [ 7:0]     cp0_to_tlb_asid ,
    output [19:0]     cp0_to_tlb_pfn0 ,//以下为entrylo0寄存器读出的tlb的数据
    output [ 2:0]     cp0_to_tlb_c0 ,
    output            cp0_to_tlb_d0 ,
    output            cp0_to_tlb_v0 ,
    output            cp0_to_tlb_g0 ,
    output [19:0]     cp0_to_tlb_pfn1,//以下为entrylo1寄存器读出的tlb的数据
    output [ 2:0]     cp0_to_tlb_c1,
    output            cp0_to_tlb_d1 ,
    output            cp0_to_tlb_v1 ,
    output            cp0_to_tlb_g1 ,
    output [03:0]     cp0_to_tlb_index,//tlbwr指令的索引值
    output reg [31:0] CP0_EPC,
    output reg        CP0_Status_IE,
    output reg        CP0_Status_EXL,
    output reg [ 7:0] CP0_Status_IM,
    output reg [ 7:0] CP0_Cause_IP,
    output reg CP0_Cause_TI //TI为1,触发定时中断;我们将该中断标记在ID阶段
);

reg [19:0]  CP0_Entrylo0_PFN0;//entrylo0寄存器的值
reg [ 2:0]  CP0_Entrylo0_C0;
reg         CP0_Entrylo0_D0;
reg         CP0_Entrylo0_V0;
reg         CP0_Entrylo0_G0;
reg [19:0]  CP0_Entrylo1_PFN1;//entrylo1寄存器的值
reg [ 2:0]  CP0_Entrylo1_C1;
reg         CP0_Entrylo1_D1;
reg         CP0_Entrylo1_V1;
reg         CP0_Entrylo1_G1;
reg [18:0]  CP0_Entryhi_VPN2; //EntryHi寄存器中的VPN2
reg [ 7:0]  CP0_Entryhi_ASID; //EntryHi寄存器中的ASID

wire [ 7:0] CP0_Addr; //写CP0寄存器组的地址
wire        mtc0_we; //写CP0寄存器的写使能信号
//1.Status寄存器:分为Bev域,IM7-IM0,EXL域,IE域 其中IM,EXL,IE在端口中定义了
wire        CP0_Status_Bev; 

assign CP0_Addr={ms_mfc0_rd,ms_sel}; //按照指令要求,CP0的8位读写地址由rd段(这里就是ms_mfc0_rd)和sel段拼起来
assign mtc0_we=ms_valid&&ms_inst_mtc0&&!ms_ex; //指令为mtc0,且WB阶段没有报出例外,则写使能生效

assign eret_flush=ms_valid&&ms_inst_eret&&!ms_ex; //指令为eret,且WB阶段没有报出例外,则清空流水线使能有效

assign CP0_Status_Bev=1'b1; //Bev域恒为1,只读

always @(posedge clk) begin //IM7-IM0可读可写 截取数据的[15:8]段
    if(mtc0_we&&CP0_Addr==`Status_RegAddr) 
        CP0_Status_IM<=ms_result[15:8];
end

always @(posedge clk) begin //EXL域可读可写
    if(reset) 
        CP0_Status_EXL<=1'b0;
    else if(ms_ex) //出现例外,则EXL被置为1
        CP0_Status_EXL<=1'b1;
    else if(eret_flush)
        CP0_Status_EXL<=1'b0;
    else if(mtc0_we&&CP0_Addr==`Status_RegAddr)
        CP0_Status_EXL<=ms_result[1];
end

always @(posedge clk) begin //IE域可读可写
    if(reset)
        CP0_Status_IE<=1'b0;
    else if(mtc0_we&&CP0_Addr==`Status_RegAddr)
        CP0_Status_IE<=ms_result[0];
end

//2.Cause寄存器:分为BD域,TI域,IP7-IP2域,IP1-IP0域,ExcCode域
//3.Count寄存器与Compare寄存器
reg         CP0_Cause_BD;
// reg CP0_Cause_TI; //该信号已在端口定义
// reg [7:0] CP0_Cause_IP; //该信号已在端口定义
reg [ 4:0]  CP0_Cause_ExcCode;
reg [31:0]  CP0_Count;
reg [31:0]  CP0_Compare;
wire        Count_eq_Compare; //Count寄存器与Compare寄存器相等时置为1

assign Count_eq_Compare = (CP0_Count==CP0_Compare);
always @(posedge clk) begin //BD域只读
    if(reset)
        CP0_Cause_BD<=1'b0;
    else if(ms_ex&&!CP0_Status_EXL) //只有在EXL域为0的之后,才更新BD
        CP0_Cause_BD<=ms_bd;
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
        CP0_Cause_IP[1:0]<=ms_result[9:8];
end

always @(posedge clk) begin //ExeCode域只读
    if(reset)
        CP0_Cause_ExcCode<=5'b0;
    else if(ms_ex)
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
        CP0_Count<=ms_result;
    else if(tick)
        CP0_Count<=CP0_Count+1'b1;
end

always @(posedge clk) begin //Compare
    if(reset) 
        CP0_Compare<=32'h000155cc; //TODO:目前是凑出来的,之后要根据时间间隔和主频来计算
    else if(mtc0_we&&CP0_Addr==`Compare_RegAddr)
        CP0_Compare<=ms_result;
end

//4.EPC寄存器
always @(posedge clk) begin
    if(ms_ex&&!CP0_Status_EXL) begin //EXL为0的时候才能写EPC
        CP0_EPC<=ms_bd ? ms_pc-3'h4 : ms_pc; //指令在延迟槽,EPC指向延迟槽对应的分支跳转指令;否则指向指令本身
    end
    else if(mtc0_we&&CP0_Addr==`EPC_RegAddr)
        CP0_EPC<=ms_result;
end

//5.BadVAddr寄存器
reg [31:0]  CP0_BadVAddr;
always @(posedge clk) begin //BadVAddr寄存器只读 只要有地址错(读写sram或者读inst_ram)就记录
    if(ms_ex) begin
        if(ExcCode==`AdES)
            CP0_BadVAddr<=ms_alu_result;
        else if(ExcCode==`AdEL)
            CP0_BadVAddr<=ms_pc[1:0]?ms_pc:ms_alu_result;
       /* else if(ExcCode==`TLBL||ExcCode==`TLBS ||ExcCode==`Mod)
            CP0_BadVAddr <= ms_alu_result;*/
    end
end
//6.EntryHi寄存器
always @(posedge clk) begin
    if(reset) begin
        CP0_Entryhi_VPN2 <= 19'b0 ;
        CP0_Entryhi_ASID <= 8'b0 ;
    end
    else if(mtc0_we && CP0_Addr == `Entryhi_RegAddr) begin
        CP0_Entryhi_VPN2 <= ms_result[31:13];
        CP0_Entryhi_ASID <= ms_result[7:0];
    end
    else if(inst_tlbr) begin
        CP0_Entryhi_VPN2 <= tlb_to_cp0_vpn2 ;
        CP0_Entryhi_ASID <= tlb_to_cp0_asid ;
    end

    /*else if(ExcCode==`TLBL||ExcCode==`TLBS ||ExcCode==`Mod) begin
        CP0_Entryhi_VPN2<=virtual_vpn2;*/
end

assign cp0_to_tlb_vpn2 = CP0_Entryhi_VPN2;
assign cp0_to_tlb_asid = CP0_Entryhi_ASID;

//7.EntryLo0寄存器
always @(posedge clk) begin
    if(reset) begin
        CP0_Entrylo0_PFN0 <= 20'b0;
        CP0_Entrylo0_C0   <= 3'b0;
        CP0_Entrylo0_D0   <= 1'b0;
        CP0_Entrylo0_V0   <= 1'b0;
        CP0_Entrylo0_G0   <= 1'b0;
    end
    else if(mtc0_we && CP0_Addr == `Entrylo0_RegAddr) begin
        CP0_Entrylo0_PFN0 <= ms_result[25:6];
        CP0_Entrylo0_C0   <= ms_result[5:3];
        CP0_Entrylo0_D0   <= ms_result[2];
        CP0_Entrylo0_V0   <= ms_result[1];
        CP0_Entrylo0_G0   <= ms_result[0];
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

//8.EntryLo1寄存器，只实现了描述中的功能
always @(posedge clk) begin
    if(reset) begin
        CP0_Entrylo1_PFN1 <= 20'b0;
        CP0_Entrylo1_C1   <= 3'b0;
        CP0_Entrylo1_D1   <= 1'b0;
        CP0_Entrylo1_V1   <= 1'b0;
        CP0_Entrylo1_G1   <= 1'b0;
    end
    else if(mtc0_we && CP0_Addr == `Entrylo1_RegAddr) begin
        CP0_Entrylo1_PFN1 <= ms_result[25:6];
        CP0_Entrylo1_C1   <= ms_result[5:3];
        CP0_Entrylo1_D1   <= ms_result[2];
        CP0_Entrylo1_V1   <= ms_result[1];
        CP0_Entrylo1_G1   <= ms_result[0];
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
//9.index寄存器
reg CP0_Index_P;
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
        CP0_Index_Index <= ms_result[3:0];
    end
    else if(inst_tlbp && tlb_to_cp0_found) begin
        CP0_Index_Index <= tlb_to_cp0_index;
    end
end

// assign cp0_to_tlb_index = (inst_tlbr||inst_tlbwi) ? CP0_Index_Index : 4'b0 ;
assign cp0_to_tlb_index = CP0_Index_Index;

//mfc0指令实现:
assign CP0_data = (CP0_Addr == `BadVAddr_RegAddr)? CP0_BadVAddr:
                  (CP0_Addr == `Count_RegAddr   )? CP0_Count:
                  (CP0_Addr == `Compare_RegAddr )? CP0_Compare:
                  (CP0_Addr == `Status_RegAddr  )? {9'b0,CP0_Status_Bev,6'b0,CP0_Status_IM,6'b0,
                                                    CP0_Status_EXL,CP0_Status_IE}:
                  (CP0_Addr == `Cause_RegAddr   )? {CP0_Cause_BD,CP0_Cause_TI,14'b0,CP0_Cause_IP,
                                                    1'b0,CP0_Cause_ExcCode,2'b0}:
                  (CP0_Addr == `EPC_RegAddr     )? CP0_EPC:
                  (CP0_Addr == `Entryhi_RegAddr )? {CP0_Entryhi_VPN2,5'b0,CP0_Entryhi_ASID}:
                  (CP0_Addr == `Entrylo0_RegAddr)? {5'b0,CP0_Entrylo0_PFN0,CP0_Entrylo0_C0,CP0_Entrylo0_D0,CP0_Entrylo0_V0,CP0_Entrylo0_G0}:
                  (CP0_Addr == `Entrylo1_RegAddr)? {5'b0,CP0_Entrylo1_PFN1,CP0_Entrylo1_C1,CP0_Entrylo1_D1,CP0_Entrylo1_V1,CP0_Entrylo1_G1}:
                  (CP0_Addr == `Index_RegAddr   )? {CP0_Index_P,27'b0,CP0_Index_Index}:
                                                    32'b0; //TODO:目前CP0_data默认32'b0

endmodule //CP0_Reg