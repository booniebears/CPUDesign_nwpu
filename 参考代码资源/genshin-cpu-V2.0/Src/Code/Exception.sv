 /*
 * @Author: Johnson Yang
 * @Date: 2021-03-31 15:22:23
 * @LastEditTime: 2021-04-28 19:28:39
 * @LastEditors: Johnson Yang
 * @Copyright 2021 GenshinCPU
 * @Version:1.0
 * @IO PORT:
 * @Description: 
 */

`include "CommonDefines.svh"  
`include "CPU_Defines.svh"

 module Exception(
    input                   clk,
    input                   rst,
    input  RegsWrType       MEM_RegsWrType_i,  //
    output RegsWrType       MEM_RegsWrType_o,  //要向下一级传递的WrTypes信号
    output logic            IFID_Flush,        //Flush信号
    output logic            IDEXE_Flush,
    output logic            EXEMEM_Flush,
    output logic   [1:0]    IsExceptionorEret,//用于生成NPC

//异常处理相关接口
    //来自执行阶段
    input ExceptinPipeType   ExceptType_i,     //译码执行阶段收集到的异常信息
    input logic              IsDelaySlot_i,    //访存阶段指令是否是延迟槽指令
    // input logic[31:0]       CurrentInstr_i,   //访存阶段指令
    input logic [31:0]       CurrentPC_i,
    //来自CP0模块
    input logic [31:0]       CP0Status_i,      //CP0 status寄存器当前信号
    input logic [31:0]       CP0Cause_i,       //CP0 cause寄存器当前信号
    input logic [31:0]       CP0Epc_i,         //CP0 Epc寄存器当前信号
    //来自回写阶段的前推信息
    input logic              WB_CP0RegWr_i,    //WB级对应的CP0写使能
    input logic [4:0]        WB_CP0RegWrAddr_i,//WB级对应的CP0写地址 
    input logic [31:0]       WB_CP0RegWrData_i,//WB级对应的CP0写数据 
//向回写阶段输出
    output ExceptinPipeType  ExceptType_o,      //最终的异常类型
    output logic             IsDelaySlot_o,     //访存阶段指令是否是延迟槽指令
    output logic [31:0]      CP0Epc_o           //CP0中EPC寄存器的最新值
 );
 
    logic                   CP0RegWr;
    logic                   RFRegWr;
    logic                   HILORegWr;

    logic[31:0]             CP0Status;         //用来保存CP0中Status寄存器的最新值
    logic[31:0]             CP0Cause;          //用来保存CP0中Cause寄存器的最新值
    logic[31:0]             CP0Epc;            //用来保存CP0中EPC寄存器的最新值

    assign IsDelaySlot_o  = IsDelaySlot_i;



