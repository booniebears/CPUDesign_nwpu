/*
 * @Author: Johnson Yang
 * @Date: 2021-03-27 17:12:06
 * @LastEditTime: 2021-04-30 14:39:06
 * @LastEditors: npuwth
 * @Copyright 2021 GenshinCPU
 * @Version:1.0
 * @IO PORT:
 * @Description: 协处理器CP0（实现了CP0中的 BadVAddr、Count、Compare、Status、Cause、EPC6个寄存器的部分功能）
 * 
 */
 

`include "CommonDefines.svh"
`include "CPU_Defines.svh"

module cp0_reg(
    input logic rst,
    input logic clk,

    // 写CP0数据相关接口
    input logic             CP0Wr_i,          //CP0写使能
    input logic  [4:0]      CP0WrAddr_i,      //写入的CP0寄存器的地址
    input logic  [31:0]     CP0WrDataOut_i,   //要写入CP0中寄存器的数据

    // 读CP0数据相关接口
    input logic  [4:0]      CP0RdAddr_i,      //要读取的CP0寄存器的地址
    output logic [31:0]     CP0RdDataOut_o,   //读出的CP0某个寄存器的值
    
    // 异常相关输入接口
    input ExceptinPipeType  ExceptType_i,     //最终的异常类型
    input AsynExceptType    Interrupt_i,      //6个外部硬件中断输入
    input logic  [31:0]     PCAdd1_i,         //发生异常的指令地址+1
    input logic             IsDelaySlot_i,    //发生异常的指令是否是延迟槽指令
    input logic  [31:0]     VirtualAddr_i,    //就是lw sw等算出来的ALU结果

    // 输出
    output logic   [31:0]   CP0BadVAddr_o,    //8号寄存器  BadVAddr寄存器的值:最新地址相关例外的出错地址
    output logic   [31:0]   CP0Count_o,       //9号寄存器  Count寄存器的值
    output logic   [31:0]   CP0Compare_o,     //11号寄存器 Compare寄存器的值
    output logic   [31:0]   CP0Status_o,      //12号寄存器 Status寄存器的值
    output logic   [31:0]   CP0Cause_o,       //13号寄存器 Cause寄存器的值
    output logic   [31:0]   CP0EPC_o,         //14号寄存器 EPC寄存器的值

    output logic CP0TimerInterrupt_o          //是否有定时中断发生
    );
    logic           [5:0]   Hardwareint_i;
    logic           [31:0]  CurrentInstAddr;
    reg                     TimCount2;

assign CurrentInstAddr = PCAdd1_i-4;
assign Hardwareint_i = 
        {
        Interrupt_i.HardwareInterrupt1,
        Interrupt_i.HardwareInterrupt2,
        Interrupt_i.HardwareInterrupt3,
        Interrupt_i.HardwareInterrupt4,
        Interrupt_i.HardwareInterrupt5,
        (Interrupt_i.HardwareInterrupt6|CP0TimerInterrupt_o)
        };
//******************************************************************************
//                     对CP0中寄存器的初始化复位
//******************************************************************************
    always_ff @ ( posedge clk or negedge rst) begin
        if(rst == `RstEnable) begin
        //BadVaddr寄存器的初始值
            CP0BadVAddr_o       <= `ZeroWord;
        //Count寄存器的初始值
            CP0Count_o          <= `ZeroWord;
        //Compare寄存器的初始值
            CP0Compare_o        <= `ZeroWord;
        //Status寄存器的初始值：其中CU字段为0001，表示协处理器CP0存在
            CP0Status_o         <= 32'b0000_0000_0100_0000_0000_0000_0000_0000;
        //Cause寄存器的初始值
            CP0Cause_o          <= `ZeroWord;
        //EPC寄存器的初始值
            CP0EPC_o            <= `ZeroWord;
        //取消时钟中断
            CP0TimerInterrupt_o <= `InterruptNotAssert;
        //计数器初始化
            TimCount2           <= 1'b0;
        end 
        else begin
            CP0Cause_o[15:10]               <= Hardwareint_i;    //Cause寄存器的10-15位保存6个外部中断状态（1代表有中断需要处理）
            
            if (CP0Wr_i == `WriteEnable && CP0WrAddr_i == `CP0_REG_COUNT ) begin 
                CP0Count_o                  <= CP0WrDataOut_i;   //将输入数据写入到Count寄存器中
                TimCount2                   <= 1'b0;
            end else begin
                TimCount2                   <= TimCount2  + 1;
            end
            if (TimCount2 == 1'd1)begin
               CP0Count_o                   <= CP0Count_o + 1;   //Count寄存器的值在每个时钟周期加1
            end 
            // 当Compare寄存器不为0，且Count寄存器的值等于Compare寄存器的值时，
            // 将输出信号CP0TimerInterrupt_o置为1，表示时钟中断发生
            if(CP0Compare_o != `ZeroWord && CP0Count_o == CP0Compare_o && (CP0Wr_i != `WriteEnable || CP0WrAddr_i != `CP0_REG_COMPARE)) begin
                CP0TimerInterrupt_o         <= `InterruptAssert;  // 发生中断
                CP0Cause_o[30]              <= 1'b1;  // 中断标记位置1
            end
//******************************************************************************
//                     对CP0中寄存器的写操作：时序逻辑
//  PRId、Config不可以写，Cause寄存器只有其中的IP[1:0]、IV、WP三个字段可写
//******************************************************************************
            if(CP0Wr_i == `WriteEnable) begin
                unique case(CP0WrAddr_i)
                    `CP0_REG_COMPARE:begin     //写Compare寄存器
                        CP0Compare_o        <= CP0WrDataOut_i;
                        CP0TimerInterrupt_o <= `InterruptNotAssert;  //取消时钟中断的声明
                    end
                    `CP0_REG_STATUS:begin      //写Status寄存器
                        CP0Status_o  [15:8 ]<= CP0WrDataOut_i[15:8];
                        CP0Status_o  [1]    <= CP0WrDataOut_i[1];
                        CP0Status_o  [0]    <= CP0WrDataOut_i[0];
                    end
                    `CP0_REG_EPC:begin         //写EPC寄存器
                        CP0EPC_o            <= CP0WrDataOut_i;
                    end
                    `CP0_REG_CAUSE:begin       //写Cause寄存器
                        CP0Cause_o[9:8]     <= CP0WrDataOut_i[9:8];  //Cause寄存器只有IP[1:0]字段是可写的
                    end
                endcase
            end
            // `ifdef DEBUG
            //     $monitor("CP0:BadVAddr=%8X,Count=%8X,Compare=%8X,Status=%8X,Cause=%8X,EPC=%8X",
            //     CP0BadVAddr_o,
            //     CP0Count_o,
            //     CP0Compare_o,
            //     CP0Status_o,
            //     CP0Cause_o,
            //     CP0EPC_o);
            // `endif
