module mips_tb();
    
   reg clk, rst;
    
   mips U_MIPS(
      .clk(clk), .rst(rst)
   );
    
   initial begin
      $readmemh( "code.txt" , U_MIPS.U_IM.imem ) ;
      $readmemh( "rf.txt" , U_MIPS.U_RF.rmem ) ;
      $monitor("PC = 0x%8X, IR = 0x%8X", U_MIPS.U_PC.dout, U_MIPS.instr ); 
      clk = 1 ;
      rst = 0 ;
      #5 ;
      rst = 1 ;
      #20 ;
      rst = 0 ;
   end
   
   always
	   #(50) clk = ~clk;
   
endmodule
