module dm_4k( addr, din, DMWr, clk, dout, SWSrc );
   
   input  [11:0] addr;
   input  [31:0] din;
   input         DMWr;
   input         clk;
   input  [1:0]  SWSrc;
   output [31:0] dout;
     
   reg [31:0] dmem[1023:0];
   
always @(posedge clk) 
  if(DMWr)
    if(SWSrc == 2'b00) //sw
      dmem[addr[11:2]] = din;
    else if(SWSrc == 2'b01) //sh
      if(addr[1] == 1'b0)
        dmem[addr[11:2]][15:0] = din[15:0];
      else
        dmem[addr[11:2]][31:16] = din[15:0];
    else //sb
      if(addr[1:0] == 2'b00)
        dmem[addr[11:2]][7:0] = din[7:0];
      else if(addr[1:0] == 2'b01)
        dmem[addr[11:2]][15:8] = din[7:0];
      else if(addr[1:0] == 2'b10)
        dmem[addr[11:2]][23:16] = din[7:0];
      else
        dmem[addr[11:2]][31:24] = din[7:0];
  else
    dmem[addr[11:2]] = dmem[addr[11:2]]; 
   
   assign dout = dmem[addr[11:2]];
    
endmodule    
