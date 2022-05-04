 `include "MacroDef.v"
module mips(
    ext_int_in   ,   //high active

    clk      ,
    rst      ,   //low active

    arid      ,
    araddr    ,
    arlen     ,
    arsize    ,
    arburst   ,
    arlock    ,
    arcache   ,
    arprot    ,
    arvalid   ,
    arready   ,

    rid       ,
    rdata     ,
    rresp     ,
    rlast     ,
    rvalid    ,
    rready    ,

    awid      ,
    awaddr    ,
    awlen     ,
    awsize    ,
    awburst   ,
    awlock    ,
    awcache   ,
    awprot    ,
    awvalid   ,
    awready   ,

    wid       ,
    wdata     ,
    wstrb     ,
    wlast     ,
    wvalid    ,
    wready    ,

    bid       ,
    bresp     ,
    bvalid    ,
    bready    ,

    //debug interface
    debug_wb_pc      ,
    debug_wb_rf_wen  ,
    debug_wb_rf_wnum ,
    debug_wb_rf_wdata
);
// 中断信号
    input [5:0]     ext_int_in      ;  //interrupt,high active;
// 时钟与复位信�????
    input           clk      ;
    input           rst      ;   //low active
// 读请求信号�?�道
    output [ 3:0]   arid      ;
    output [31:0]   araddr    ;
    output [ 3:0]   arlen     ;
    output [ 2:0]   arsize    ;
    output [ 1:0]   arburst   ;
    output [ 1:0]   arlock    ;
    output [ 3:0]   arcache   ;
    output [ 2:0]   arprot    ;
    output          arvalid   ;
    input           arready   ;
//读相应信号�?�道
    input [ 3:0]    rid       ;
    input [31:0]    rdata     ;
    input [ 1:0]    rresp     ;
    input           rlast     ;
    input           rvalid    ;
    output          rready    ;
//写请求信号�?�道
    output [ 3:0]   awid      ;
    output [31:0]   awaddr    ;
    output [ 3:0]   awlen     ;
    output [ 2:0]   awsize    ;
    output [ 1:0]   awburst   ;
    output [ 1:0]   awlock    ;
    output [ 3:0]   awcache   ;
    output [ 2:0]   awprot    ;
    output          awvalid   ;
    input           awready   ;
// 写数据信号�?�道
    output [ 3:0]   wid       ;
    output [31:0]   wdata     ;
    output [ 3:0]   wstrb     ;
    output          wlast     ;
    output          wvalid    ;
    input           wready    ;
// 写相应信号�?�道
    input  [3:0]    bid       ;
    input  [1:0]    bresp     ;
    input           bvalid    ;
    output          bready    ;
//debug
    output [31:0]   debug_wb_pc      ;
    output [3:0]    debug_wb_rf_wen  ;
    output [4:0]    debug_wb_rf_wnum ;
    output [31:0]   debug_wb_rf_wdata;


	/*signals defination*/
    //--------------Pre_F---------------//
    wire            PF_AdEL;
	wire            PF_Exception;
	wire [4:0]      PF_ExcCode;
	wire            PF_TLBRill_Exc;//imply the TLB Rill Exception,which has a special exception entry
	wire            PF_TLB_Exc;//include TLB Rill�? TLB Invalid, TLB Modified exception
	wire            PF_valid;
    wire            PF_icache_sel;
    wire            PF_icache_valid;
    wire            PF_uncache_valid;
    wire [18:0]     s0_vpn2;
    wire            s0_odd_page;
    wire [ 7:0]     s0_asid;
    wire            s0_found;
    wire [ 3:0]     s0_index;
    wire [19:0]     s0_pfn;
    wire [ 2:0]     s0_c;
    wire            s0_d;
    wire            s0_v;
    wire [31:0]     PF_PC;
    wire            PF_IFWr;
    wire            PF_Flush;
    wire            PF_Instr_Flush;
	//--------------IF----------------//
    wire            IF_AdEL;
    wire[31:0]      NPC;
    wire[31:0]      IF_PC;
    wire[31:0]      PPC;

    wire            IF_iCache_addr_ok;
	wire            IF_iCache_data_ok;
	wire [31:0]     IF_iCache_rdata;
    wire            IF_icache_rd_req;
	wire [2:0]      IF_icache_rd_type;
	wire [31:0]     IF_icache_rd_addr;
	wire            IF_icache_rd_rdy;
	wire            IF_icache_ret_valid;
	wire            IF_icache_ret_last;
	wire [31:0]     IF_icache_ret_data;
	wire            IF_icache_wr_req;
	wire [2:0]      IF_icache_wr_type;
	wire [31:0]     IF_icache_wr_addr;
	wire [3:0]      IF_icache_wr_wstrb;
	wire [511:0]    IF_icache_wr_data;
	wire            IF_icache_wr_rdy;
    wire            IF_iCache_read_en;

	wire            IF_Exception;
    wire            Temp_IF_Exception;
	wire [4:0]      Temp_IF_ExcCode;
    wire [4:0]      IF_ExcCode;
	wire            IF_TLBRill_Exc;
	wire            IF_TLB_Exc;
	wire            IF_valid;
    wire            IF_icache_sel;
    wire            IF_uncache_valid;
    wire [31:0]     IF_PPC;
    wire [31:0]     Instr;
    wire            IF_uncache_data_ok;
    wire [31:0]     IF_uncache_rdata;
    wire            IF_uncache_rd_req;
    wire            IF_uncache_wr_req;
    wire [2:0]      IF_uncache_rd_type;
    wire [2:0]      IF_uncache_wr_type;
    wire [31:0]     IF_uncache_rd_addr;
    wire [31:0]     IF_uncache_wr_addr;
    wire [31:0]     IF_uncache_wr_data;
    wire [3:0]      IF_uncache_wr_wstrb;
    wire            IF_data_ok;
    wire            IF_rd_req;
    wire            IF_wr_req;
    wire [2:0]      IF_rd_type;
    wire [2:0]      IF_wr_type;
    wire [31:0]     IF_rd_addr;
    wire [31:0]     IF_wr_addr;
    wire [3:0]      IF_wr_wstrb;
    //--------------ID----------------//
    wire [31:0]     ID_PC;
    wire [31:0]     ID_Instr;
    wire            ID_AdEL;
    wire [31:0]     GPR_RS;
    wire [31:0]     GPR_RT;
    wire [1:0]      EXTOp;
    wire [31:0]     Imm32;
    wire            CMPOut1;
    wire [1:0]      CMPOut2;
    wire [31:0]     MUX8Out;
    wire [31:0]     MUX9Out;
    wire [3:0]      MUX7Out;
    wire            ID_dcache_en;
    wire            DMWr;
    wire            RFWr;
    wire            RHLWr;
    wire [1:0]      MUX1Sel;
    wire [2:0]      MUX2_6Sel;
    wire            MUX3Sel;
    wire            DMRd;
    wire [1:0]      NPCOp;
    wire [4:0]      ALU1Op;
    wire            ALU1Sel;
    wire [3:0]      ALU2Op;
    wire            RHLSel_Rd;
	wire [1:0]      RHLSel_Wr;
    wire [2:0]      DMSel;
    wire            B_JOp;
    wire            eret_flush;
    wire            CP0WrEn;
	wire            Exception;
    wire [4:0]      ExcCode;
    wire            isBD;
    wire            isBranch;
    wire            CP0Rd;
    wire            start;
	wire            RHL_visit;

    wire            Temp_ID_Excetion;
    wire            ID_Exception;
	wire [4:0]      ID_ExcCode;
    wire [4:0]      Temp_ID_ExcCode;
	wire            ID_TLBRill_Exc;
	wire            ID_tlb_searchen;
	wire            ID_MUX12Sel;
    wire            ID_MUX11Sel;
	wire            ID_TLB_Exc;
	wire            TLB_flush;
	wire            TLB_writeen;
	wire            TLB_readen;
    wire [1:0]      LoadOp;
    wire [1:0]      StoreOp;
    wire            CMPOut3;
    wire            Branch_flush;
    wire            LL_signal;
    wire            SC_signal;
    wire            movz_movn;
    wire            Jump;
    wire            icache_valid_CI;
	wire            icache_op_CI;
	wire            dcache_valid_CI;
	wire [1:0]      dcache_op_CI;
	//--------------EX----------------//
    wire            EX_isBranch;
    wire            EX_isBusy;
    wire            EX_eret_flush;
    wire            EX_CP0WrEn;
    wire            EX_Exception;
    wire [4:0]      EX_ExcCode;
    wire            EX_isBD;
    wire            EX_RHLSel_Rd;
	wire            EX_DMWr;
    wire            EX_DMRd;
    wire            EX_MUX3Sel;
    wire            EX_ALU1Sel;
	wire            EX_RFWr;
    wire            EX_RHLWr;
    wire [3:0]      EX_ALU2Op;
    wire [1:0]      EX_MUX1Sel;
	wire [1:0]      EX_RHLSel_Wr;
    wire [2:0]      EX_DMSel;
    wire [2:0]      EX_MUX2Sel;
    wire [4:0]      EX_ALU1Op;
    wire [4:0]      EX_RS;
    wire [4:0]      EX_RT;
    wire [4:0]      EX_RD;
    wire [4:0]      EX_shamt;
    wire [31:0]     EX_PC;
	wire [31:0]     EX_GPR_RS;
    wire [31:0]     EX_GPR_RT;
    wire [31:0]     EX_Imm32;
    wire [7:0]      EX_CP0Addr;
	wire            EX_CP0Rd;
    wire            EX_start;
    wire            EX_dcache_en;

    wire [4:0]      MUX1Out;
    wire [31:0]     MUX3Out;
    wire [31:0]     MUX4Out;
    wire [31:0]     MUX5Out;
    wire [31:0]     RHLOut;
    wire [31:0]     ALU1Out;
    wire            Overflow;
	wire [4:0]      Temp_EX_ExcCode;
	wire            EX_TLBRill_Exc;
	wire            EX_tlb_searchen;
	wire            EX_MUX12Sel;
    wire            EX_MUX11Sel;
	wire            EX_TLB_Exc;
	wire            EX_TLB_writeen;
	wire            EX_TLB_readen;
    wire            EX_TLB_flush;
    wire [1:0]      EX_LoadOp;
    wire [1:0]      EX_StoreOp;
    wire [31:0]     MULOut;
    wire            MUL_sign;
    wire            Trap;
    wire            EX_LL_signal;
    wire            EX_SC_signal;
    wire            EX_icache_valid_CI;
	wire            EX_icache_op_CI;
	wire            EX_dcache_valid_CI;
	wire [1:0]      EX_dcache_op_CI;
	//-------------MEM1---------------//
    wire            MEM1_eret_flush;
    wire            MEM1_Exception;
    wire [31:0]     MUX6Out;
    wire            Interrupt;
    wire [31:0]     EPCOut;
    wire [31:0]     CP0Out;
    wire            MEM1_DMWr;
    wire            MEM1_DMRd;
    wire            MEM1_RFWr;
    wire            MEM1_CP0WrEn;
    wire            Temp_M1_Exception;
    wire [4:0]      Temp_M1_ExcCode;
    wire            MEM1_isBD;
    wire [2:0]      MEM1_DMSel;
    wire [2:0]      MEM1_MUX2Sel;
    wire [4:0]      MEM1_RD;
    wire [31:0]     MEM1_PC;
    wire [31:0]     MEM1_RHLOut;
    wire [31:0]     MEM1_ALU1Out;
    wire [31:0]     MEM1_GPR_RT;
    wire [31:0]     MEM1_Imm32;
    wire [7:0]      MEM1_CP0Addr;
    wire            MEM1_CP0Rd;
    wire            MEM1_dcache_en;
    wire            MEM1_Overflow;
    wire [4:0]      MEM1_ExcCode;
    wire [31:0]     MEM1_badvaddr;
    wire [31:0]     MEM1_Paddr;
    wire            MEM1_cache_sel;
    wire            MEM1_dcache_valid;
    wire            DMWen_dcache;
    wire [3:0]      MEM1_dCache_wstrb;
    wire [18:0]     s1_vpn2;
    wire            s1_odd_page;
    wire [ 7:0]     s1_asid;
    wire            s1_found;
    wire [ 3:0]     s1_index;
    wire [19:0]     s1_pfn;
    wire [ 2:0]     s1_c;
    wire            s1_d;
    wire            s1_v;
	wire            MEM1_TLB_Exc;
    wire            MEM1_TLBRill_Exc;
	wire            MEM1_MUX12Sel;
    wire            MEM1_tlb_searchen;
    wire            MEM1_MUX11Sel;
	wire            MEM1_TLB_flush;
	wire            MEM1_TLB_writeen;
	wire            MEM1_TLB_readen;
	wire [31:0]     Index_out;
    wire [31:0]     EntryLo0_out;
    wire [31:0]     EntryLo1_out;
    wire [31:0]     EntryHi_out;
    wire [31:0]     Random_out;
    wire            Temp_MEM1_TLB_Exc;
    wire            Temp_MEM1_TLBRill_Exc;
    wire            MEM1_uncache_valid;
    wire            MEM1_DMen;
    wire [1:0]      MEM1_LoadOp;
    wire [1:0]      MEM1_StoreOp;
    wire [31:0]     MEM1_wdata;
    wire [2:0]      Config_K0_out;
    wire [31:0]     MEM1_MULOut;
    wire            MEM1_start;
    wire            MEM1_Trap;
    wire            MEM1_LL_signal;
    wire            MEM1_SC_signal;
    wire [31:0]     MEM1_SCOut;
    wire            MEM1_icache_valid_CI;
	wire            MEM1_icache_op_CI;
	wire            MEM1_dcache_valid_CI;
	wire [1:0]      MEM1_dcache_op_CI;
    wire            Status_BEV;
    wire            Status_EXL;
    wire            Cause_IV;
	//-------------MEM2---------------//
    wire            MEM2_RFWr;
    wire [4:0]      MEM2_RD;
    wire [31:0]     MUX2Out;
    wire [2:0]      MEM2_MUX2Sel;
    wire [31:0]     MEM2_PC;
    wire [31:0]     MEM2_ALU1Out;
    wire [31:0]     MEM2_MUX6Out;
    wire [31:0]     MEM2_CP0Out;
    wire [2:0]      MEM2_DMSel;
    wire            MEM2_cache_sel;
    wire            MEM2_Exception;
    wire            MEM2_eret_flush;
    wire            MEM2_dcache_en;
    wire [31:0]     MEM2_Paddr;
    wire [3:0]      MEM2_unCache_wstrb;
    wire [31:0]     MEM2_GPR_RT;
    wire            MEM2_DMen;
    wire            DMWen_uncache;
    wire            MEM2_uncache_valid;
    wire [31:0]     DMOut;
    wire            MEM2_DMRd;
    wire            MEM2_CP0Rd;
    wire            MEM2_TLB_writeen;
	wire            MEM2_TLB_readen;
	wire            MEM2_TLB_flush;
    wire [1:0]      MEM2_LoadOp;
    wire [31:0]     MEM2_wdata;
    wire            MEM2_can_go;
    wire [31:0]     MEM2_SCOut;
    wire            MEM2_icache_valid_CI;
    //--------------WB----------------//
    wire [31:0]     WB_PC;
	wire [31:0]     WB_MUX2Out;
	wire [2:0]      WB_MUX2Sel;
	wire [4:0]      WB_RD;
	wire            WB_RFWr;
    wire [31:0]     WB_DMOut;
    wire [31:0]     MUX10Out;
	wire            we;//write enable
    wire [ 3:0]     w_index;
    wire [18:0]     w_vpn2;
    wire [ 7:0]     w_asid;
    wire            w_g;
    wire [19:0]     w_pfn0;
    wire [ 2:0]     w_c0;
    wire            w_d0;
    wire            w_v0;
    wire [19:0]     w_pfn1;
    wire [ 2:0]     w_c1;
    wire            w_d1;
    wire            w_v1;

	wire [ 3:0]     r_index;
    wire [18:0]     r_vpn2;
    wire [ 7:0]     r_asid;
    wire            r_g;
    wire [19:0]     r_pfn0;
    wire [ 2:0]     r_c0;
    wire            r_d0;
    wire            r_v0;
    wire [19:0]     r_pfn1;
    wire [ 2:0]     r_c1;
    wire            r_d1;
    wire            r_v1;
	wire            WB_TLB_flush;
	wire            WB_TLB_writeen;
	wire            WB_TLB_readen;
    wire            WB_icache_valid_CI;
    //-------------ELSE---------------//
    wire            isStall;
    wire            dcache_stall;
    wire            MUX7Sel;
    wire [1:0]      MUX8Sel;
    wire [1:0]      MUX9Sel;
    wire [1:0]      MUX4Sel;
    wire [1:0]      MUX5Sel;
    wire            PCWr;
    wire            IF_IDWr;
    wire            ID_EXWr;
    wire            EX_MEM1Wr;
    wire            MEM1_MEM2Wr;
    wire            MEM2_WBWr;
    wire            PC_Flush;
    wire            IF_Flush;
    wire            ID_Flush;
    wire            EX_Flush;
    wire            MEM1_Flush;
    wire            MEM2_Flush;
    wire            Invalidate_signal;
    wire            MEM_dCache_addr_ok;
    wire            MEM_dCache_data_ok;
    wire [31:0]     dcache_Out;
  	wire            MEM_dcache_rd_req;
    wire [2:0]      MEM_dcache_rd_type;
    wire [31:0]     MEM_dcache_rd_addr;
    wire            MEM_dcache_rd_rdy;
	wire            MEM_dcache_ret_valid;
    wire            MEM_dcache_ret_last;
    wire [31:0]     MEM_dcache_ret_data;
    wire            MEM_dcache_wr_req;
    wire [2:0]      MEM_dcache_wr_type;
    wire [31:0]     MEM_dcache_wr_addr;
	wire [3:0]      MEM_dcache_wr_wstrb;
    wire [511:0]    MEM_dcache_wr_data;
    wire            MEM_dcache_wr_rdy;
    wire            MEM_unCache_data_ok;
    wire [31:0]     uncache_Out;
    wire            MEM_uncache_rd_req;
    wire            MEM_uncache_wr_req;
    wire [2:0]      MEM_uncache_rd_type;
    wire [2:0]      MEM_uncache_wr_type;
    wire [31:0]     MEM_uncache_rd_addr;
    wire [31:0]     MEM_uncache_wr_addr;
    wire [3:0]      MEM_uncache_wr_wstrb;
    wire [31:0]     MEM_uncache_wr_data;
    wire [31:0]     cache_Out;
    wire            MEM_data_ok;
    wire            MEM_rd_req;
    wire            MEM_wr_req;
    wire [2:0]      MEM_rd_type;
    wire [2:0]      MEM_wr_type;
    wire [31:0]     MEM_rd_addr;
    wire [31:0]     MEM_wr_addr;
    wire [3:0]      MEM_wr_wstrb;

/**************DATA PATH***************/
    //--------------PF----------------//
PC U_PC (
    .clk(clk),.rst(rst),.PCWr(PCWr),.PC_Flush(PC_Flush),
    .NPC(NPC),.Instr_Flush(Jump|MEM1_Exception|MEM1_eret_flush|Interrupt|WB_TLB_flush),

	.PF_PC(PF_PC),.PF_Instr_Flush(PF_Instr_Flush)
);

instr_fetch_pre U_INSTR_FETCH(
    PF_PC,PCWr,s0_found,s0_v,s0_pfn,s0_c,IF_uncache_data_ok,
    isStall,TLB_flush,EX_TLB_flush,MEM1_TLB_flush,MEM2_TLB_flush,
    WB_TLB_flush,Config_K0_out,Branch_flush,PF_Instr_Flush,
    icache_valid_CI, EX_icache_valid_CI, MEM1_icache_valid_CI,
    MEM2_icache_valid_CI, WB_icache_valid_CI,

    PF_AdEL,PF_TLB_Exc,PF_ExcCode,PF_TLBRill_Exc,PF_Exception,PPC,
    PF_valid,Invalidate_signal,PF_icache_sel,PF_icache_valid,
    PF_uncache_valid
    );

icache U_ICACHE(
	.clk(clk), .resetn(rst), .exception(MEM1_Exception || MEM1_eret_flush || IF_TLB_Exc), .stall(isStall),
	// cpu && cache
	/*input*/
  	.valid(PF_icache_valid), .index(PF_PC[11:6]), .tag(IF_PPC[31:12]), .offset(PF_PC[5:0]),
	/*output*/
	.addr_ok(IF_iCache_addr_ok), .data_ok(IF_iCache_data_ok), .rdata(IF_iCache_rdata),
	//cache && axi
	/*input*/
  	.rd_rdy(IF_icache_rd_rdy),
	.ret_valid(IF_icache_ret_valid),.ret_last(IF_icache_ret_last),
	.ret_data(IF_icache_ret_data),.wr_rdy(IF_icache_wr_rdy),
	/*output*/
	.rd_req(IF_icache_rd_req),.wr_req(IF_icache_wr_req),.rd_type(IF_icache_rd_type),
	.wr_type(IF_icache_wr_type),.rd_addr(IF_icache_rd_addr),.wr_addr(IF_icache_wr_addr),
	.wr_wstrb(IF_icache_wr_wstrb), .wr_data(IF_icache_wr_data),
    .valid_CI(MEM1_icache_valid_CI), .op_CI(MEM1_icache_op_CI), .index_CI(MEM1_ALU1Out[11:6]),
    .way_CI(MEM1_ALU1Out[12]), .tag_CI(MEM2_Paddr[31:12])
	);
	//--------------IF----------------//
PF_IF U_PF_IF(
		//input
		.clk(clk),.rst(rst),.wr(PF_IFWr),.PF_PC(PF_PC),.PF_Exception(PF_Exception),
        .PF_ExcCode(PF_ExcCode),.PF_TLBRill_Exc(PF_TLBRill_Exc),.PF_TLB_Exc(PF_TLB_Exc),
        .valid(PF_valid),.icache_sel(PF_icache_sel),.uncache_valid(PF_uncache_valid),
        .PPC(PPC),.PF_Flush(PF_Flush),

		//output
		.IF_PC(IF_PC),.IF_Exception(IF_Exception),.IF_ExcCode(IF_ExcCode),.IF_TLBRill_Exc(IF_TLBRill_Exc),
		.IF_TLB_Exc(IF_TLB_Exc), .IF_valid(IF_valid), .IF_icache_sel(IF_icache_sel),
        .IF_uncache_valid(IF_uncache_valid), .IF_PPC(IF_PPC)
	);
uncache_im U_UNCACHE_IM(
        .clk(clk), .resetn(rst),
        //CPU_Pipeline side
        /*input*/   .valid(IF_uncache_valid), .addr(IF_PPC),
        /*output*/  .data_ok(IF_uncache_data_ok), .rdata(IF_uncache_rdata),
        //AXI-Bus side
        /*input*/   .rd_rdy(IF_icache_rd_rdy), .wr_rdy(IF_icache_wr_rdy),
        .ret_valid(IF_icache_ret_valid), .ret_last(IF_icache_ret_valid), .ret_data(IF_icache_ret_data),
        /*output*/  .rd_req(IF_uncache_rd_req), .wr_req(IF_uncache_wr_req),
        .rd_type(IF_uncache_rd_type), .wr_type(IF_uncache_wr_type), .rd_addr(IF_uncache_rd_addr),
        .wr_addr(IF_uncache_wr_addr), .wr_wstrb(IF_uncache_wr_wstrb), .wr_data(IF_uncache_wr_data)
);

cache_select_im U_CACHE_SELECT_IM(
    IF_icache_sel, IF_uncache_rdata, IF_iCache_rdata, IF_uncache_data_ok,
    IF_iCache_data_ok,IF_uncache_rd_req, IF_icache_rd_req, IF_uncache_wr_req,
    IF_icache_wr_req,IF_uncache_rd_type, IF_icache_rd_type, IF_uncache_wr_type,
    IF_icache_wr_type,IF_uncache_rd_addr, IF_icache_rd_addr, IF_uncache_wr_addr,
    IF_icache_wr_addr,IF_uncache_wr_wstrb, IF_icache_wr_wstrb,

    Instr, IF_data_ok, IF_rd_req, IF_wr_req, IF_rd_type, IF_wr_type, IF_rd_addr,
    IF_wr_addr, IF_wr_wstrb
    );

    //--------------ID----------------//
IF_ID U_IF_ID(
		.clk(clk), .rst(rst),.IF_IDWr(IF_IDWr),.IF_Flush(IF_Flush),.IF_PC(IF_PC),
        .Instr(Instr&{32{!Invalidate_signal}}), .IF_Exception(IF_Exception&(~PF_Instr_Flush)),
		.IF_ExcCode(IF_ExcCode),.IF_TLBRill_Exc(IF_TLBRill_Exc&(~PF_Instr_Flush)),
        .IF_TLB_Exc(IF_TLB_Exc&(~PF_Instr_Flush)),

		.ID_PC(ID_PC), .ID_Instr(ID_Instr),.Temp_ID_Excetion(Temp_ID_Excetion),
		.Temp_ID_ExcCode(Temp_ID_ExcCode),.ID_TLBRill_Exc(ID_TLBRill_Exc),.ID_TLB_Exc(ID_TLB_Exc)
	);

rf U_RF(
		.Addr1(ID_Instr[25:21]), .Addr2(ID_Instr[20:16]), .Addr3(WB_RD),
		.WD(MUX10Out), .RFWr(WB_RFWr), .clk(clk),

		.rst(rst), .RD1(GPR_RS), .RD2(GPR_RT)
	);

ext U_EXT(
		.Imm16(ID_Instr[15:0]), .EXTOp(EXTOp),

		.Imm32(Imm32)
    );

cmp U_CMP(
		.GPR_RS(MUX8Out), .GPR_RT(MUX9Out),

		.CMPOut1(CMPOut1), .CMPOut2(CMPOut2),.CMPOut3(CMPOut3)
	);

mux7 U_MUX7(
		.WRSign({ID_dcache_en, DMWr, RFWr, RHLWr}), .MUX7Sel(MUX7Sel),

		.MUX7Out(MUX7Out)
	);

mux8 U_MUX8(
		.GPR_RS(GPR_RS), .data_MEM1(MUX6Out), .data_MEM2(MUX2Out), .MUX8Sel(MUX8Sel),

		.out(MUX8Out)
	);

mux9 U_MUX9(
		.GPR_RT(GPR_RT), .data_MEM1(MUX6Out), .data_MEM2(MUX2Out), .MUX9Sel(MUX9Sel),

		.out(MUX9Out)
	);

ctrl U_CTRL(
		.clk(clk),.rst(rst),.OP(ID_Instr[31:26]),.Funct(ID_Instr[5:0]),.rt(ID_Instr[20:16]),.CMPOut1(CMPOut1),
		.CMPOut2(CMPOut2),.rs(ID_Instr[25:21]),.EXE_isBranch(EX_isBranch),.Temp_ID_Excetion(Temp_ID_Excetion),
        .IF_Flush(IF_Flush),.Temp_ID_ExcCode(Temp_ID_ExcCode),.ID_TLB_Exc(ID_TLB_Exc),.rd(ID_Instr[15:11]),
        .CMPOut3(CMPOut3),.shamt(ID_Instr[10:6]),

		.MUX1Sel(MUX1Sel),.MUX2Sel(MUX2_6Sel),.MUX3Sel(MUX3Sel),.RFWr(RFWr),.RHLWr(RHLWr),.DMWr(DMWr),.DMRd(DMRd),
		.NPCOp(NPCOp),.EXTOp(EXTOp),.ALU1Op(ALU1Op),.ALU1Sel(ALU1Sel),.ALU2Op(ALU2Op),.RHLSel_Rd(RHLSel_Rd),
		.RHLSel_Wr(RHLSel_Wr),.DMSel(DMSel), .B_JOp(B_JOp),.eret_flush(eret_flush),.CP0WrEn(CP0WrEn),
		.ID_Exception(ID_Exception),.ID_ExcCode(ID_ExcCode),.isBD(isBD),.isBranch(isBranch),.CP0Rd(CP0Rd),.start(start),
		.RHL_visit(RHL_visit),.dcache_en(ID_dcache_en),.ID_tlb_searchen(ID_tlb_searchen),.ID_MUX11Sel(ID_MUX11Sel),
        .ID_MUX12Sel(ID_MUX12Sel),.TLB_flush(TLB_flush),.TLB_writeen(TLB_writeen),.TLB_readen(TLB_readen),
        .LoadOp(LoadOp),.StoreOp(StoreOp),.movz_movn(movz_movn),.Branch_flush(Branch_flush),.LL_signal(LL_signal),
        .SC_signal(SC_signal),.Jump(Jump), .icache_valid_CI(icache_valid_CI), .icache_op_CI(icache_op_CI),
        .dcache_valid_CI(dcache_valid_CI), .dcache_op_CI(dcache_op_CI)
	);

	//--------------EX----------------//
ID_EX U_ID_EX(
		.clk(clk), .rst(rst), .ID_EXWr(ID_EXWr),.RHLSel_Rd(RHLSel_Rd), .PC(ID_PC), .ALU1Op(ALU1Op), .ALU2Op(ALU2Op),
		.MUX1Sel(MUX1Sel), .MUX3Sel(MUX3Sel),.ALU1Sel(ALU1Sel), .DMWr(MUX7Out[2]), .DMSel(DMSel), .DMRd(DMRd),
		.RFWr(MUX7Out[1]&movz_movn), .RHLWr(MUX7Out[0]),.RHLSel_Wr(RHLSel_Wr), .MUX2Sel(MUX2_6Sel),
		.GPR_RS(MUX8Out), .GPR_RT(MUX9Out), .RS(ID_Instr[25:21]),.RT(ID_Instr[20:16]), .RD(ID_Instr[15:11]),
		.Imm32(Imm32), .shamt(ID_Instr[10:6]), .eret_flush(eret_flush), .ID_Flush(ID_Flush), .CP0WrEn(CP0WrEn),
		.Exception(ID_Exception), .ExcCode(ID_ExcCode), .isBD(isBD), .isBranch(isBranch),
		.CP0Addr({ID_Instr[15:11], ID_Instr[2:0]}), .CP0Rd(CP0Rd), .start(start & ~EX_isBusy),.ID_dcache_en(MUX7Out[3]),
		.ID_TLBRill_Exc(ID_TLBRill_Exc),.ID_tlb_searchen(ID_tlb_searchen),.ID_MUX11Sel(ID_MUX11Sel),.ID_MUX12Sel(ID_MUX12Sel),
		.ID_TLB_Exc(ID_TLB_Exc),.TLB_flush(TLB_flush),.TLB_writeen(TLB_writeen),.TLB_readen(TLB_readen),.LoadOp(LoadOp),
        .StoreOp(StoreOp),.LL_signal(LL_signal),.SC_signal(SC_signal), .icache_valid_CI(icache_valid_CI),
        .icache_op_CI(icache_op_CI),.dcache_valid_CI(dcache_valid_CI), .dcache_op_CI(dcache_op_CI),

		.EX_eret_flush(EX_eret_flush), .EX_CP0WrEn(EX_CP0WrEn), .EX_Exception(EX_Exception),
		.EX_ExcCode(EX_ExcCode), .EX_isBD(EX_isBD), .EX_isBranch(EX_isBranch), .EX_RHLSel_Rd(EX_RHLSel_Rd),
	 	.EX_DMWr(EX_DMWr), .EX_DMRd(EX_DMRd), .EX_MUX3Sel(EX_MUX3Sel), .EX_ALU1Sel(EX_ALU1Sel),
		.EX_RFWr(EX_RFWr), .EX_RHLWr(EX_RHLWr), .EX_ALU2Op(EX_ALU2Op), .EX_MUX1Sel(EX_MUX1Sel),
		.EX_RHLSel_Wr(EX_RHLSel_Wr), .EX_DMSel(EX_DMSel), .EX_MUX2Sel(EX_MUX2Sel), .EX_ALU1Op(EX_ALU1Op),
		.EX_RS(EX_RS), .EX_RT(EX_RT), .EX_RD(EX_RD), .EX_shamt(EX_shamt), .EX_PC(EX_PC),
		.EX_GPR_RS(EX_GPR_RS), .EX_GPR_RT(EX_GPR_RT), .EX_Imm32(EX_Imm32), .EX_CP0Addr(EX_CP0Addr),
		.EX_CP0Rd(EX_CP0Rd), .EX_start(EX_start),.EX_dcache_en(EX_dcache_en),.EX_TLBRill_Exc(EX_TLBRill_Exc),
		.EX_tlb_searchen(EX_tlb_searchen),.EX_MUX11Sel(EX_MUX11Sel),.EX_MUX12Sel(EX_MUX12Sel),
		.EX_TLB_Exc(EX_TLB_Exc),.EX_TLB_flush(EX_TLB_flush),.EX_TLB_writeen(EX_TLB_writeen),.EX_TLB_readen(EX_TLB_readen),
        .EX_LoadOp(EX_LoadOp),.EX_StoreOp(EX_StoreOp),.EX_LL_signal(EX_LL_signal),.EX_SC_signal(EX_SC_signal),
        .EX_icache_valid_CI(EX_icache_valid_CI), .EX_icache_op_CI(EX_icache_op_CI),
        .EX_dcache_valid_CI(EX_dcache_valid_CI), .EX_dcache_op_CI(EX_dcache_op_CI)
	);

mux1 U_MUX1(
		.RT(EX_RT), .RD(EX_RD), .MUX1Sel(EX_MUX1Sel),

		 .Addr3(MUX1Out)
	);

mux3 U_MUX3(
		.RD2(MUX5Out), .Imm32(EX_Imm32), .MUX3Sel(EX_MUX3Sel),

		.B(MUX3Out)
	);

mux4 U_MUX4(
		.GPR_RS(EX_GPR_RS), .data_EX(MUX6Out), .data_MEM1(MUX2Out),
        .data_MEM2(MUX10Out), .MUX4Sel(MUX4Sel),

		.out(MUX4Out)
	);

mux5 U_MUX5(
		.GPR_RT(EX_GPR_RT), .data_EX(MUX6Out), .data_MEM1(MUX2Out),
        .data_MEM2(MUX10Out), .MUX5Sel(MUX5Sel),

		.out(MUX5Out)
	);

bridge_RHL U_ALU2(
		.aclk(clk),.aresetn(rst),.A(MUX4Out),.B(MUX5Out),.ALU2Op(EX_ALU2Op),.start(EX_start),
		.EX_RHLWr(EX_RHLWr), .EX_RHLSel_Wr(EX_RHLSel_Wr), .EX_RHLSel_Rd(EX_RHLSel_Rd),
		.MEM_Exception(MEM1_Exception), .MEM_eret_flush(MEM1_eret_flush),
        .dcache_stall(dcache_stall),

		.isBusy(EX_isBusy),.RHLOut(RHLOut),.MULOut(MULOut),.MUL_sign(MUL_sign)
	);

alu1 U_ALU1(
		.A(MUX4Out), .B(MUX3Out),.ALU1Op(EX_ALU1Op),
		.ALU1Sel(EX_ALU1Sel), .Shamt(EX_shamt),

		.C(ALU1Out),.Overflow(Overflow),.Trap(Trap)
	);

	//-------------MEM1---------------//
EX_MEM1 U_EX_MEM1(
		.clk(clk), .rst(rst), .EX_MEM1Wr(EX_MEM1Wr),.Imm32(EX_Imm32), .EX_PC(EX_PC), .DMWr(EX_DMWr),
        .DMSel(EX_DMSel), .DMRd(EX_DMRd), .RFWr(EX_RFWr), .MUX2Sel(EX_MUX2Sel),.RHLOut(RHLOut),
        .ALU1Out(ALU1Out), .GPR_RT(MUX5Out), .RD(MUX1Out), .EX_Flush(EX_Flush), .eret_flush(EX_eret_flush),
        .CP0WrEn(EX_CP0WrEn), .Exception(EX_Exception), .ExcCode(EX_ExcCode), .isBD(EX_isBD),
        .CP0Addr(EX_CP0Addr), .CP0Rd(EX_CP0Rd), .EX_dcache_en(EX_dcache_en),.Overflow(Overflow),
        .EX_TLBRill_Exc(EX_TLBRill_Exc),.EX_tlb_searchen(EX_tlb_searchen),.EX_MUX11Sel(EX_MUX11Sel),
        .EX_MUX12Sel(EX_MUX12Sel),.EX_TLB_Exc(EX_TLB_Exc),.EX_TLB_flush(EX_TLB_flush),.EX_TLB_writeen(EX_TLB_writeen),
        .EX_TLB_readen(EX_TLB_readen),.EX_LoadOp(EX_LoadOp),.EX_StoreOp(EX_StoreOp),.MULOut(MULOut),
        .EX_start(EX_start),.Trap(Trap),.EX_LL_signal(EX_LL_signal),.EX_SC_signal(EX_SC_signal),
        .EX_icache_valid_CI(EX_icache_valid_CI), .EX_icache_op_CI(EX_icache_op_CI),
        .EX_dcache_valid_CI(EX_dcache_valid_CI), .EX_dcache_op_CI(EX_dcache_op_CI),

		.MEM1_DMWr(MEM1_DMWr), .MEM1_DMRd(MEM1_DMRd), .MEM1_RFWr(MEM1_RFWr),.MEM1_eret_flush(MEM1_eret_flush),
        .MEM1_CP0WrEn(MEM1_CP0WrEn), .MEM1_Exception(Temp_M1_Exception), .MEM1_ExcCode(Temp_M1_ExcCode),
        .MEM1_isBD(MEM1_isBD),.MEM1_DMSel(MEM1_DMSel), .MEM1_MUX2Sel(MEM1_MUX2Sel), .MEM1_RD(MEM1_RD),
        .MEM1_PC(MEM1_PC), .MEM1_RHLOut(MEM1_RHLOut), .MEM1_ALU1Out(MEM1_ALU1Out), .MEM1_GPR_RT(MEM1_GPR_RT),
        .MEM1_Imm32(MEM1_Imm32), .MEM1_CP0Addr(MEM1_CP0Addr), .MEM1_CP0Rd(MEM1_CP0Rd),
        .MEM1_dcache_en(MEM1_dcache_en),.MEM1_Overflow(MEM1_Overflow),.MEM1_TLBRill_Exc(Temp_MEM1_TLBRill_Exc),
        .MEM1_tlb_searchen(MEM1_tlb_searchen),.MEM1_MUX11Sel(MEM1_MUX11Sel),.MEM1_MUX12Sel(MEM1_MUX12Sel),
        .MEM1_TLB_Exc(Temp_MEM1_TLB_Exc),.MEM1_TLB_flush(MEM1_TLB_flush),.MEM1_TLB_writeen(MEM1_TLB_writeen),
        .MEM1_TLB_readen(MEM1_TLB_readen),.MEM1_LoadOp(MEM1_LoadOp),.MEM1_StoreOp(MEM1_StoreOp),.MEM1_MULOut(MEM1_MULOut),
        .MEM1_start(MEM1_start),.MEM1_Trap(MEM1_Trap),.MEM1_LL_signal(MEM1_LL_signal),.MEM1_SC_signal(MEM1_SC_signal),
        .MEM1_icache_valid_CI(MEM1_icache_valid_CI), .MEM1_icache_op_CI(MEM1_icache_op_CI),
        .MEM1_dcache_valid_CI(MEM1_dcache_valid_CI), .MEM1_dcache_op_CI(MEM1_dcache_op_CI)
	);

CP0 U_CP0(
		.clk(clk),.rst(rst),.CP0WrEn(MEM1_CP0WrEn&~dcache_stall),.addr(MEM1_CP0Addr),.data_in(MEM1_GPR_RT),
		.MEM1_Exception(MEM1_Exception),.MEM1_eret_flush(MEM1_eret_flush),.MEM1_isBD(MEM1_isBD),
        .ext_int_in(ext_int_in),.MEM1_ExcCode(MEM1_ExcCode),.MEM1_badvaddr(MEM1_badvaddr),
		.MEM1_PC(MEM1_PC),.EntryHi_Wren(MEM1_TLB_readen),.EntryLo0_Wren(MEM1_TLB_readen),
		.EntryLo1_Wren(MEM1_TLB_readen),.Index_Wren(MEM1_tlb_searchen),.s1_found(s1_found),
    	.EntryHi_in({r_vpn2,5'b0,r_asid}),.EntryLo0_in({6'b0,r_pfn0,r_c0,r_d0,r_v0,r_g}),
        .MEM1_TLB_Exc(MEM1_TLB_Exc),.EntryLo1_in({6'b0,r_pfn1,r_c1,r_d1,r_v1,r_g}),
        .Index_in({!s1_found,27'b0,s1_index}),

		.data_out(CP0Out), .EPC_out(EPCOut), .Interrupt(Interrupt),.EntryHi_out(EntryHi_out),
		.Index_out(Index_out),.EntryLo0_out(EntryLo0_out),.EntryLo1_out(EntryLo1_out),
        .Random_out(Random_out),.Config_K0_out(Config_K0_out),.Status_BEV(Status_BEV),
        .Status_EXL(Status_EXL),.Cause_IV(Cause_IV)
	);

mux11 U_MUX11(
	.vpn2(EntryHi_out[31:13]),.alu1out(MEM1_ALU1Out[31:13]),.MUX11_Sel(MEM1_MUX11Sel),

	.out(s1_vpn2)
);

mux12 U_MUX12(
    .index(Index_out[3:0]), .random(Random_out[3:0]), .MUX12_Sel(MEM1_MUX12Sel),

    .out(w_index)
);

mux6 U_MUX6(
		.RHLOut(MEM1_RHLOut), .ALU1Out(MEM1_ALU1Out), .PC(MEM1_PC),
		.Imm32(MEM1_Imm32),.MEM1_MULOut(MEM1_MULOut),
        .MUX6Sel({MEM1_start,MEM1_MUX2Sel[1:0]}),

		.out(MUX6Out)
	);

mem1_cache_prep U_MEM1_CACHE_PREP(
        clk,rst,MEM1_dcache_en,MEM1_eret_flush,MEM1_ALU1Out, MEM1_DMWr,
        MEM1_DMSel, MEM1_RFWr,MEM1_Overflow, Temp_M1_Exception,MEM1_DMRd,
        Temp_M1_ExcCode,MEM1_PC,s1_found,s1_v,s1_d,s1_pfn,s1_c,
        Temp_MEM1_TLB_Exc,IF_data_ok,Temp_MEM1_TLBRill_Exc, MEM_unCache_data_ok,
        MEM1_LoadOp,MEM1_StoreOp,MEM1_GPR_RT,Interrupt,Config_K0_out,MEM1_Trap,
        MEM1_LL_signal,MEM1_SC_signal, MEM1_icache_valid_CI, MEM1_icache_op_CI,
        MEM1_dcache_valid_CI, MEM1_dcache_op_CI,

        MEM1_Paddr, MEM1_cache_sel, MEM1_dcache_valid,DMWen_dcache,
        MEM1_dCache_wstrb,MEM1_ExcCode,MEM1_Exception,MEM1_badvaddr,
        MEM1_TLBRill_Exc,MEM1_TLB_Exc,MEM1_uncache_valid, MEM1_DMen,
        MEM1_wdata,MEM1_SCOut
	);

dcache U_DCACHE(.clk(clk), .resetn(rst), .DMRd(MEM1_DMRd), .stall(~(IF_data_ok&MEM_unCache_data_ok)),
	// cpu && cache
  	.valid(MEM1_dcache_valid), .op(DMWen_dcache), .index(MEM1_ALU1Out[11:6]),
    .tag(MEM2_Paddr[31:12]), .offset(MEM1_ALU1Out[5:0]),.wstrb(MEM1_dCache_wstrb), .wdata(MEM1_wdata),
    .addr_ok(MEM_dCache_addr_ok), .data_ok(MEM_dCache_data_ok), .rdata(dcache_Out),
	//cache && axi
  	.rd_req(MEM_dcache_rd_req), .rd_type(MEM_dcache_rd_type), .rd_addr(MEM_dcache_rd_addr),
    .rd_rdy(MEM_dcache_rd_rdy), .ret_valid(MEM_dcache_ret_valid & ~MEM2_cache_sel), .ret_last(MEM_dcache_ret_last),
    .ret_data(MEM_dcache_ret_data), .wr_valid(bvalid), .wr_req(MEM_dcache_wr_req),
    .wr_type(MEM_dcache_wr_type), .wr_addr(MEM_dcache_wr_addr), .wr_wstrb(MEM_dcache_wr_wstrb),
    .wr_data(MEM_dcache_wr_data), .wr_rdy(MEM_dcache_wr_rdy),
    .valid_CI(MEM1_dcache_valid_CI), .op_CI(MEM1_dcache_op_CI), .index_CI(MEM1_ALU1Out[11:6]),
    .way_CI(MEM1_ALU1Out[12]), .tag_CI(MEM2_Paddr[31:12])
	);
	//-------------MEM2---------------//
MEM1_MEM2 U_MEM1_MEM2(
		.clk(clk),.rst(rst),.PC(MEM1_PC),.RFWr(MEM1_RFWr),.MUX2Sel(MEM1_MUX2Sel),
		.MUX6Out(MUX6Out),.ALU1Out(MEM1_ALU1Out),.RD(MEM1_RD),.MEM1_Flush(MEM1_Flush),
        .CP0Out(CP0Out),.MEM1_MEM2Wr(MEM1_MEM2Wr),.DMSel(MEM1_DMSel),
        .cache_sel(MEM1_cache_sel),.DMWen(DMWen_dcache),.Exception(MEM1_Exception),
        .eret_flush(MEM1_eret_flush),.uncache_valid(MEM1_uncache_valid),.DMen(MEM1_DMen),
        .Paddr(MEM1_Paddr),.MEM1_dCache_wstrb(MEM1_dCache_wstrb),.GPR_RT(MEM1_GPR_RT),
        .DMRd(MEM1_DMRd),.CP0Rd(MEM1_CP0Rd),.MEM1_TLB_flush(MEM1_TLB_flush),
        .MEM1_TLB_writeen(MEM1_TLB_writeen),.MEM1_TLB_readen(MEM1_TLB_readen),
        .MEM1_LoadOp(MEM1_LoadOp),.MEM1_wdata(MEM1_wdata),.MEM1_SCOut(MEM1_SCOut),
        .MEM1_icache_valid_CI(MEM1_icache_valid_CI),

		.MEM2_RFWr(MEM2_RFWr),.MEM2_MUX2Sel(MEM2_MUX2Sel),.MEM2_RD(MEM2_RD),
        .MEM2_PC(MEM2_PC), .MEM2_ALU1Out(MEM2_ALU1Out),.MEM2_MUX6Out(MEM2_MUX6Out),
        .MEM2_CP0Out(MEM2_CP0Out),.MEM2_DMSel(MEM2_DMSel),.MEM2_cache_sel(MEM2_cache_sel),
        .MEM2_DMWen(DMWen_uncache),.MEM2_Exception(MEM2_Exception),.MEM2_eret_flush(MEM2_eret_flush),
        .MEM2_uncache_valid(MEM2_uncache_valid),.MEM2_DMen(MEM2_DMen),.MEM2_Paddr(MEM2_Paddr),
        .MEM2_unCache_wstrb(MEM2_unCache_wstrb),.MEM2_GPR_RT(MEM2_GPR_RT),.MEM2_DMRd(MEM2_DMRd),
        .MEM2_CP0Rd(MEM2_CP0Rd),.MEM2_TLB_flush(MEM2_TLB_flush),.MEM2_TLB_writeen(MEM2_TLB_writeen),
        .MEM2_TLB_readen(MEM2_TLB_readen),.MEM2_LoadOp(MEM2_LoadOp),.MEM2_wdata(MEM2_wdata),
        .MEM2_SCOut(MEM2_SCOut), .MEM2_icache_valid_CI(MEM2_icache_valid_CI)
	);

mux2 U_MUX2(
		.MUX6Out(MEM2_MUX6Out), .MUX2Sel(MEM2_MUX2Sel),
        .CP0Out(MEM2_CP0Out),.MEM2_SCOut(MEM2_SCOut),

		.WD(MUX2Out)
	);

uncache_dm U_UNCACHE_DM(
        .clk(clk),.resetn(rst),.valid(MEM2_uncache_valid),.op(DMWen_uncache),.addr(MEM2_Paddr),
        .wstrb(MEM2_unCache_wstrb),.wdata(MEM2_wdata),.data_ok(MEM_unCache_data_ok),.rdata(uncache_Out),
        .MEM2_DMSel(MEM2_DMSel),.rd_rdy(MEM_dcache_rd_rdy),.wr_rdy(MEM_dcache_wr_rdy),
        .ret_valid(MEM_dcache_ret_valid),.ret_last(MEM_dcache_ret_last),.ret_data(MEM_dcache_ret_data),.wr_valid(bvalid),
        .rd_req(MEM_uncache_rd_req),.wr_req(MEM_uncache_wr_req), .rd_type(MEM_uncache_rd_type),
		.wr_type(MEM_uncache_wr_type), .rd_addr(MEM_uncache_rd_addr), .wr_addr(MEM_uncache_wr_addr),
		.wr_wstrb(MEM_uncache_wr_wstrb), .wr_data(MEM_uncache_wr_data)
);

bridge_dm U_BRIDGE_DM(
		.addr2(MEM2_ALU1Out),
		.DMSel2(MEM2_DMSel),
		.Din(cache_Out),
        .MEM2_LoadOp(MEM2_LoadOp),
        .MEM2_GPR_RT(MEM2_GPR_RT),

		.dout(DMOut)
	);

cache_select_dm U_CACHE_SELECT_DM(
	    MEM2_cache_sel, uncache_Out, dcache_Out, MEM_unCache_data_ok, MEM_dCache_data_ok,
        MEM_uncache_rd_req, MEM_dcache_rd_req, MEM_uncache_wr_req, MEM_dcache_wr_req,
        MEM_uncache_rd_type, MEM_dcache_rd_type, MEM_uncache_wr_type, MEM_dcache_wr_type,
        MEM_uncache_rd_addr, MEM_dcache_rd_addr, MEM_uncache_wr_addr, MEM_dcache_wr_addr,
        MEM_uncache_wr_wstrb, MEM_dcache_wr_wstrb,

        cache_Out,MEM_data_ok,MEM_rd_req,MEM_wr_req,MEM_rd_type,MEM_wr_type,MEM_rd_addr,
        MEM_wr_addr,MEM_wr_wstrb
    );

    //--------------WB----------------//
MEM2_WB U_MEM2_WB(
        .clk(clk),.rst(rst),.MEM2_WBWr(MEM2_WBWr),.MEM2_Flush(MEM2_Flush),.PC(MEM2_PC),
        .MUX2Out(MUX2Out),.MUX2Sel(MEM2_MUX2Sel),.RD(MEM2_RD),.RFWr(MEM2_RFWr),.DMOut(DMOut),
        .MEM2_TLB_flush(MEM2_TLB_flush),.MEM2_TLB_writeen(MEM2_TLB_writeen),
        .MEM2_TLB_readen(MEM2_TLB_readen), .MEM2_icache_valid_CI(MEM2_icache_valid_CI),

		.WB_PC(WB_PC),.WB_MUX2Out(WB_MUX2Out),.WB_MUX2Sel(WB_MUX2Sel),
        .WB_RD(WB_RD),.WB_RFWr(WB_RFWr),.WB_DMOut(WB_DMOut),.WB_TLB_flush(WB_TLB_flush),
        .WB_TLB_writeen(WB_TLB_writeen),.WB_TLB_readen(WB_TLB_readen),
        .WB_icache_valid_CI(WB_icache_valid_CI)
        );

mux10 U_MUX10(
        .WB_MUX2Out(WB_MUX2Out), .WB_DMOut(WB_DMOut), .WB_MUX2Sel(WB_MUX2Sel),

        .MUX10Out(MUX10Out)
        );
    //-------------ELSE---------------//
//physical address tranfer
tlb U_TLB(
    clk,
    rst,

    //search port 0
    PF_PC[31:13],	//s0_vpn2
    PF_PC[12],	//s0_odd_page
    EntryHi_out[7:0],	//s0_asid

    s0_found,
    s0_index,
    s0_pfn,
    s0_c,
    s0_d,
    s0_v,

    //search port 1
    s1_vpn2,
    MEM1_ALU1Out[12],//s1_odd_page,no use for tlbp
    EntryHi_out[7:0],//s1_asid

    s1_found,
    s1_index,
    s1_pfn,
    s1_c,
    s1_d,
    s1_v,

    //write port
    MEM1_TLB_writeen,//we, write enable
    w_index,//w_index,
    EntryHi_out[31:13],		//w_vpn2,
    EntryHi_out[7:0],		//w_asid,
    EntryLo0_out[0]&EntryLo1_out[0],//w_g,
    EntryLo0_out[25:6],		//w_pfn0,
    EntryLo0_out[5:3],		//w_c0,
    EntryLo0_out[2],		//w_d0,
    EntryLo0_out[1],		//w_v0,
    EntryLo1_out[25:6],		//w_pfn1,
    EntryLo1_out[5:3],		//w_c1,
    EntryLo1_out[2],		//w_d1,
    EntryLo1_out[1],		//w_v1,

    //read port
    Index_out[3:0],//r_index

    r_vpn2,
    r_asid,
    r_g,
    r_pfn0,
    r_c0,
    r_d0,
    r_v0,
    r_pfn1,
    r_c1,
    r_d1,
    r_v1
);

npc U_NPC(
		.IF_PC(IF_PC),.Imm(ID_Instr[25:0]),.ret_addr(MUX8Out),.NPCOp(NPCOp),
		.EPC(EPCOut),.MEM1_eret_flush(MEM1_eret_flush),.MEM1_Exception(MEM1_Exception),
        .MEM1_TLBRill_Exc(MEM1_TLBRill_Exc),.WB_TLB_flush(WB_TLB_flush),.MEM2_PC(MEM2_PC),
        .PF_PC(PF_PC), .WB_icache_valid_CI(WB_icache_valid_CI),.Status_BEV(Status_BEV),
        .Status_EXL(Status_EXL),.Cause_IV(Cause_IV),.Interrupt(Interrupt),

		.NPC(NPC)
	);

flush U_FLUSH(
        .MEM1_eret_flush(MEM1_eret_flush),.MEM1_Exception(MEM1_Exception),
        .can_go(MEM2_can_go),

        .PC_Flush(PC_Flush),.PF_Flush(PF_Flush),.IF_Flush(IF_Flush),
        .ID_Flush(ID_Flush),.EX_Flush(EX_Flush),.MEM1_Flush(MEM1_Flush),
        .MEM2_Flush(MEM2_Flush)
    );

bypass U_BYPASS(
		.EX_RS(EX_RS), .EX_RT(EX_RT), .ID_RS(ID_Instr[25:21]), .ID_RT(ID_Instr[20:16]),
        .MEM1_RD(MEM1_RD), .MEM2_RD(MEM2_RD), .WB_RD(WB_RD),.MEM1_RFWr(MEM1_RFWr),
        .MEM2_RFWr(MEM2_RFWr), .WB_RFWr(WB_RFWr),.BJOp(B_JOp), .dcache_stall(dcache_stall),
        .ALU1Op(ALU1Op),.MEM1_SC_signal(MEM1_SC_signal),

		.MUX4Sel(MUX4Sel), .MUX5Sel(MUX5Sel),
		.MUX8Sel(MUX8Sel), .MUX9Sel(MUX9Sel)
	);

stall U_STALL(
		.clk(clk),.rst(rst) ,
		.EX_RT(MUX1Out), .MEM1_RT(MEM1_RD), .MEM2_RT(MEM2_RD), .ID_RS(ID_Instr[25:21]), .ID_RT(ID_Instr[20:16]),
		.EX_DMRd(EX_DMRd),.ID_PC(ID_PC),.EX_PC(EX_PC), .MEM1_PC(MEM1_PC), .MEM1_DMRd(MEM1_DMRd), .MEM2_DMRd(MEM2_DMRd),
		.BJOp(B_JOp),.EX_RFWr(EX_RFWr), .EX_CP0Rd(EX_CP0Rd), .MEM1_CP0Rd(MEM1_CP0Rd), .MEM2_CP0Rd(MEM2_CP0Rd),
		.rst_sign(!rst), .MEM1_ex(MEM1_Exception), .MEM1_RFWr(MEM1_RFWr), .MEM2_RFWr(MEM2_RFWr),.MEM1_eret_flush(MEM1_eret_flush),
        .isbusy(EX_isBusy), .RHL_visit(RHL_visit),.iCache_data_ok(IF_data_ok),.dCache_data_ok(MEM_data_ok),
        .MEM_dCache_en(MEM2_DMen),.MEM1_cache_sel(MEM1_cache_sel), .MEM_dCache_addr_ok(MEM_dCache_addr_ok),
        .MEM1_dCache_en(MEM1_dcache_valid | MEM1_dcache_valid_CI),.ID_tlb_searchen(ID_tlb_searchen),.EX_CP0WrEn(EX_CP0WrEn),
        .MUL_sign(MUL_sign),.ALU2Op(EX_ALU2Op),.EX_SC_signal(EX_SC_signal),.MEM1_SC_signal(MEM1_SC_signal),

		.PCWr(PCWr), .IF_IDWr(IF_IDWr), .MUX7Sel(MUX7Sel),.inst_sram_en(IF_iCache_read_en),.isStall(isStall),
		.dcache_stall(dcache_stall), .ID_EXWr(ID_EXWr), .EX_MEM1Wr(EX_MEM1Wr), .MEM1_MEM2Wr(MEM1_MEM2Wr),
        .MEM2_WBWr(MEM2_WBWr),.data_ok(MEM2_can_go),.PF_IFWr(PF_IFWr)
	);

axi_sram_bridge U_AXI_SRAM_BRIDGE(
	MEM2_cache_sel,
    ext_int_in   ,   //high active

    clk      ,
    rst      ,   //low active

    arid      ,
    araddr    ,
    arlen     ,
    arsize    ,
    arburst   ,
    arlock    ,
    arcache   ,
    arprot    ,
    arvalid   ,
    arready   ,

    rid       ,
    rdata     ,
    rresp     ,
    rlast     ,
    rvalid    ,
    rready    ,

    awid      ,
    awaddr    ,
    awlen     ,
    awsize    ,
    awburst   ,
    awlock    ,
    awcache   ,
    awprot    ,
    awvalid   ,
    awready   ,

    wid       ,
    wdata     ,
    wstrb     ,
    wlast     ,
    wvalid    ,
    wready    ,

    bid       ,
    bresp     ,
    bvalid    ,
    bready    ,
// icache
	IF_rd_req,// icache �???? dcache 同时缺失怎么�????
	IF_rd_type,
	IF_rd_addr,
	IF_icache_rd_rdy,
	IF_icache_ret_valid,
	IF_icache_ret_last,
	IF_icache_ret_data,
	IF_wr_req,
	IF_wr_type,
	IF_wr_addr,
	IF_wr_wstrb,
	IF_icache_wr_data,
	IF_icache_wr_rdy,
//	dcache
	MEM_rd_req,
	MEM_rd_type,
	MEM_rd_addr,
	MEM_dcache_rd_rdy,
	MEM_dcache_ret_valid,
	MEM_dcache_ret_last,
	MEM_dcache_ret_data,
	MEM_wr_req,
	MEM_wr_type,
	MEM_wr_addr,
	MEM_wr_wstrb,
	MEM_dcache_wr_data,
	MEM_dcache_wr_rdy,
	MEM_uncache_wr_data

);

debug U_DEBUG(
    MUX10Out, WB_PC, WB_RFWr, MEM2_WBWr,WB_RD,

    debug_wb_rf_wdata, debug_wb_pc,
    debug_wb_rf_wen, debug_wb_rf_wnum
    );

endmodule