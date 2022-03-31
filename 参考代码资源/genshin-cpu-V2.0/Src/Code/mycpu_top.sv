/*
 * @Author: Juan Jiang
 * @Date: 2021-04-05 20:20:45
 * @LastEditTime: 2021-06-11 09:20:52
 * @LastEditors: Please set LastEditors
 * @Copyright 2021 GenshinCPU
 * @Version:1.0
 * @IO PORT:
 * @Description: 
 */
 
 `include "CPU_Defines.svh"

 module mycpu_top(
         ext_int,
         
         aclk,   
         aresetn,
         
         arid,   
         araddr, 
         arlen,  
         arsize, 
         arburst,
         arlock, 
         arcache,
         arprot, 
         arvalid,
         arready,
                
         rid,    
         rdata,  
         rresp,  
         rlast,  
         rvalid, 
         rready, 
                
         awid,   
         awaddr, 
         awlen,  
         awsize, 
         awburst,
         awlock, 
         awcache,
         awprot, 
         awvalid,
         awready,
             
         wid,    
         wdata,  
         wstrb,  
         wlast,  
         wvalid, 
         wready, 
             
         bid,    
         bresp,  
         bvalid, 
         bready,

         debug_wb_pc,
         debug_wb_rf_wen,
         debug_wb_rf_wnum,
         debug_wb_rf_wdata
         

 );
    input  logic  [ 5:0] ext_int;
    input  logic         aclk;
    input  logic         aresetn;
    output logic  [ 3:0] arid;
    output logic  [31:0] araddr;
    output logic  [ 3:0] arlen;
    output logic  [ 2:0] arsize;
    output logic  [ 1:0] arburst;
    output logic  [ 1:0] arlock;
    output logic  [ 3:0] arcache;
    output logic  [ 2:0] arprot;
    output logic         arvalid;
    input  logic         arready;
    input  logic  [ 3:0] rid;
    input  logic  [31:0] rdata;
    input  logic  [ 1:0] rresp;
    input  logic         rlast;
    input  logic         rvalid;
    output logic         rready;
    output logic  [ 3:0] awid;
    output logic  [31:0] awaddr;
    output logic  [ 3:0] awlen;
    output logic  [ 2:0] awsize;
    output logic  [ 1:0] awburst;
    output logic  [ 1:0] awlock;
    output logic  [ 3:0] awcache;
    output logic  [ 2:0] awprot;
    output logic         awvalid;
    input  logic         awready;
    output logic  [ 3:0] wid;
    output logic  [31:0] wdata;
    output logic  [ 3:0] wstrb;
    output logic         wlast;
    output logic         wvalid;
    input  logic         wready;
    input  logic  [ 3:0] bid;
    input  logic  [ 1:0] bresp;
    input  logic         bvalid;
    output logic         bready;

   output [31:0]        debug_wb_pc;        // 写回级的PC
   output [31:0]        debug_wb_rf_wdata;  // 写回的数据
   output [3:0]         debug_wb_rf_wen;    // 写回级的写使能
   output [4:0]         debug_wb_rf_wnum;   // 写寄存器的地址

    //logic rst;
    logic [2:0]         PCSel_o;

    logic [31:0]        JumpAddr_o;//PCSel多�?�器
    logic [31:0]        BranchAddr_o;
    logic [31:0]        PC_4_o;
    //logic [31:0]        EPCData_o;

    logic [1:0]         ID_EXTOp_o;
    logic [1:0]         ID_rsrtRead_o;

    logic               ID_RF_ForwardA;
    logic               ID_RF_ForwardB;
    logic               ID_CP0_Forward;
    logic [31:0]        ID_BusA1_o;
    logic [31:0]        ID_BusB1_o;
    logic [31:0]        RF_Bus_o;
    logic [31:0]        HI_Bus_o;
    logic [31:0]        LO_Bus_o;
    logic [31:0]        CP0_Bus_o;

    //�?有与流水线寄存器相关的信号，数据都是x.  *_o后缀的都是其他的�?些信号（至少它与流水线寄存器无关，）
// *******************************Johnson Yang & WTH &Juan **********/
    // logic [31:0]        data_sram_addr_o;         //虚地址 data
    // logic [31:0]        inst_sram_addr_o;
    ExceptinPipeType    EXE_ExceptType_new; 
    logic               IFID_Flush_Exception_o;   //Exception 传出的IFID_flush信号
    logic               IFID_Flush_BranchSolvement_o;
    logic               IDEXE_Flush_Exception_o;  //Exception 传出的IDEXE_flush信号
    logic               IDEXE_Flush_DataHazard_o; //LOAD指令后的阻塞
    logic [1:0]         IsExceptionorEret_o;      //送给PCSEL
    logic               EXEMEM_Flush_Exception_o;  //Exception 传出的IDEXE_flush信号
    logic               MEM_IsDelaySlot_o;        //访存阶段是否是延迟槽（�?�给CP0�?
    logic [31:0]        MEM_CP0Epc_o;             //送给PC的MUX做为被�?�择的数据信�?
    AsynExceptType      Interrupt_o;              //6个外部硬件中断输�?
    logic               CP0TimerInterrupt_o;      //定时器中�?
    logic [31:0]        MEM_SWData_o;             //Store类型写入data_sram写数�?
    //CP0寄存器的定义
    logic [31:0]        CP0BadVAddr;              //8号寄存器  BadVAddr寄存器的�?:�?新地�?相关例外的出错地�?
    logic [31:0]        CP0Count;                 //9号寄存器  Count寄存器的�?
    logic [31:0]        CP0Compare;               //11号寄存器 Compare寄存器的�?
    logic [31:0]        CP0Status;                //12号寄存器 Status寄存器的�?
    logic [31:0]        CP0Cause;                 //13号寄存器 Cause寄存器的�?
    logic [31:0]        CP0Epc;                   //14号寄存器 EPC寄存器的�?
    logic [31:0]        WB_DMResult_o;
//---------------------------------------------seddon
    logic [1:0]         EXE_ForwardA_o,EXE_ForwardB_o; 
    logic [31:0]        EXE_OutA_o,EXE_OutB_o;
    logic [31:0]        WB_Result_o;
    logic [31:0]        MEM_Result_o;   //用于旁路的来自EXEMEM的数据
    logic [31:0]        EXE_ResultA_o,EXE_ResultB_o;
    logic [31:0]        EXE_MULTDIVtoLO;
    logic [31:0]        EXE_MULTDIVtoHI;
    logic               EXE_Finish;   
    logic               EXE_MULTDIVStall;    
    logic               DH_IF_PCWr_o;
    logic               DH_IF_IDWr_o;   

    logic               IF_PCWr;   
    logic               IF_IDWr;
    logic               ID_EXEWr;
    logic               EXE_MEMWr;
    logic               MEM_WBWr;  
    logic               IFID_Flush;
    logic               IDEXE_Flush;
    logic               EXEMEM_Flush;
    logic               MEMWB_Flush;      
    logic               HiLo_Not_Flush;
    logic               MEMWB_DisWr; 
    RegsWrType          WB_Final_Wr;   // WB级最终的写使能信号
//------------------------seddonend

    logic [31:0]        ID_CP0DataOut_o;

    assign Interrupt_o   =  {ext_int[0],ext_int[1],ext_int[2],ext_int[3],ext_int[4],ext_int[5]};  //硬件中断信号
    assign x.rst       =  ~aresetn;                       //高电平有效的复位信号
    // assign x.IF_PCWr = (IFID_Flush_Exception_o)? 1: DH_IF_PCWr_o & ~EXE_MULTDIVStall;    //在load & R型的时候 以及乘除法的时候产生
    // assign x.IF_IDWr = DH_IF_IDWr_o & ~EXE_MULTDIVStall;    //在load & R型的时候 以及乘除法的时候产生
    // assign x.ID_EXEWr = ~EXE_MULTDIVStall;
    // assign x.EXE_MEMWr = 1;
    // assign x.MEM_WBWr = 1;
    assign x.IF_PCWr       =    IF_PCWr  ;
    assign x.IF_IDWr       =    IF_IDWr  ;
    assign x.ID_EXEWr      =    ID_EXEWr ;
    assign x.EXE_MEMWr     =    EXE_MEMWr;
    assign x.MEM_WBWr      =    MEM_WBWr ;
    assign x.IFID_Flush    =    IFID_Flush;
    assign x.IDEXE_Flush   =    IDEXE_Flush;
    assign x.EXEMEM_Flush  =    EXEMEM_Flush;
    assign x.MEMWB_Flush   =    MEMWB_Flush;

    // assign x.IFID_Flush  =  IFID_Flush_Exception_o | 
                        //    IFID_Flush_BranchSolvement_o;  // 在branch solvement级和 exception级 都会产生IFID_Flush信号
    // assign x.IDEXE_Flush = IDEXE_Flush_Exception_o | 
                        //    IDEXE_Flush_DataHazard_o;      // 在（先Store 后LOAD阻塞级）和 exception级 都会产生IDEXE_Flush信号

    PipeLineRegsInterface x(
        //input
        .clk(aclk)
        //.rst(~aresetn)
    );

    CPU_Bus_Interface cpu_ibus();
    CPU_Bus_Interface cpu_dbus();
    AXI_Bus_Interface axi_ibus();
    AXI_Bus_Interface axi_dbus();
    AXI_UNCACHE_Interface axi_ubus();

    WrFlushControl U_WRFLUSHControl (
    // input 
        // Flush 
        .IFID_Flush_Exception_o (IFID_Flush_Exception_o ),
        .IDEXE_Flush_Exception_o(IDEXE_Flush_Exception_o),
        .EXEMEM_Flush_Exception_o(EXEMEM_Flush_Exception_o),
        // Wr
        .DH_IF_PCWr_o(DH_IF_PCWr_o),
        .DH_IF_IDWr_o(DH_IF_IDWr_o),
        .IDEXE_Flush_DataHazard_o(IDEXE_Flush_DataHazard_o), // 以上三个是数据冒险的3个控制信号
        .DIVMULTBusy(EXE_MULTDIVStall),
        .IsExceptionorEret_o(IsExceptionorEret_o),
        .BranchFailed(IFID_Flush_BranchSolvement_o),
        .ID_IsAImmeJump(x.ID_IsAImmeJump),
        // .Icache_addr_ok(cpu_ibus.addr_ok),  // 1表示cache空闲 0表示cache miss
        .Icache_data_ok(cpu_ibus.data_ok),
        .Icache_busy(~cpu_ibus.addr_ok),  // addr_ok = 1表示cache空闲
        .Dcache_data_ok(cpu_dbus.data_ok),
        .Dcache_busy(~cpu_dbus.addr_ok),  // addr_ok = 1表示cache空闲
    // output
        .IF_PCWr(IF_PCWr),
        .IF_IDWr(IF_IDWr),
        .ID_EXEWr(ID_EXEWr),
        .EXE_MEMWr(EXE_MEMWr),
        .MEM_WBWr(MEM_WBWr),

        .IFID_Flush(IFID_Flush),
        .IDEXE_Flush(IDEXE_Flush),
        .EXEMEM_Flush(EXEMEM_Flush),
        .MEMWB_Flush(MEMWB_Flush),
        .MEMWB_DisWr(MEMWB_DisWr),
        .HiLo_Not_Flush(HiLo_Not_Flush),
        .IcacheFlush(cpu_ibus.flush),
        .DcacheFlush(cpu_dbus.flush)
    ); 

    MUX8to1 U_PCMUX(
        //input
        .d0(PC_4_o),
        .d1(JumpAddr_o),
        .d2(MEM_CP0Epc_o),
        .d3(32'hBFC00380),
        .d4(BranchAddr_o),
        .d5(EXE_OutA_o),
        .sel8_to_1(PCSel_o),
        //output
        .y(x.IF_NPC)
    );
    assign PC_4_o = x.IF_PC + 4;
    assign x.IF_PCAdd1 = PC_4_o;  //这里由于sram的原因，pc和指令会�?4，所以不用PC_4_o，就用PC来表示PC_4_o


    assign JumpAddr_o = {x.ID_PCAdd1[31:28],x.ID_Instr[25:0],2'b0};

    assign BranchAddr_o = x.EXE_PCAdd1+{x.EXE_Imm32[29:0],2'b0};

    PCSEL U_PCSEL(
        //input
        .isBranch(IFID_Flush_BranchSolvement_o),//
        .isImmeJump(x.ID_IsAImmeJump),
        .isExceptorERET(IsExceptionorEret_o),
        .EXE_BranchType(x.EXE_BranchType),
        //output
        .PCSel(PCSel_o)
    );


    // ICache U_ICache(
    //     //input
    //     .IF_PC(x.IF_PC),
    //     //output
    //     .IF_Instr(x.IF_Instr)
    // );
    // always@(posedge clk) begin
    // `ifdef DEBUG
    //     $monitor("PC=%8x ; Instr=%8x",x.IF_PC,x.IF_Instr);
    // `endif 
    
    // end
    /*********************************AXI模块接口的实例化**********************************/
    AXIInteract   AXIInteract_dut (
    .clk (aclk ),
    .resetn (aresetn ),
    .DcacheAXIBus (axi_dbus.slave ),
    .IcacheAXIBus (axi_ibus.slave ),
    .UncacheAXIBus(axi_ubus.slave) ,
    .m_axi_arid (arid ),
    .m_axi_araddr (araddr ),
    .m_axi_arlen (arlen ),
    .m_axi_arsize (arsize ),
    .m_axi_arburst (arburst ),
    .m_axi_arlock (arlock ),
    .m_axi_arcache (arcache ),
    .m_axi_arprot (arprot ),
    .m_axi_arvalid (arvalid ),
    .m_axi_arready (arready ),
    .m_axi_rid (rid ),
    .m_axi_rdata (rdata ),
    .m_axi_rresp (rresp ),
    .m_axi_rlast (rlast ),
    .m_axi_rvalid (rvalid ),
    .m_axi_rready (rready ),
    .m_axi_awid (awid ),
    .m_axi_awaddr (awaddr ),
    .m_axi_awlen (awlen ),
    .m_axi_awsize (awsize ),
    .m_axi_awburst (awburst ),
    .m_axi_awlock (awlock ),
    .m_axi_awcache (awcache ),
    .m_axi_awprot (awprot ),
    .m_axi_awvalid (awvalid ),
    .m_axi_awready (awready ),
    .m_axi_wid (wid ),
    .m_axi_wdata (wdata ),
    .m_axi_wstrb (wstrb ),
    .m_axi_wlast (wlast ),
    .m_axi_wvalid (wvalid ),
    .m_axi_wready (wready ),
    .m_axi_bid (bid ),
    .m_axi_bresp (bresp ),
    .m_axi_bvalid (bvalid ),
    .m_axi_bready  (bready)
  );

    
    /*********************************ICache的实例化**************************************/
    ICache U_ICache(
        .clk(aclk),
        .resetn(aresetn),
        .CPUBus(cpu_ibus.slave),
        .AXIBus(axi_ibus.master)
    );

    /**********************************   Icache接口支持   **********************************/
    assign x.IF_Instr     = cpu_ibus.rdata;
    assign {cpu_ibus.tag,cpu_ibus.index,cpu_ibus.offset}  = x.IF_NPC;    // 如果D$ busy 则将PC送给I$ ,否则送NPC
    assign cpu_ibus.valid = (IFID_Flush_Exception_o)?1'b1:(IDEXE_Flush_DataHazard_o || IF_IDWr == 1'b0)?1'b0:1'b1;
    assign cpu_ibus.op    = 1'b0;
    assign cpu_ibus.wstrb = 'x;
    assign cpu_ibus.wdata = 'x;
    assign cpu_ibus.ready = IF_IDWr;

    // assign inst_sram_en    = (resetn) ? x.IF_PCWr : 0; //resten高电�? & IF_PCWr�?1 读取数据
    // assign inst_sram_wen   = 4'b0000;
    // assign inst_sram_wdata = 32'b0;
   
    // MMU U_MMU_inst_sram(
    //     .virt_addr(inst_sram_addr_o),
    //     .phsy_addr(inst_sram_addr)
    // );因为加了cache所以不需要了

    Control U_Control(
        //input
        .ID_Instr(x.ID_Instr),
        //output
        .ID_ALUOp(x.ID_ALUOp),
        .ID_LoadType(x.ID_LoadType),
        .ID_StoreType(x.ID_StoreType),
        .ID_RegsWrType(x.ID_RegsWrType),
        .ID_WbSel(x.ID_WbSel),
        .ID_DstSel(x.ID_DstSel),
        .ID_ExceptType(x.ID_ExceptType),
        .ID_ALUSrcA(x.ID_ALUSrcA),
        .ID_ALUSrcB(x.ID_ALUSrcB),
        .ID_RegsReadSel(x.ID_RegsReadSel),
        .ID_EXTOp(ID_EXTOp_o),
        .ID_isImmeJump(x.ID_IsAImmeJump),
        .ID_BranchType(x.ID_BranchType),
        .ID_shamt(x.ID_shamt),
        .ID_rsrtRead(ID_rsrtRead_o)
    );

    RF U_RF (
        .clk(aclk),
        .rst(aresetn),
        .WB_Dst(x.WB_Dst),
        .WB_Result(WB_Result_o),
        .RFWr(WB_Final_Wr.RFWr),
        .ID_rs(x.ID_rs),
        .ID_rt(x.ID_rt),
        .ID_BusA(ID_BusA1_o),
        .ID_BusB(ID_BusB1_o)
    );

    assign ID_RF_ForwardA = x.WB_RegsWrType.RFWr && (x.WB_Dst==x.ID_rs);
    assign ID_RF_ForwardB = x.WB_RegsWrType.RFWr && (x.WB_Dst==x.ID_rt);
    assign ID_CP0_Forward = x.WB_RegsWrType.CP0Wr && (x.WB_Dst == x.ID_rd);
    // 关于同一个时刻即写入，有读取的处理单元
    // HILO在其内部进行了处理，因此没有出现在MUX中
    MUX2to1 #(32) U_MUX_RF_FORWARDA ( 
        .d0(ID_BusA1_o),
        .d1(WB_Result_o),
        .sel2_to_1(ID_RF_ForwardA),
        .y(x.ID_BusA)
    );

    MUX2to1 #(32) U_MUX_RF_FORWARDB ( 
        .d0(ID_BusB1_o),
        .d1(WB_Result_o),
        .sel2_to_1(ID_RF_ForwardB),
        .y(RF_Bus_o)
    );

    MUX2to1 #(32) U_MUX_CP0_FORWARD ( 
        .d0(ID_CP0DataOut_o),
        .d1(WB_Result_o),
        .sel2_to_1(ID_CP0_Forward),
        .y(CP0_Bus_o)
    );
    //处理在异常情况下有写HiLo发生 (也可用作为是否产生异常的判断 为1：没有异常)
    // assign HiLo_Not_Flush = (IsExceptionorEret_o == `IsNone) ? 1'b1:1'b0;
    HILO U_HILO (
        .clk(aclk),
        .rst(aresetn),
        .MULT_DIV_finish(EXE_Finish & HiLo_Not_Flush),
        .HIWr(x.EXE_RegsWrType.HIWr & HiLo_Not_Flush), //把写HI，LO统一在EXE级
        .LOWr(x.EXE_RegsWrType.LOWr & HiLo_Not_Flush),
        .Data_i(EXE_OutA_o),
        .EXE_MULTDIVtoLO(EXE_MULTDIVtoLO),
        .EXE_MULTDIVtoHI(EXE_MULTDIVtoHI),
        .HI_o(HI_Bus_o),
        .LO_o(LO_Bus_o)
    );

    EXT U_EXT ( 
        .EXE_EXTOp(ID_EXTOp_o),
        .ID_Imm16(x.ID_Imm16),
        .ID_Imm32(x.ID_Imm32)
    );

    MUX4to1 U_MUXBUSB ( 
        .d0(RF_Bus_o),
        .d1(HI_Bus_o),
        .d2(LO_Bus_o),
        .d3(CP0_Bus_o),
        .sel4_to_1(x.ID_RegsReadSel),
        .y(x.ID_BusB)
    );

    DataHazard U_DataHazard ( 
        //input
        .ID_rs(x.ID_rs),
        .ID_rt(x.ID_rt),
        .ID_rsrtRead(ID_rsrtRead_o),
        .EXE_rt(x.EXE_rt),
        .EXE_ReadMEM(x.EXE_LoadType.ReadMem),
        .EXE_isStore(x.EXE_StoreType.DMWr),
        .ID_isLoad(x.ID_LoadType.ReadMem),
        //output
        .IF_PCWr(DH_IF_PCWr_o),
        .IF_IDWr(DH_IF_IDWr_o),
        .IDEXE_Flush(IDEXE_Flush_DataHazard_o)
    );
    
