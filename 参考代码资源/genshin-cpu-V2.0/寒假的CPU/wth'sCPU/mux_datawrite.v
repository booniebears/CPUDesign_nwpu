module mux_datawrite(pc_4,ALUOut,MemData,out,ctrl);
parameter width = 32;

  input [width-1:0] pc_4;
  input [width-1:0] ALUOut;
  input [width-1:0] MemData;
  input [2:0] ctrl;
  output reg [width-1:0] out;

always@(pc_4,ALUOut,MemData,ctrl)
  case(ctrl)
    3'b000:out = pc_4;
    3'b001:out = ALUOut;
    3'b010:out = MemData; //lw
    3'b011:if(ALUOut[1] == 1'b0) //lh
             out = {{16{MemData[15]}},MemData[15:0]};
           else
             out = {{16{MemData[31]}},MemData[31:16]};
    3'b100:if(ALUOut[1] == 1'b0) //lhu
             out = {16'b0,MemData[15:0]};
           else
             out = {16'b0,MemData[31:16]};
    3'b101:if(ALUOut[1:0] == 2'b00) //lb
             out = {{24{MemData[7]}},MemData[7:0]};
           else if(ALUOut[1:0] == 2'b01)
             out = {{24{MemData[15]}},MemData[15:8]};
           else if(ALUOut[1:0] == 2'b10)
             out = {{24{MemData[23]}},MemData[23:16]};
           else
             out = {{24{MemData[31]}},MemData[31:24]};
    3'b110:if(ALUOut[1:0] == 2'b00) //lbu
             out = {24'b0,MemData[7:0]};
           else if(ALUOut[1:0] == 2'b01)
             out = {24'b0,MemData[15:8]};
           else if(ALUOut[1:0] == 2'b10)
             out = {24'b0,MemData[23:16]};
           else
             out = {24'b0,MemData[31:24]};
    default:out = 32'b0;
  endcase

endmodule

