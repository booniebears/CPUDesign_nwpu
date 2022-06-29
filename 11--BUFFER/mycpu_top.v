`include "global_defines.vh"
//第65个测试点失败原因：1.exccode未作对应2.必须引入flush-r，延长flush作用时间，3.mfc0记录旁路
module mycpu_top(
    // 外部中断信号
    input  [ 5:0]   ext_int, //6个外部硬件中断输入
    input           aclk,
    input           aresetn,
    output [ 3:0]   arid   ,
    output [31:0]   araddr ,
    output [ 3:0]   arlen  ,
    output [ 2:0]   arsize ,
    output [ 1:0]   arburst,
    output [ 1:0]   arlock ,
    output [ 3:0]   arcache,
    output [ 2:0]   arprot ,
    output          arvalid,
    input           arready,
    input  [ 3:0]   rid    ,
    input  [31:0]   rdata  ,
    input  [ 1:0]   rresp  ,
    input           rlast  ,
    input           rvalid ,
    output          rready ,
    output [ 3:0]   awid   ,
    output [31:0]   awaddr ,
    output [ 3:0]   awlen  ,
    output [ 2:0]   awsize ,
    output [ 1:0]   awburst,
    output [ 1:0]   awlock ,
    output [ 3:0]   awcache,
    output [ 2:0]   awprot ,
    output          awvalid,
    input           awready,
    output [3 :0]   wid    ,
    output [31:0]   wdata  ,
    output [3 :0]   wstrb  ,
    output          wlast  ,
    output          wvalid ,
    input           wready ,
    input  [ 3:0]   bid    ,
    input  [ 1:0]   bresp  ,
    input           bvalid ,
    output          bready ,
    // trace debug interface
    output [31:0]   debug_wb_pc,
    output [ 3:0]   debug_wb_rf_wen,
    output [ 4:0]   debug_wb_rf_wnum,
    output [31:0]   debug_wb_rf_wdata
);
wire [31:0] CP0_data;
reg         reset;
always @(posedge aclk) reset <= ~aresetn;

wire          fs_allowin;
wire          ds_allowin;
wire          es_allowin;
wire          m1s_allowin;
wire          ms_allowin;
wire          ws_allowin;
wire          ps_to_fs_valid;
wire          fs_to_ds_valid;
wire          ds_to_es_valid;
wire          es_to_m1s_valid;
wire          m1s_to_ms_valid;
wire          ms_to_ws_valid;
wire  [`PS_TO_FS_BUS_WD -1:0] ps_to_fs_bus;
wire  [`FS_TO_DS_BUS_WD -1:0] fs_to_ds_bus;
wire  [`DS_TO_ES_BUS_WD -1:0] ds_to_es_bus;
wire  [`ES_TO_M1_BUS_WD -1:0] es_to_m1s_bus;
wire  [`M1_TO_MS_BUS_WD -1:0] m1s_to_ms_bus;
wire  [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus;
wire  [`WS_TO_RF_BUS_WD -1:0] ws_to_rf_bus;
wire  [`BR_BUS_WD       -1:0] br_bus;
wire         is_branch;

wire  [ 4:0] EXE_dest; // EXE阶段写RF地址 通过旁路送到ID阶段
wire  [ 4:0] M1s_dest;
wire  [ 4:0] MEM_dest; // MEM阶段写RF地址 通过旁路送到ID阶段
wire  [ 4:0] WB_dest; // WB阶段写RF地址 通过旁路送到ID阶段
wire  [31:0] EXE_result; //EXE阶段 es_alu_result
wire  [31:0] M1s_result;
wire  [31:0] MEM_result; //MEM阶段 ms_final_result 
wire  [31:0] WB_result; //WB阶段 ws_final_result
wire         es_load_op; //EXE阶段 判定是否为load指令
wire         m1s_load_op; //M1阶段 判定是否为load指令

wire         flush;
// wire         flush_r;
wire         flush_refill;
wire         ds_ex; 
wire         es_ex; 
wire         m1s_ex;
wire         ms_ex;
wire         ws_ex;
wire  [31:0] CP0_EPC_out;
wire         CP0_Cause_TI_out;
wire         CP0_Status_IE_out; //IE=1,全局中断使能开启
wire         CP0_Status_EXL_out; //EXL=0,没有例外正在处理
wire  [ 7:0] CP0_Status_IM_out; //IM对应各个中断源屏蔽位
wire  [ 7:0] CP0_Cause_IP_out; //待处理中断标识
wire         es_inst_mfc0;
wire         m1s_inst_mfc0;
wire         m1s_inst_eret; 
wire         mfc0_stall; 
wire         ITLB_found;
wire  [ 3:0] ITLB_index;
wire  [19:0] ITLB_pfn;
wire  [ 2:0] ITLB_c;
wire         ITLB_d;
wire         ITLB_v;
wire  [31:0] br_adjusted_pc;

//AXI和Cache的交互信号
wire         icache_rd_req;
wire  [31:0] icache_rd_addr;
wire         icache_rd_rdy;
wire         icache_ret_valid; //传输完成后ret_valid置1
wire [127:0] icache_ret_data;
wire         dcache_rd_req;
wire  [31:0] dcache_rd_addr; 
wire         dcache_rd_rdy;
wire         dcache_ret_valid; //传输完成后ret_valid置1
wire [127:0] dcache_ret_data; 
wire         dcache_wr_req;
wire  [31:0] dcache_wr_addr;     
wire [127:0] dcache_wr_data; //一次写一个cache line的数据
wire         dcache_wr_rdy;
wire         dcache_wr_valid;

//AXI和Uncache(DCache)的交互信号
wire         udcache_rd_req; 
wire  [31:0] udcache_rd_addr;
wire         udcache_rd_rdy; 
wire         udcache_ret_valid; //传输完成后ret_valid置1
wire  [31:0] udcache_ret_data; //一次一个字
wire         udcache_wr_req; 
wire  [31:0] udcache_wr_addr;     
wire  [ 3:0] udcache_wr_strb; 
wire  [31:0] udcache_wr_data; //一次一个字
wire         udcache_wr_rdy; 
wire         udcache_wr_valid; 

//CPU和ICache的交互信号如下;本人目前没有实现《CPU设计实战》中的wstrb和wdata
//wire         inst_valid;
wire  [ 7:0] inst_index;
wire  [19:0] inst_tag;
wire  [ 3:0] inst_offset;
wire         icache_busy;
wire  [31:0] inst_rdata;
wire         inst_valid_end;

//CPU和DCache的交互信号如下;
wire         data_valid;
wire         data_op;
wire  [ 7:0] data_index;
wire  [19:0] data_tag;
wire  [ 3:0] data_offset;
wire  [ 3:0] data_wstrb;
wire  [31:0] data_wdata;
wire         data_addr_ok; //DCache能够接收CPU发出的valid信号,则置为1(看DCache状态机)
wire         data_data_ok;
wire  [31:0] data_rdata;
wire         isUncache;

/********************TLB-CP0交互信号如下********************/
wire           m1s_inst_tlbwi  ; //写使能:对应inst_tlbwi
wire           m1s_inst_tlbp   ; //查询:对应inst_tlbp
wire           tlb_to_cp0_found; //tlb查找是否成功
wire  [18:0]   tlb_to_cp0_vpn2 ; //以下为tlb写入的数据
wire  [7:0]    tlb_to_cp0_asid ;
wire  [3:0]    tlb_to_cp0_index; 
wire  [19:0]   tlb_to_cp0_pfn0 ; //以下为entrylo0寄存器写入tlb的数据
wire  [2:0]    tlb_to_cp0_c0   ;
wire           tlb_to_cp0_d0   ;
wire           tlb_to_cp0_v0   ;
wire           tlb_to_cp0_g0   ;
wire  [19:0]   tlb_to_cp0_pfn1 ; //以下为entrylo1寄存器写入tlb的数据
wire  [2:0]    tlb_to_cp0_c1   ;
wire           tlb_to_cp0_d1   ;
wire           tlb_to_cp0_v1   ;
wire           tlb_to_cp0_g1   ;
wire  [18:0]   cp0_to_tlb_vpn2 ; //以下为tlb读出的数据
wire  [7:0]    cp0_to_tlb_asid ;
wire  [19:0]   cp0_to_tlb_pfn0 ; //以下为entrylo0寄存器读出的tlb的数据
wire  [2:0]    cp0_to_tlb_c0   ;
wire           cp0_to_tlb_d0   ;
wire           cp0_to_tlb_v0   ;
wire           cp0_to_tlb_g0   ;
wire  [19:0]   cp0_to_tlb_pfn1 ; //以下为entrylo1寄存器读出的tlb的数据
wire  [2:0]    cp0_to_tlb_c1   ;
wire           cp0_to_tlb_d1   ;
wire           cp0_to_tlb_v1   ;
wire           cp0_to_tlb_g1   ;
wire  [3:0]    cp0_to_tlb_index; //tlbwr指令的索引值
wire  [31:0]   m1s_alu_result  ;
wire           DTLB_found        ;
wire  [3:0]    DTLB_index     ;
wire  [19:0]   DTLB_pfn       ;
wire  [2:0]    DTLB_c         ;
wire           DTLB_d         ;
wire           DTLB_v         ;
/********************TLB-CP0交互信号如上********************/
wire          TLB_Buffer_Flush;

AXI_Interface U_AXI_Interface(
    .clk     (aclk     ),
    .resetn  (aresetn  ),
    //AXI规范定义的信号
    .arid    (arid     ),
    .araddr  (araddr   ),
    .arlen   (arlen    ),
    .arsize  (arsize   ),
    .arburst (arburst  ),
    .arlock  (arlock   ),
    .arcache (arcache  ),
    .arprot  (arprot   ),
    .arvalid (arvalid  ),
    .arready (arready  ),
    .rid     (rid      ),
    .rdata   (rdata    ),
    .rresp   (rresp    ),
    .rlast   (rlast    ),
    .rvalid  (rvalid   ),
    .rready  (rready   ),
    .awid    (awid     ),
    .awaddr  (awaddr   ),
    .awlen   (awlen    ),
    .awsize  (awsize   ),
    .awburst (awburst  ),
    .awlock  (awlock   ),
    .awcache (awcache  ),
    .awprot  (awprot   ),
    .awvalid (awvalid  ),
    .awready (awready  ),
    .wid     (wid      ),
    .wdata   (wdata    ),
    .wstrb   (wstrb    ),
    .wlast   (wlast    ),
    .wvalid  (wvalid   ),
    .wready  (wready   ),
    .bid     (bid      ),
    .bresp   (bresp    ),
    .bvalid  (bvalid   ),
    .bready  (bready   ),
    //TODO:这里需要Cache的接线,注意信号引用
    //Attention:发请求在IF和EXE阶段处理
    .icache_rd_req    (icache_rd_req    ),
    .icache_rd_addr   (icache_rd_addr   ),
    .icache_rd_rdy    (icache_rd_rdy    ),
    .icache_ret_valid (icache_ret_valid ),
    .icache_ret_data  (icache_ret_data  ),

    .dcache_rd_req    (dcache_rd_req    ),
    .dcache_rd_addr   (dcache_rd_addr   ),
    .dcache_rd_rdy    (dcache_rd_rdy    ),
    .dcache_ret_valid (dcache_ret_valid ),
    .dcache_ret_data  (dcache_ret_data  ),
    .dcache_wr_req    (dcache_wr_req    ),
    .dcache_wr_addr   (dcache_wr_addr   ),
    // .dcache_wr_strb   (dcache_wr_strb ),
    .dcache_wr_data   (dcache_wr_data   ),
    .dcache_wr_rdy    (dcache_wr_rdy    ),
    .dcache_wr_valid  (dcache_wr_valid  ),
    .udcache_rd_req   (udcache_rd_req   ),
    .udcache_rd_addr  (udcache_rd_addr  ),
    .udcache_rd_rdy   (udcache_rd_rdy   ),
    .udcache_ret_valid(udcache_ret_valid),
    .udcache_ret_data (udcache_ret_data ),
    .udcache_wr_req   (udcache_wr_req   ),
    .udcache_wr_addr  (udcache_wr_addr  ),
    .udcache_wr_strb  (udcache_wr_strb  ),
    .udcache_wr_data  (udcache_wr_data  ),
    .udcache_wr_rdy   (udcache_wr_rdy   ),
    .udcache_wr_valid (udcache_wr_valid )
);

Icache U_Icache(
    .clk              (aclk             ),
    .reset            (reset            ),
    .inst_valid       (inst_valid_end   ),
    .inst_index       (inst_index       ),
    .inst_tag         (inst_tag         ),
    .inst_offset      (inst_offset      ),
    // .flush            (flush     ),
    .icache_busy      (icache_busy      ),
    .inst_rdata       (inst_rdata       ),

    .icache_rd_req    (icache_rd_req    ),
    .icache_rd_addr   (icache_rd_addr   ),
    .icache_rd_rdy    (icache_rd_rdy    ),
    .icache_ret_valid (icache_ret_valid ),
    .icache_ret_data  (icache_ret_data  )
);

dcache dcache(
    .clk            (aclk     ),
    .reset          (reset    ),
    .d_valid        (data_valid),
    .d_op           (data_op   ),
    .d_index        (data_index),
    .d_tag          (data_tag  ),
    .d_offset       (data_offset),
    .d_wstrb        (data_wstrb),
    .d_wdata        (data_wdata),
    .d_addr_ok      (data_addr_ok),
    .d_data_ok      (data_data_ok),
    .d_rdata        (data_rdata),

    .d_rd_req       (dcache_rd_req    ),
    .d_rd_addr      (dcache_rd_addr   ),
    .d_rd_rdy       (dcache_rd_rdy    ),
    .d_ret_valid    (dcache_ret_valid ),
    .d_ret_data     (dcache_ret_data  ),
    .d_wr_req       (dcache_wr_req    ),
    .d_wr_addr      (dcache_wr_addr   ),
    // .d_wr_strb      (dcache_wr_strb   ),
    .d_wr_data      (dcache_wr_data   ),
    .d_wr_rdy       (dcache_wr_rdy    ),
    .d_wr_valid     (dcache_wr_valid  ),

    .ud_rd_req      (udcache_rd_req    ),
    .ud_rd_addr     (udcache_rd_addr   ),
    .ud_rd_rdy      (udcache_rd_rdy    ),
    .ud_ret_valid   (udcache_ret_valid ),
    .ud_ret_data    (udcache_ret_data  ),
    .ud_wr_req      (udcache_wr_req    ),
    .ud_wr_addr     (udcache_wr_addr   ),
    .ud_wr_strb     (udcache_wr_strb   ),
    .ud_wr_data     (udcache_wr_data   ),
    .ud_wr_rdy      (udcache_wr_rdy    ),
    .ud_wr_valid    (udcache_wr_valid  ),
    .isUncache      (isUncache         ) 
);
//pre_if stage
pre_if_stage pre_if_stage(
    .clk            (aclk           ),
    .reset          (reset          ),
    .fs_allowin     (fs_allowin     ),
    .br_bus         (br_bus         ),
    .ps_to_fs_bus   (ps_to_fs_bus   ),
    .ps_to_fs_valid (ps_to_fs_valid ),
    .flush          (flush          ),
    // .flush_r        (flush_r        ),
    .flush_refill   (flush_refill   ),
    .CP0_EPC_out    (CP0_EPC_out    ),
    .m1s_inst_eret  (m1s_inst_eret  ),
    //.inst_valid     (inst_valid     ),
    .inst_index     (inst_index     ),
    .inst_tag       (inst_tag       ),
    .inst_offset    (inst_offset    ),
    .icache_busy    (icache_busy    ),
    .br_adjusted_pc (br_adjusted_pc ),
    .ITLB_found     (ITLB_found     ),
    .ITLB_index     (ITLB_index     ),
    .ITLB_pfn       (ITLB_pfn       ),
    .ITLB_c         (ITLB_c         ),
    .ITLB_d         (ITLB_d         ),
    .ITLB_v         (ITLB_v         ),
    .ITLB_asid      (cp0_to_tlb_asid),
    .TLB_Buffer_Flush(TLB_Buffer_Flush),
    // .ds_ex          (ds_ex          ),
    // .es_ex          (es_ex          ),
    // .m1s_ex         (m1s_ex         )
    .inst_valid_end (inst_valid_end)
);

// IF stage
if_stage if_stage(
    .clk            (aclk           ),
    .reset          (reset          ),
    //allowin
    .fs_allowin     (fs_allowin     ),
    .ds_allowin     (ds_allowin     ),
    .ps_to_fs_bus   (ps_to_fs_bus   ),
    .ps_to_fs_valid (ps_to_fs_valid ),
    //brbus
    .fs_bd          (is_branch      ),
    //outputs
    .fs_to_ds_valid (fs_to_ds_valid ),
    .fs_to_ds_bus   (fs_to_ds_bus   ),
    .flush          (flush          ),
    // .flush_r        (flush_r        ),
    .icache_busy    (icache_busy    ),
    .inst_rdata     (inst_rdata     )
    // .ds_ex          (ds_ex          ),
    // .es_ex          (es_ex          ),
    // .m1s_ex         (m1s_ex         )
);
// ID stage
id_stage id_stage(
    .clk                (aclk               ),
    .reset              (reset              ),
    //allowin        
    .es_allowin         (es_allowin         ),
    .ds_allowin         (ds_allowin         ),
    //from fs        
    .fs_to_ds_valid     (fs_to_ds_valid     ),
    .fs_to_ds_bus       (fs_to_ds_bus       ),
    //to es        
    .ds_to_es_valid     (ds_to_es_valid     ),
    .ds_to_es_bus       (ds_to_es_bus       ),
    //to fs        
    .br_bus             (br_bus             ),
    .is_branch          (is_branch          ),
    //to rf: for write back
    .ws_to_rf_bus       (ws_to_rf_bus       ),
    .EXE_dest           (EXE_dest           ),
    .M1s_dest           (M1s_dest           ),
    .MEM_dest           (MEM_dest           ),
    .WB_dest            (WB_dest            ),
    .EXE_result         (EXE_result         ),
    .M1s_result         (M1s_result         ),
    .MEM_result         (MEM_result         ),
    .WB_result          (WB_result          ),
    .es_load_op         (es_load_op         ),
    .m1s_load_op        (m1s_load_op        ),
    .flush              (flush              ),
    .es_inst_mfc0       (es_inst_mfc0       ),
    .m1s_inst_mfc0      (m1s_inst_mfc0      ),
    .CP0_Status_IE_out  (CP0_Status_IE_out  ), 
    .CP0_Status_EXL_out (CP0_Status_EXL_out ), 
    .CP0_Status_IM_out  (CP0_Status_IM_out  ),
    .CP0_Cause_IP_out   (CP0_Cause_IP_out   ),
    .CP0_Cause_TI_out   (CP0_Cause_TI_out   ),
    .mfc0_stall         (mfc0_stall         ),
    .ds_ex              (ds_ex              ),
    .icache_busy        (icache_busy        )
);
// EXE stage
exe_stage exe_stage(
    .clk            (aclk           ),
    .reset          (reset          ),
    //allowin
    .m1s_allowin    (m1s_allowin     ),
    .es_allowin     (es_allowin     ),
    //from ds
    .ds_to_es_valid (ds_to_es_valid ),
    .ds_to_es_bus   (ds_to_es_bus   ),
    //to ms
    .es_to_m1s_valid (es_to_m1s_valid ),
    .es_to_m1s_bus   (es_to_m1s_bus   ),
    // data sram interface
    .EXE_dest       (EXE_dest       ),
    .EXE_result     (EXE_result     ),
    .es_load_op     (es_load_op     ),
    .flush          (flush          ),
    .es_ex          (es_ex          ),
    .m1s_ex         (m1s_ex          ),
    .es_inst_mfc0   (es_inst_mfc0   ),
    .m1s_inst_eret  (m1s_inst_eret   )
);
// M1 stage
m1_stage m1_stage(
    .ext_int            (ext_int            ),
    .clk                (aclk               ),
    .reset              (reset              ),
    //allowin        
    .ms_allowin         (ms_allowin         ),
    .m1s_allowin        (m1s_allowin        ),
    //from es        
    .es_to_m1s_valid    (es_to_m1s_valid    ),
    .es_to_m1s_bus      (es_to_m1s_bus      ),
    //to ms      
    .m1s_to_ms_valid    (m1s_to_ms_valid    ),
    .m1s_to_ms_bus      (m1s_to_ms_bus      ),
    .m1s_load_op        (m1s_load_op        ),
    .M1s_dest           (M1s_dest           ), 
    .M1s_result         (M1s_result         ),
    .flush              (flush              ), 
    .flush_refill       (flush_refill       ),
    .m1s_ex             (m1s_ex             ), 
    .m1s_inst_mfc0      (m1s_inst_mfc0      ), 
    .m1s_inst_eret      (m1s_inst_eret      ),
    .CP0_EPC_out        (CP0_EPC_out        ),
    .CP0_Status_IE_out  (CP0_Status_IE_out  ),
    .CP0_Status_EXL_out (CP0_Status_EXL_out ),
    .CP0_Status_IM_out  (CP0_Status_IM_out  ),
    .CP0_Cause_IP_out   (CP0_Cause_IP_out   ),
    .CP0_Cause_TI_out   (CP0_Cause_TI_out   ),
    .m1s_inst_tlbwi     (m1s_inst_tlbwi     ),
    .m1s_inst_tlbp      (m1s_inst_tlbp      ),
    .tlb_to_cp0_found   (tlb_to_cp0_found   ),
    .tlb_to_cp0_vpn2    (tlb_to_cp0_vpn2    ),
    .tlb_to_cp0_asid    (tlb_to_cp0_asid    ),
    .tlb_to_cp0_index   (tlb_to_cp0_index   ),
    .tlb_to_cp0_pfn0    (tlb_to_cp0_pfn0    ),
    .tlb_to_cp0_c0      (tlb_to_cp0_c0      ),
    .tlb_to_cp0_d0      (tlb_to_cp0_d0      ),
    .tlb_to_cp0_v0      (tlb_to_cp0_v0      ),
    .tlb_to_cp0_g0      (tlb_to_cp0_g0      ),
    .tlb_to_cp0_pfn1    (tlb_to_cp0_pfn1    ),
    .tlb_to_cp0_c1      (tlb_to_cp0_c1      ),
    .tlb_to_cp0_d1      (tlb_to_cp0_d1      ),
    .tlb_to_cp0_v1      (tlb_to_cp0_v1      ),
    .tlb_to_cp0_g1      (tlb_to_cp0_g1      ),
    .cp0_to_tlb_vpn2    (cp0_to_tlb_vpn2    ),
    .cp0_to_tlb_asid    (cp0_to_tlb_asid    ),
    .cp0_to_tlb_pfn0    (cp0_to_tlb_pfn0    ),
    .cp0_to_tlb_c0      (cp0_to_tlb_c0      ),
    .cp0_to_tlb_d0      (cp0_to_tlb_d0      ),
    .cp0_to_tlb_v0      (cp0_to_tlb_v0      ),
    .cp0_to_tlb_g0      (cp0_to_tlb_g0      ),
    .cp0_to_tlb_pfn1    (cp0_to_tlb_pfn1    ),
    .cp0_to_tlb_c1      (cp0_to_tlb_c1      ),
    .cp0_to_tlb_d1      (cp0_to_tlb_d1      ),
    .cp0_to_tlb_v1      (cp0_to_tlb_v1      ),
    .cp0_to_tlb_g1      (cp0_to_tlb_g1      ),
    .cp0_to_tlb_index   (cp0_to_tlb_index   ),
    .m1s_alu_result     (m1s_alu_result     ),
    .data_valid         (data_valid         ),
    .data_op            (data_op            ),
    .data_index         (data_index         ),
    .data_tag           (data_tag           ),
    .data_offset        (data_offset        ),
    .data_wstrb         (data_wstrb         ),
    .data_wdata         (data_wdata         ),
    .data_addr_ok       (data_addr_ok       ),
    .data_data_ok       (data_data_ok       ),
    .DTLB_found         (DTLB_found         ),
    .DTLB_index         (DTLB_index         ),
    .DTLB_pfn           (DTLB_pfn           ),
    .DTLB_c             (DTLB_c             ),
    .DTLB_d             (DTLB_d             ),
    .DTLB_v             (DTLB_v             ),
    .isUncache          (isUncache          ),
    .TLB_Buffer_Flush_Final(TLB_Buffer_Flush)
);
// MEM stage
wire ms_inst_mfc0;
mem_stage mem_stage(
    .clk             (aclk             ),
    .reset           (reset            ),
    //allowin   
    .ws_allowin      (ws_allowin       ),
    .ms_allowin      (ms_allowin       ),
    .CP0_data        (CP0_data         ),
    .ms_inst_mfc0    (ms_inst_mfc0     ),
    //from es
    .m1s_to_ms_valid (m1s_to_ms_valid  ),
    .m1s_to_ms_bus   (m1s_to_ms_bus    ),
    //to ws
    .data_rdata      (data_rdata       ),
    .ms_to_ws_valid  (ms_to_ws_valid   ),
    .ms_to_ws_bus    (ms_to_ws_bus     ),
    .MEM_dest        (MEM_dest         ), 
    .MEM_result      (MEM_result       ), 
    .ms_ex           (ms_ex            )
);
// WB stage
wb_stage wb_stage(
    .clk              (aclk             ),
    .reset            (reset            ),
    //allowin
    .ws_allowin       (ws_allowin       ),
    //from ms
    .ms_to_ws_valid   (ms_to_ws_valid   ),
    .ms_to_ws_bus     (ms_to_ws_bus     ),
    //to rf: for write back
    .ws_to_rf_bus     (ws_to_rf_bus     ),
    //trace debug interface
    .debug_wb_pc      (debug_wb_pc      ),
    .debug_wb_rf_wen  (debug_wb_rf_wen  ),
    .debug_wb_rf_wnum (debug_wb_rf_wnum ),
    .debug_wb_rf_wdata(debug_wb_rf_wdata),
    .WB_dest          (WB_dest          ), 
    .WB_result        (WB_result        ),
    .ws_ex            (ws_ex            )
);

tlb tlb_stage(
    //TODO: add more signals
    .clk              (aclk             ),
    .reset            (reset            ),
    .s0_vpn2          (br_adjusted_pc[31:13] ),
    .s0_odd_page      (br_adjusted_pc[12]    ),
    .s0_asid          (cp0_to_tlb_asid  ),        
    .s0_found         (ITLB_found       ),
    .s0_index         (ITLB_index       ),
    .s0_pfn           (ITLB_pfn         ),
    .s0_c             (ITLB_c           ),
    .s0_d             (ITLB_d           ),
    .s0_v             (ITLB_v           ),
    .s1_vpn2          (m1s_alu_result[31:13]),
    .s1_odd_page      (m1s_alu_result[12]),
    .s1_asid          (cp0_to_tlb_asid  ),
    .s1_found         (DTLB_found       ),
    .s1_index         (DTLB_index       ),
    .s1_pfn           (DTLB_pfn         ),
    .s1_c             (DTLB_c           ),
    .s1_d             (DTLB_d           ),
    .s1_v             (DTLB_v           ),
    .inst_tlbwi       (m1s_inst_tlbwi   ),
    .inst_tlbp        (m1s_inst_tlbp    ),
    .tlb_to_cp0_found (tlb_to_cp0_found ),
    .tlb_to_cp0_vpn2  (tlb_to_cp0_vpn2  ),
    .tlb_to_cp0_asid  (tlb_to_cp0_asid  ),
    .tlb_to_cp0_index (tlb_to_cp0_index ),
    .tlb_to_cp0_pfn0  (tlb_to_cp0_pfn0  ),
    .tlb_to_cp0_c0    (tlb_to_cp0_c0    ),
    .tlb_to_cp0_d0    (tlb_to_cp0_d0    ),
    .tlb_to_cp0_v0    (tlb_to_cp0_v0    ),
    .tlb_to_cp0_g0    (tlb_to_cp0_g0    ),
    .tlb_to_cp0_pfn1  (tlb_to_cp0_pfn1  ),
    .tlb_to_cp0_c1    (tlb_to_cp0_c1    ),
    .tlb_to_cp0_d1    (tlb_to_cp0_d1    ),
    .tlb_to_cp0_v1    (tlb_to_cp0_v1    ),
    .tlb_to_cp0_g1    (tlb_to_cp0_g1    ),
    .cp0_to_tlb_vpn2  (cp0_to_tlb_vpn2  ),
    .cp0_to_tlb_asid  (cp0_to_tlb_asid  ),
    .cp0_to_tlb_pfn0  (cp0_to_tlb_pfn0  ),
    .cp0_to_tlb_c0    (cp0_to_tlb_c0    ),
    .cp0_to_tlb_d0    (cp0_to_tlb_d0    ),
    .cp0_to_tlb_v0    (cp0_to_tlb_v0    ),
    .cp0_to_tlb_g0    (cp0_to_tlb_g0    ),
    .cp0_to_tlb_pfn1  (cp0_to_tlb_pfn1  ),
    .cp0_to_tlb_c1    (cp0_to_tlb_c1    ),
    .cp0_to_tlb_d1    (cp0_to_tlb_d1    ),
    .cp0_to_tlb_v1    (cp0_to_tlb_v1    ),
    .cp0_to_tlb_g1    (cp0_to_tlb_g1    ),
    .cp0_to_tlb_index (cp0_to_tlb_index )
);

endmodule
