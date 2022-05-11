`include "MacroDef.v"

module instr_fetch_pre(
    PF_PC,PCWr,s0_found,s0_v,s0_pfn,s0_c,IF_uncache_data_ok,isStall,
    TLB_flush,EX_TLB_flush,MEM1_TLB_flush,MEM2_TLB_flush,WB_TLB_flush,
    Config_K0_out,Branch_flush,PF_Instr_Flush,
    icache_valid_CI, EX_icache_valid_CI, MEM1_icache_valid_CI,
    MEM2_icache_valid_CI, WB_icache_valid_CI,

    PF_AdEL,PF_TLB_Exc,PF_ExcCode,PF_TLBRill_Exc,PF_Exception,PPC,
    PF_valid,Invalidate_signal,PF_icache_sel,PF_icache_valid,
    PF_uncache_valid
    );
    input [31:0]    PF_PC;
    input           PCWr;
    input           s0_v;
    input           s0_found;
    input [19:0]    s0_pfn;
    input           isStall;
    input           TLB_flush;
    input           EX_TLB_flush;
    input           MEM1_TLB_flush;
    input           MEM2_TLB_flush;
    input           WB_TLB_flush;
    input           IF_uncache_data_ok;
    input [2:0]     s0_c;
    input [2:0]     Config_K0_out;
    input           Branch_flush;
    input           PF_Instr_Flush;
    input           icache_valid_CI;
    input           EX_icache_valid_CI;
    input           MEM1_icache_valid_CI;
    input           MEM2_icache_valid_CI;
    input           WB_icache_valid_CI;

    output          PF_AdEL;
    output          PF_TLB_Exc;
    output          PF_TLBRill_Exc;
    output          PF_Exception;
    output [4:0]    PF_ExcCode;
    output [31:0]   PPC;
    output          PF_valid;
    output          Invalidate_signal;
    output          PF_icache_sel;
    output          PF_icache_valid;
    output          PF_uncache_valid;

    wire mapped;
    wire kseg0, kseg1;

    /*Exception generation*/
    //the tlb exception should influence the cache and uncache valid or not
    assign mapped = ( ~PF_PC[31] || (PF_PC[31]&PF_PC[30]) ) ? 1 : 0;
    assign PPC =
		!mapped ? {3'b000,PF_PC[28:0]} : {s0_pfn,PF_PC[11:0]};

    assign PF_AdEL = PF_PC[1:0] != 2'b00 && PCWr;
    assign PF_TLBRill_Exc	= ~PF_AdEL & mapped & (!s0_found) & PCWr;
    assign PF_TLB_Exc   = mapped & (!s0_found || (s0_found&!s0_v) ) & !PF_AdEL;//tlbl
    assign PF_Exception = PF_AdEL | PF_TLB_Exc;
    assign PF_ExcCode = 	 PF_AdEL ? `AdEL :
                            PF_TLB_Exc ? `TLBL : 5'b0;

    /*icache sel*/
    assign kseg0 = (PF_PC[31:29] == 3'b100);
    assign kseg1 = (PF_PC[31:29] == 3'b101);
    //assign PF_icache_sel = ~((kseg0 & (Config_K0_out==3'b011)) || (!kseg0 & !kseg1 & (s0_c==3'b011)));
    //assign PF_icache_sel = (PPC[31:16] == 16'h1faf);//used in funct test
    assign PF_icache_sel = 1'b0;//取指全部走cache

    /* dcache control signal*/
    assign PF_valid = !isStall&!PF_Exception
            &!TLB_flush&!EX_TLB_flush&!MEM1_TLB_flush&!MEM2_TLB_flush&!WB_TLB_flush
            &!icache_valid_CI&!EX_icache_valid_CI&!MEM1_icache_valid_CI&!MEM2_icache_valid_CI
            &!WB_icache_valid_CI;
    assign PF_icache_valid = PF_valid & ~PF_icache_sel & IF_uncache_data_ok;
    assign PF_uncache_valid = PF_valid & PF_icache_sel;
    assign Invalidate_signal =
        Branch_flush | TLB_flush | EX_TLB_flush | MEM1_TLB_flush |
        MEM2_TLB_flush | WB_TLB_flush | PF_Instr_Flush | icache_valid_CI | EX_icache_valid_CI |
        MEM1_icache_valid_CI | MEM2_icache_valid_CI | WB_icache_valid_CI;

endmodule


module mem1_cache_prep(
    clk,rst,MEM1_dcache_en,MEM1_eret_flush,MEM1_ALU1Out,MEM1_DMWr,
    MEM1_DMSel, MEM1_RFWr,MEM1_Overflow, Temp_M1_Exception,
    MEM1_DMRd, Temp_M1_ExcCode,MEM1_PC,s1_found,s1_v,s1_d,
    s1_pfn,s1_c,Temp_MEM1_TLB_Exc,IF_iCache_data_ok,
    Temp_MEM1_TLBRill_Exc, MEM_unCache_data_ok,MEM1_LoadOp,
    MEM1_StoreOp,MEM1_GPR_RT,Interrupt,Config_K0_out,MEM1_Trap,
    MEM1_LL_signal,MEM1_SC_signal,MEM1_icache_valid_CI, MEM1_icache_op_CI,
    MEM1_dcache_valid_CI, MEM1_dcache_op_CI,

    MEM1_Paddr, MEM1_cache_sel, MEM1_dcache_valid,DMWen_dcache,
    MEM1_dCache_wstrb,MEM1_ExcCode,MEM1_Exception,MEM1_badvaddr,
    MEM1_TLBRill_Exc,MEM1_TLB_Exc,MEM1_uncache_valid,MEM1_DMen,
    MEM1_wdata,MEM1_SCOut
    );
    input           clk;
    input           rst;
    input           MEM1_dcache_en;//MEM1_dcache_en = 1 => load or store
    input           MEM1_eret_flush;
    input [31:0]    MEM1_ALU1Out;
    input           MEM1_DMWr;
    input [2:0]     MEM1_DMSel;
    input           MEM1_Overflow;
    input           Temp_M1_Exception;
    input           MEM1_DMRd;
    input[4:0]      Temp_M1_ExcCode;
    input[31:0]     MEM1_PC;
    input           s1_found;
    input           s1_v;
    input           s1_d;
    input           Temp_MEM1_TLB_Exc;
    input           IF_iCache_data_ok;
    input           Temp_MEM1_TLBRill_Exc;
    input [19:0]    s1_pfn;
    input           MEM_unCache_data_ok;
    input           MEM1_RFWr;
    input [1:0]     MEM1_LoadOp;
    input [1:0]     MEM1_StoreOp;
    input [31:0]    MEM1_GPR_RT;
    input           Interrupt;
    input [2:0]     Config_K0_out;
    input [2:0]     s1_c;
    input           MEM1_Trap;
    input           MEM1_LL_signal;
    input           MEM1_SC_signal;
    input 			MEM1_icache_valid_CI;
	input 			MEM1_icache_op_CI;
	input 			MEM1_dcache_valid_CI;
	input [1:0] 	MEM1_dcache_op_CI;

    output [31:0]   MEM1_Paddr;
    output          MEM1_cache_sel;
    output          MEM1_dcache_valid;
    output          DMWen_dcache;
    output [3:0]    MEM1_dCache_wstrb;
    output reg[4:0] MEM1_ExcCode;
    output reg MEM1_Exception;
    output reg[31:0] MEM1_badvaddr;
    output          MEM1_TLBRill_Exc;
    output          MEM1_TLB_Exc;
    output          MEM1_uncache_valid;
    output          MEM1_DMen;
    output reg [31:0] MEM1_wdata;
    output [31:0]   MEM1_SCOut;

    wire data_mapped;
    wire valid;
    wire [4:0] MEM1_TLB_ExCode;
    wire kseg0, kseg1;
    wire tlbs, tlbl, tlbmod;
    wire AdES_sel, AdEL_sel;
    wire SC_OK;
    reg  LLbit;
    reg [31:0] LL_addr;

    assign data_mapped = (~MEM1_ALU1Out[31] || (MEM1_ALU1Out[31]&&MEM1_ALU1Out[30]))
                        & (MEM1_dcache_en | MEM1_icache_valid_CI&~MEM1_icache_op_CI
                        | MEM1_dcache_valid_CI&MEM1_dcache_op_CI[0]);//load or store or CACHE
    assign MEM1_Paddr =
		        !data_mapped ? {3'b000,MEM1_ALU1Out[28:0]} :
                {s1_pfn,MEM1_ALU1Out[11:0]} ;

    /*Exception generation*/
    /*
    Explain:
        valid --> need to use dcache
        DMWen_dcache --> need to write dcache
        !s1_found --> TLB Rill
        s1_found&!s1_v --> TLB Invalid
        s1_found&s1_v&!s1_d --> TLB Mod
    */
    assign valid = MEM1_dcache_en &IF_iCache_data_ok;
	assign 	MEM1_TLBRill_Exc	= (!Temp_M1_Exception & data_mapped & (!s1_found) & valid) | Temp_MEM1_TLBRill_Exc;

    assign tlbl   = data_mapped & ( !DMWen_dcache & ( !s1_found||(s1_found&!s1_v) ) ) & !Temp_M1_Exception;//load
    assign tlbs   = data_mapped & ( DMWen_dcache & ( !s1_found||(s1_found&!s1_v) ) ) & !Temp_M1_Exception;//store
    assign tlbmod = data_mapped & ( DMWen_dcache & (s1_found&s1_v&!s1_d) ) & !Temp_M1_Exception ;//store
    assign MEM1_TLB_Exc = tlbl | tlbs | tlbmod | Temp_MEM1_TLB_Exc;//include tlb rill,tlb invaild
    assign MEM1_TLB_ExCode =
                              tlbl      ? `TLBL      :
                              tlbs      ? `TLBS      :
                              tlbmod    ? `TLBMod    :
                              Temp_MEM1_TLB_Exc ? Temp_M1_ExcCode :
                                        5'b0;

    //dcache sel
    assign kseg0 = (MEM1_ALU1Out[31:29] == 3'b100);
    assign kseg1 = (MEM1_ALU1Out[31:29] == 3'b101);
    // assign MEM1_cache_sel = ~((kseg0& (Config_K0_out==3'b011)) || (!kseg0 & !kseg1 & (s1_c==3'b011)))
    //                         & ~MEM1_dcache_valid_CI;
    assign MEM1_cache_sel = 1'b1;
	// 1 表示uncache, 0表示cache

    //Exception Sel
    assign AdES_sel =
        MEM1_DMWr && !Temp_M1_Exception && (MEM1_LoadOp == 2'b00) && ( MEM1_DMSel == 3'b010
        && MEM1_ALU1Out[1:0] != 2'b00 || MEM1_DMSel == 3'b001 && MEM1_ALU1Out[0] != 1'b0);
    assign AdEL_sel =
        MEM1_RFWr && MEM1_DMRd && !Temp_M1_Exception && (MEM1_LoadOp == 2'b00) &&
        ( (MEM1_DMSel == 3'b111 && MEM1_ALU1Out[1:0] != 2'b00) ||
        ( (MEM1_DMSel == 3'b101 || MEM1_DMSel == 3'b110) && MEM1_ALU1Out[0] != 1'b0 ) );

    always@(*)
        if (Interrupt) begin
			MEM1_Exception <= 1'b1;
			MEM1_ExcCode <= `Int;
            MEM1_badvaddr <= 32'd0;
		end
		else if (MEM1_Overflow  && !Temp_M1_Exception) begin
		    MEM1_ExcCode <= `Ov;
		    MEM1_Exception <= 1'b1;
		    MEM1_badvaddr <= 32'd0;
		end
        else if (MEM1_Trap  && !Temp_M1_Exception) begin
		    MEM1_ExcCode <= `Trap;
		    MEM1_Exception <= 1'b1;
		    MEM1_badvaddr <= 32'd0;
		end
		else if (AdES_sel)begin
		    MEM1_ExcCode <= `AdES;
		    MEM1_Exception <= 1'b1;
		    MEM1_badvaddr <= MEM1_ALU1Out;
		end
		else if (AdEL_sel) begin
		    MEM1_ExcCode <= `AdEL;
		    MEM1_Exception <= 1'b1;
		    MEM1_badvaddr <= MEM1_ALU1Out;
		end
        else if (MEM1_TLB_Exc & !Temp_M1_Exception)
        begin
            MEM1_ExcCode <= MEM1_TLB_ExCode;
		    MEM1_Exception <= 1'b1;
		    MEM1_badvaddr <= MEM1_ALU1Out;
        end
		else begin
		    MEM1_ExcCode <= Temp_M1_ExcCode;
		    MEM1_Exception <= Temp_M1_Exception;
		    MEM1_badvaddr <= MEM1_PC;//在此流水级之前产生的与地址有关的例外其出错地址一定为其PC
		end

    /* dcache control signal*/
    assign DMWen_dcache = MEM1_DMWr & !Temp_M1_Exception & !MEM1_eret_flush &
            (!MEM1_SC_signal | (MEM1_SC_signal&SC_OK));//0->load,1->store
    assign MEM1_dcache_valid = MEM1_dcache_en & IF_iCache_data_ok & !MEM1_Exception &
            !MEM1_eret_flush & MEM_unCache_data_ok  & ~MEM1_cache_sel&(!MEM1_SC_signal | (MEM1_SC_signal&SC_OK));
    assign MEM1_uncache_valid =MEM1_dcache_en & MEM1_cache_sel & !MEM1_Exception &
            !MEM1_eret_flush&(!MEM1_SC_signal | (MEM1_SC_signal&SC_OK));
    assign MEM1_DMen = (MEM1_dcache_en | MEM1_dcache_valid_CI)&!MEM1_Exception&!MEM1_eret_flush
                        &(!MEM1_SC_signal | (MEM1_SC_signal&SC_OK));

    /* LL SC Instr */
    always @(posedge clk) begin
        if ( !rst | MEM1_eret_flush | MEM1_Exception )
            LLbit <= 1'b0;
        else if ( MEM1_LL_signal )
            LLbit <= 1'b1;
    end
    always @(posedge clk) begin
        if ( !rst | MEM1_eret_flush | MEM1_Exception )
            LL_addr <= 32'b0;
        else if ( MEM1_LL_signal )
            LL_addr <= MEM1_ALU1Out;
    end
    assign SC_OK = LLbit & (LL_addr == MEM1_ALU1Out) & MEM1_SC_signal;
    assign MEM1_SCOut = {30'b0,(MEM1_dcache_valid|MEM1_uncache_valid)};

/* set writeen signal and store data */
    assign MEM1_dCache_wstrb =
                    (~DMWen_dcache)         ?   4'b0  :
                        (MEM1_StoreOp == 2'b00)  ?
                                (
                                    (MEM1_DMSel==3'b000)    ?
                                    (
                                        MEM1_Paddr[1:0]==2'b00 ? 4'b0001 :
                                        MEM1_Paddr[1:0]==2'b01 ? 4'b0010 :
                                        MEM1_Paddr[1:0]==2'b10 ? 4'b0100 :
                                                                4'b1000
                                    ) :
                                    (MEM1_DMSel==3'b001)    ?   // sh
                                    (
                                        MEM1_Paddr[1]==1'b0 ? 4'b0011 :
                                                    4'b1100
                                    )   : 4'b1111
                                )  :    //sw
                        (MEM1_StoreOp == 2'b10)   ?     //SWL
                                (
                                    MEM1_Paddr[1:0]==2'b00 ? 4'b0001 :
                                    MEM1_Paddr[1:0]==2'b01 ? 4'b0011 :
                                    MEM1_Paddr[1:0]==2'b10 ? 4'b0111 :
                                                    4'b1111
                                ) :                     //SWR
                                (
                                    MEM1_Paddr[1:0]==2'b00 ? 4'b1111 :
                                    MEM1_Paddr[1:0]==2'b01 ? 4'b1110 :
                                    MEM1_Paddr[1:0]==2'b10 ? 4'b1100 :
                                                    4'b1000
                                ) ;

    always @(MEM1_StoreOp,MEM1_dCache_wstrb,MEM1_GPR_RT) begin
        if ( MEM1_StoreOp == 2'b10)
        begin
            case (MEM1_dCache_wstrb)
                4'b0001 :
                    MEM1_wdata = {4{MEM1_GPR_RT[31:24]}};
                4'b0011 :
                    MEM1_wdata = {2{MEM1_GPR_RT[31:16]}};
                4'b0111 :
                    MEM1_wdata = {8'b0,MEM1_GPR_RT[31:8]};
                default :
                    MEM1_wdata = MEM1_GPR_RT[31:0];
            endcase
        end
        else if ( MEM1_StoreOp == 2'b11)
        begin
            case (MEM1_dCache_wstrb)
                4'b1000 :
                    MEM1_wdata = {4{MEM1_GPR_RT[7:0]}};
                4'b1100 :
                    MEM1_wdata = {2{MEM1_GPR_RT[15:0]}};
                4'b1110 :
                    MEM1_wdata = {MEM1_GPR_RT[23:0],8'b0};
                default :
                    MEM1_wdata = MEM1_GPR_RT[31:0];
            endcase
        end
        else
            MEM1_wdata = MEM1_GPR_RT[31:0];
    end

endmodule

module cache_select_dm(
    MEM_cache_sel, uncache_Out, dcache_Out, MEM_unCache_data_ok, MEM_dCache_data_ok,
    MEM_uncache_rd_req, MEM_dcache_rd_req, MEM_uncache_wr_req, MEM_dcache_wr_req,
    MEM_uncache_rd_type, MEM_dcache_rd_type, MEM_uncache_wr_type, MEM_dcache_wr_type,
    MEM_uncache_rd_addr, MEM_dcache_rd_addr, MEM_uncache_wr_addr, MEM_dcache_wr_addr,
    MEM_uncache_wr_wstrb, MEM_dcache_wr_wstrb,

    cache_Out, MEM_data_ok, MEM_rd_req, MEM_wr_req, MEM_rd_type, MEM_wr_type, MEM_rd_addr,
    MEM_wr_addr, MEM_wr_wstrb
                );
    input           MEM_cache_sel;
    input[31:0]     uncache_Out;
    input[31:0]     dcache_Out;
    input           MEM_unCache_data_ok;
    input           MEM_dCache_data_ok;
    input           MEM_uncache_rd_req;
    input           MEM_dcache_rd_req;
    input           MEM_uncache_wr_req;
    input           MEM_dcache_wr_req;
    input [2:0]     MEM_uncache_rd_type;
    input [2:0]     MEM_dcache_rd_type;
    input [2:0]     MEM_uncache_wr_type;
    input [2:0]     MEM_dcache_wr_type;
    input [31:0]    MEM_uncache_rd_addr;
    input [31:0]    MEM_dcache_rd_addr;
    input [31:0]    MEM_uncache_wr_addr;
    input [31:0]    MEM_dcache_wr_addr;
    input [3:0]     MEM_uncache_wr_wstrb;
    input [3:0]     MEM_dcache_wr_wstrb;

    output [31:0]   cache_Out;
    output          MEM_data_ok;
    output          MEM_rd_req;
    output          MEM_wr_req;
    output [2:0]    MEM_rd_type;
    output [2:0]    MEM_wr_type;
    output [31:0]   MEM_rd_addr;
    output [31:0]   MEM_wr_addr;
    output [3:0]    MEM_wr_wstrb;

	assign cache_Out = MEM_cache_sel ? uncache_Out : dcache_Out;
	assign MEM_data_ok = MEM_cache_sel ? MEM_unCache_data_ok : MEM_dCache_data_ok;
	assign MEM_rd_req = MEM_cache_sel ? MEM_uncache_rd_req : MEM_dcache_rd_req;
	assign MEM_wr_req = MEM_cache_sel ? MEM_uncache_wr_req : MEM_dcache_wr_req;
	assign MEM_rd_type = MEM_cache_sel ? MEM_uncache_rd_type : MEM_dcache_rd_type;
	assign MEM_wr_type = MEM_cache_sel ? MEM_uncache_wr_type : MEM_dcache_wr_type;
	assign MEM_rd_addr = MEM_cache_sel ? MEM_uncache_rd_addr : MEM_dcache_rd_addr;
	assign MEM_wr_addr = MEM_cache_sel ? MEM_uncache_wr_addr : MEM_dcache_wr_addr;
	assign MEM_wr_wstrb = MEM_cache_sel ? MEM_uncache_wr_wstrb : MEM_dcache_wr_wstrb;

endmodule

module cache_select_im(
    IF_cache_sel, uncache_Out, icache_Out, IF_uncache_data_ok, IF_icache_data_ok,
    IF_uncache_rd_req, IF_icache_rd_req, IF_uncache_wr_req, IF_icache_wr_req,
    IF_uncache_rd_type, IF_icache_rd_type, IF_uncache_wr_type, IF_icache_wr_type,
    IF_uncache_rd_addr, IF_icache_rd_addr, IF_uncache_wr_addr, IF_icache_wr_addr,
    IF_uncache_wr_wstrb, IF_icache_wr_wstrb,

    cache_Out, IF_data_ok, IF_rd_req, IF_wr_req, IF_rd_type, IF_wr_type, IF_rd_addr,
    IF_wr_addr, IF_wr_wstrb
                );
    input           IF_cache_sel;
    input [31:0]    uncache_Out;
    input [31:0]    icache_Out;
    input           IF_uncache_data_ok;
    input           IF_icache_data_ok;
    input           IF_uncache_rd_req;
    input           IF_icache_rd_req;
    input           IF_uncache_wr_req;
    input           IF_icache_wr_req;
    input [2:0]     IF_uncache_rd_type;
    input [2:0]     IF_icache_rd_type;
    input [2:0]     IF_uncache_wr_type;
    input [2:0]     IF_icache_wr_type;
    input [31:0]    IF_uncache_rd_addr;
    input [31:0]    IF_icache_rd_addr;
    input [31:0]    IF_uncache_wr_addr;
    input [31:0]    IF_icache_wr_addr;
    input [3:0]     IF_uncache_wr_wstrb;
    input [3:0]     IF_icache_wr_wstrb;

    output [31:0]   cache_Out;
    output          IF_data_ok;
    output          IF_rd_req;
    output          IF_wr_req;
    output [2:0]    IF_rd_type;
    output [2:0]    IF_wr_type;
    output [31:0]   IF_rd_addr;
    output [31:0]   IF_wr_addr;
    output [3:0]    IF_wr_wstrb;

	assign cache_Out = IF_cache_sel ? uncache_Out : icache_Out;
	assign IF_data_ok = IF_cache_sel ? IF_uncache_data_ok : IF_icache_data_ok;
	assign IF_rd_req = IF_cache_sel ? IF_uncache_rd_req : IF_icache_rd_req;
	assign IF_wr_req = IF_cache_sel ? IF_uncache_wr_req : IF_icache_wr_req;
	assign IF_rd_type = IF_cache_sel ? IF_uncache_rd_type : IF_icache_rd_type;
	assign IF_wr_type = IF_cache_sel ? IF_uncache_wr_type : IF_icache_wr_type;
	assign IF_rd_addr = IF_cache_sel ? IF_uncache_rd_addr : IF_icache_rd_addr;
	assign IF_wr_addr = IF_cache_sel ? IF_uncache_wr_addr : IF_icache_wr_addr;
	assign IF_wr_wstrb = IF_cache_sel ? IF_uncache_wr_wstrb : IF_icache_wr_wstrb;

endmodule


module debug(
    MUX10Out, WB_PC, WB_RFWr, MEM2_WBWr,WB_RD,

    debug_wb_rf_wdata, debug_wb_pc, debug_wb_rf_wen,
    debug_wb_rf_wnum
    );
    input[31:0] MUX10Out;
    input[31:0] WB_PC;
    input WB_RFWr;
    input MEM2_WBWr;
    input[4:0] WB_RD;

    output[31:0] debug_wb_rf_wdata;
    output[31:0] debug_wb_pc;
    output[3:0] debug_wb_rf_wen;
    output[4:0] debug_wb_rf_wnum;

assign
	debug_wb_rf_wdata = MUX10Out;
assign
	debug_wb_pc  = WB_PC;
assign
	debug_wb_rf_wen  = {4{WB_RFWr&MEM2_WBWr&(WB_RD!=5'd0)}};
assign
	debug_wb_rf_wnum  = WB_RD;

endmodule