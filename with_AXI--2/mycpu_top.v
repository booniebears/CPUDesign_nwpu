`include "global_defines.vh"

module mycpu_top(
    // �ⲿ�ж��ź�
    input  [ 5:0]   ext_int, //6���ⲿӲ���ж�����
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
    output [31:0]   debug_wb_pc       ,
    output [ 3:0]   debug_wb_rf_wen   ,
    output [ 4:0]   debug_wb_rf_wnum  ,
    output [31:0]   debug_wb_rf_wdata
);

reg         reset;
always @(posedge aclk) reset <= ~aresetn;

wire          ds_allowin;
wire          es_allowin;
wire          ms_allowin;
wire          ws_allowin;
wire          fs_to_ds_valid;
wire          ds_to_es_valid;
wire          es_to_ms_valid;
wire          ms_to_ws_valid;
wire  [`FS_TO_DS_BUS_WD -1:0] fs_to_ds_bus;
wire  [`DS_TO_ES_BUS_WD -1:0] ds_to_es_bus;
wire  [`ES_TO_MS_BUS_WD -1:0] es_to_ms_bus;
wire  [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus;
wire  [`WS_TO_RF_BUS_WD -1:0] ws_to_rf_bus;
wire  [`BR_BUS_WD       -1:0] br_bus;

wire  [ 4:0] EXE_dest  ; // EXE�׶�дRF��ַ ͨ����·�͵�ID�׶�
wire  [ 4:0] MEM_dest  ; // MEM�׶�дRF��ַ ͨ����·�͵�ID�׶�
wire  [ 4:0] WB_dest   ; // WB�׶�дRF��ַ ͨ����·�͵�ID�׶�
wire  [31:0] EXE_result; //EXE�׶� es_alu_result
wire  [31:0] MEM_result; //MEM�׶� ms_final_result 
wire  [31:0] WB_result ; //WB�׶� ws_final_result
wire         es_load_op; //EXE�׶� �ж��Ƿ�Ϊloadָ��

wire         flush          ; // �ж��Ƿ���Ҫ��ջ���
wire         es_ex          ; 
wire         ms_ex          ;
wire  [31:0] CP0_EPC        ;
wire         CP0_Cause_TI   ;
wire         CP0_Status_IE  ; //IE=1,ȫ���ж�ʹ�ܿ���
wire         CP0_Status_EXL ; //EXL=0,û���������ڴ���
wire  [ 7:0] CP0_Status_IM  ; //IM��Ӧ�����ж�Դ����λ
wire  [ 7:0] CP0_Cause_IP   ; //�������жϱ�ʶ
wire         es_inst_mfc0   ;
wire         ms_inst_mfc0   ;
wire         ms_inst_eret   ; //MEM�׶�ָ��Ϊeret ǰ�ݵ�EXE ����SRAM��д
wire         mfc0_stall     ; //TODO: ��ʱ��mfc0_stall�ź��͵�IF�׶�,ȷ��nextpc��ת����ȷ��

//AXI��Cache�Ľ����ź�
wire         icache_rd_req  ;
wire  [31:0] icache_rd_addr ;
wire         icache_rd_rdy  ;
wire         icache_ret_valid; //������ɺ�ret_valid��1
wire [127:0] icache_ret_data;
wire         dcache_rd_req  ;
wire  [31:0] dcache_rd_addr ; 
wire         dcache_rd_rdy  ;
wire         dcache_ret_valid; //������ɺ�ret_valid��1
wire [127:0] dcache_ret_data; 
wire         dcache_wr_req  ;
wire  [31:0] dcache_wr_addr ;     
wire  [ 3:0] dcache_wr_strb ; //TODO:Ŀǰû�õ�,����Uncache���õ�
wire [127:0] dcache_wr_data ; //һ��дһ��cache line������
wire         dcache_wr_rdy  ;

//AXI��Uncache(DCache)�Ľ����ź�
wire         udcache_rd_req ; 
wire  [31:0] udcache_rd_addr;
wire         udcache_rd_rdy ; 
wire         udcache_ret_valid; //������ɺ�ret_valid��1
wire  [31:0] udcache_ret_data ; //һ��һ����
wire         udcache_wr_req ; 
wire  [31:0] udcache_wr_addr;     
wire  [ 3:0] udcache_wr_strb; 
wire  [31:0] udcache_wr_data; //һ��һ����
wire         udcache_wr_rdy ; 

//CPU��ICache�Ľ����ź�����;����Ŀǰû��ʵ�֡�CPU���ʵս���е�wstrb��wdata
wire         inst_valid     ;
wire         inst_op        ;
wire  [ 7:0] inst_index     ;
wire  [19:0] inst_tag       ;
wire  [ 3:0] inst_offset    ;
wire         inst_addr_ok   ;
wire         inst_data_ok   ;
wire  [31:0] inst_rdata     ;

//CPU��DCache�Ľ����ź�����;
wire         data_valid     ;
wire         data_op        ;
wire  [ 7:0] data_index     ;
wire  [19:0] data_tag       ;
wire  [ 3:0] data_offset    ;
wire  [ 3:0] data_wstrb     ;
wire  [31:0] data_wdata     ;
wire         data_addr_ok   ; //DCache�ܹ�����CPU������valid�ź�,����Ϊ1(��DCache״̬��)
wire         data_data_ok   ;
wire  [31:0] data_rdata     ;

/********************TLB-CP0�����ź�����********************/
wire           ms_inst_tlbwi   ; //дʹ��:��Ӧinst_tlbwi
wire           ms_inst_tlbp    ; //��ѯ:��Ӧinst_tlbp
wire           tlb_to_cp0_found; //tlb�����Ƿ�ɹ�
wire  [18:0]   tlb_to_cp0_vpn2 ; //����Ϊtlbд�������
wire  [7:0]    tlb_to_cp0_asid ;
wire  [3:0]    tlb_to_cp0_index; 
wire  [19:0]   tlb_to_cp0_pfn0 ; //����Ϊentrylo0�Ĵ���д��tlb������
wire  [2:0]    tlb_to_cp0_c0   ;
wire           tlb_to_cp0_d0   ;
wire           tlb_to_cp0_v0   ;
wire           tlb_to_cp0_g0   ;
wire  [19:0]   tlb_to_cp0_pfn1 ; //����Ϊentrylo1�Ĵ���д��tlb������
wire  [2:0]    tlb_to_cp0_c1   ;
wire           tlb_to_cp0_d1   ;
wire           tlb_to_cp0_v1   ;
wire           tlb_to_cp0_g1   ;
wire  [18:0]   cp0_to_tlb_vpn2 ; //����Ϊtlb����������
wire  [7:0]    cp0_to_tlb_asid ;
wire  [19:0]   cp0_to_tlb_pfn0 ; //����Ϊentrylo0�Ĵ���������tlb������
wire  [2:0]    cp0_to_tlb_c0   ;
wire           cp0_to_tlb_d0   ;
wire           cp0_to_tlb_v0   ;
wire           cp0_to_tlb_g0   ;
wire  [19:0]   cp0_to_tlb_pfn1 ; //����Ϊentrylo1�Ĵ���������tlb������
wire  [2:0]    cp0_to_tlb_c1   ;
wire           cp0_to_tlb_d1   ;
wire           cp0_to_tlb_v1   ;
wire           cp0_to_tlb_g1   ;
wire  [3:0]    cp0_to_tlb_index; //tlbwrָ�������ֵ
/********************TLB-CP0�����ź�����********************/

AXI_Interface U_AXI_Interface(
    .clk     (aclk     ),
    .resetn  (aresetn  ),
    //AXI�淶������ź�
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
    //TODO:������ҪCache�Ľ���,ע���ź�����
    //Attention:��������IF��EXE�׶δ���
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
    // .dcache_wr_strb   (dcache_wr_strb   ),
    .dcache_wr_data   (dcache_wr_data   ),
    .dcache_wr_rdy    (dcache_wr_rdy    ),
    .udcache_rd_req   (udcache_rd_req   ),
    .udcache_rd_addr  (udcache_rd_addr  ),
    .udcache_rd_rdy   (udcache_rd_rdy   ),
    .udcache_ret_valid(udcache_ret_valid),
    .udcache_ret_data (udcache_ret_data ),
    .udcache_wr_req   (udcache_wr_req   ),
    .udcache_wr_addr  (udcache_wr_addr  ),
    .udcache_wr_strb  (udcache_wr_strb  ),
    .udcache_wr_data  (udcache_wr_data  ),
    .udcache_wr_rdy   (udcache_wr_rdy   )
);

icache icache(
    .clk            (aclk               ),
    .reset          (reset              ),
    .valid          (inst_valid         ),
    .op             (inst_op            ),
    .index          (inst_index         ),
    .tag            (inst_tag           ),
    .offset         (inst_offset        ),
    .flush          (flush              ),
    .addr_ok        (inst_addr_ok       ),
    .data_ok        (inst_data_ok       ),
    .rdata          (inst_rdata         ),

    .rd_req         (icache_rd_req       ),
    .rd_addr        (icache_rd_addr      ),
    .rd_rdy         (icache_rd_rdy       ),
    .ret_valid      (icache_ret_valid    ),
    .ret_data       (icache_ret_data     )
);

dcache dcache(
    .clk            (aclk               ),
    .reset          (reset              ),
    .d_valid        (data_valid         ),
    .d_op           (data_op            ),
    .d_index        (data_index         ),
    .d_tag          (data_tag           ),
    .d_offset       (data_offset        ),
    .d_wstrb        (data_wstrb         ),
    .d_wdata        (data_wdata         ),
    .d_addr_ok      (data_addr_ok       ),
    .d_data_ok      (data_data_ok       ),
    .d_rdata        (data_rdata         ),

    .d_rd_req       (dcache_rd_req      ),
    .d_rd_addr      (dcache_rd_addr     ),
    .d_rd_rdy       (dcache_rd_rdy      ),
    .d_ret_valid    (dcache_ret_valid   ),
    .d_ret_data     (dcache_ret_data    ),
    .d_wr_req       (dcache_wr_req      ),
    .d_wr_addr      (dcache_wr_addr     ),
    // .d_wr_strb   (dcache_wr_strb     ),
    .d_wr_data      (dcache_wr_data     ),
    .d_wr_rdy       (dcache_wr_rdy      ),

    .ud_rd_req      (udcache_rd_req     ),
    .ud_rd_addr     (udcache_rd_addr    ),
    .ud_rd_rdy      (udcache_rd_rdy     ),
    .ud_ret_valid   (udcache_ret_valid  ),
    .ud_ret_data    (udcache_ret_data   ),
    .ud_wr_req      (udcache_wr_req     ),
    .ud_wr_addr     (udcache_wr_addr    ),
    .ud_wr_strb     (udcache_wr_strb    ),
    .ud_wr_data     (udcache_wr_data    ),
    .ud_wr_rdy      (udcache_wr_rdy     )
    

);

// IF stage
if_stage if_stage(
    .clk            (aclk               ),
    .reset          (reset              ),
    //allowin   
    .ds_allowin     (ds_allowin         ),
    //brbus 
    .br_bus         (br_bus             ),
    //outputs   
    .fs_to_ds_valid (fs_to_ds_valid     ),
    .fs_to_ds_bus   (fs_to_ds_bus       ),
    .flush          (flush              ),
    // .flush_refill   (flush_refill       ), 
    .CP0_EPC        (CP0_EPC            ), 
    .ms_inst_eret   (ms_inst_eret       ),
    // .tlb_refill_if_ex(tlb_refill_if_ex  ),
    // .tlb_invalid_if_ex(tlb_invalid_if_ex),
    .inst_valid     (inst_valid         ),
    .inst_op        (inst_op            ),
    .inst_index     (inst_index         ),
    .inst_tag       (inst_tag           ),
    .inst_offset    (inst_offset        ),
    .inst_addr_ok   (inst_addr_ok       ),
    .inst_data_ok   (inst_data_ok       ),
    .inst_rdata     (inst_rdata         ),
    .mfc0_stall     (mfc0_stall         )
);
// ID stage
id_stage id_stage(
    .clk            (aclk           ),
    .reset          (reset          ),
    //allowin
    .es_allowin     (es_allowin     ),
    .ds_allowin     (ds_allowin     ),
    //from fs
    .fs_to_ds_valid (fs_to_ds_valid ),
    .fs_to_ds_bus   (fs_to_ds_bus   ),
    //to es
    .ds_to_es_valid (ds_to_es_valid ),
    .ds_to_es_bus   (ds_to_es_bus   ),
    //to fs
    .br_bus         (br_bus         ),
    //to rf: for write back
    .ws_to_rf_bus   (ws_to_rf_bus   ),
    .EXE_dest       (EXE_dest       ),
    .MEM_dest       (MEM_dest       ),
    .WB_dest        (WB_dest        ),
    .EXE_result     (EXE_result     ),
    .MEM_result     (MEM_result     ),
    .WB_result      (WB_result      ),
    .es_load_op     (es_load_op     ),
    .flush          (flush          ),
    // .flush_refill   (flush_refill   ),
    .es_inst_mfc0   (es_inst_mfc0   ),
    .ms_inst_mfc0   (ms_inst_mfc0   ),
    .CP0_Status_IE  (CP0_Status_IE  ), 
    .CP0_Status_EXL (CP0_Status_EXL ), 
    .CP0_Status_IM  (CP0_Status_IM  ),
    .CP0_Cause_IP   (CP0_Cause_IP   ),
    .CP0_Cause_TI   (CP0_Cause_TI   ),
    .mfc0_stall     (mfc0_stall     )
);
// EXE stage
exe_stage exe_stage(
    .clk            (aclk           ),
    .reset          (reset          ),
    //allowin
    .ms_allowin     (ms_allowin     ),
    .es_allowin     (es_allowin     ),
    //from ds
    .ds_to_es_valid (ds_to_es_valid ),
    .ds_to_es_bus   (ds_to_es_bus   ),
    //to ms
    .es_to_ms_valid (es_to_ms_valid ),
    .es_to_ms_bus   (es_to_ms_bus   ),
    // data sram interface
    .EXE_dest       (EXE_dest       ),
    .EXE_result     (EXE_result     ),
    .es_load_op     (es_load_op     ),
    .flush          (flush          ),
    // .flush_refill   (flush_refill   ),
    .es_ex          (es_ex          ),
    // .tlb_invalid_mem_ex(tlb_invalid_mem_ex),
    // .tlb_refill_mem_ex(tlb_refill_mem_ex),
    // .tlb_mod_ex     (tlb_mod_ex),
    .ms_ex          (ms_ex          ),  
    .es_inst_mfc0   (es_inst_mfc0   ),
    .ms_inst_eret   (ms_inst_eret   ),
    .data_valid     (data_valid     ),
    .data_op        (data_op        ),
    .data_index     (data_index     ),
    .data_tag       (data_tag       ),
    .data_offset    (data_offset    ),
    .data_wstrb     (data_wstrb     ),
    .data_wdata     (data_wdata     ),
    .data_addr_ok   (data_addr_ok   ),
    .data_data_ok   (data_data_ok   )
);
// MEM stage
mem_stage mem_stage(
    .ext_int          (ext_int          ),
    .clk              (aclk             ),
    .reset            (reset            ),
    //allowin    
    .ws_allowin       (ws_allowin       ),
    .ms_allowin       (ms_allowin       ),
    //from es    
    .es_to_ms_valid   (es_to_ms_valid   ),
    .es_to_ms_bus     (es_to_ms_bus     ),
    //to ws    
    .data_rdata       (data_rdata       ),
    .ms_to_ws_valid   (ms_to_ws_valid   ),
    .ms_to_ws_bus     (ms_to_ws_bus     ),
    .MEM_dest         (MEM_dest         ), 
    .MEM_result       (MEM_result       ),

    .ms_ex            (ms_ex            ), 
    .ms_inst_mfc0     (ms_inst_mfc0     ), 
    .ms_inst_eret     (ms_inst_eret     ),
    .flush            (flush            ), 
    .CP0_EPC          (CP0_EPC          ), 
    .CP0_Status_IE    (CP0_Status_IE    ), 
    .CP0_Status_EXL   (CP0_Status_EXL   ), 
    .CP0_Status_IM    (CP0_Status_IM    ),
    .CP0_Cause_IP     (CP0_Cause_IP     ),
    .CP0_Cause_TI     (CP0_Cause_TI     ), 
    .ms_inst_tlbwi    (ms_inst_tlbwi    ),
    .ms_inst_tlbp     (ms_inst_tlbp     ),
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
    .WB_result        (WB_result        )
);

tlb tlb_stage(
    //TODO: add more signals
    .clk              (aclk             ),
    .s0_vpn2          (0                ),
    .s0_odd_page      (0                ),
    .s0_asid          (0                ),
    .s0_found         (                 ),
    .s0_index         (                 ),
    .s0_pfn           (                 ),
    .s0_c             (                 ),
    .s0_d             (                 ),
    .s0_v             (                 ),
    .s1_vpn2          (0                ),
    .s1_odd_page      (0                ),
    .s1_asid          (0                ),
    .s1_found         (                 ),
    .s1_index         (                 ),
    .s1_pfn           (                 ),
    .s1_c             (                 ),
    .s1_d             (                 ),
    .s1_v             (                 ),
    .inst_tlbwi       (ms_inst_tlbwi    ),
    .inst_tlbp        (ms_inst_tlbp     ),
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
