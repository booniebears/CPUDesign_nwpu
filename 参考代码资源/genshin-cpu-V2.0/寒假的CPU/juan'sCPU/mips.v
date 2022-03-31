module mips
#(parameter n = 32)
( clk, rst );
   input   clk;
   input   rst;
   
   wire PCWr;
   wire [n-1:0]PC;
   wire [n-1:0]PC_4;
   wire [n-1:0]NextPC;
   wire IRWr;
   reg wr=1'b1;
   wire [n-1:0]PC_r;
   
   flopr U_PC_R(
      .clk(clk) , .rst(rst) , .flopr_data_in(PC), .flopr_data_out(PC_r) ,.Wr(wr)
   );

   PC U_PC(
      .clk(clk),.rst(rst),.PCWr(PCWr),.NextPC(NextPC),.CurrentPC(PC)
   );//PC的实现

   wire [n-1:0]im_dout;

   im_4k U_IM ( 
      .addr(PC[11:2]) , .dout(im_dout)
   );//读出指令
   
   wire [n-1:0]instr;




   flopr U_IR(
      .clk(clk), .rst(rst) ,.flopr_data_in(im_dout),.flopr_data_out(instr),.Wr(IRWr)
   );//指令寄存器

   //wire ze;
   reg jr;
   reg j;
   reg branch;
   wire [n-1:0]imme_32;
   wire [n-1:0]imme_32_r;
   reg [1:0]EXTOp;
   wire [n-1:0]result_r;//指的是alu之后的那个寄存器的值

//在 RF 和 ALU 之间的寄存器
//也就是在 ID 和 EXE 之间的寄存器
   reg [n-1:0]data1;//
   reg [n-1:0]data2;//在旁路选择之后的数据
   wire [n-1:0]data1_r;
   wire [n-1:0]data2_r;


   EXT U_EXT(
      .EXT_Imm16(instr[15:0]), .EXTOp(EXTOp), .EXT_Imm32(imme_32)
   );

   flopr U_IMME_32_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(imme_32), .flopr_data_out(imme_32_r), .Wr(wr)
   );

   NPC U_NPC(
      .PC(PC), .imme_26(instr[25:0]), .imme_32(imme_32), .branch(branch), .j(j), .PC_4(PC_4), .NextPC(NextPC), .rsData(data1),
      .jr(jr) ,.rtData(data2), .Opcode(instr[31:26]), .rt(instr[20:16])
   );



   //wire [1:0]RegDst;
   //wire [1:0]ALUOp;
   //reg [4:0]RFAddWr;//选择要选的寄存器

/*   always @(instr,RegDst) begin
      if(RegDst==2'b00)RFAddWr=5'b11111;//31
      else if(RegDst==2'b01)RFAddWr=instr[15:11];//rd
      else RFAddWr=instr[20:16];
   end//选择要写的寄存器
*/
   //wire RFWr;
   wire [n-1:0]RF_data_out_1;
   wire [n-1:0]RF_data_out_2;
   wire [n-1:0]RFDataWr;//选择要选读入数据
   //wire [n-1:0]mem_data_out;//从内存读出的数据
   wire [n-1:0]result;//ALU计算的数据




   //EXE级别的控制信号
   reg shamtSel;
   reg[1:0] ALUOp;
   reg ALUSel;
   reg [1:0]RegDst;
   reg load;

   wire shamtSel_r;
   wire[1:0] ALUOp_r;
   wire ALUSel_r;
   wire [1:0]RegDst_r;
   wire load_r;

   flopr #(.n(2)) U_ALUOP_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(ALUOp), .flopr_data_out(ALUOp_r), .Wr(wr)
   );

   flopr #(.n(1)) U_SHAMTSEL_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(shamtSel), .flopr_data_out(shamtSel_r), .Wr(wr)
   );

   flopr #(.n(1)) U_ALUSEL_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(ALUSel), .flopr_data_out(ALUSel_r), .Wr(wr)
   );

   flopr #(.n(2)) U_REGDST_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(RegDst), .flopr_data_out(RegDst_r), .Wr(wr)
   );

   flopr #(.n(1)) U_LOAD_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(load), .flopr_data_out(load_r), .Wr(wr)
   );
