module ALU_Forward (
     rs,rt,EX_MEM_Rf_RfWr,MEM_WB_RfWr,EX_MEM_rw,MEM_WB_rw,
     ForwardA,ForwardB
);
    input [4:0] rt,rs;                 // 输入信号
    input EX_MEM_Rf_RfWr,MEM_WB_RfWr;   // 当前级，寄存器堆写回信号
    input [4:0] EX_MEM_rw,MEM_WB_rw;  // 写回地址
    output [1:0] ForwardA,ForwardB;   

     reg [1:0] ForwardA_r,ForwardB_r;
    // ForwardA信号选择
    // 1 选择的是 MEM_WB中的数据
    // 2 选择的是 EX_MEM中的数据
    always@(rs,EX_MEM_Rf_RfWr,MEM_WB_RfWr,EX_MEM_rw,MEM_WB_rw)begin
        if ((EX_MEM_Rf_RfWr) && EX_MEM_rw !=5'd0 && rs == EX_MEM_rw) ForwardA_r = 2'd2;
        else if ((MEM_WB_RfWr) && MEM_WB_rw != 5'd0 && rs == MEM_WB_rw)  ForwardA_r = 2'd1;
        else ForwardA_r= 2'd0;
    end

    // ForwardB信号选择
    // 1 选择的是 MEM_WB中的数据
    // 2 选择的是 EX_MEM中的数据
    always@(rt,EX_MEM_Rf_RfWr,MEM_WB_RfWr,EX_MEM_rw,MEM_WB_rw)begin
        if ((EX_MEM_Rf_RfWr) && EX_MEM_rw !=5'd0 && rt == EX_MEM_rw) ForwardB_r = 2'd2;
        else if ((MEM_WB_RfWr) && MEM_WB_rw != 5'd0 && rt == MEM_WB_rw)  ForwardB_r = 2'd1;
        else ForwardB_r = 2'd0;
    end
    assign ForwardA = ForwardA_r;
    assign ForwardB = ForwardB_r;
endmodule



// 2'b00 -> 选择RF寄存器结果
// 2'b01 -> 选择alu结果
// 2'b10 -> 选择dm结果
// 2'b11 -> 选择WB结果
module RFForward (
    input [4:0]  AluWrAddr,
    input [4:0]  DmWrAddr,
    input [4:0]  WB_Rw,
    input [4:0] rs,
    input [4:0] rt,
    input AluRfWr,
    input DmRfWr,
    input WB_RfWr,


    output [1:0] RfForwardA,
    output [1:0] RfForwardB
);
    reg [1:0] RfForwardA_r;
    reg [1:0] RfForwardB_r;  

    always @(rs,AluWrAddr,DmWrAddr,AluRfWr,DmRfWr,WB_RfWr,WB_Rw) begin
        if (AluRfWr && rs == AluWrAddr && AluWrAddr !=5'b0) RfForwardA_r = 2'b01;
        else if (DmRfWr && rs == DmWrAddr && DmWrAddr !=5'b0) RfForwardA_r = 2'b10;
        else if (WB_RfWr && rs == WB_Rw && WB_Rw != 5'b0)   RfForwardA_r = 2'b11;
        else RfForwardA_r = 2'b00;
    end
    
    always @(rt,AluWrAddr,DmWrAddr,AluRfWr,DmRfWr,WB_RfWr,WB_Rw) begin
        if (AluRfWr && rt == AluWrAddr && AluWrAddr !=5'b0) RfForwardB_r = 2'b01;
        else if (DmRfWr && rt == DmWrAddr && DmWrAddr !=5'b0) RfForwardB_r = 2'b10;
        else if (WB_RfWr && rt == WB_Rw && WB_Rw != 5'b0)   RfForwardB_r = 2'b11;
        else RfForwardB_r = 2'b00;
    end
    assign RfForwardA = RfForwardA_r;
    assign RfForwardB = RfForwardB_r;
endmodule

