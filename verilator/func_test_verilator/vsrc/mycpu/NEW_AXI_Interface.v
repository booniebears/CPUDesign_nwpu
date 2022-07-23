`include "global_defines.vh"
`include "AXICache_defines.vh"
`ifdef use_new_axi_crossbar

module AXI_Interface (
    input          clk,
    input          resetn,

    output [ 3: 0] arid,
    output [31: 0] araddr,
    output [ 3: 0] arlen,
    output [ 2: 0] arsize,
    output [ 1: 0] arburst,
    output [ 1: 0] arlock,
    output [ 3: 0] arcache,
    output [ 2: 0] arprot,
    output         arvalid,
    input          arready,
    input  [ 3: 0] rid,
    input  [31: 0] rdata,
    input  [ 1: 0] rresp,
    input          rlast,
    input          rvalid,
    output         rready,
    output [ 3: 0] awid,
    output [31: 0] awaddr,
    output [ 3: 0] awlen,
    output [ 2: 0] awsize,
    output [ 1: 0] awburst,
    output [ 1: 0] awlock,
    output [ 3: 0] awcache,
    output [ 2: 0] awprot,
    output         awvalid,
    input          awready,
    output [ 3: 0] wid,
    output [31: 0] wdata,
    output [ 3: 0] wstrb,
    output         wlast,
    output         wvalid,
    input          wready,
    input  [ 3: 0] bid,
    input  [ 1: 0] bresp,
    input          bvalid,
    output         bready,

    input          icache_rd_req, 
    input  [ 31:0] icache_rd_addr, 
    output         icache_rd_rdy, 
    output         icache_ret_valid, 
    output [127:0] icache_ret_data,

    input          dcache_rd_req, 
    input  [ 31:0] dcache_rd_addr, 
    output         dcache_rd_rdy, 
    output         dcache_ret_valid, 
    output [127:0] dcache_ret_data, 
    input          dcache_wr_req, 
    input  [ 31:0] dcache_wr_addr,     
    input  [127:0] dcache_wr_data, 
    output         dcache_wr_rdy,
    output         dcache_wr_valid, 

    input          uicache_rd_req, 
    input  [ 31:0] uicache_rd_addr, 
    output         uicache_rd_rdy, 
    output         uicache_ret_valid, 
    output [ 31:0] uicache_ret_data,

    input          udcache_rd_req, 
    input  [ 31:0] udcache_rd_addr,
    input  [  2:0] udcache_load_size, 
    output         udcache_rd_rdy, 
    output         udcache_ret_valid,
    output [ 31:0] udcache_ret_data, 
    input          udcache_wr_req, 
    input  [ 31:0] udcache_wr_addr,     
    input  [  3:0] udcache_wr_strb, 
    input  [ 31:0] udcache_wr_data, 
    output         udcache_wr_rdy,   
    output         udcache_wr_valid //
);

    //define FSM for Cached RD
    parameter R_IDLE    = 2'd0,
              AR_SHAKE  = 2'd1,
              R_SHAKE   = 2'd2,
              R_FINISH  = 2'd3;

    //define FSM for Cached WR(DCache)
    parameter W_IDLE    = 3'd0,
              AW_SHAKE  = 3'd1,
              W_SHAKE   = 3'd2,
              B_SHAKE   = 3'd3,
              W_FINISH  = 3'd4;

    //define FSM for Uncached RD
    parameter UR_IDLE   = 2'd0,
              UAR_SHAKE = 2'd1,
              UR_SHAKE  = 2'd2,
              UR_FINISH = 2'd3;

    //define FSM for Uncached WR(DCache)
    parameter UW_IDLE   = 3'd0,
              UAW_SHAKE = 3'd1,
              UW_SHAKE  = 3'd2,
              UB_SHAKE  = 3'd3,
              UW_FINISH = 3'd4;

    // Icache 
    wire  [ 3: 0] inst_arid;
    wire  [31: 0] inst_araddr;
    wire  [ 3: 0] inst_arlen;
    wire  [ 2: 0] inst_arsize;
    wire  [ 1: 0] inst_arburst;
    wire  [ 1: 0] inst_arlock;
    wire  [ 3: 0] inst_arcache; 
    wire  [ 2: 0] inst_arprot;
    wire          inst_arvalid;
    wire          inst_arready;
    wire  [ 3: 0] inst_rid;
    wire  [31: 0] inst_rdata;
    wire  [ 1: 0] inst_rresp;
    wire          inst_rlast;
    wire          inst_rvalid;
    wire          inst_rready;
    wire  [ 3: 0] inst_awid;
    wire  [31: 0] inst_awaddr;
    wire  [ 3: 0] inst_awlen;
    wire  [ 2: 0] inst_awsize;
    wire  [ 1: 0] inst_awburst;
    wire  [ 1: 0] inst_awlock;
    wire  [ 3: 0] inst_awcache;
    wire  [ 2: 0] inst_awprot;
    wire          inst_awvalid;
    wire          inst_awready;
    wire  [ 3: 0] inst_wid;
    wire  [31: 0] inst_wdata;
    wire  [ 3: 0] inst_wstrb;
    wire          inst_wlast;
    wire          inst_wvalid;
    wire          inst_wready;
    wire  [ 3: 0] inst_bid;
    wire  [ 1: 0] inst_bresp;
    wire          inst_bvalid;
    wire          inst_bready;

// Dcache 
    wire  [ 3: 0] data_arid;
    wire  [31: 0] data_araddr;
    wire  [ 3: 0] data_arlen;
    wire  [ 2: 0] data_arsize;
    wire  [ 1: 0] data_arburst;
    wire  [ 1: 0] data_arlock;
    wire  [ 3: 0] data_arcache;
    wire  [ 2: 0] data_arprot;
    wire          data_arvalid;
    wire          data_arready;
    wire  [ 3: 0] data_rid;
    wire  [31: 0] data_rdata;
    wire  [ 1: 0] data_rresp;
    wire          data_rlast;
    wire          data_rvalid;
    wire          data_rready;
    wire  [ 3: 0] data_awid;
    wire  [31: 0] data_awaddr;
    wire  [ 3: 0] data_awlen;
    wire  [ 2: 0] data_awsize;
    wire  [ 1: 0] data_awburst;
    wire  [ 1: 0] data_awlock;
    wire  [ 3: 0] data_awcache;
    wire  [ 2: 0] data_awprot;
    wire          data_awvalid;
    wire          data_awready;
    wire  [ 3: 0] data_wid;
    wire  [31: 0] data_wdata;
    wire  [ 3: 0] data_wstrb;
    wire          data_wlast;
    wire          data_wvalid;
    wire          data_wready;
    wire  [ 3: 0] data_bid;
    wire  [ 1: 0] data_bresp;
    wire          data_bvalid;
    wire          data_bready;

// ICache - Uncache
    wire  [ 3: 0] uinst_arid;
    wire  [31: 0] uinst_araddr;
    wire  [ 3: 0] uinst_arlen;
    wire  [ 2: 0] uinst_arsize;
    wire  [ 1: 0] uinst_arburst;
    wire  [ 1: 0] uinst_arlock;
    wire  [ 3: 0] uinst_arcache; 
    wire  [ 2: 0] uinst_arprot;
    wire          uinst_arvalid;
    wire          uinst_arready;
    wire  [ 3: 0] uinst_rid;
    wire  [31: 0] uinst_rdata;
    wire  [ 1: 0] uinst_rresp;
    wire          uinst_rlast;
    wire          uinst_rvalid;
    wire          uinst_rready;
    wire  [ 3: 0] uinst_awid;
    wire  [31: 0] uinst_awaddr;
    wire  [ 3: 0] uinst_awlen;
    wire  [ 2: 0] uinst_awsize;
    wire  [ 1: 0] uinst_awburst;
    wire  [ 1: 0] uinst_awlock;
    wire  [ 3: 0] uinst_awcache;
    wire  [ 2: 0] uinst_awprot;
    wire          uinst_awvalid;
    wire          uinst_awready;
    wire  [ 3: 0] uinst_wid;
    wire  [31: 0] uinst_wdata;
    wire  [ 3: 0] uinst_wstrb;
    wire          uinst_wlast;
    wire          uinst_wvalid;
    wire          uinst_wready;
    wire  [ 3: 0] uinst_bid;
    wire  [ 1: 0] uinst_bresp;
    wire          uinst_bvalid;
    wire          uinst_bready;    

// DCache - Uncache 
    wire  [ 3: 0] udata_arid;
    wire  [31: 0] udata_araddr;
    wire  [ 3: 0] udata_arlen;
    wire  [ 2: 0] udata_arsize;
    wire  [ 1: 0] udata_arburst;
    wire  [ 1: 0] udata_arlock;
    wire  [ 3: 0] udata_arcache;
    wire  [ 2: 0] udata_arprot;
    wire          udata_arvalid;
    wire          udata_arready;
    wire  [ 3: 0] udata_rid;
    wire  [31: 0] udata_rdata;
    wire  [ 1: 0] udata_rresp;
    wire          udata_rlast;
    wire          udata_rvalid;
    wire          udata_rready;
    wire  [ 3: 0] udata_awid;
    wire  [31: 0] udata_awaddr;
    wire  [ 3: 0] udata_awlen;
    wire  [ 2: 0] udata_awsize;
    wire  [ 1: 0] udata_awburst;
    wire  [ 1: 0] udata_awlock;
    wire  [ 3: 0] udata_awcache;
    wire  [ 2: 0] udata_awprot;
    wire          udata_awvalid;
    wire          udata_awready;
    wire  [ 3: 0] udata_wid;
    wire  [31: 0] udata_wdata;
    wire  [ 3: 0] udata_wstrb;
    wire          udata_wlast;
    wire          udata_wvalid;
    wire          udata_wready;
    wire  [ 3: 0] udata_bid;
    wire  [ 1: 0] udata_bresp;
    wire          udata_bvalid;
    wire          udata_bready;
    
    reg   [  1:0] I_RD_state;
    reg   [  1:0] I_RD_nextstate;
    reg   [  1:0] D_RD_state;
    reg   [  1:0] D_RD_nextstate;
    reg   [  2:0] D_WR_state;
    reg   [  2:0] D_WR_nextstate;
    reg   [  1:0] UI_RD_state;
    reg   [  1:0] UI_RD_nextstate;
    reg   [  1:0] UD_RD_state;
    reg   [  1:0] UD_RD_nextstate;
    reg   [  2:0] UD_WR_state;
    reg   [  2:0] UD_WR_nextstate;

    //Range: 3'd0-3'd3
    reg   [  1:0] ICache_rd_cnt; 
    reg   [  1:0] DCache_rd_cnt;
    reg   [  1:0] DCache_wr_cnt;

    reg   [ 31:0] AXI_I_RAddr;
    reg   [ 31:0] AXI_D_RAddr;
    reg   [ 31:0] AXI_D_WAddr;
    reg   [ 31:0] AXI_UI_RAddr;
    reg   [ 31:0] AXI_UD_RAddr;
    reg   [ 31:0] AXI_UD_WAddr;

    reg   [127:0] ICache_read_line;
    reg   [127:0] DCache_read_line;
    reg   [127:0] DCache_write_line;
    reg   [ 31:0] UICache_read_word;
    reg   [ 31:0] UDCache_read_word;
    reg   [  2:0] UDCache_ar_size;
    reg   [ 31:0] UDCache_write_word;
    reg   [  3:0] UDCache_write_wstrb;

    /********************ICache REQ********************/
    assign inst_arid     = 4'b0000;
    assign inst_arlen    = 4'b0011;      // 传输4拍
    assign inst_arsize   = 3'b010;       // 每次传输4字节
    assign inst_arburst  = 2'b01;
    assign inst_arlock   = 2'b00;
    assign inst_arcache  = 4'b1111;
    assign inst_arprot   = 0;

    //AW,W,B域置空
    assign inst_awid     = 4'h1;           
    assign inst_awlen    = 0;
    assign inst_awsize   = 0;
    assign inst_awburst  = 0;
    assign inst_awlock   = 0;
    assign inst_awcache  = 4'b1111;
    assign inst_awprot   = 0;
    assign inst_awvalid  = 0;
    assign inst_awaddr   = 0;
    assign inst_wid      = 4'h1;
    assign inst_wdata    = 0;
    assign inst_wstrb    = 0;
    assign inst_wlast    = 0;
    assign inst_wvalid   = 0;
    assign inst_bready   = 0;

    //Flip-Flops
    always @(posedge clk) begin
        if(~resetn)
            AXI_I_RAddr <= 0;
        else if(I_RD_state == R_IDLE) //R_IDLE的时候icache_rd_addr可以随便变化 不影响,因为没有发请求
            AXI_I_RAddr <= icache_rd_addr;
        else //强调一下,其余状态下保持不变
            AXI_I_RAddr <= AXI_I_RAddr;
    end
    assign inst_arvalid = (I_RD_state == AR_SHAKE);
    assign inst_araddr  = AXI_I_RAddr;
    assign inst_rready  = (I_RD_state == R_SHAKE);
    /********************ICache REQ********************/

    /********************ICache RECV********************/
    assign icache_rd_rdy    = (I_RD_state == R_IDLE);
    assign icache_ret_valid = (I_RD_state == R_FINISH);
    //Flip-Flop
    always @(posedge clk) begin
        if(~resetn | I_RD_state == R_IDLE)
            ICache_rd_cnt <= 0;
        else if(inst_rvalid)
            ICache_rd_cnt <= ICache_rd_cnt + 1;
        else
            ICache_rd_cnt <= ICache_rd_cnt;
    end
    always @(posedge clk) begin
        if(~resetn)
            ICache_read_line <= 0;
        else if(ICache_rd_cnt == 0)
            ICache_read_line[31:0]   <= inst_rdata;
        else if(ICache_rd_cnt == 1)
            ICache_read_line[63:32]  <= inst_rdata;
        else if(ICache_rd_cnt == 2)
            ICache_read_line[95:64]  <= inst_rdata;
        else if(ICache_rd_cnt == 3)
            ICache_read_line[127:96] <= inst_rdata;
        else
            ICache_read_line         <= ICache_read_line;
    end
    assign icache_ret_data  = ICache_read_line;
    /********************ICache RECV********************/

    /********************DCache REQ********************/
    assign data_arid      = 4'h2;//TODO: 在有写缓冲的情况下 需要考虑id
    assign data_arlen     = 4'b0011;
    assign data_arsize    = 3'b010;
    assign data_arburst   = 2'b01;
    assign data_arlock    = 0;
    assign data_arcache   = 4'b1111;
    assign data_arprot    = 0;

    assign data_awid      = 4'h3;
    assign data_awlen     = 4'b0011;        // 写的话还是一块一块写
    assign data_awsize    = 3'b010;         // 传输32bit 
    assign data_awburst   = 2'b01;          // increase模式
    assign data_awlock    = 0;
    assign data_awcache   = 4'b1111;
    assign data_awprot    = 0;
    assign data_wid       = 4'h3;
    assign data_wstrb     = 4'b1111;
    assign data_bready    = 1'b1;

    //Flip-Flops
    always @(posedge clk) begin
        if(~resetn)
            AXI_D_RAddr <= 0;
        else if(D_RD_state == R_IDLE)
            AXI_D_RAddr <= dcache_rd_addr;
        else
            AXI_D_RAddr <= AXI_D_RAddr;
    end
    always @(posedge clk) begin
        if(~resetn)
            AXI_D_WAddr <= 0;
        else if(D_WR_state == W_IDLE)
            AXI_D_WAddr <= dcache_wr_addr;
        else
            AXI_D_WAddr <= AXI_D_WAddr;
    end
    always @(posedge clk) begin
        if(~resetn | D_WR_state == W_IDLE)
            DCache_wr_cnt <= 0;
        else if(data_wready)
            DCache_wr_cnt <= DCache_wr_cnt + 1;
        else
            DCache_wr_cnt <= DCache_wr_cnt;
    end
    always @(posedge clk) begin
        if(~resetn)
            DCache_write_line <= 0;
        else if(D_WR_state == W_IDLE)
            DCache_write_line <= dcache_wr_data;
        else
            DCache_write_line <= DCache_write_line;
    end
    assign data_arvalid = (D_RD_state == AR_SHAKE);
    assign data_araddr  = AXI_D_RAddr;
    assign data_rready  = (D_RD_state == R_SHAKE);
    assign data_awvalid = (D_WR_state == AW_SHAKE);
    assign data_awaddr  = AXI_D_WAddr;
    assign data_wvalid  = (D_WR_state == W_SHAKE);
    assign data_wdata   = (DCache_wr_cnt == 0) ? DCache_write_line[31:0]  :
                          (DCache_wr_cnt == 1) ? DCache_write_line[63:32] :
                          (DCache_wr_cnt == 2) ? DCache_write_line[95:64] :
                                                 DCache_write_line[127:96];
    assign data_wlast   = (DCache_wr_cnt == 3);
    /********************DCache REQ********************/

    /********************DCache RECV********************/
    assign dcache_rd_rdy    = (D_RD_state == R_IDLE);
    assign dcache_wr_rdy    = (D_WR_state == W_IDLE);
    assign dcache_ret_valid = (D_RD_state == R_FINISH);
    assign dcache_wr_valid  = (D_WR_state == W_FINISH);
    //Flip-Flop
    always @(posedge clk) begin
        if(~resetn | D_RD_state == R_IDLE)
            DCache_rd_cnt <= 0;
        else if(data_rvalid)
            DCache_rd_cnt <= DCache_rd_cnt + 1;
        else
            DCache_rd_cnt <= DCache_rd_cnt;
    end
    always @(posedge clk) begin
        if(~resetn)
            DCache_read_line <= 0;
        else if(DCache_rd_cnt == 0)
            DCache_read_line[31:0]   <= data_rdata;
        else if(DCache_rd_cnt == 1)
            DCache_read_line[63:32]  <= data_rdata;
        else if(DCache_rd_cnt == 2)
            DCache_read_line[95:64]  <= data_rdata;
        else if(DCache_rd_cnt == 3)
            DCache_read_line[127:96] <= data_rdata;
        else
            DCache_read_line         <= DCache_read_line;
    end
    assign dcache_ret_data  = DCache_read_line;
    /********************DCache RECV********************/

    /********************UICache REQ********************/
    assign uinst_arid     = 4'h4;
    assign uinst_arlen    = 4'b0000; // 传输事件只有一个
    assign uinst_arsize   = 3'b010;
    assign uinst_arburst  = 2'b01;
    assign uinst_arlock   = 0;
    assign uinst_arcache  = 0;
    assign uinst_arprot   = 0;

    assign uinst_awid     = 4'h5;
    assign uinst_awlen    = 0;
    assign uinst_awsize   = 0; 
    assign uinst_awburst  = 0;  
    assign uinst_awlock   = 0;
    assign uinst_awcache  = 0;
    assign uinst_awprot   = 0;
    assign uinst_wlast    = 0;
    assign uinst_wdata    = 0;
    assign uinst_awvalid  = 0;
    assign uinst_awaddr   = 0;
    assign uinst_wvalid   = 0;
    assign uinst_wid      = 4'h5;
    assign uinst_wstrb    = 0;
    assign uinst_bready   = 0;

    //Flip-Flops
    always @(posedge clk) begin
        if(~resetn)
            AXI_UI_RAddr <= 0;
        else if(UI_RD_state == UR_IDLE)
            AXI_UI_RAddr <= uicache_rd_addr;
        else
            AXI_UI_RAddr <= AXI_UI_RAddr;
    end
    assign uinst_arvalid  = (UI_RD_state == UAR_SHAKE);
    assign uinst_araddr   = AXI_UI_RAddr;
    assign uinst_rready   = (UI_RD_state == UR_SHAKE);
    /********************UICache REQ********************/

    /********************UICache RECV********************/
    assign uicache_rd_rdy    = (UI_RD_state == UR_IDLE);
    assign uicache_ret_valid = (UI_RD_state == UR_FINISH);
    //Flip-Flops
    always @(posedge clk) begin
        if(~resetn)
            UICache_read_word <= 0;
        else if(UI_RD_state == UR_SHAKE)
            UICache_read_word <= uinst_rdata;
        else
            UICache_read_word <= UICache_read_word;
    end
    assign uicache_ret_data  = UICache_read_word;
    /********************UICache RECV********************/

    /********************UDCache REQ********************/
    assign udata_arid     = 4'h6;
    assign udata_arlen    = 4'b0000;
    assign udata_arsize   = UDCache_ar_size; //Attention: 必须严格指定arsize 
    assign udata_arburst  = 2'b01;
    assign udata_arlock   = 0;
    assign udata_arcache  = 0;
    assign udata_arprot   = 0;

    assign udata_awid     = 4'h6;
    assign udata_awlen    = 4'b0000;
    assign udata_awsize   = 3'b010; 
    assign udata_awburst  = 2'b01;  
    assign udata_awlock   = 0;
    assign udata_awcache  = 0;
    assign udata_awprot   = 0;

    assign udata_wid      = 4'h6;
    assign udata_wstrb    = UDCache_write_wstrb;
    assign udata_bready   = 1'b1;

    //Flip-Flops
    always @(posedge clk) begin
        if(~resetn)
            AXI_UD_RAddr <= 0;
        else if(UD_RD_state == UR_IDLE)
            AXI_UD_RAddr <= udcache_rd_addr;
        else
            AXI_UD_RAddr <= AXI_UD_RAddr;
    end
    always @(posedge clk) begin
        if(~resetn)
            UDCache_ar_size <= 0;
        else if(UD_RD_state == UR_IDLE)
            UDCache_ar_size <= udcache_load_size;
        else
            UDCache_ar_size <= UDCache_ar_size;
    end
    always @(posedge clk) begin
        if(~resetn)
            AXI_UD_WAddr <= 0;
        else if(UD_WR_state == UW_IDLE)
            AXI_UD_WAddr <= udcache_wr_addr;
        else
            AXI_UD_WAddr <= AXI_UD_WAddr;
    end
    always @(posedge clk) begin
        if(~resetn)
            UDCache_write_wstrb <= 0;
        else if(UD_WR_state == UW_IDLE)
            UDCache_write_wstrb <= udcache_wr_strb;
        else
            UDCache_write_wstrb <= UDCache_write_wstrb;
    end
    always @(posedge clk) begin
        if(~resetn)
            UDCache_write_word <= 0;
        else if(UD_WR_state == UW_IDLE)
            UDCache_write_word <= udcache_wr_data;
        else
            UDCache_write_word <= UDCache_write_word;
    end
    assign udata_arvalid = (UD_RD_state == UAR_SHAKE);
    assign udata_araddr  = AXI_UD_RAddr;
    assign udata_rready  = (UD_RD_state == UR_SHAKE);
    assign udata_awvalid = (UD_WR_state == UAW_SHAKE);
    assign udata_awaddr  = AXI_UD_WAddr;
    assign udata_wvalid  = (UD_WR_state == UW_SHAKE);
    assign udata_wdata   = UDCache_write_word;
    assign udata_wlast   = (UD_WR_state == UW_SHAKE);
    /********************UDCache REQ********************/

    /********************UDCache RECV********************/
    assign udcache_rd_rdy    = (UD_RD_state == UR_IDLE);
    assign udcache_wr_rdy    = (UD_WR_state == UW_IDLE);
    assign udcache_ret_valid = (UD_RD_state == UR_FINISH);
    assign udcache_wr_valid  = (UD_WR_state == UW_FINISH);
    //Flip-Flop
    always @(posedge clk) begin
        if(~resetn)
            UDCache_read_word <= 0;
        else if(UD_RD_state == UR_SHAKE)
            UDCache_read_word <= udata_rdata;
        else
            UDCache_read_word <= UDCache_read_word;
    end
    assign udcache_ret_data  = UDCache_read_word;
    /********************UDCache RECV********************/
//AXI Crossbar 4*1
`ifdef use_crossbar_ip
    axi_crossbar_new U_axi_crossbar_new (
        .aclk             ( clk     ),
        .aresetn          ( resetn  ),
        
        .s_axi_arid       ( {inst_arid   ,data_arid    ,uinst_arid   ,udata_arid   } ),
        .s_axi_araddr     ( {inst_araddr ,data_araddr  ,uinst_araddr ,udata_araddr } ),
        .s_axi_arlen      ( {inst_arlen  ,data_arlen   ,uinst_arlen  ,udata_arlen  } ),
        .s_axi_arsize     ( {inst_arsize ,data_arsize  ,uinst_arsize ,udata_arsize } ),
        .s_axi_arburst    ( {inst_arburst,data_arburst ,uinst_arburst,udata_arburst} ),
        .s_axi_arlock     ( {inst_arlock ,data_arlock  ,uinst_arlock ,udata_arlock } ),
        .s_axi_arcache    ( {inst_arcache,data_arcache ,uinst_arcache,udata_arcache} ),
        .s_axi_arprot     ( {inst_arprot ,data_arprot  ,uinst_arprot ,udata_arprot } ),
        .s_axi_arqos      ( 0                                                        ),
        .s_axi_arvalid    ( {inst_arvalid,data_arvalid ,uinst_arvalid,udata_arvalid} ),
        .s_axi_arready    ( {inst_arready,data_arready ,uinst_arready,udata_arready} ),
        .s_axi_rid        ( {inst_rid    ,data_rid     ,uinst_rid    ,udata_rid    } ),
        .s_axi_rdata      ( {inst_rdata  ,data_rdata   ,uinst_rdata  ,udata_rdata  } ),
        .s_axi_rresp      ( {inst_rresp  ,data_rresp   ,uinst_rresp  ,udata_rresp  } ),
        .s_axi_rlast      ( {inst_rlast  ,data_rlast   ,uinst_rlast  ,udata_rlast  } ),
        .s_axi_rvalid     ( {inst_rvalid ,data_rvalid  ,uinst_rvalid ,udata_rvalid } ),
        .s_axi_rready     ( {inst_rready ,data_rready  ,uinst_rready ,udata_rready } ),
        .s_axi_awid       ( {inst_awid   ,data_awid    ,uinst_awid   ,udata_awid   } ),
        .s_axi_awaddr     ( {inst_awaddr ,data_awaddr  ,uinst_awaddr ,udata_awaddr } ),
        .s_axi_awlen      ( {inst_awlen  ,data_awlen   ,uinst_awlen  ,udata_awlen  } ),
        .s_axi_awsize     ( {inst_awsize ,data_awsize  ,uinst_awsize ,udata_awsize } ),
        .s_axi_awburst    ( {inst_awburst,data_awburst ,uinst_awburst,udata_awburst} ),
        .s_axi_awlock     ( {inst_awlock ,data_awlock  ,uinst_awlock ,udata_awlock } ),
        .s_axi_awcache    ( {inst_awcache,data_awcache ,uinst_awcache,udata_awcache} ),
        .s_axi_awprot     ( {inst_awprot ,data_awprot  ,uinst_awprot ,udata_awprot } ),
        .s_axi_awqos      ( 0                                                        ),
        .s_axi_awvalid    ( {inst_awvalid,data_awvalid ,uinst_awvalid,udata_awvalid} ),
        .s_axi_awready    ( {inst_awready,data_awready ,uinst_awready,udata_awready} ),
        .s_axi_wid        ( {inst_wid    ,data_wid     ,uinst_wid    ,udata_wid    } ),
        .s_axi_wdata      ( {inst_wdata  ,data_wdata   ,uinst_wdata  ,udata_wdata  } ),
        .s_axi_wstrb      ( {inst_wstrb  ,data_wstrb   ,uinst_wstrb  ,udata_wstrb  } ),
        .s_axi_wlast      ( {inst_wlast  ,data_wlast   ,uinst_wlast  ,udata_wlast  } ),
        .s_axi_wvalid     ( {inst_wvalid ,data_wvalid  ,uinst_wvalid ,udata_wvalid } ),
        .s_axi_wready     ( {inst_wready ,data_wready  ,uinst_wready ,udata_wready } ),
        .s_axi_bid        ( {inst_bid    ,data_bid     ,uinst_bid    ,udata_bid    } ),
        .s_axi_bresp      ( {inst_bresp  ,data_bresp   ,uinst_bresp  ,udata_bresp  } ),
        .s_axi_bvalid     ( {inst_bvalid ,data_bvalid  ,uinst_bvalid ,udata_bvalid } ),
        .s_axi_bready     ( {inst_bready ,data_bready  ,uinst_bready ,udata_bready } ),
        
        .m_axi_arid       (arid          ),
        .m_axi_araddr     (araddr        ),
        .m_axi_arlen      (arlen         ),
        .m_axi_arsize     (arsize        ),
        .m_axi_arburst    (arburst       ),
        .m_axi_arlock     (arlock        ),
        .m_axi_arcache    (arcache       ),
        .m_axi_arprot     (arprot        ),
        .m_axi_arqos      (              ),
        .m_axi_arvalid    (arvalid       ),
        .m_axi_arready    (arready       ),
        .m_axi_rid        (rid           ),
        .m_axi_rdata      (rdata         ),
        .m_axi_rresp      (rresp         ),
        .m_axi_rlast      (rlast         ),
        .m_axi_rvalid     (rvalid        ),
        .m_axi_rready     (rready        ),
        .m_axi_awid       (awid          ),
        .m_axi_awaddr     (awaddr        ),
        .m_axi_awlen      (awlen         ),
        .m_axi_awsize     (awsize        ),
        .m_axi_awburst    (awburst       ),
        .m_axi_awlock     (awlock        ),
        .m_axi_awcache    (awcache       ),
        .m_axi_awprot     (awprot        ),
        .m_axi_awqos      (              ),
        .m_axi_awvalid    (awvalid       ),
        .m_axi_awready    (awready       ),
        .m_axi_wid        (wid           ),
        .m_axi_wdata      (wdata         ),
        .m_axi_wstrb      (wstrb         ),
        .m_axi_wlast      (wlast         ),
        .m_axi_wvalid     (wvalid        ),
        .m_axi_wready     (wready        ),
        .m_axi_bid        (bid           ),
        .m_axi_bresp      (bresp         ),
        .m_axi_bvalid     (bvalid        ),
        .m_axi_bready     (bready        )
    );