//******************************************************************************
//                               CP0异常处理
//******************************************************************************            
            //存在外部中断
            if (ExceptType_i.Interrupt == `InterruptAssert) begin   
                    //已经在访存阶段判断了是否处于异常级
                    if(CP0Status_o[1] == 1'b0) begin        //EXL字段是否有例外发生（为0代表处于正常级）
                        if(IsDelaySlot_i == `InDelaySlot) begin // 是否位于延迟槽中
                            CP0EPC_o            <= CurrentInstAddr - 4;
                            CP0Cause_o[31]      <= 1'b1;        //Cause寄存器的BD字段(延迟槽标记字段)
                        end else begin
                            CP0EPC_o            <= CurrentInstAddr;
                            CP0Cause_o[31]      <= 1'b0;
                        end
                    end
                        //如果EXL字段为1，表示当前已经处于异常级了，又发生了新的异常，那么
                        //只需要将异常原因保存到Cause寄存器的ExcCode字段
                        CP0Status_o[1]          <= 1'b1;        //Status寄存器的EXL字段
                        CP0Cause_o[6:2]         <= 5'b00000;    //Cause寄存器的ExcCode字段
                end
            //地址错例外--取指令
            else if (ExceptType_i.WrongAddressinIF == `InterruptAssert) begin  
                    //Status[1]为EXL字段，表示是否处于异常级
                    if(CP0Status_o[1] == 1'b0) begin        //EXL字段是否有例外发生（为0代表处于正常级）
                        if(IsDelaySlot_i == `InDelaySlot) begin
                            CP0EPC_o        <= CurrentInstAddr - 4;
                            CP0Cause_o[31]  <= 1'b1;
                        end else begin
                            CP0EPC_o        <= CurrentInstAddr;
                            CP0Cause_o[31]  <= 1'b0;
                        end
                    end
                    CP0Status_o[1]          <= 1'b1;
                    CP0Cause_o[6:2]         <= 5'b00100;
                    CP0BadVAddr_o           <= CurrentInstAddr;
                end
            //无效指令异常
            else if (ExceptType_i.ReservedInstruction == `InterruptAssert)  begin   
                    if(CP0Status_o[1] == 1'b0) begin
                        if(IsDelaySlot_i == `InDelaySlot) begin
                            CP0EPC_o        <= CurrentInstAddr - 4;
                            CP0Cause_o[31]  <= 1'b1;
                        end else begin
                            CP0EPC_o        <= CurrentInstAddr;
                            CP0Cause_o[31]  <= 1'b0;
                        end
                    end
                    CP0Status_o[1]          <= 1'b1;
                    CP0Cause_o[6:2]         <= 5'b01010;
                end

            //系统调用异常syscall
            else if (ExceptType_i.Syscall == `InterruptAssert) begin  
                    //Status[1]为EXL字段，表示是否处于异常级
                    if(CP0Status_o[1] == 1'b0) begin        //EXL字段是否有例外发生（为0代表处于正常级）
                        if(IsDelaySlot_i == `InDelaySlot) begin
                            CP0EPC_o        <= CurrentInstAddr - 4;
                            CP0Cause_o[31]  <= 1'b1;
                        end else begin
                            CP0EPC_o        <= CurrentInstAddr;
                            CP0Cause_o[31]  <= 1'b0;
                        end
                    end
                    CP0Status_o[1]          <= 1'b1;
                    CP0Cause_o[6:2]         <= 5'b01000;
                end

            // 断点break异常
            else if (ExceptType_i.Break == `InterruptAssert) begin  
                    //Status[1]为EXL字段，表示是否处于异常级
                    if(CP0Status_o[1] == 1'b0) begin        //EXL字段是否有例外发生（为0代表处于正常级）
                        if(IsDelaySlot_i == `InDelaySlot) begin
                            CP0EPC_o        <= CurrentInstAddr - 4;
                            CP0Cause_o[31]  <= 1'b1;
                        end else begin
                            CP0EPC_o        <= CurrentInstAddr;
                            CP0Cause_o[31]  <= 1'b0;
                        end
                    end
                    CP0Status_o[1]          <= 1'b1;
                    CP0Cause_o[6:2]         <= 5'b01001;
                end
            //异常返回指令eret
            else if (ExceptType_i.Eret == 1'b1)  begin  
                    CP0Status_o[1]          <= 1'b0;
                end
                // 自陷异常
                // 32'h0000_000d:begin                 
                //     if(CP0Status_o[1] == 1'b0) begin
                //         if(IsDelaySlot_i == `InDelaySlot) begin
                //             CP0EPC_o <= CurrentInstAddr - 4;
                //             CP0Cause_o[31] <= 1'b1;
                //         end else begin
                //             CP0EPC_o <= CurrentInstAddr;
                //             CP0Cause_o[31] <= 1'b0;
                //         end
                //     end
                //     CP0Status_o[1] <= 1'b1;
                //     CP0Cause_o[6:2] <= 5'b01101;
                //     end
            //溢出异常
            else if (ExceptType_i.Overflow == `InterruptAssert) begin 
                    if(CP0Status_o[1] == 1'b0) begin
                        if(IsDelaySlot_i == `InDelaySlot) begin  
                            CP0EPC_o        <= CurrentInstAddr - 4;
                            CP0Cause_o[31]  <= 1'b1;
                        end else begin
                            CP0EPC_o        <= CurrentInstAddr;
                            CP0Cause_o[31]  <= 1'b0;
                        end
                    end
                    CP0Status_o[1]          <= 1'b1;
                    CP0Cause_o[6:2]         <= 5'b01100;
                end
            //地址错例外——数据写入
            else if (ExceptType_i.WrWrongAddressinMEM == `InterruptAssert) begin 
                    if(CP0Status_o[1] == 1'b0) begin
                        if(IsDelaySlot_i == `InDelaySlot) begin  
                            CP0EPC_o        <= CurrentInstAddr - 4;
                            CP0Cause_o[31]  <= 1'b1;
                        end else begin
                            CP0EPC_o        <= CurrentInstAddr;
                            CP0Cause_o[31]  <= 1'b0;
                        end
                    end
                    CP0Status_o[1]          <= 1'b1;
                    CP0Cause_o[6:2]         <= 5'b00101;
                    CP0BadVAddr_o           <= VirtualAddr_i;
                end

            //地址错例外——数据读取
            else if (ExceptType_i.RdWrongAddressinMEM == `InterruptAssert) begin 
                    if(CP0Status_o[1] == 1'b0) begin
                        if(IsDelaySlot_i == `InDelaySlot) begin  
                            CP0EPC_o        <= CurrentInstAddr - 4;
                            CP0Cause_o[31]  <= 1'b1;
                        end else begin
                            CP0EPC_o        <= CurrentInstAddr;
                            CP0Cause_o[31]  <= 1'b0;
                        end
                    end
                    CP0Status_o[1]          <= 1'b1;
                    CP0Cause_o[6:2]         <= 5'b00100;
                    CP0BadVAddr_o           <= VirtualAddr_i;

                end
        end
    end



    //******************************************************************************
    //                      对CP0中寄存器的读操作：组合逻辑
    //******************************************************************************

    always_comb begin
        case(CP0RdAddr_i)
            `CP0_REG_COUNT:begin                //读Count寄存器
                CP0RdDataOut_o = CP0Count_o;
            end
            `CP0_REG_COMPARE:begin              //读Compare寄存器
                CP0RdDataOut_o = CP0Compare_o;
            end
            `CP0_REG_STATUS:begin               //读Status寄存器
                CP0RdDataOut_o = CP0Status_o;
            end
            `CP0_REG_CAUSE:begin                //读Cause寄存器
                CP0RdDataOut_o = CP0Cause_o;
            end
            `CP0_REG_EPC:begin                  //读EPC寄存器
                CP0RdDataOut_o = CP0EPC_o;
            end
            `CP0_REG_BADVADDR:begin
                CP0RdDataOut_o = CP0BadVAddr_o;
            end    
            default:begin
                CP0RdDataOut_o = 'x;
            end
        endcase
    end//end always
    
endmodule
