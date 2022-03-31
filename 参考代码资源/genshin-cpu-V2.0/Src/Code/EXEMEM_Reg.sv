/*
 * @Author: npuwth
 * @Date: 2021-04-03 10:01:30
 * @LastEditTime: 2021-05-27 01:10:11
 * @LastEditors: Johnson Yang
 * @Copyright 2021 GenshinCPU
 * @Version:1.0
 * @IO PORT:
 * @Description: 
 */

`include "CommonDefines.svh"
`include "CPU_Defines.svh"

module EXEMEM_Reg( PipeLineRegsInterface.EXE_MEM port,
                   input  rst  );

  always_ff @( posedge port.clk ,negedge rst ) begin
    if( (rst == `RstEnable )|| ( port.EXEMEM_Flush == `FlushEnable )) begin
      port.MEM_ALUOut <= 32'b0;
      port.MEM_PCAdd1 <= 32'b0;
      port.MEM_WbSel <= 2'b0;
      port.MEM_Dst <= 5'b0;
      port.MEM_LoadType <= '0;
      port.MEM_StoreType <= '0;
      port.MEM_RegsWrType <= '0;
      port.MEM_OutB <= 32'b0;
      port.MEM_ExceptType <= '0;
      port.MEM_IsABranch <= '0;
      port.MEM_IsAImmeJump <= 1'b0;
      port.MEM_Instr <= 32'b0;
    end
    else if( port.EXE_MEMWr ) begin
      port.MEM_ALUOut <= port.EXE_ALUOut;
      port.MEM_PCAdd1 <= port.EXE_PCAdd1;
      port.MEM_WbSel <= port.EXE_WbSel;
      port.MEM_Dst <= port.EXE_Dst;
      port.MEM_LoadType <= port.EXE_LoadType;
      port.MEM_StoreType <= port.EXE_StoreType;
      port.MEM_RegsWrType <= port.EXE_RegsWrType;
      port.MEM_OutB <= port.EXE_OutB;
      port.MEM_ExceptType <= port.EXE_ExceptType_final;
      port.MEM_IsABranch <= port.EXE_BranchType.isBranch;
      port.MEM_IsAImmeJump <= port.EXE_IsAImmeJump;
      port.MEM_Instr <= port.EXE_Instr;
    end
  end
  // always_comb begin
  //   if( rst == `RstEnable ) begin
  //     port.WB_DMOut = 32'b0 ;
  //   end
  //   else begin
  //     port.WB_DMOut = port.MEM_DMOut;
  //   end
  // end
endmodule