`else
        //AXI crossbar impl
    // AXI Arbiter: IValid logic
    wire ud_valid;
    wire ui_valid;
    wire d_valid;
    wire i_valid;
    assign ud_valid = (UD_WR_state != UW_IDLE || UD_RD_state != UR_IDLE) ? 1'b1 : 1'b0;
    assign ui_valid = (UI_RD_state != UR_IDLE) ? 1'b1 : 1'b0;
    assign d_valid = (D_WR_state != W_IDLE || D_RD_state != R_IDLE) ? 1'b1 : 1'b0;
    assign i_valid = (I_RD_state != R_IDLE) ? 1'b1 : 1'b0;

    //i_bus_req
    wire [31: 0] i_bus_req_axi_araddr  ;
    wire [ 3: 0] i_bus_req_axi_arid    ;
    wire [ 3: 0] i_bus_req_axi_arlen   ;
    wire [ 2: 0] i_bus_req_axi_arsize  ;
    wire [ 1: 0] i_bus_req_axi_arburst ;
    wire [ 1: 0] i_bus_req_axi_arlock  ;
    wire [ 3: 0] i_bus_req_axi_arcache ;
    wire [ 2: 0] i_bus_req_axi_arprot  ;
    wire         i_bus_req_axi_arvalid ;
    wire         i_bus_req_axi_rready  ;
    wire [ 3: 0] i_bus_req_axi_awid    ;
    wire [31: 0] i_bus_req_axi_awaddr  ;
    wire [ 3: 0] i_bus_req_axi_awlen   ;
    wire [ 2: 0] i_bus_req_axi_awsize  ;
    wire [ 1: 0] i_bus_req_axi_awburst ;
    wire [ 1: 0] i_bus_req_axi_awlock  ;
    wire [ 3: 0] i_bus_req_axi_awcache ;
    wire [ 2: 0] i_bus_req_axi_awprot  ;
    wire         i_bus_req_axi_awvalid ;
    wire [ 3: 0] i_bus_req_axi_wid     ;
    wire [31: 0] i_bus_req_axi_wdata   ;
    wire [ 3: 0] i_bus_req_axi_wstrb   ;
    wire         i_bus_req_axi_wlast   ;
    wire         i_bus_req_axi_wvalid  ;
    wire         i_bus_req_axi_bready  ;
    
    assign i_bus_req_axi_araddr   = inst_araddr;
    assign i_bus_req_axi_arid     = inst_arid;
    assign i_bus_req_axi_arlen    = inst_arlen;
    assign i_bus_req_axi_arsize   = inst_arsize;
    assign i_bus_req_axi_arburst  = inst_arburst;
    assign i_bus_req_axi_arlock   = inst_arlock;
    assign i_bus_req_axi_arcache  = inst_arcache;
    assign i_bus_req_axi_arprot   = inst_arprot;
    assign i_bus_req_axi_arvalid  = inst_arvalid;
    assign i_bus_req_axi_rready   = inst_rready;
    assign i_bus_req_axi_awid     = inst_awid;
    assign i_bus_req_axi_awaddr   = inst_awaddr;
    assign i_bus_req_axi_awlen    = inst_awlen;
    assign i_bus_req_axi_awsize   = inst_awsize;
    assign i_bus_req_axi_awburst  = inst_awburst;
    assign i_bus_req_axi_awlock   = inst_awlock;
    assign i_bus_req_axi_awcache  = inst_awcache;
    assign i_bus_req_axi_awprot   = inst_awprot;
    assign i_bus_req_axi_awvalid  = inst_awvalid;
    assign i_bus_req_axi_wid      = inst_wid;
    assign i_bus_req_axi_wdata    = inst_wdata;
    assign i_bus_req_axi_wstrb    = inst_wstrb;
    assign i_bus_req_axi_wlast    = inst_wlast;
    assign i_bus_req_axi_wvalid   = inst_wvalid;
    assign i_bus_req_axi_bready   = inst_bready;

    //d_bus_req
    wire [31: 0] d_bus_req_axi_araddr  ;
    wire [ 3: 0] d_bus_req_axi_arid    ;
    wire [ 3: 0] d_bus_req_axi_arlen   ;
    wire [ 2: 0] d_bus_req_axi_arsize  ;
    wire [ 1: 0] d_bus_req_axi_arburst ;
    wire [ 1: 0] d_bus_req_axi_arlock  ;
    wire [ 3: 0] d_bus_req_axi_arcache ;
    wire [ 2: 0] d_bus_req_axi_arprot  ;
    wire         d_bus_req_axi_arvalid ;
    wire         d_bus_req_axi_rready  ;
    wire [ 3: 0] d_bus_req_axi_awid    ;
    wire [31: 0] d_bus_req_axi_awaddr  ;
    wire [ 3: 0] d_bus_req_axi_awlen   ;
    wire [ 2: 0] d_bus_req_axi_awsize  ;
    wire [ 1: 0] d_bus_req_axi_awburst ;
    wire [ 1: 0] d_bus_req_axi_awlock  ;
    wire [ 3: 0] d_bus_req_axi_awcache ;
    wire [ 2: 0] d_bus_req_axi_awprot  ;
    wire         d_bus_req_axi_awvalid ;
    wire [ 3: 0] d_bus_req_axi_wid     ;
    wire [31: 0] d_bus_req_axi_wdata   ;
    wire [ 3: 0] d_bus_req_axi_wstrb   ;
    wire         d_bus_req_axi_wlast   ;
    wire         d_bus_req_axi_wvalid  ;
    wire         d_bus_req_axi_bready  ;

    assign d_bus_req_axi_araddr   = data_araddr;
    assign d_bus_req_axi_arid     = data_arid;
    assign d_bus_req_axi_arlen    = data_arlen;
    assign d_bus_req_axi_arsize   = data_arsize;
    assign d_bus_req_axi_arburst  = data_arburst;
    assign d_bus_req_axi_arlock   = data_arlock;
    assign d_bus_req_axi_arcache  = data_arcache;
    assign d_bus_req_axi_arprot   = data_arprot;
    assign d_bus_req_axi_arvalid  = data_arvalid;
    assign d_bus_req_axi_rready   = data_rready;
    assign d_bus_req_axi_awid     = data_awid;
    assign d_bus_req_axi_awaddr   = data_awaddr;
    assign d_bus_req_axi_awlen    = data_awlen;
    assign d_bus_req_axi_awsize   = data_awsize;
    assign d_bus_req_axi_awburst  = data_awburst;
    assign d_bus_req_axi_awlock   = data_awlock;
    assign d_bus_req_axi_awcache  = data_awcache;
    assign d_bus_req_axi_awprot   = data_awprot;
    assign d_bus_req_axi_awvalid  = data_awvalid;
    assign d_bus_req_axi_wid      = data_wid;
    assign d_bus_req_axi_wdata    = data_wdata;
    assign d_bus_req_axi_wstrb    = data_wstrb;
    assign d_bus_req_axi_wlast    = data_wlast;
    assign d_bus_req_axi_wvalid   = data_wvalid;
    assign d_bus_req_axi_bready   = data_bready;

    //ud_bus_req
    wire [31: 0] ud_bus_req_axi_araddr  ;
    wire [ 3: 0] ud_bus_req_axi_arid    ;
    wire [ 3: 0] ud_bus_req_axi_arlen   ;
    wire [ 2: 0] ud_bus_req_axi_arsize  ;
    wire [ 1: 0] ud_bus_req_axi_arburst ;
    wire [ 1: 0] ud_bus_req_axi_arlock  ;
    wire [ 3: 0] ud_bus_req_axi_arcache ;
    wire [ 2: 0] ud_bus_req_axi_arprot  ;
    wire         ud_bus_req_axi_arvalid ;
    wire         ud_bus_req_axi_rready  ;
    wire [ 3: 0] ud_bus_req_axi_awid    ;
    wire [31: 0] ud_bus_req_axi_awaddr  ;
    wire [ 3: 0] ud_bus_req_axi_awlen   ;
    wire [ 2: 0] ud_bus_req_axi_awsize  ;
    wire [ 1: 0] ud_bus_req_axi_awburst ;
    wire [ 1: 0] ud_bus_req_axi_awlock  ;
    wire [ 3: 0] ud_bus_req_axi_awcache ;
    wire [ 2: 0] ud_bus_req_axi_awprot  ;
    wire         ud_bus_req_axi_awvalid ;
    wire [ 3: 0] ud_bus_req_axi_wid     ;
    wire [31: 0] ud_bus_req_axi_wdata   ;
    wire [ 3: 0] ud_bus_req_axi_wstrb   ;
    wire         ud_bus_req_axi_wlast   ;
    wire         ud_bus_req_axi_wvalid  ;
    wire         ud_bus_req_axi_bready  ;
    assign ud_bus_req_axi_araddr   = udata_araddr;
    assign ud_bus_req_axi_arid     = udata_arid;
    assign ud_bus_req_axi_arlen    = udata_arlen;
    assign ud_bus_req_axi_arsize   = udata_arsize;
    assign ud_bus_req_axi_arburst  = udata_arburst;
    assign ud_bus_req_axi_arlock   = udata_arlock;
    assign ud_bus_req_axi_arcache  = udata_arcache;
    assign ud_bus_req_axi_arprot   = udata_arprot;
    assign ud_bus_req_axi_arvalid  = udata_arvalid;
    assign ud_bus_req_axi_rready   = udata_rready;
    assign ud_bus_req_axi_awid     = udata_awid;
    assign ud_bus_req_axi_awaddr   = udata_awaddr;
    assign ud_bus_req_axi_awlen    = udata_awlen;
    assign ud_bus_req_axi_awsize   = udata_awsize;
    assign ud_bus_req_axi_awburst  = udata_awburst;
    assign ud_bus_req_axi_awlock   = udata_awlock;
    assign ud_bus_req_axi_awcache  = udata_awcache;
    assign ud_bus_req_axi_awprot   = udata_awprot;
    assign ud_bus_req_axi_awvalid  = udata_awvalid;
    assign ud_bus_req_axi_wid      = udata_wid;
    assign ud_bus_req_axi_wdata    = udata_wdata;
    assign ud_bus_req_axi_wstrb    = udata_wstrb;
    assign ud_bus_req_axi_wlast    = udata_wlast;
    assign ud_bus_req_axi_wvalid   = udata_wvalid;
    assign ud_bus_req_axi_bready   = udata_bready;

    //ui_bus_req
    wire [31: 0] ui_bus_req_axi_araddr  ;
    wire [ 3: 0] ui_bus_req_axi_arid    ;
    wire [ 3: 0] ui_bus_req_axi_arlen   ;
    wire [ 2: 0] ui_bus_req_axi_arsize  ;
    wire [ 1: 0] ui_bus_req_axi_arburst ;
    wire [ 1: 0] ui_bus_req_axi_arlock  ;
    wire [ 3: 0] ui_bus_req_axi_arcache ;
    wire [ 2: 0] ui_bus_req_axi_arprot  ;
    wire         ui_bus_req_axi_arvalid ;
    wire         ui_bus_req_axi_rready  ;
    wire [ 3: 0] ui_bus_req_axi_awid    ;
    wire [31: 0] ui_bus_req_axi_awaddr  ;
    wire [ 3: 0] ui_bus_req_axi_awlen   ;
    wire [ 2: 0] ui_bus_req_axi_awsize  ;
    wire [ 1: 0] ui_bus_req_axi_awburst ;
    wire [ 1: 0] ui_bus_req_axi_awlock  ;
    wire [ 3: 0] ui_bus_req_axi_awcache ;
    wire [ 2: 0] ui_bus_req_axi_awprot  ;
    wire         ui_bus_req_axi_awvalid ;
    wire [ 3: 0] ui_bus_req_axi_wid     ;
    wire [31: 0] ui_bus_req_axi_wdata   ;
    wire [ 3: 0] ui_bus_req_axi_wstrb   ;
    wire         ui_bus_req_axi_wlast   ;
    wire         ui_bus_req_axi_wvalid  ;
    wire         ui_bus_req_axi_bready  ;
    assign ui_bus_req_axi_araddr   = uinst_araddr;
    assign ui_bus_req_axi_arid     = uinst_arid;
    assign ui_bus_req_axi_arlen    = uinst_arlen;
    assign ui_bus_req_axi_arsize   = uinst_arsize;
    assign ui_bus_req_axi_arburst  = uinst_arburst;
    assign ui_bus_req_axi_arlock   = uinst_arlock;
    assign ui_bus_req_axi_arcache  = uinst_arcache;
    assign ui_bus_req_axi_arprot   = uinst_arprot;
    assign ui_bus_req_axi_arvalid  = uinst_arvalid;
    assign ui_bus_req_axi_rready   = uinst_rready;
    assign ui_bus_req_axi_awid     = uinst_awid;
    assign ui_bus_req_axi_awaddr   = uinst_awaddr;
    assign ui_bus_req_axi_awlen    = uinst_awlen;
    assign ui_bus_req_axi_awsize   = uinst_awsize;
    assign ui_bus_req_axi_awburst  = uinst_awburst;
    assign ui_bus_req_axi_awlock   = uinst_awlock;
    assign ui_bus_req_axi_awcache  = uinst_awcache;
    assign ui_bus_req_axi_awprot   = uinst_awprot;
    assign ui_bus_req_axi_awvalid  = uinst_awvalid;
    assign ui_bus_req_axi_wid      = uinst_wid;
    assign ui_bus_req_axi_wdata    = uinst_wdata;
    assign ui_bus_req_axi_wstrb    = uinst_wstrb;
    assign ui_bus_req_axi_wlast    = uinst_wlast;
    assign ui_bus_req_axi_wvalid   = uinst_wvalid;
    assign ui_bus_req_axi_bready   = uinst_bready;

    //i_bus_resp
    wire         i_bus_resp_axi_arready; 
    wire [ 3: 0] i_bus_resp_axi_rid    ;
    wire [31: 0] i_bus_resp_axi_rdata  ; 
    wire [ 1: 0] i_bus_resp_axi_rresp  ; 
    wire         i_bus_resp_axi_rlast  ; 
    wire         i_bus_resp_axi_rvalid ; 
    wire         i_bus_resp_axi_awready; 
    wire         i_bus_resp_axi_wready ; 
    wire [ 3: 0] i_bus_resp_axi_bid    ;
    wire [ 1: 0] i_bus_resp_axi_bresp  ; 
    wire         i_bus_resp_axi_bvalid ;

    assign   inst_arready =  i_bus_resp_axi_arready;     
    assign   inst_rid     =  i_bus_resp_axi_rid    ;
    assign   inst_rdata   =  i_bus_resp_axi_rdata  ; 
    assign   inst_rresp   =  i_bus_resp_axi_rresp  ; 
    assign   inst_rlast   =  i_bus_resp_axi_rlast  ; 
    assign   inst_rvalid  =  i_bus_resp_axi_rvalid ;   
    assign   inst_awready =  i_bus_resp_axi_awready;     
    assign   inst_wready  =  i_bus_resp_axi_wready ;   
    assign   inst_bid     =  i_bus_resp_axi_bid    ;
    assign   inst_bresp   =  i_bus_resp_axi_bresp  ; 
    assign   inst_bvalid  =  i_bus_resp_axi_bvalid ;

    //d_bus_resp
    wire         d_bus_resp_axi_arready; 
    wire [ 3: 0] d_bus_resp_axi_rid    ;
    wire [31: 0] d_bus_resp_axi_rdata  ; 
    wire [ 1: 0] d_bus_resp_axi_rresp  ; 
    wire         d_bus_resp_axi_rlast  ; 
    wire         d_bus_resp_axi_rvalid ; 
    wire         d_bus_resp_axi_awready; 
    wire         d_bus_resp_axi_wready ; 
    wire [ 3: 0] d_bus_resp_axi_bid    ;
    wire [ 1: 0] d_bus_resp_axi_bresp  ; 
    wire         d_bus_resp_axi_bvalid ;

    assign   data_arready =  d_bus_resp_axi_arready;     
    assign   data_rid     =  d_bus_resp_axi_rid    ;
    assign   data_rdata   =  d_bus_resp_axi_rdata  ; 
    assign   data_rresp   =  d_bus_resp_axi_rresp  ; 
    assign   data_rlast   =  d_bus_resp_axi_rlast  ; 
    assign   data_rvalid  =  d_bus_resp_axi_rvalid ;   
    assign   data_awready =  d_bus_resp_axi_awready;     
    assign   data_wready  =  d_bus_resp_axi_wready ;   
    assign   data_bid     =  d_bus_resp_axi_bid    ;
    assign   data_bresp   =  d_bus_resp_axi_bresp  ; 
    assign   data_bvalid  =  d_bus_resp_axi_bvalid ;

    //ud_bus_resp
    wire         ud_bus_resp_axi_arready; 
    wire [ 3: 0] ud_bus_resp_axi_rid    ;
    wire [31: 0] ud_bus_resp_axi_rdata  ; 
    wire [ 1: 0] ud_bus_resp_axi_rresp  ; 
    wire         ud_bus_resp_axi_rlast  ; 
    wire         ud_bus_resp_axi_rvalid ; 
    wire         ud_bus_resp_axi_awready; 
    wire         ud_bus_resp_axi_wready ; 
    wire [ 3: 0] ud_bus_resp_axi_bid    ;
    wire [ 1: 0] ud_bus_resp_axi_bresp  ; 
    wire         ud_bus_resp_axi_bvalid ;

    assign   udata_arready =  ud_bus_resp_axi_arready;     
    assign   udata_rid     =  ud_bus_resp_axi_rid    ;
    assign   udata_rdata   =  ud_bus_resp_axi_rdata  ; 
    assign   udata_rresp   =  ud_bus_resp_axi_rresp  ; 
    assign   udata_rlast   =  ud_bus_resp_axi_rlast  ; 
    assign   udata_rvalid  =  ud_bus_resp_axi_rvalid ;   
    assign   udata_awready =  ud_bus_resp_axi_awready;     
    assign   udata_wready  =  ud_bus_resp_axi_wready ;   
    assign   udata_bid     =  ud_bus_resp_axi_bid    ;
    assign   udata_bresp   =  ud_bus_resp_axi_bresp  ; 
    assign   udata_bvalid  =  ud_bus_resp_axi_bvalid ;

    //ui_bus_resp
    wire         ui_bus_resp_axi_arready; 
    wire [ 3: 0] ui_bus_resp_axi_rid    ;
    wire [31: 0] ui_bus_resp_axi_rdata  ; 
    wire [ 1: 0] ui_bus_resp_axi_rresp  ; 
    wire         ui_bus_resp_axi_rlast  ; 
    wire         ui_bus_resp_axi_rvalid ; 
    wire         ui_bus_resp_axi_awready; 
    wire         ui_bus_resp_axi_wready ; 
    wire [ 3: 0] ui_bus_resp_axi_bid    ;
    wire [ 1: 0] ui_bus_resp_axi_bresp  ; 
    wire         ui_bus_resp_axi_bvalid ;

    assign   uinst_arready =  ui_bus_resp_axi_arready;     
    assign   uinst_rid     =  ui_bus_resp_axi_rid    ;
    assign   uinst_rdata   =  ui_bus_resp_axi_rdata  ; 
    assign   uinst_rresp   =  ui_bus_resp_axi_rresp  ; 
    assign   uinst_rlast   =  ui_bus_resp_axi_rlast  ; 
    assign   uinst_rvalid  =  ui_bus_resp_axi_rvalid ;   
    assign   uinst_awready =  ui_bus_resp_axi_awready;     
    assign   uinst_wready  =  ui_bus_resp_axi_wready ;   
    assign   uinst_bid     =  ui_bus_resp_axi_bid    ;
    assign   uinst_bresp   =  ui_bus_resp_axi_bresp  ; 
    assign   uinst_bvalid  =  ui_bus_resp_axi_bvalid ;

    //master_req,master_resp
    wire [31: 0] master_req_axi_araddr   ;
    wire [ 3: 0] master_req_axi_arid     ;
    wire [ 3: 0] master_req_axi_arlen    ;
    wire [ 2: 0] master_req_axi_arsize   ;
    wire [ 1: 0] master_req_axi_arburst  ;
    wire [ 1: 0] master_req_axi_arlock   ;
    wire [ 3: 0] master_req_axi_arcache  ;
    wire [ 2: 0] master_req_axi_arprot   ;
    wire         master_req_axi_arvalid  ;
    wire         master_req_axi_rready   ;
    wire [ 3: 0] master_req_axi_awid     ;
    wire [31: 0] master_req_axi_awaddr   ;
    wire [ 3: 0] master_req_axi_awlen    ;
    wire [ 2: 0] master_req_axi_awsize   ;
    wire [ 1: 0] master_req_axi_awburst  ;
    wire [ 1: 0] master_req_axi_awlock   ;
    wire [ 3: 0] master_req_axi_awcache  ;
    wire [ 2: 0] master_req_axi_awprot   ;
    wire         master_req_axi_awvalid  ;
    wire [ 3: 0] master_req_axi_wid      ;
    wire [31: 0] master_req_axi_wdata    ;
    wire [ 3: 0] master_req_axi_wstrb    ;
    wire         master_req_axi_wlast    ;
    wire         master_req_axi_wvalid   ;
    wire         master_req_axi_bready   ;

    assign  araddr    =  master_req_axi_araddr   ;
    assign  arid      =  master_req_axi_arid     ;
    assign  arlen     =  master_req_axi_arlen    ;
    assign  arsize    =  master_req_axi_arsize   ;
    assign  arburst   =  master_req_axi_arburst  ;
    assign  arlock    =  master_req_axi_arlock   ;
    assign  arcache   =  master_req_axi_arcache  ;
    assign  arprot    =  master_req_axi_arprot   ;
    assign  arvalid   =  master_req_axi_arvalid  ;
    assign  rready    =  master_req_axi_rready   ;
    assign  awid      =  master_req_axi_awid     ;
    assign  awaddr    =  master_req_axi_awaddr   ;
    assign  awlen     =  master_req_axi_awlen    ;
    assign  awsize    =  master_req_axi_awsize   ;
    assign  awburst   =  master_req_axi_awburst  ;
    assign  awlock    =  master_req_axi_awlock   ;
    assign  awcache   =  master_req_axi_awcache  ;
    assign  awprot    =  master_req_axi_awprot   ;
    assign  awvalid   =  master_req_axi_awvalid  ;
    assign  wid       =  master_req_axi_wid      ;
    assign  wdata     =  master_req_axi_wdata    ;
    assign  wstrb     =  master_req_axi_wstrb    ;
    assign  wlast     =  master_req_axi_wlast    ;
    assign  wvalid    =  master_req_axi_wvalid   ;
    assign  bready    =  master_req_axi_bready   ;

    wire          master_resp_axi_arready ;
    wire  [ 3: 0] master_resp_axi_rid     ;
    wire  [31: 0] master_resp_axi_rdata   ;
    wire  [ 1: 0] master_resp_axi_rresp   ;
    wire          master_resp_axi_rlast   ;
    wire          master_resp_axi_rvalid  ;
    wire          master_resp_axi_awready ;
    wire          master_resp_axi_wready  ;
    wire  [ 3: 0] master_resp_axi_bid     ;
    wire  [ 1: 0] master_resp_axi_bresp   ;
    wire          master_resp_axi_bvalid  ;
    assign  master_resp_axi_arready  = arready  ;
    assign  master_resp_axi_rid      = rid      ;
    assign  master_resp_axi_rdata    = rdata    ;
    assign  master_resp_axi_rresp    = rresp    ;
    assign  master_resp_axi_rlast    = rlast    ;
    assign  master_resp_axi_rvalid   = rvalid   ;
    assign  master_resp_axi_awready  = awready  ;
    assign  master_resp_axi_wready   = wready   ;
    assign  master_resp_axi_bid      = bid      ;
    assign  master_resp_axi_bresp    = bresp    ;
    assign  master_resp_axi_bvalid   = bvalid   ;

    BusArbiter   #(
        .NUM_INPUTS(3)
    )
    U_BusArbiter_dut (
        .clk    (clk ),
        .resetn (resetn ),
        .ud_valid(ud_valid),
        .ui_valid(ui_valid),
        .d_valid(d_valid),
        .i_valid(i_valid),

        .i_bus_req_axi_araddr  (i_bus_req_axi_araddr  ),
        .i_bus_req_axi_arid    (i_bus_req_axi_arid    ),
        .i_bus_req_axi_arlen   (i_bus_req_axi_arlen   ),
        .i_bus_req_axi_arsize  (i_bus_req_axi_arsize  ),
        .i_bus_req_axi_arburst (i_bus_req_axi_arburst ),
        .i_bus_req_axi_arlock  (i_bus_req_axi_arlock  ),
        .i_bus_req_axi_arcache (i_bus_req_axi_arcache ),
        .i_bus_req_axi_arprot  (i_bus_req_axi_arprot  ),
        .i_bus_req_axi_arvalid (i_bus_req_axi_arvalid ),
        .i_bus_req_axi_rready  (i_bus_req_axi_rready  ),
        .i_bus_req_axi_awid    (i_bus_req_axi_awid    ),
        .i_bus_req_axi_awaddr  (i_bus_req_axi_awaddr  ),
        .i_bus_req_axi_awlen   (i_bus_req_axi_awlen   ),
        .i_bus_req_axi_awsize  (i_bus_req_axi_awsize  ),
        .i_bus_req_axi_awburst (i_bus_req_axi_awburst ),
        .i_bus_req_axi_awlock  (i_bus_req_axi_awlock  ),
        .i_bus_req_axi_awcache (i_bus_req_axi_awcache ),
        .i_bus_req_axi_awprot  (i_bus_req_axi_awprot  ),
        .i_bus_req_axi_awvalid (i_bus_req_axi_awvalid ),
        .i_bus_req_axi_wid     (i_bus_req_axi_wid     ),
        .i_bus_req_axi_wdata   (i_bus_req_axi_wdata   ),
        .i_bus_req_axi_wstrb   (i_bus_req_axi_wstrb   ),
        .i_bus_req_axi_wlast   (i_bus_req_axi_wlast   ),
        .i_bus_req_axi_wvalid  (i_bus_req_axi_wvalid  ),
        .i_bus_req_axi_bready  (i_bus_req_axi_bready  ),

        .d_bus_req_axi_araddr  (d_bus_req_axi_araddr  ),
        .d_bus_req_axi_arid    (d_bus_req_axi_arid    ),
        .d_bus_req_axi_arlen   (d_bus_req_axi_arlen   ),
        .d_bus_req_axi_arsize  (d_bus_req_axi_arsize  ),
        .d_bus_req_axi_arburst (d_bus_req_axi_arburst ),
        .d_bus_req_axi_arlock  (d_bus_req_axi_arlock  ),
        .d_bus_req_axi_arcache (d_bus_req_axi_arcache ),
        .d_bus_req_axi_arprot  (d_bus_req_axi_arprot  ),
        .d_bus_req_axi_arvalid (d_bus_req_axi_arvalid ),
        .d_bus_req_axi_rready  (d_bus_req_axi_rready  ),
        .d_bus_req_axi_awid    (d_bus_req_axi_awid    ),
        .d_bus_req_axi_awaddr  (d_bus_req_axi_awaddr  ),
        .d_bus_req_axi_awlen   (d_bus_req_axi_awlen   ),
        .d_bus_req_axi_awsize  (d_bus_req_axi_awsize  ),
        .d_bus_req_axi_awburst (d_bus_req_axi_awburst ),
        .d_bus_req_axi_awlock  (d_bus_req_axi_awlock  ),
        .d_bus_req_axi_awcache (d_bus_req_axi_awcache ),
        .d_bus_req_axi_awprot  (d_bus_req_axi_awprot  ),
        .d_bus_req_axi_awvalid (d_bus_req_axi_awvalid ),
        .d_bus_req_axi_wid     (d_bus_req_axi_wid     ),
        .d_bus_req_axi_wdata   (d_bus_req_axi_wdata   ),
        .d_bus_req_axi_wstrb   (d_bus_req_axi_wstrb   ),
        .d_bus_req_axi_wlast   (d_bus_req_axi_wlast   ),
        .d_bus_req_axi_wvalid  (d_bus_req_axi_wvalid  ),
        .d_bus_req_axi_bready  (d_bus_req_axi_bready  ),

        .ud_bus_req_axi_araddr  (ud_bus_req_axi_araddr  ),
        .ud_bus_req_axi_arid    (ud_bus_req_axi_arid    ),
        .ud_bus_req_axi_arlen   (ud_bus_req_axi_arlen   ),
        .ud_bus_req_axi_arsize  (ud_bus_req_axi_arsize  ),
        .ud_bus_req_axi_arburst (ud_bus_req_axi_arburst ),
        .ud_bus_req_axi_arlock  (ud_bus_req_axi_arlock  ),
        .ud_bus_req_axi_arcache (ud_bus_req_axi_arcache ),
        .ud_bus_req_axi_arprot  (ud_bus_req_axi_arprot  ),
        .ud_bus_req_axi_arvalid (ud_bus_req_axi_arvalid ),
        .ud_bus_req_axi_rready  (ud_bus_req_axi_rready  ),
        .ud_bus_req_axi_awid    (ud_bus_req_axi_awid    ),
        .ud_bus_req_axi_awaddr  (ud_bus_req_axi_awaddr  ),
        .ud_bus_req_axi_awlen   (ud_bus_req_axi_awlen   ),
        .ud_bus_req_axi_awsize  (ud_bus_req_axi_awsize  ),
        .ud_bus_req_axi_awburst (ud_bus_req_axi_awburst ),
        .ud_bus_req_axi_awlock  (ud_bus_req_axi_awlock  ),
        .ud_bus_req_axi_awcache (ud_bus_req_axi_awcache ),
        .ud_bus_req_axi_awprot  (ud_bus_req_axi_awprot  ),
        .ud_bus_req_axi_awvalid (ud_bus_req_axi_awvalid ),
        .ud_bus_req_axi_wid     (ud_bus_req_axi_wid     ),
        .ud_bus_req_axi_wdata   (ud_bus_req_axi_wdata   ),
        .ud_bus_req_axi_wstrb   (ud_bus_req_axi_wstrb   ),
        .ud_bus_req_axi_wlast   (ud_bus_req_axi_wlast   ),
        .ud_bus_req_axi_wvalid  (ud_bus_req_axi_wvalid  ),
        .ud_bus_req_axi_bready  (ud_bus_req_axi_bready  ),

        .ui_bus_req_axi_araddr  (ui_bus_req_axi_araddr  ),
        .ui_bus_req_axi_arid    (ui_bus_req_axi_arid    ),
        .ui_bus_req_axi_arlen   (ui_bus_req_axi_arlen   ),
        .ui_bus_req_axi_arsize  (ui_bus_req_axi_arsize  ),
        .ui_bus_req_axi_arburst (ui_bus_req_axi_arburst ),
        .ui_bus_req_axi_arlock  (ui_bus_req_axi_arlock  ),
        .ui_bus_req_axi_arcache (ui_bus_req_axi_arcache ),
        .ui_bus_req_axi_arprot  (ui_bus_req_axi_arprot  ),
        .ui_bus_req_axi_arvalid (ui_bus_req_axi_arvalid ),
        .ui_bus_req_axi_rready  (ui_bus_req_axi_rready  ),
        .ui_bus_req_axi_awid    (ui_bus_req_axi_awid    ),
        .ui_bus_req_axi_awaddr  (ui_bus_req_axi_awaddr  ),
        .ui_bus_req_axi_awlen   (ui_bus_req_axi_awlen   ),
        .ui_bus_req_axi_awsize  (ui_bus_req_axi_awsize  ),
        .ui_bus_req_axi_awburst (ui_bus_req_axi_awburst ),
        .ui_bus_req_axi_awlock  (ui_bus_req_axi_awlock  ),
        .ui_bus_req_axi_awcache (ui_bus_req_axi_awcache ),
        .ui_bus_req_axi_awprot  (ui_bus_req_axi_awprot  ),
        .ui_bus_req_axi_awvalid (ui_bus_req_axi_awvalid ),
        .ui_bus_req_axi_wid     (ui_bus_req_axi_wid     ),
        .ui_bus_req_axi_wdata   (ui_bus_req_axi_wdata   ),
        .ui_bus_req_axi_wstrb   (ui_bus_req_axi_wstrb   ),
        .ui_bus_req_axi_wlast   (ui_bus_req_axi_wlast   ),
        .ui_bus_req_axi_wvalid  (ui_bus_req_axi_wvalid  ),
        .ui_bus_req_axi_bready  (ui_bus_req_axi_bready  ),

        .master_resp_axi_arready (master_resp_axi_arready),
        .master_resp_axi_rid     (master_resp_axi_rid    ),
        .master_resp_axi_rdata   (master_resp_axi_rdata  ),
        .master_resp_axi_rresp   (master_resp_axi_rresp  ),
        .master_resp_axi_rlast   (master_resp_axi_rlast  ),
        .master_resp_axi_rvalid  (master_resp_axi_rvalid ),
        .master_resp_axi_awready (master_resp_axi_awready),
        .master_resp_axi_wready  (master_resp_axi_wready ),
        .master_resp_axi_bid     (master_resp_axi_bid    ),
        .master_resp_axi_bresp   (master_resp_axi_bresp  ),
        .master_resp_axi_bvalid  (master_resp_axi_bvalid ),

        .i_bus_resp_axi_arready  (i_bus_resp_axi_arready),
        .i_bus_resp_axi_rid      (i_bus_resp_axi_rid    ),
        .i_bus_resp_axi_rdata    (i_bus_resp_axi_rdata  ),
        .i_bus_resp_axi_rresp    (i_bus_resp_axi_rresp  ),
        .i_bus_resp_axi_rlast    (i_bus_resp_axi_rlast  ),
        .i_bus_resp_axi_rvalid   (i_bus_resp_axi_rvalid ),
        .i_bus_resp_axi_awready  (i_bus_resp_axi_awready),
        .i_bus_resp_axi_wready   (i_bus_resp_axi_wready ),
        .i_bus_resp_axi_bid      (i_bus_resp_axi_bid    ),
        .i_bus_resp_axi_bresp    (i_bus_resp_axi_bresp  ),
        .i_bus_resp_axi_bvalid   (i_bus_resp_axi_bvalid ),

        .d_bus_resp_axi_arready  (d_bus_resp_axi_arready),
        .d_bus_resp_axi_rid      (d_bus_resp_axi_rid    ),
        .d_bus_resp_axi_rdata    (d_bus_resp_axi_rdata  ),
        .d_bus_resp_axi_rresp    (d_bus_resp_axi_rresp  ),
        .d_bus_resp_axi_rlast    (d_bus_resp_axi_rlast  ),
        .d_bus_resp_axi_rvalid   (d_bus_resp_axi_rvalid ),
        .d_bus_resp_axi_awready  (d_bus_resp_axi_awready),
        .d_bus_resp_axi_wready   (d_bus_resp_axi_wready ),
        .d_bus_resp_axi_bid      (d_bus_resp_axi_bid    ),
        .d_bus_resp_axi_bresp    (d_bus_resp_axi_bresp  ),
        .d_bus_resp_axi_bvalid   (d_bus_resp_axi_bvalid ),

        .ud_bus_resp_axi_arready  (ud_bus_resp_axi_arready),
        .ud_bus_resp_axi_rid      (ud_bus_resp_axi_rid    ),
        .ud_bus_resp_axi_rdata    (ud_bus_resp_axi_rdata  ),
        .ud_bus_resp_axi_rresp    (ud_bus_resp_axi_rresp  ),
        .ud_bus_resp_axi_rlast    (ud_bus_resp_axi_rlast  ),
        .ud_bus_resp_axi_rvalid   (ud_bus_resp_axi_rvalid ),
        .ud_bus_resp_axi_awready  (ud_bus_resp_axi_awready),
        .ud_bus_resp_axi_wready   (ud_bus_resp_axi_wready ),
        .ud_bus_resp_axi_bid      (ud_bus_resp_axi_bid    ),
        .ud_bus_resp_axi_bresp    (ud_bus_resp_axi_bresp  ),
        .ud_bus_resp_axi_bvalid   (ud_bus_resp_axi_bvalid ),

        .ui_bus_resp_axi_arready  (ui_bus_resp_axi_arready),
        .ui_bus_resp_axi_rid      (ui_bus_resp_axi_rid    ),
        .ui_bus_resp_axi_rdata    (ui_bus_resp_axi_rdata  ),
        .ui_bus_resp_axi_rresp    (ui_bus_resp_axi_rresp  ),
        .ui_bus_resp_axi_rlast    (ui_bus_resp_axi_rlast  ),
        .ui_bus_resp_axi_rvalid   (ui_bus_resp_axi_rvalid ),
        .ui_bus_resp_axi_awready  (ui_bus_resp_axi_awready),
        .ui_bus_resp_axi_wready   (ui_bus_resp_axi_wready ),
        .ui_bus_resp_axi_bid      (ui_bus_resp_axi_bid    ),
        .ui_bus_resp_axi_bresp    (ui_bus_resp_axi_bresp  ),
        .ui_bus_resp_axi_bvalid   (ui_bus_resp_axi_bvalid ),           

        .o_bus_req_axi_araddr    (master_req_axi_araddr ),
        .o_bus_req_axi_arid      (master_req_axi_arid   ),
        .o_bus_req_axi_arlen     (master_req_axi_arlen  ),
        .o_bus_req_axi_arsize    (master_req_axi_arsize ),
        .o_bus_req_axi_arburst   (master_req_axi_arburst),
        .o_bus_req_axi_arlock    (master_req_axi_arlock ),
        .o_bus_req_axi_arcache   (master_req_axi_arcache),
        .o_bus_req_axi_arprot    (master_req_axi_arprot ),
        .o_bus_req_axi_arvalid   (master_req_axi_arvalid),
        .o_bus_req_axi_rready    (master_req_axi_rready ),
        .o_bus_req_axi_awid      (master_req_axi_awid   ),
        .o_bus_req_axi_awaddr    (master_req_axi_awaddr ),
        .o_bus_req_axi_awlen     (master_req_axi_awlen  ),
        .o_bus_req_axi_awsize    (master_req_axi_awsize ),
        .o_bus_req_axi_awburst   (master_req_axi_awburst),
        .o_bus_req_axi_awlock    (master_req_axi_awlock ),
        .o_bus_req_axi_awcache   (master_req_axi_awcache),
        .o_bus_req_axi_awprot    (master_req_axi_awprot ),
        .o_bus_req_axi_awvalid   (master_req_axi_awvalid),
        .o_bus_req_axi_wid       (master_req_axi_wid    ),
        .o_bus_req_axi_wdata     (master_req_axi_wdata  ),
        .o_bus_req_axi_wstrb     (master_req_axi_wstrb  ),
        .o_bus_req_axi_wlast     (master_req_axi_wlast  ),
        .o_bus_req_axi_wvalid    (master_req_axi_wvalid ),
        .o_bus_req_axi_bready    (master_req_axi_bready )
        // .ireqs  ({i_bus_req,  d_bus_req,  u_bus_req } ),
        // .oresp  (master_resp),
        // .iresps ({i_bus_resp, d_bus_resp, u_bus_resp} ),
        // .oreq   (master_req)
    );
`endif 

    //ICache RD FSM
    always @(posedge clk) begin
        if(~resetn) 
            I_RD_state <= 0;
        else
            I_RD_state <= I_RD_nextstate;
    end

    always @(*) begin
        case (I_RD_state)
            R_IDLE: 
                if(icache_rd_req)
                    I_RD_nextstate = AR_SHAKE;
                else
                    I_RD_nextstate = R_IDLE;
            
            AR_SHAKE:
                if(inst_arready)
                    I_RD_nextstate = R_SHAKE;
                else
                    I_RD_nextstate = AR_SHAKE;

            R_SHAKE:
                if(inst_rlast)
                    I_RD_nextstate = R_FINISH;
                else
                    I_RD_nextstate = R_SHAKE;

            R_FINISH:
                I_RD_nextstate = R_IDLE;

            default: I_RD_nextstate = R_IDLE;
        endcase
    end

    //DCache RD FSM
    always @(posedge clk) begin
        if(~resetn) 
            D_RD_state <= 0;
        else
            D_RD_state <= D_RD_nextstate;
    end

    always @(*) begin
        case (D_RD_state)
            R_IDLE: 
                if(dcache_rd_req)
                    D_RD_nextstate = AR_SHAKE;
                else
                    D_RD_nextstate = R_IDLE;
            
            AR_SHAKE:
                if(data_arready)
                    D_RD_nextstate = R_SHAKE;
                else
                    D_RD_nextstate = AR_SHAKE;

            R_SHAKE:
                if(data_rlast)
                    D_RD_nextstate = R_FINISH;
                else
                    D_RD_nextstate = R_SHAKE;

            R_FINISH:
                D_RD_nextstate = R_IDLE;

            default: D_RD_nextstate = R_IDLE;
        endcase
    end

    //DCache WR FSM
    always @(posedge clk) begin
        if(~resetn) 
            D_WR_state <= 0;
        else
            D_WR_state <= D_WR_nextstate;
    end

    always @(*) begin
        case (D_WR_state)
            W_IDLE: 
                if(dcache_wr_req)
                    D_WR_nextstate = AW_SHAKE;
                else
                    D_WR_nextstate = W_IDLE;
            
            AW_SHAKE:
                if(data_awready)
                    D_WR_nextstate = W_SHAKE;
                else
                    D_WR_nextstate = AW_SHAKE;

            W_SHAKE:
                if(data_wlast)
                    D_WR_nextstate = B_SHAKE;
                else
                    D_WR_nextstate = W_SHAKE;
            
            B_SHAKE:
                if(data_bvalid)
                    D_WR_nextstate = W_FINISH;
                else
                    D_WR_nextstate = B_SHAKE;

            W_FINISH:
                D_WR_nextstate = W_IDLE;

            default: D_WR_nextstate = W_IDLE;
        endcase
    end

    //UICache RD FSM
    always @(posedge clk) begin
        if(~resetn) 
            UI_RD_state <= 0;
        else
            UI_RD_state <= UI_RD_nextstate;
    end

    always @(*) begin
        case (UI_RD_state)
            UR_IDLE: 
                if(uicache_rd_req)
                    UI_RD_nextstate = UAR_SHAKE;
                else
                    UI_RD_nextstate = UR_IDLE;
            
            UAR_SHAKE:
                if(uinst_arready)
                    UI_RD_nextstate = UR_SHAKE;
                else
                    UI_RD_nextstate = UAR_SHAKE;

            UR_SHAKE:
                if(uinst_rlast)
                    UI_RD_nextstate = UR_FINISH;
                else
                    UI_RD_nextstate = UR_SHAKE;

            UR_FINISH:
                UI_RD_nextstate = UR_IDLE;

            default: UI_RD_nextstate = UR_IDLE;
        endcase
    end

    //UDCache RD FSM
    always @(posedge clk) begin
        if(~resetn) 
            UD_RD_state <= 0;
        else
            UD_RD_state <= UD_RD_nextstate;
    end

    always @(*) begin
        case (UD_RD_state)
            UR_IDLE: 
                if(udcache_rd_req)
                    UD_RD_nextstate = UAR_SHAKE;
                else
                    UD_RD_nextstate = UR_IDLE;
            
            UAR_SHAKE:
                if(udata_arready)
                    UD_RD_nextstate = UR_SHAKE;
                else
                    UD_RD_nextstate = UAR_SHAKE;

            UR_SHAKE:
                if(udata_rlast)
                    UD_RD_nextstate = UR_FINISH;
                else
                    UD_RD_nextstate = UR_SHAKE;

            UR_FINISH:
                UD_RD_nextstate = UR_IDLE;

            default: UD_RD_nextstate = UR_IDLE;
        endcase
    end

    //UDCache WR FSM
    always @(posedge clk) begin
        if(~resetn) 
            UD_WR_state <= 0;
        else
            UD_WR_state <= UD_WR_nextstate;
    end

    always @(*) begin
        case (UD_WR_state)
            UW_IDLE: 
                if(udcache_wr_req)
                    UD_WR_nextstate = UAW_SHAKE;
                else
                    UD_WR_nextstate = UW_IDLE;
            
            UAW_SHAKE:
                if(udata_awready)
                    UD_WR_nextstate = UW_SHAKE;
                else
                    UD_WR_nextstate = UAW_SHAKE;

            UW_SHAKE:
                if(udata_wlast)
                    UD_WR_nextstate = UB_SHAKE;
                else
                    UD_WR_nextstate = UW_SHAKE;
            
            UB_SHAKE:
                if(udata_bvalid)
                    UD_WR_nextstate = UW_FINISH;
                else
                    UD_WR_nextstate = UB_SHAKE;

            UW_FINISH:
                UD_WR_nextstate = UW_IDLE;

            default: UD_WR_nextstate = UW_IDLE;
        endcase
    end
endmodule //AXI_Interface
`endif