//******************************************************************************
//  得到CP0中寄存器的最新值
//******************************************************************************
    //得到CP0中Status寄存器的最新值，步骤如下：
    //判断当前处于回写阶段的指令是否要写CP0中Status寄存器，如果要写，那么要写入的值就是
    //Status寄存器的最新值，反之，从CP0模块通过CP0Status_i接口传入的数据就是Status
    //寄存器的最新值
    always_comb  begin
        if(rst == `RstEnable) begin
            CP0Status   =  `ZeroWord;
        end
         else if((WB_CP0RegWr_i == `WriteEnable) && (WB_CP0RegWrAddr_i == `CP0_REG_STATUS)) begin
            CP0Status   =  WB_CP0RegWrData_i;
        end 
        else begin
            CP0Status   =  CP0Status_i;
        end
    end

    //得到CP0中EPC寄存器的最新值，原理同Status寄存器
    always_comb begin
        if(rst == `RstEnable) begin
            CP0Epc       =  `ZeroWord;
        end else if((WB_CP0RegWr_i == `WriteEnable) && (WB_CP0RegWrAddr_i == `CP0_REG_EPC)) begin
            CP0Epc       =  WB_CP0RegWrData_i;
        end else begin
            CP0Epc       =  CP0Epc_i;
        end
    end

    //将EPC寄存器的最新值通过接口CP0Epc_o输出
    assign CP0Epc_o = CP0Epc;

    //得到CP0中Cause寄存器的最新值，原理同Status寄存器
    //要注意的是：Cause寄存器只有几个字段是可写的
    always_comb begin
        if(rst == `RstEnable) begin
            CP0Cause = `ZeroWord;
        end else if((WB_CP0RegWr_i == `WriteEnable) &&
                    (WB_CP0RegWrAddr_i == `CP0_REG_CAUSE)) begin
            CP0Cause[9:8] = WB_CP0RegWrData_i[9:8];          //IP[1:0]字段
            CP0Cause[22]  = WB_CP0RegWrData_i[22];           //WP字段
            CP0Cause[23]  = WB_CP0RegWrData_i[23];           //IV字段
        end else begin
            CP0Cause      = CP0Cause_i;
        end
    end


// //******************************************************************************
// //  给出最终的异常类型
// //******************************************************************************
//     always_comb begin
//         if(rst == `RstEnable) begin
//             ExceptType_o  <= '`ExceptionTypeZero;  // 寄存器信号全部清空
//         end else begin
//             ExceptType_o  <= '`ExceptionTypeZero;
//             //当前处于访存阶段的指令的地址为0，表示处理器处于复位状态，或者刚刚发生异常，
//             //正在清除流水线(flush为1)，或者流水线处于暂停状态，在这三种情况下都不处理
//             //异常
//             if(CurrentInstr_i != `ZeroWord) begin
//                 //status[15:8]是否屏蔽相应中断，0表示屏蔽；cause[15:8]中断挂起字段；
//                 //status[1]EXL字段，表示是否处于异常级；status[0]中断使能
//                 if(((CP0Cause[15:8] & CP0Status[15:8]) != 8'h00) &&
//                     (CP0Status[1] == 1'b0) && (CP0Status[0] == 1'b1)) begin
//                     ExceptType_o.Interrupt              = 1'b1;      //interrupt
//                 end 
//                 else if(CurrentPC_i[1:0] != 2'b0) begin
//                     ExceptType_o.WrongAddressinIF       = 1'b1;      //取指地址错例外
//                 end
//                 else if(ExceptType_i.ReservedInstruction == 1'b1) begin
//                     ExceptType_o.ReservedInstruction    = 1'b1;      //保留指令例外
//                 end 
//                 else if(ExceptType_i.Syscall  == 1'b1) begin
//                     ExceptType_o.Syscall                =1'b1;       //系统调用例外
//                 end
//                 else if(ExceptType_i.Break  == 1'b1) begin
//                     ExceptType_o.Break                  =1'b1;       //break
//                 end 
//                 else if(ExceptType_i.Overflow  == 1'b1) begin
//                     ExceptType_o.Overflow               =1'b1;       //整形溢出例外
//                 end 
//                 else if(ExceptType_i.WrWrongAddressinMEM  == 1'b1) begin
//                     ExceptType_o.WrWrongAddressinMEM    =1'b1;       //数据访问写地址错
//                 end 
//                 else if(ExceptType_i.RdWrongAddressinMEM  == 1'b1) begin
//                     ExceptType_o.RdWrongAddressinMEM    =1'b1;       //数据访问读地址错
//                 end 
//                 else if(ExceptType_i.Eret  == 1'b1) begin
//                     ExceptType_o.Eret                   =1'b1;       //数据访问读地址错
//               end
//            end
always_comb begin
    if (ExceptType_o != `ExceptionTypeZero)begin
        MEM_RegsWrType_o = `RegsWrTypeDisable;              // 发生异常，关闭当前信号的写回寄存器使能信号
        IFID_Flush       = `FlushEnable;
        IDEXE_Flush      = `FlushEnable;
        EXEMEM_Flush     = `FlushEnable;
        if (ExceptType_i.Eret == 1'b1) begin
            IsExceptionorEret  = `IsEret;
        end
        else begin
            IsExceptionorEret  = `IsException;
        end
    end 
    else begin
            IsExceptionorEret= `IsNone;
            IFID_Flush       = `FlushDisable;
            IDEXE_Flush      = `FlushDisable;
            EXEMEM_Flush     = `FlushDisable;
            MEM_RegsWrType_o = MEM_RegsWrType_i;                 // 没有异常，继续传递使能信号
    end
        
    
end

assign ExceptType_o.Interrupt = (((CP0Cause[15:8] & CP0Status[15:8]) != 8'b0) && (CP0Status[1] == 1'b0) && (CP0Status[0] == 1'b1)) ?1'b1:1'b0;
assign ExceptType_o.WrongAddressinIF    = (CurrentPC_i[1:0] != 2'b00 )?1'b1:1'b0;
assign ExceptType_o.ReservedInstruction = ExceptType_i.ReservedInstruction;
assign ExceptType_o.Syscall             = ExceptType_i.Syscall;
assign ExceptType_o.Break               = ExceptType_i.Break;
assign ExceptType_o.Eret                = ExceptType_i.Eret;
assign ExceptType_o.WrWrongAddressinMEM = ExceptType_i.WrWrongAddressinMEM;
assign ExceptType_o.RdWrongAddressinMEM = ExceptType_i.RdWrongAddressinMEM;
assign ExceptType_o.Overflow            = ExceptType_i.Overflow;

endmodule