//---------------------------------------------seddon
    ForwardUnit U_ForwardUnit (
        .WB_RegsWrType(x.WB_RegsWrType),
        .MEM_RegsWrType(x.MEM_RegsWrType),
        .EXE_rt(x.EXE_rt),
        .EXE_rs(x.EXE_rs),
        .EXE_rd(x.EXE_rd),
        .MEM_Dst(x.MEM_Dst),
        .WB_Dst(x.WB_Dst),
        .EXE_RegsReadSel(x.EXE_RegsReadSel),
        .EXE_ForwardA(EXE_ForwardA_o),
        .EXE_ForwardB(EXE_ForwardB_o)//该模块已�?�?
    );

    BranchSolve U_BranchSolve(
        .EXE_BranchType(x.EXE_BranchType),     //新定义的信号，得在定义里面新�?
        .EXE_OutA(EXE_OutA_o),
        .EXE_OutB(EXE_OutB_o),//INPUT
        .IFID_Flush(IFID_Flush_BranchSolvement_o)//这个阻塞信号的线没有加，只是定义了一�?
    );

    //用于解决旁路ALUOut和OutB的问题
    assign MEM_Forward_data_sel = (x.MEM_WbSel == `WBSel_OutB)?1'b1:1'b0;

    MUX2to1 U_MUXINMEM ( //选择用于旁路的数据来自ALUOut还是OutB
        .d0(x.MEM_ALUOut),
        .d1(x.MEM_OutB),
        .sel2_to_1(MEM_Forward_data_sel),
        .y(MEM_Result_o)
    );

    MUX3to1 U_MUXA(
        .d0(x.EXE_BusA),
        .d1(MEM_Result_o),
        .d2(WB_Result_o),
        .sel3_to_1(EXE_ForwardA_o),
        .y(EXE_OutA_o)
    );//EXE级旁路
    
    MUX4to1 U_MUXB(
        .d0(x.EXE_BusB),
        .d1(MEM_Result_o),
        .d2(WB_Result_o),
        .sel4_to_1(EXE_ForwardB_o),
        .y(EXE_OutB_o)
    );//EXE级旁路

    MUX2to1 U_MUXSrcA(
        .d0(EXE_OutA_o),
        .d1({27'b0,x.EXE_Shamt}),
        .sel2_to_1(x.EXE_ALUSrcA),
        .y(EXE_ResultA_o)
    );//EXE级三选一A之后的那个二选一

    MUX2to1 U_MUXSrcB(
        .d0(EXE_OutB_o),
        .d1(x.EXE_Imm32),
        .sel2_to_1(x.EXE_ALUSrcB),//
        .y(EXE_ResultB_o)
    );//EXE级四选一B之后的那个二选一

    assign x.EXE_OutB = EXE_OutB_o;

    MUX3to1#(5) U_EXEDstSrc(
        .d0(x.EXE_rd),
        .d1(x.EXE_rt),
        .d2(5'd31),
        .sel3_to_1(x.EXE_DstSel),
        .y(x.EXE_Dst)
    );//EXE级Dst三�?�一
    
    ALU U_ALU(
        .EXE_ExceptType(x.EXE_ExceptType),//input
        .EXE_ResultA(EXE_ResultA_o),
        .EXE_ResultB(EXE_ResultB_o),
        .EXE_ALUOp(x.EXE_ALUOp),
        .EXE_ALUOut(x.EXE_ALUOut),         //output
        .EXE_ExceptType_new(EXE_ExceptType_new)
    );

        DCacheWen U_DCACHEWEN(
        .EXE_ALUOut(x.EXE_ALUOut),
        .EXE_StoreType(x.EXE_StoreType),
        .EXE_LoadType(x.EXE_LoadType),
        .EXE_ExceptType(EXE_ExceptType_new),
        
        .EXE_ExceptType_new(x.EXE_ExceptType_final),
        .cache_wen(cpu_dbus.wstrb)                   //给出dcache的写使能信号，
    );

    MULTDIV U_MULTDIV(
        .aclk(aclk),    
        .rst(aresetn),            
        .EXE_ResultA(EXE_ResultA_o),
        .EXE_ResultB(EXE_ResultB_o),
        .ExceptionAssert(~HiLo_Not_Flush),  // 如果产生flush信号，需要清除状态机
        .EXE_ALUOp(x.EXE_ALUOp),
        .EXE_MULTDIVtoLO(EXE_MULTDIVtoLO),
        .EXE_MULTDIVtoHI(EXE_MULTDIVtoHI),
        .EXE_Finish(EXE_Finish),
        .EXE_MULTDIVStall(EXE_MULTDIVStall)
    );
//---------------------------------------------seddonend
    

    PC U_PC(
        x.PC,
        aresetn
    );

    IFID_Reg U_IFID(
        x.IF_ID,
        aresetn
    );

    IDEXE_Reg U_IDEXE(
        x.ID_EXE,
        aresetn
    );

    EXEMEM_Reg U_EXEMEM(
        x.EXE_MEM,
        aresetn
    );

    MEMWB_Reg U_MEMWB(
        x.MEM_WB,
        aresetn
    );

    //TODO 如果拥堵 需要将整个的访存请求都变为MEM级前的流水线寄存器的
    assign cpu_dbus.wdata = x.EXE_OutB;
    assign cpu_dbus.valid = (MEM_WBWr== 1'b0)?1'b0:((x.EXE_LoadType.ReadMem || x.EXE_StoreType.DMWr )  ? 1 : 0);
    assign {cpu_dbus.tag,cpu_dbus.index,cpu_dbus.offset}  = x.EXE_ALUOut;                 // inst_sram_addr_o 虚拟地址
    assign cpu_dbus.op = (x.EXE_LoadType.ReadMem)? 1'b0
                         :(x.EXE_StoreType.DMWr) ? 1'b1
                         :1'bx;
    assign x.MEM_DMOut = cpu_dbus.rdata;       //读取结果直接放入DMOut
    assign cpu_dbus.ready = MEM_WBWr;
    assign cpu_dbus.storeType = x.EXE_StoreType;
    DCache U_DCACHE(
        .clk(aclk),
        .resetn(aresetn),
        .CPUBus(cpu_dbus.slave),
        .AXIBus(axi_dbus.master),
        .UBus(axi_ubus.master)
    );

    // // Ltype信号 & DMWr 写使能信号才会触发data_ram的使�?
    // DCache U_Dachce(
    //     // input
    //     .clk(clk),
    //     .MEM_ALUOut(x.MEM_ALUOut),
    //     .MEM_OutB(x.MEM_OutB),
    //     .MEM_StoreType(x.MEM_StoreType),
    //     .MEM_LoadType(x.MEM_LoadType),
    //     .MEM_ExceptType(x.MEM_ExceptType),
    //     // output
    //     .MEM_ExceptType_new(MEM_ExceptType_AfterDM_o),      //新的异常信号
    //     .data_sram_wen(data_sram_wen),                      //store类型，写入sram的字节使�?
    //     .MEM_SWData(MEM_SWData_o)                           //StoreType要写入的信号
    // 
    // );
    // /**********************************   SRAM接口支持   **********************************/
    // assign data_sram_en = (
    //     (x.EXE_LoadType.ReadMem || x.MEM_StoreType.DMWr )&&   // Ltype信号 & DMWr 写使能信号
    //     !MEM_ExceptType_AfterDM_o.WrWrongAddressinMEM &&      // WR地址正确 LOAD
    //     !MEM_ExceptType_AfterDM_o.RdWrongAddressinMEM         // RD地址正确 store
    //     )  ? 1 : 0; 
    // assign data_sram_wdata = MEM_SWData_o;                    //store类型写入sram的数据



    // assign data_sram_addr_o =  (data_sram_en & (|data_sram_wen)) ? //data_sram总使能为1&data_sram写使能为1 使用store地址，否则使用load地址 
    //                           x.MEM_ALUOut : (data_sram_en) ? //data_sram总使能为1&data_sram写使能为0 使用Load的地址
    //                           x.EXE_ALUOut : 32'bx;    

    Exception U_Exception(
        // input
        .clk(aclk),
        .rst(aresetn),
        .MEM_RegsWrType_i(x.MEM_RegsWrType),                //写信号输�?
        .ExceptType_i(x.MEM_ExceptType),            //将经过DM之后的异常信号做为输�?
        .IsDelaySlot_i(x.WB_IsABranch || x.WB_IsAImmeJump), //延迟槽（�?查WB级的isbranch信号�?
        .CurrentPC_i(x.MEM_PCAdd1 -4),
        //.CurrentInstr_i(x.MEM_Instr),                       //指令
        .CP0Status_i(CP0Status),
        .CP0Cause_i(CP0Cause),
        .CP0Epc_i(CP0Epc),
        .WB_CP0RegWr_i(x.WB_RegsWrType.CP0Wr),              //CP0写使能（用于旁路�?
        .WB_CP0RegWrAddr_i(x.WB_Dst),                       //CP0写地�?（用于旁路）
        .WB_CP0RegWrData_i(WB_Result_o),                    //CP0写结果（用于旁路�?
         // output
        .MEM_RegsWrType_o(x.MEM_RegsWrType_new),            //新的写信�?
        .IFID_Flush(IFID_Flush_Exception_o),                //flush
        .IDEXE_Flush(IDEXE_Flush_Exception_o),                        //flush
        .EXEMEM_Flush(EXEMEM_Flush_Exception_o),                      //flush                      
        .IsExceptionorEret(IsExceptionorEret_o),            //传�?�给PCSEL信号
        .ExceptType_o(x.MEM_ExceptType_final),              //�?终的异常类型
        .IsDelaySlot_o(x.MEM_IsDelaySlot),                  //访存阶段指令是否是延迟槽指令
        .CP0Epc_o(MEM_CP0Epc_o)                               //CP0中EPC寄存器的�?新�??
    );
// WB�?   
    EXT2 U_EXT2(
        .WB_DMOut_i(x.WB_DMOut),
        .WB_ALUOut_i(x.WB_ALUOut),
        .WB_LoadType_i(x.WB_LoadType),
        .WB_DMResult_o(WB_DMResult_o)
    );

    MUX4to1 #(32) U_MUXINWB(
        .d0(x.WB_PCAdd1+4),                                 // JAL,JALR等指�? 将PC+8写回RF
        .d1(x.WB_ALUOut),                                   // ALU计算结果
        .d2(x.WB_OutB),                                     // MTC0 MTHI LO等指令需要写寄存器数�?
        .d3(WB_DMResult_o),                                 // DM结果
        .sel4_to_1(x.WB_WbSel),
        .y(WB_Result_o)                                     // �?终写回结�?
    );
    cp0_reg U_CP0(
        //input
        .rst(aresetn),
        .clk(aclk),
        .CP0Wr_i(WB_Final_Wr.CP0Wr),                    //写使�?
        .CP0WrAddr_i(x.WB_Dst),                             //写回地址
        .CP0WrDataOut_i(WB_Result_o),                       //写入数据
        .CP0RdAddr_i(x.ID_Instr[15:11]),
        .ExceptType_i(x.WB_ExceptType),                     //异常
        .Interrupt_i(Interrupt_o),                          //在调试时assign了全零的�?
        .PCAdd1_i(x.WB_PCAdd1),                             //PC+1
        .IsDelaySlot_i(x.WB_IsDelaySlot),                   //是否延迟�?
        .VirtualAddr_i(x.WB_ALUOut),                        //读取&写入地址未对齐例�? 访问的虚拟地�?

        // output        
        .CP0RdDataOut_o(ID_CP0DataOut_o),
        .CP0BadVAddr_o(CP0BadVAddr),
        .CP0Count_o(CP0Count),
        .CP0Compare_o(CP0Compare),
        .CP0Status_o(CP0Status),
        .CP0Cause_o(CP0Cause),
        .CP0EPC_o(CP0Epc),
        .CP0TimerInterrupt_o(TimerInterrupt_o)              //定时器中�?
        );
    assign WB_Final_Wr = (MEMWB_DisWr)? '0: x.WB_RegsWrType ;  // Dcache 停滞流水线时 wb级数据不能写入RF
    /**********************************   SRAM接口支持   **********************************/
    assign debug_wb_pc = x.WB_PCAdd1-4;                     //写回级的PC,应该是减4
    assign debug_wb_rf_wdata = WB_Result_o;                 //写回�?32位结�?
    assign debug_wb_rf_wen = (WB_Final_Wr.RFWr) ? 4'b1111 : 4'b0000; //4位字节写使能
    assign debug_wb_rf_wnum = x.WB_Dst;                     //写地�?


 

 endmodule

