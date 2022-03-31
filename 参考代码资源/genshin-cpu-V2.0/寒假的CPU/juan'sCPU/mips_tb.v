 `timescale 1ns/1ps
 module mips_tb();
    
   reg clk, rst;
    
   mips U_MIPS(
      .clk(clk), .rst(rst)
   );
   integer i;
   initial begin
      $readmemh( "code.txt" , U_MIPS.U_IM.imem ) ;
      $monitor("PC = 0x%8X, IR = 0x%8X", U_MIPS.U_PC.CurrentPC, U_MIPS.instr ); 
      $monitor("R[00-07]=%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X", 0, U_MIPS.U_RF.rf[1], U_MIPS.U_RF.rf[2], U_MIPS.U_RF.rf[3], U_MIPS.U_RF.rf[4], U_MIPS.U_RF.rf[5], U_MIPS.U_RF.rf[6], U_MIPS.U_RF.rf[7]);
      $monitor("R[08-15]=%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X", U_MIPS.U_RF.rf[8], U_MIPS.U_RF.rf[9], U_MIPS.U_RF.rf[10], U_MIPS.U_RF.rf[11], U_MIPS.U_RF.rf[12], U_MIPS.U_RF.rf[13], U_MIPS.U_RF.rf[14], U_MIPS.U_RF.rf[15]);
      $monitor("R[16-23]=%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X", U_MIPS.U_RF.rf[16], U_MIPS.U_RF.rf[17], U_MIPS.U_RF.rf[18], U_MIPS.U_RF.rf[19], U_MIPS.U_RF.rf[20], U_MIPS.U_RF.rf[21], U_MIPS.U_RF.rf[22], U_MIPS.U_RF.rf[23]);
      $monitor("R[24-31]=%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X", U_MIPS.U_RF.rf[24], U_MIPS.U_RF.rf[25], U_MIPS.U_RF.rf[26], U_MIPS.U_RF.rf[27], U_MIPS.U_RF.rf[28], U_MIPS.U_RF.rf[29], U_MIPS.U_RF.rf[30], U_MIPS.U_RF.rf[31]);
      clk = 1 ;
      rst = 0 ;

      for (i = 0;i<=31 ;i=i+1 )  U_MIPS.U_RF.rf[i]=32'h0000_0000;
      
      //for (i = 0;i<=1023 ;i=i+1 ) begin
        // U_MIPS.U_DM.dm[i]=32'h0000_0000;
      //end
      #5 ;
      rst = 1 ;
      #20 ;
      rst = 0 ;
   end
   
   always
	   #(50) clk = ~clk;
   
endmodule
