`include "global_defines.vh"
module CP0_Reg (
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
    input [31:0] ws_data_sram_addr, //若有地址错例外,则需要用BadVAddr寄存器记录错误的虚地址
    input [5:0] ext_int, //6个外部硬件中断输入
    input [4:0] ExcCode, //Cause寄存器中 例外的5位编码
    input [31:0] ws_pc, //WB阶段的PC值
    output [31:0] CP0_data, //mfc0从CP0中读出的数据
    output eret_flush, //ERET指令修改EXL域的使能信号
    output reg [31:0] CP0_EPC,
    output reg CP0_Status_IE,
    output reg CP0_Status_EXL,
    output reg [7:0] CP0_Status_IM,
    output reg [7:0] CP0_Cause_IP,
    output reg CP0_Cause_TI //TI为1,触发定时中断;我们将该中断标记在ID阶段
);


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
    end
end

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
                                                 32'b0; //TODO:目前CP0_data默认32'b0

endmodule //CP0_Reg