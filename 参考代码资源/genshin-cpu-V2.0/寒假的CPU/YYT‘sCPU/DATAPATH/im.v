module im_4k( addr, dout );  // 指令寄存器
    
    input [11:2] addr;  
    output [31:0] dout;
    
    reg [31:0] imem[1023:0];
    
    assign dout = imem[addr];
    
endmodule    
