/*
 * @Author: npuwth
 * @Date: 2021-04-02 14:09:14
 * @LastEditTime: 2021-04-26 15:36:36
 * @LastEditors: Please set LastEditors
 * @Copyright 2021 GenshinCPU
 * @Version:1.0
 * @IO PORT:
 * @Description: 
 */
`include "CommonDefines.svh"
`include "CPU_Defines.svh"

module IFID_Reg( PipeLineRegsInterface port,
                 input rst );

  always_ff @( posedge port.clk or negedge rst ) begin
    if( (rst == `RstEnable) || (port.IFID_Flush == `FlushEnable) ) begin
      port.ID_Instr <= 32'b0;
      port.ID_Imm16 <= 16'b0;
      port.ID_rs <= 5'b0;
      port.ID_rt <= 5'b0;
      port.ID_rd <= 5'b0;
      port.ID_JumpAddr <= 1'b0;
      port.ID_Sel <= 3'b0;
      port.ID_PCAdd1 <= 32'b0;
    end
    else if( port.IF_IDWr ) begin
      port.ID_Instr <= port.IF_Instr;
      port.ID_Imm16 <= port.IF_Instr[15:0];
      port.ID_rs <= port.IF_Instr[25:21];
      port.ID_rt <= port.IF_Instr[20:16];
      port.ID_rd <= port.IF_Instr[15:11];
      port.ID_JumpAddr <= port.IF_Instr[24:0];
      port.ID_Sel <= port.IF_Instr[2:0];
      port.ID_PCAdd1 <= port.IF_PCAdd1;
    end
  end
  
endmodule