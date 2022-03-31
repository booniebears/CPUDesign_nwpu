/*
 * @Author: npuwth
 * @Date: 2021-04-02 16:23:07
 * @LastEditTime: 2021-04-26 15:36:55
 * @LastEditors: Please set LastEditors
 * @Copyright 2021 GenshinCPU
 * @Version:1.0
 * @IO PORT:
 * @Description: 
 */

`include "CommonDefines.svh"
`include "CPU_Defines.svh"

module PC( PipeLineRegsInterface port ,
           input rst);
  
  always_ff @( posedge port.clk or negedge rst) begin
    if( rst == `RstEnable )
      port.IF_PC <= `PCRstAddr;
    else if( port.IF_PCWr )
      port.IF_PC <= port.IF_NPC;
  end

endmodule