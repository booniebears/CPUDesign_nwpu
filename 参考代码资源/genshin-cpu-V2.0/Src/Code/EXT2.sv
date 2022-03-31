/*
 * @Author: npuwth
 * @Date: 2021-03-29 14:36:47
 * @LastEditTime: 2021-04-16 18:00:42
 * @LastEditors: Please set LastEditors
 * @Copyright 2021 GenshinCPU
 * @Version:1.0
 * @IO PORT:
 * @Description: 
 */

`include "CommonDefines.svh"
`include "CPU_Defines.svh"

module EXT2(WB_DMOut_i,WB_ALUOut_i,WB_DMResult_o,WB_LoadType_i);

  input logic [31:0]    WB_DMOut_i;
  input logic [31:0]    WB_ALUOut_i;
  input LoadType        WB_LoadType_i;
  output logic [31:0]   WB_DMResult_o; 

  always_comb begin
    unique case({WB_LoadType_i.sign,WB_LoadType_i.size})
      `LOADTYPE_LW: begin
        WB_DMResult_o = WB_DMOut_i;  //LW
      end 
      `LOADTYPE_LH: begin
        if(WB_ALUOut_i[1] == 1'b0) //LH
          WB_DMResult_o = {{16{WB_DMOut_i[15]}},WB_DMOut_i[15:0]};
        else
          WB_DMResult_o = {{16{WB_DMOut_i[31]}},WB_DMOut_i[31:16]}; 
      end
      `LOADTYPE_LHU: begin
        if(WB_ALUOut_i[1] == 1'b0) //LHU
          WB_DMResult_o = {16'b0,WB_DMOut_i[15:0]};
        else
          WB_DMResult_o = {16'b0,WB_DMOut_i[31:16]};
      end
      `LOADTYPE_LB: begin
        if(WB_ALUOut_i[1:0] == 2'b00) //LB
          WB_DMResult_o = {{24{WB_DMOut_i[7]}},WB_DMOut_i[7:0]};
        else if(WB_ALUOut_i[1:0] == 2'b01)
          WB_DMResult_o = {{24{WB_DMOut_i[15]}},WB_DMOut_i[15:8]};
        else if(WB_ALUOut_i[1:0] == 2'b10)
          WB_DMResult_o = {{24{WB_DMOut_i[23]}},WB_DMOut_i[23:16]};
        else
          WB_DMResult_o = {{24{WB_DMOut_i[31]}},WB_DMOut_i[31:24]};
      end
      `LOADTYPE_LBU: begin
        if(WB_ALUOut_i[1:0] == 2'b00) //LBU
          WB_DMResult_o = {24'b0,WB_DMOut_i[7:0]};
        else if(WB_ALUOut_i[1:0] == 2'b01)
          WB_DMResult_o = {24'b0,WB_DMOut_i[15:8]};
        else if(WB_ALUOut_i[1:0] == 2'b10)
          WB_DMResult_o = {24'b0,WB_DMOut_i[23:16]};
        else
          WB_DMResult_o = {24'b0,WB_DMOut_i[31:24]};
      end
      default: begin
        WB_DMResult_o = 32'bx;
      end
    endcase
  end

endmodule