//MEM级别的控制信号
   reg DMWr;
   reg[2:0] EXT_MEM;
   reg[1:0] dm_choose;
   reg [1:0]RFDataSel;

   wire DMWr_r;
   wire[2:0] EXT_MEM_r;
   wire[1:0] dm_choose_r;
   wire [1:0]RFDataSel_r;

   wire DMWr_r_r;
   wire[2:0] EXT_MEM_r_r;
   wire[1:0] dm_choose_r_r;
   wire [1:0]RFDataSel_r_r;

   flopr #(.n(1)) U_DMWr_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(DMWr), .flopr_data_out(DMWr_r), .Wr(wr)
   );
   flopr #(.n(1)) U_DMWr_r_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(DMWr_r), .flopr_data_out(DMWr_r_r), .Wr(wr)
   );

   flopr #(.n(3)) U_EXT_MEM_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(EXT_MEM), .flopr_data_out(EXT_MEM_r), .Wr(wr)
   );
   flopr #(.n(3)) U_EXT_MEM_r_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(EXT_MEM_r), .flopr_data_out(EXT_MEM_r_r), .Wr(wr)
   );

   flopr #(.n(2)) U_DM_CHOOSE_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(dm_choose), .flopr_data_out(dm_choose_r), .Wr(wr)
   );
   flopr #(.n(2)) U_DM_CHOOSE_r_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(dm_choose_r), .flopr_data_out(dm_choose_r_r), .Wr(wr)
   );

   flopr #(.n(2)) U_RFDATASEL_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(RFDataSel), .flopr_data_out(RFDataSel_r), .Wr(wr)
   );
   flopr #(.n(2)) U_RFDATASEL_r_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(RFDataSel_r), .flopr_data_out(RFDataSel_r_r), .Wr(wr)
   );

//WB级别的信号
   reg RFWr;
   wire RFWr_r;
   wire RFWr_r_r;
   wire RFWr_r_r_r;

   flopr #(.n(1)) U_RFWr_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(RFWr), .flopr_data_out(RFWr_r), .Wr(wr)
   );
   flopr #(.n(1)) U_RFWr_r_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(RFWr_r), .flopr_data_out(RFWr_r_r), .Wr(wr)
   );
   flopr #(.n(1)) U_RFWr_r_r_r(
      .clk(clk) , .rst(rst) , .flopr_data_in(RFWr_r_r), .flopr_data_out(RFWr_r_r_r), .Wr(wr)
   );
//dst的一串
   wire[5-1:0] rt;
   wire[5-1:0] rd;
   reg [5-1:0] dst;
   wire [5-1:0] dst_r;
   wire [5-1:0] dst_r_r;
   flopr #(.n(5)) U_RT (
      .clk(clk) , .rst(rst) , .flopr_data_in(instr[20:16]), .flopr_data_out(rt), .Wr(wr)
   );

   flopr #(.n(5)) U_RD (
       .clk(clk) , .rst(rst) , .flopr_data_in(instr[15:11]), .flopr_data_out(rd), .Wr(wr)
   );

//在exe选择最终选择写入的寄存器地址
   always @(RegDst_r , rt , rd) begin
      if (RegDst_r==2'b00) begin
         dst=5'b11111;
      end
      else if(RegDst_r==2'b01)begin
        dst=rd;
      end
      else dst=rt;
   end
// dst的一串寄存器 我保证这是真的
   flopr #(.n(5)) U_DST(
      .clk(clk) , .rst(rst) , .flopr_data_in(dst) , .flopr_data_out(dst_r), .Wr(wr)
   );

   flopr #(.n(5)) U_DST_R(
      .clk(clk) , .rst(rst) , .flopr_data_in(dst_r) , .flopr_data_out(dst_r_r), .Wr(wr)
   );
//FORWARD UNIT
   wire[1:0] forwardA;
   wire[1:0] forwardB;

   Forward U_FORWARD(
      .rs(instr[25:21]), .rt(instr[20:16]) ,.MEM_dst(dst_r) , .dst(dst) ,.EXE_RFWr(RFWr_r),
      .MEM_RFWr(RFWr_r_r) , .forwardA(forwardA) ,.forwardB(forwardB)
   );
   reg [n-1:0]mem_data;//用于确定在mem级的 要写入的数据
   reg [n-1:0]exe_data;//用于确认在exe级的 要写入的数据
   wire [n-1:0]exe_data_r;
   
   wire [n-1:0]dm_out;

