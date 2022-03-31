/*
 * @Author: npuwth
 * @Date: 2021-04-03 10:24:26
 * @LastEditTime: 2021-04-26 15:36:44
 * @LastEditors: Please set LastEditors
 * @Copyright 2021 GenshinCPU
 * @Version:1.0
 * @IO PORT:
 * @Description: 
 */

`include "CommonDefines.svh"
`include "CPU_Defines.svh"

module MEMWB_Reg( PipeLineRegsInterface port,
                  input                 rst );

  always_ff @(posedge port.clk ,negedge rst) begin
    if( rst == `RstEnable || port.MEMWB_Flush == `FlushEnable) begin
      port.WB_WbSel <= 2'b0;
      port.WB_PCAdd1 <= 32'b0;
      port.WB_ALUOut <= 32'b0;
      port.WB_OutB <= 32'b0;
      port.WB_DMOut <= 32'b0;
      port.WB_Dst <= 5'b0;
      port.WB_LoadType <= '0;
      port.WB_RegsWrType <= '0;
      port.WB_ExceptType <= '0;
      port.WB_IsABranch <= 1'b0;
      port.WB_IsAImmeJump <= 1'b0;
      port.WB_IsDelaySlot <= 1'b0;
      port.WB_Instr <= 32'b0;
    end
    else if( port.MEM_WBWr ) begin
      port.WB_WbSel <= port.MEM_WbSel;
      port.WB_PCAdd1 <= port.MEM_PCAdd1;
      port.WB_ALUOut <= port.MEM_ALUOut;
      port.WB_OutB <= port.MEM_OutB;
      port.WB_DMOut <= port.MEM_DMOut;
      port.WB_Dst <= port.MEM_Dst;
      port.WB_LoadType <= port.MEM_LoadType;
      port.WB_RegsWrType <= port.MEM_RegsWrType_new;
      port.WB_ExceptType <= port.MEM_ExceptType_final;
      port.WB_IsABranch <= port.MEM_IsABranch;
      port.WB_IsAImmeJump <= port.MEM_IsAImmeJump;
      port.WB_IsDelaySlot <= port.MEM_IsDelaySlot;
      port.WB_Instr <= port.MEM_Instr;
    end
  end

endmodule