//有了forward信号之后当然是forward那给选择器了
   always @(forwardA , RF_data_out_1 ,exe_data ,mem_data) begin
      if(forwardA==2'b00)data1=RF_data_out_1;
      else if(forwardA==2'b01)data1=exe_data;
      else data1=mem_data;
   end

   always @(forwardB , RF_data_out_2 ,exe_data ,mem_data) begin
      if(forwardB==2'b00)data2=RF_data_out_2;
      else if(forwardB==2'b01)data2=exe_data;
      else data2=mem_data;
   end

// 把shamt字段的寄存器做一下

   wire [4:0]shamt;
   flopr #(.n(5)) U_SHAMT(
      .clk(clk),.rst(rst),.flopr_data_in(instr[10:6]),
      .Wr(wr),.flopr_data_out(shamt)      
   );
//做一下alu前面的两个选择器
   reg[n-1:0]datax;
   reg[n-1:0]datay;
   always @(shamt,data1_r,shamtSel_r) begin//好吧这种_r的写法不太好
      if(shamtSel_r==1'b1)datax={24'h000000,3'b000,shamt};
      else datax=data1_r;
   end

   always @(ALUSel_r, imme_32_r, data2_r) begin
      if(ALUSel_r==1'b1)datay=imme_32_r;
      else datay=data2_r;
   end


/*
   always @(mem_data_out,PC,result_r,RFDataSel) begin
      if(RFDataSel==2'b00)RFDataWr=PC;
      else if(RFDataSel==2'b01)RFDataWr=result_r;
      else RFDataWr=mem_data_out;
   end*/

   RF U_RF(
      .RF_address_read_1(instr[25:21]),.RF_address_read_2(instr[20:16]),.RF_address_write(dst_r_r),.RF_data_write(RFDataWr),
      .RFWr(RFWr_r_r_r),.clk(clk),.RF_data_out_1(RF_data_out_1),.RF_data_out_2(RF_data_out_2)
   );



//确定了在exe级的 要写的数据
   always @(RFDataSel_r,PC_r,result) begin
      if (RFDataSel_r==2'b00) begin
         exe_data=PC_r;
      end
      else if(RFDataSel_r==2'b01)exe_data=result;
      else begin end
   end

//确定了在mem级的 要写的数据
   always @(RFDataSel_r_r , exe_data_r ,dm_out ) begin
      if (RFDataSel_r_r==2'b10 || RFDataSel_r_r==2'b11) begin
         mem_data=dm_out;
      end
      else mem_data=exe_data_r;
   end




   




   flopr U_rfr1(
      .clk(clk),.rst(rst),.flopr_data_in(data1),
      .Wr(wr),.flopr_data_out(data1_r)
   );

   flopr U_rfr2(
      .clk(clk),.rst(rst),.flopr_data_in(data2),
      .Wr(wr),.flopr_data_out(data2_r)
   );
//

   /*reg [n-1:0]ALUData;//选择是立即数还是从寄存器中读出的数据
   always @(data2,imme_32,ALUSel) begin
      if (ALUSel==1'b0) begin
         ALUData=data2;
      end
      else ALUData=imme_32;
   end*/
   wire [3:0]opcode;//小写的opcode表示alu的opcode
   wire [3:0]opcode_r;

   flopr #(.n(4))U_OPCODE(//
      .clk(clk),.rst(rst),.flopr_data_in(opcode),
      .Wr(wr),.flopr_data_out(opcode_r)
   );

   ALU U_ALU(
      .operand_x(datax), .operand_y(datay), .opcode(opcode_r),.result(result)
   );

   

   ALUControl U_ALUControl(
      .ALUOp(ALUOp),.funct(instr[5:0]),.opcode(opcode) ,.Opcode(instr[31:26])
   );



   flopr U_rfr3(//
      .clk(clk),.rst(rst),.flopr_data_in(exe_data),
      .Wr(wr),.flopr_data_out(exe_data_r)
   );

   //wire DMWr;
//控制信号 未经选择的

   wire [1:0]EXTOp_mux;
   wire load_mux;
   wire [2:0]EXT_MEM_mux;
   wire [1:0]dm_choose_mux;//00 sb 01 sh 10 sw 给dm 加上的信号

    //EXE控制信号
   wire shamtSel_mux;//是否是位移 太屑了 位移指令
   wire[1:0]ALUOp_mux;//送入ALUControl二级控制unit
   wire ALUSel_mux;//是否选择是立即数 EXE级别的控制信号
   wire[1:0]RegDst_mux;//在EXE阶段的选择写入的寄存器编号 写入寄存器的选择，jal选31，rt与rd之分

    //MEM级别的控制信号
   wire DMWr_mux;

    //WB级别的控制信号
   wire RFWr_mux;
   wire [1:0]RFDataSel_mux;//送入寄存器的数据的选择 对于jal是PC的值和jalr，或者是ALU的值或者是内存读出的值

    //给NPC的控制信号
   wire branch_mux;//是分支指令
   wire j_mux;//是j 或者jal
   wire jr_mux;//是jr 或者jalr
   Control U_Control(
      .funct(instr[5:0]),.Opcode(instr[31:26]),
      .RegDst(RegDst_mux), .ALUOp(ALUOp_mux),.j(j_mux),.branch(branch_mux),.RFWr(RFWr_mux),.ALUSel(ALUSel_mux),
      .RFDataSel(RFDataSel_mux),.EXT_MEM(EXT_MEM_mux),.jr(jr_mux),.EXTOp(EXTOp_mux),.DMWr(DMWr_mux),.load(load_mux),
      .dm_choose(dm_choose_mux),.shamtSel(shamtSel_mux)
   );
//然后写那个选择器 吐血
   wire nop_r;
   wire nop_imme;
   always @(EXTOp_mux , load_mux , EXT_MEM_mux , dm_choose_mux , shamtSel_mux ,
          ALUOp_mux , ALUSel_mux , RegDst_mux , DMWr_mux, RFWr_mux,
          RFDataSel_mux, branch_mux , j_mux, jr_mux ,nop_r,nop_imme
   ) begin
    if(nop_r==1'b1 ||nop_imme==1'b1)begin
      EXTOp=2'b00 ;
      load=1'b0 ; 
      EXT_MEM=3'b000 ; 
      dm_choose=2'b00 ; 
      shamtSel=1'b0 ;
      ALUOp=2'b00 ; 
      ALUSel=1'b0 ; 
      RegDst=2'b00 ; 
      DMWr=1'b0 ; 
      RFWr=1'b0 ;
      RFDataSel=2'b00 ; 
      branch=1'b0 ;
      j=1'b0 ;
      jr=1'b0 ;
    end
    else begin
      EXTOp=EXTOp_mux ;
      load=load_mux ; 
      EXT_MEM=EXT_MEM_mux ; 
      dm_choose=dm_choose_mux ; 
      shamtSel=shamtSel_mux ;
      ALUOp=ALUOp_mux ; 
      ALUSel=ALUSel_mux ; 
      RegDst=RegDst_mux ; 
      DMWr=DMWr_mux ; 
      RFWr=RFWr_mux ;
      RFDataSel=RFDataSel_mux ; 
      branch=branch_mux;
      j=j_mux ;
      jr=jr_mux ;        
    end
   end

   Hazard U_HAZARD(
      .ID_EXE_load(load_r), .branch(branch) , .Opcode(instr[31:26]) , .funct(instr[5:0]) ,
      .rs(instr[25:21]) , .rt(instr[20:16]) , .ID_EXE_rt(dst) , .PCWr(PCWr) ,.IRWr(IRWr),
      .nop(nop),.nop_imme(nop_imme), .nop_r(nop_r)
   );

   flopr #(.n(1))U_NOP(
      .clk(clk),.rst(rst),.flopr_data_in(nop),
      .Wr(wr),.flopr_data_out(nop_r)      
   );



   wire [n-1:0] data2_r_r;
   flopr U_DATA2_R_R(
      .clk(clk),.rst(rst),.flopr_data_in(data2_r),
      .Wr(wr),.flopr_data_out(data2_r_r)
   );

   flopr U_RESULT_R(
      .clk(clk),.rst(rst),.flopr_data_in(result),
      .Wr(wr),.flopr_data_out(result_r)
   );

   dm_4k U_DM ( 
      .addr(result_r[11:0]), .din(data2_r_r), .DMWr(DMWr_r_r), .clk(clk), .dout(dm_out) ,.EXT_MEM(EXT_MEM_r_r),
      .dm_choose(dm_choose_r_r)
   );
   
   flopr U_rfr4(
      .clk(clk),.rst(rst),.flopr_data_in(mem_data),
      .Wr(wr),.flopr_data_out(RFDataWr)
   );
   
endmodule