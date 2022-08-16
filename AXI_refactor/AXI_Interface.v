// `include "global_defines.vh"
// `include "AXICache_defines.vh"
// module AXI_Interface(
//     input clk,
//     input resetn,

// `ifdef ILA_debug
//     input  [31: 0] prefs_pc,
//     input  [31: 0] fs_pc,
//     input  [31: 0] m1s_pc,
//     input  [31: 0] ms_pc,
// `endif

//     output [ 3: 0] arid,
//     output [31: 0] araddr,
//     output [ 3: 0] arlen,
//     output [ 2: 0] arsize,
//     output [ 1: 0] arburst,
//     output [ 1: 0] arlock,
//     output [ 3: 0] arcache,
//     output [ 2: 0] arprot,
//     output         arvalid,
//     input          arready,
//     input  [ 3: 0] rid,
//     input  [31: 0] rdata,
//     input  [ 1: 0] rresp,
//     input          rlast,
//     input          rvalid,
//     output         rready,
//     output [ 3: 0] awid,
//     output [31: 0] awaddr,
//     output [ 3: 0] awlen,
//     output [ 2: 0] awsize,
//     output [ 1: 0] awburst,
//     output [ 1: 0] awlock,
//     output [ 3: 0] awcache,
//     output [ 2: 0] awprot,
//     output         awvalid,
//     input          awready,
//     output [ 3: 0] wid,
//     output [31: 0] wdata,
//     output [ 3: 0] wstrb,
//     output         wlast,
//     output         wvalid,
//     input          wready,
//     input  [ 3: 0] bid,
//     input  [ 1: 0] bresp,
//     input          bvalid,
//     output         bready,

//     input             icache_rd_req, 
//     input  [31:0]     icache_rd_addr, 
//     output            icache_rd_rdy, 
//     output            icache_ret_valid, 
//     output    [127:0] icache_ret_data,

//     input             dcache_rd_req, 
//     input   [31:0]    dcache_rd_addr, 
//     output            dcache_rd_rdy, 
//     output            dcache_ret_valid, 
//     output    [127:0] dcache_ret_data, 
//     input             dcache_wr_req, 
//     input   [31:0]    dcache_wr_addr,     
//     input  [127:0]    dcache_wr_data, 
//     output            dcache_wr_rdy,
//     output            dcache_wr_valid, 

//     input             udcache_rd_req, 
//     input      [31:0] udcache_rd_addr,
//     input      [ 2:0] udcache_load_size, 
//     output            udcache_rd_rdy, 
//     output            udcache_ret_valid,
//     output     [31:0] udcache_ret_data, 
//     input             udcache_wr_req, 
//     input      [31:0] udcache_wr_addr,     
//     input      [ 3:0] udcache_wr_strb, 
//     input      [31:0] udcache_wr_data, 
//     output            udcache_wr_rdy,   
//     output            udcache_wr_valid //
// );

// // Icache 
//     wire  [ 3: 0] inst_arid;
//     wire  [31: 0] inst_araddr;
//     wire  [ 3: 0] inst_arlen;
//     wire  [ 2: 0] inst_arsize;
//     wire  [ 1: 0] inst_arburst;
//     wire  [ 1: 0] inst_arlock;
//     wire  [ 3: 0] inst_arcache; 
//     wire  [ 2: 0] inst_arprot;
//     wire          inst_arvalid;
//     wire          inst_arready;
//     wire  [ 3: 0] inst_rid;
//     wire  [31: 0] inst_rdata;
//     wire  [ 1: 0] inst_rresp;
//     wire          inst_rlast;
//     wire          inst_rvalid;
//     wire          inst_rready;
//     wire  [ 3: 0] inst_awid;
//     wire  [31: 0] inst_awaddr;
//     wire  [ 3: 0] inst_awlen;
//     wire  [ 2: 0] inst_awsize;
//     wire  [ 1: 0] inst_awburst;
//     wire  [ 1: 0] inst_awlock;
//     wire  [ 3: 0] inst_awcache;
//     wire  [ 2: 0] inst_awprot;
//     wire          inst_awvalid;
//     wire          inst_awready;
//     wire  [ 3: 0] inst_wid;
//     wire  [31: 0] inst_wdata;
//     wire  [ 3: 0] inst_wstrb;
//     wire          inst_wlast;
//     wire          inst_wvalid;
//     wire          inst_wready;
//     wire  [ 3: 0] inst_bid;
//     wire  [ 1: 0] inst_bresp;
//     wire          inst_bvalid;
//     wire          inst_bready;

// // Dcache 
//     wire  [ 3: 0] data_arid;
//     wire  [31: 0] data_araddr;
//     wire  [ 3: 0] data_arlen;
//     wire  [ 2: 0] data_arsize;
//     wire  [ 1: 0] data_arburst;
//     wire  [ 1: 0] data_arlock;
//     wire  [ 3: 0] data_arcache;
//     wire  [ 2: 0] data_arprot;
//     wire          data_arvalid;
//     wire          data_arready;
//     wire  [ 3: 0] data_rid;
//     wire  [31: 0] data_rdata;
//     wire  [ 1: 0] data_rresp;
//     wire          data_rlast;
//     wire          data_rvalid;
//     wire          data_rready;
//     wire  [ 3: 0] data_awid;
//     wire  [31: 0] data_awaddr;
//     wire  [ 3: 0] data_awlen;
//     wire  [ 2: 0] data_awsize;
//     wire  [ 1: 0] data_awburst;
//     wire  [ 1: 0] data_awlock;
//     wire  [ 3: 0] data_awcache;
//     wire  [ 2: 0] data_awprot;
//     wire          data_awvalid;
//     wire          data_awready;
//     wire  [ 3: 0] data_wid;
//     wire  [31: 0] data_wdata;
//     wire  [ 3: 0] data_wstrb;
//     wire          data_wlast;
//     wire          data_wvalid;
//     wire          data_wready;
//     wire  [ 3: 0] data_bid;
//     wire  [ 1: 0] data_bresp;
//     wire          data_bvalid;
//     wire          data_bready;
// // Uncache 
//     wire  [ 3: 0] udata_arid;
//     wire  [31: 0] udata_araddr;
//     wire  [ 3: 0] udata_arlen;
//     wire  [ 2: 0] udata_arsize;
//     wire  [ 1: 0] udata_arburst;
//     wire  [ 1: 0] udata_arlock;
//     wire  [ 3: 0] udata_arcache;
//     wire  [ 2: 0] udata_arprot;
//     wire          udata_arvalid;
//     wire          udata_arready;
//     wire  [ 3: 0] udata_rid;
//     wire  [31: 0] udata_rdata;
//     wire  [ 1: 0] udata_rresp;
//     wire          udata_rlast;
//     wire          udata_rvalid;
//     wire          udata_rready;
//     wire  [ 3: 0] udata_awid;
//     wire  [31: 0] udata_awaddr;
//     wire  [ 3: 0] udata_awlen;
//     wire  [ 2: 0] udata_awsize;
//     wire  [ 1: 0] udata_awburst;
//     wire  [ 1: 0] udata_awlock;
//     wire  [ 3: 0] udata_awcache;
//     wire  [ 2: 0] udata_awprot;
//     wire          udata_awvalid;
//     wire          udata_awready;
//     wire  [ 3: 0] udata_wid;
//     wire  [31: 0] udata_wdata;
//     wire  [ 3: 0] udata_wstrb;
//     wire          udata_wlast;
//     wire          udata_wvalid;
//     wire          udata_wready;
//     wire  [ 3: 0] udata_bid;
//     wire  [ 1: 0] udata_bresp;
//     wire          udata_bvalid;
//     wire          udata_bready;
    
//     reg   [  2:0] I_RD_state;
//     reg   [  2:0] I_RD_nextstate;
//     wire  [  2:0] I_RD_DataReady;
//     reg   [ 31:0] I_RD_Addr;
//     reg   [127:0] AXI_I_RData;

//     reg   [  2:0] D_RD_state;
//     reg   [  2:0] D_RD_nextstate;
//     wire  [  2:0] D_RD_DataReady;
//     reg   [ 31:0] D_RD_Addr;
//     reg   [127:0] AXI_D_RData;

//     reg   [  2:0] D_WR_state;
//     reg   [  2:0] D_WR_nextstate;
//     reg   [ 31:0] D_WR_Addr;
//     reg   [127:0] AXI_D_WData;

//     reg   [  1:0] U_RD_state;
//     reg   [  1:0] U_RD_nextstate;
//     reg   [ 31:0] U_RD_Addr;
//     reg   [  2:0] U_RD_load_size;
//     reg   [ 31:0] AXI_U_RData;

//     reg   [  2:0] U_WR_state;
//     reg   [  2:0] U_WR_nextstate;
//     reg   [ 31:0] U_WR_Addr;
//     reg   [ 31:0] AXI_U_WData;
//     reg   [  3:0] AXI_U_WStrb;

// `ifdef ILA_debug
// AXI_ila U_AXI_ila(
//     .clk     (clk),
//     .probe0  (inst_araddr),
//     .probe1  (inst_arready),
//     .probe2  (inst_rvalid),
//     .probe3  (inst_rdata),
//     .probe4  (udata_araddr),
//     .probe5  (udata_awaddr),
//     .probe6  (udata_wdata),
//     .probe7  (udata_bvalid),
//     .probe8  (udata_rdata),
//     .probe9  (udata_rvalid),
//     .probe10 (prefs_pc),
//     .probe11 (fs_pc),
//     .probe12 (m1s_pc),
//     .probe13 (ms_pc)
// );
// `endif

//     always @(posedge clk) begin
//         if (~resetn) begin
//             I_RD_Addr <= 0;
//         end 
//         else begin  
//             if (icache_rd_req == 1'b1 && I_RD_state == `I_RD_IDLE) begin
//                 I_RD_Addr <= icache_rd_addr;
//             end 
//         end 
//     end

//     //D$ RD
//     always @(posedge clk) begin
//         if (~resetn) begin
//             D_RD_Addr <= 0;
//         end 
//         else begin  
//             if (dcache_rd_req == 1'b1 && D_RD_state == `D_RD_IDLE) begin
//                 D_RD_Addr <= dcache_rd_addr;
//             end
//         end 
//     end

//     //D$ WR
//     always @(posedge clk) begin
//         if (~resetn) begin
//             D_WR_Addr   <= 0;
//             AXI_D_WData <= 0;
//         end 
//         else begin  
//             if (dcache_wr_req && D_WR_state == `D_WR_IDLE) begin
//                 D_WR_Addr   <= dcache_wr_addr;
//                 AXI_D_WData <= dcache_wr_data;
//             end 
//         end 
//     end

//     //U$ RD
//     always @(posedge clk) begin
//         if (~resetn) begin
//             U_RD_Addr      <= 0;
//             U_RD_load_size <= 0;
//         end 
//         else begin  
//             if (udcache_rd_req == 1'b1 && U_RD_state == `UD_RD_IDLE) begin
//                 U_RD_Addr      <= udcache_rd_addr;
//                 U_RD_load_size <= udcache_load_size;
//             end
//         end 
//     end

//     //U$ WR
//     always @(posedge clk) begin
//         if (~resetn) begin
//             U_WR_Addr   <= 0;
//             AXI_U_WData <= 0;
//             AXI_U_WStrb <= 0;
//         end 
//         else begin  
//             if (udcache_wr_req == 1'b1 && U_WR_state == `UD_WR_IDLE) begin
//                 U_WR_Addr   <= udcache_wr_addr;
//                 AXI_U_WData <= udcache_wr_data;
//                 AXI_U_WStrb <= udcache_wr_strb;
//             end 
//         end 
//     end

// /********************* ibus ******************/
//     //ar
//     assign inst_arid     = 4'b0000;
//     assign inst_arlen    = 4'b0011;      
//     assign inst_arsize   = 3'b010;       
//     assign inst_arburst  = 2'b01;
//     assign inst_arlock   = 2'b00;
//     assign inst_arcache  = 0;
//     assign inst_arprot   = 0;

//     //aw,w(对于inst 全部赋零)
//     assign inst_awid     = 0;           
//     assign inst_awlen    = 0;
//     assign inst_awsize   = 0;
//     assign inst_awburst  = 0;
//     assign inst_awlock   = 0;
//     assign inst_awcache  = 0;
//     assign inst_awprot   = 0;
//     assign inst_awvalid  = 0;
//     assign inst_awaddr   = 0;
//     assign inst_wid      = 0;
//     assign inst_wdata    = 0;
//     assign inst_wstrb    = 0;
//     assign inst_wlast    = 0;
//     assign inst_wvalid   = 0;
//     assign inst_bready   = 0;


// /********************* dbus ******************/
//     assign data_arid     = 4'b0001;
//     assign data_arlen    = 4'b0011;
//     assign data_arsize   = 3'b010;
//     assign data_arburst  = 2'b01;
//     assign data_arlock   = 0;
//     assign data_arcache  = 0;
//     assign data_arprot   = 0;

//     assign data_awid     = 4'b0001;
//     assign data_awlen    = 4'b0011;        
//     assign data_awsize   = 3'b010;         
//     assign data_awburst  = 2'b01;          
//     assign data_awlock   = 0;
//     assign data_awcache  = 0;
//     assign data_awprot   = 0;

//     assign data_wid     = 4'b0001;
//     assign data_wstrb   = 4'b1111;
//     assign data_bready  = 1'b1;

// /********************* ubus ******************/
//     assign udata_arid     = 4'b0011;
//     assign udata_arlen    = 4'b0000; 
//     assign udata_arsize   = U_RD_load_size; //Attention: 必须严格指定arsize 
//     assign udata_arburst  = 2'b01;
//     assign udata_arlock   = 0;
//     assign udata_arcache  = 0;
//     assign udata_arprot   = 0;


//     assign udata_awid     = 4'b0011;
//     assign udata_awlen    = 4'b0000;        
//     assign udata_awsize   = 3'b010;         
//     assign udata_awburst  = 2'b01;          
//     assign udata_awlock   = 0;
//     assign udata_awcache  = 0;
//     assign udata_awprot   = 0;


//     assign udata_wid     = 4'b0001;
//     assign udata_wstrb   = AXI_U_WStrb;  
//     assign udata_bready  = 1'b1;

//     assign icache_rd_rdy  = (I_RD_state == `I_RD_IDLE ) ? 1'b1 : 1'b0;
//     assign dcache_rd_rdy  = (D_RD_state == `D_RD_IDLE ) ? 1'b1 : 1'b0;
//     assign dcache_wr_rdy  = (D_WR_state == `D_WR_IDLE )  ? 1'b1 : 1'b0;
//     assign udcache_rd_rdy = (U_RD_state == `UD_RD_IDLE ) ? 1'b1 : 1'b0;
//     assign udcache_wr_rdy = (U_WR_state == `UD_WR_IDLE )  ? 1'b1 : 1'b0;

// // FSM -- Icache RD 
//     always @(posedge clk) begin
//         if (~resetn) begin
//             I_RD_state  <= `I_RD_IDLE;
//         end 
//         else begin  
//             I_RD_state <= I_RD_nextstate;
//         end
//     end

//     assign I_RD_DataReady = 
//         (I_RD_state == `I_R_SHAKE1 && inst_rvalid == 1'b1 && inst_rready == 1'b1) ? 3'd1 :
//         (I_RD_state == `I_R_SHAKE2 && inst_rvalid == 1'b1 && inst_rready == 1'b1) ? 3'd2 :
//         (I_RD_state == `I_R_SHAKE3 && inst_rvalid == 1'b1 && inst_rready == 1'b1) ? 3'd3 :
//         (I_RD_state == `I_R_SHAKE4 && inst_rvalid == 1'b1 && inst_rready == 1'b1) ? 3'd4 :
//                                                                                     3'd0 ;
//     always @(*)begin
//         case (I_RD_state)
//             `I_RD_IDLE:begin
//                 if (icache_rd_req == 1'b1) begin
//                     I_RD_nextstate = `I_AR_SHAKE;
//                 end
//                 else begin
//                     I_RD_nextstate = `I_RD_IDLE;
//                 end
//             end
//             `I_AR_SHAKE:begin
//                 if (inst_arvalid == 1'b1 && inst_arready == 1'b1) begin
//                     I_RD_nextstate = `I_R_SHAKE1;
//                 end else begin
//                     I_RD_nextstate = `I_AR_SHAKE;
//                 end
//             end
//             `I_R_SHAKE1:begin
//                 if (inst_rvalid == 1'b1 && inst_rready == 1'b1) begin
//                     I_RD_nextstate = `I_R_SHAKE2;
//                 end
//                 else begin
//                     I_RD_nextstate = `I_R_SHAKE1;
//                 end
//             end
//             `I_R_SHAKE2:begin
//                 if (inst_rvalid == 1'b1 && inst_rready == 1'b1) begin
//                     I_RD_nextstate = `I_R_SHAKE3;
//                 end
//                 else begin
//                     I_RD_nextstate = `I_R_SHAKE2;
//                 end
//             end
//             `I_R_SHAKE3:begin
//                 if (inst_rvalid == 1'b1 && inst_rready == 1'b1) begin
//                     I_RD_nextstate = `I_R_SHAKE4;
//                 end
//                 else begin
//                     I_RD_nextstate = `I_R_SHAKE3;
//                 end
//             end
//             `I_R_SHAKE4:begin
//                 if (inst_rvalid == 1'b1 && inst_rready == 1'b1 && inst_rlast == 1'b1) begin
//                     I_RD_nextstate = `I_R_FINISH;
//                 end
//                 else begin
//                     I_RD_nextstate = `I_R_SHAKE4;
//                 end
//             end
//             `I_R_FINISH: begin
//                 I_RD_nextstate     = `I_RD_IDLE;
//             end
//             default:begin
//                 I_RD_nextstate     = `I_RD_IDLE;
//             end
//         endcase
//     end

//     // araddr & arvalid
//     assign inst_arvalid = (I_RD_state == `I_AR_SHAKE) ? 1'b1 : 1'b0;
//     assign inst_araddr  = (I_RD_state == `I_AR_SHAKE) ? I_RD_Addr : 32'b0;

//     // rready 
//     assign inst_rready = (I_RD_state == `I_R_SHAKE1 || I_RD_state == `I_R_SHAKE2 
//                  || I_RD_state == `I_R_SHAKE3 || I_RD_state == `I_R_SHAKE4) ? 1'b1 : 1'b0;

//     //ret_valid & ret_rdata
//     assign icache_ret_valid = (I_RD_state == `I_R_FINISH) ? 1'b1 : 1'b0;
//     assign icache_ret_data  = (I_RD_state == `I_R_FINISH) ? AXI_I_RData : 0;

//     // AXI burst
//     always @(posedge clk) begin
//         if (~resetn) begin
//             AXI_I_RData  <= 128'b0; 
//         end 
//         else if(I_RD_state == `I_RD_IDLE) begin
//             AXI_I_RData  <= 128'b0; 
//         end
//         else if (I_RD_DataReady != 3'd0) begin
//             case (I_RD_DataReady)
//                 3'd1:begin
//                     AXI_I_RData[31:0]   <= inst_rdata;
//                 end
//                 3'd2:begin
//                     AXI_I_RData[63:32]  <= inst_rdata;
//                 end
//                 3'd3:begin
//                     AXI_I_RData[95:64]  <= inst_rdata;
//                 end
//                 3'd4:begin
//                     AXI_I_RData[127:96] <= inst_rdata;
//                 end
//                 default:
//                     AXI_I_RData <= AXI_I_RData;
//             endcase
//         end 
//     end

// // FSM -- Dcache RD 
//     always @(posedge clk) begin
//         if (~resetn) begin
//             D_RD_state  <= `D_RD_IDLE;
//         end 
//         else begin  
//             D_RD_state <= D_RD_nextstate;
//         end
//     end

//     assign D_RD_DataReady = 
//         (D_RD_state == `D_R_SHAKE1 && data_rvalid == 1'b1 && data_rready == 1'b1) ? 3'd1 :
//         (D_RD_state == `D_R_SHAKE2 && data_rvalid == 1'b1 && data_rready == 1'b1) ? 3'd2 :
//         (D_RD_state == `D_R_SHAKE3 && data_rvalid == 1'b1 && data_rready == 1'b1) ? 3'd3 :
//         (D_RD_state == `D_R_SHAKE4 && data_rvalid == 1'b1 && data_rready == 1'b1) ? 3'd4 : 
//                                                                                         3'd0 ;
//     always @(*) begin
//         case (D_RD_state)
//             `D_RD_IDLE:begin
//                 if (dcache_rd_req == 1'b1) begin
//                     D_RD_nextstate = `D_AR_SHAKE;
//                 end
//                 else begin
//                     D_RD_nextstate = `D_RD_IDLE;
//                 end
//             end
//             `D_AR_SHAKE:begin
//                 if (data_arvalid == 1'b1 && data_arready == 1'b1) begin
//                     D_RD_nextstate = `D_R_SHAKE1;
//                 end else begin
//                     D_RD_nextstate = `D_AR_SHAKE;

//                 end
//             end
//             `D_R_SHAKE1:begin
//                 if (data_rvalid == 1'b1 && data_rready == 1'b1) begin
//                     D_RD_nextstate = `D_R_SHAKE2;
//                 end
//                 else begin
//                     D_RD_nextstate = `D_R_SHAKE1;
//                 end
//             end
//             `D_R_SHAKE2:begin
//                 if (data_rvalid == 1'b1 && data_rready == 1'b1) begin
//                     D_RD_nextstate = `D_R_SHAKE3;
//                 end
//                 else begin
//                     D_RD_nextstate = `D_R_SHAKE2;
//                 end
//             end
//             `D_R_SHAKE3:begin
//                 if (data_rvalid == 1'b1 && data_rready == 1'b1) begin
//                     D_RD_nextstate = `D_R_SHAKE4;
//                 end
//                 else begin
//                     D_RD_nextstate = `D_R_SHAKE3;
//                 end
//             end
//             `D_R_SHAKE4:begin
//                 if (data_rvalid == 1'b1 && data_rready == 1'b1 && data_rlast == 1'b1) begin
//                     D_RD_nextstate = `D_R_FINISH;
//                 end
//                 else begin
//                     D_RD_nextstate = `D_R_SHAKE4;
//                 end
//             end
//             `D_R_FINISH: begin
//                 D_RD_nextstate     = `D_RD_IDLE;
//             end
//             default:begin
//                 D_RD_nextstate     = `D_RD_IDLE;                
//             end

//         endcase
//     end

//     // araddr & arvalid
//     assign data_arvalid = (D_RD_state == `D_AR_SHAKE) ? 1'b1 : 1'b0;
//     assign data_araddr  = (D_RD_state == `D_AR_SHAKE) ? D_RD_Addr : 32'b0;

//     assign data_rready = (D_RD_state == `D_R_SHAKE1 || D_RD_state == `D_R_SHAKE2 
//     || D_RD_state == `D_R_SHAKE3 ||D_RD_state == `D_R_SHAKE4) ? 1'b1 : 1'b0;

//     //ret_valid & ret_rdata
//     assign dcache_ret_valid = (D_RD_state == `D_R_FINISH) ? 1'b1 : 1'b0;
//     assign dcache_ret_data  = (D_RD_state == `D_R_FINISH) ? AXI_D_RData : 0;

//     // AXI burst
//     always @(posedge clk) begin
//         if (~resetn) begin
//             AXI_D_RData  <= 128'b0; 
//         end 
//         else if(D_RD_state == `D_RD_IDLE) begin
//             AXI_D_RData  <= 128'b0; 
//         end
//         else if (D_RD_DataReady != 3'd0) begin
//             case (D_RD_DataReady)
//                 3'd1:begin
//                     AXI_D_RData[31:0]   <= data_rdata;
//                 end
//                 3'd2:begin
//                     AXI_D_RData[63:32]  <= data_rdata;
//                 end
//                 3'd3:begin
//                     AXI_D_RData[95:64]  <= data_rdata;
//                 end
//                 3'd4:begin
//                     AXI_D_RData[127:96] <= data_rdata;
//                 end
//                 default:
//                     AXI_D_RData <= AXI_D_RData; 
//             endcase
//         end 
//     end
// // FSM -- Dcache WR
//     always @(posedge clk) begin
//         if (~resetn) begin
//             D_WR_state  <= `D_WR_IDLE;
//         end 
//         else begin  
//             D_WR_state <= D_WR_nextstate;
//         end
//     end

//     //valid & wdata
//     assign data_wdata = (D_WR_state == `D_W_SHAKE1) ? AXI_D_WData[31:0] :
//                         (D_WR_state == `D_W_SHAKE2) ? AXI_D_WData[63:32] :
//                         (D_WR_state == `D_W_SHAKE3) ? AXI_D_WData[95:64] :
//                         (D_WR_state == `D_W_SHAKE4) ? AXI_D_WData[127:96] :
//                                                           32'b0; 
//     assign data_wlast = (D_WR_state == `D_W_SHAKE4) ? 1'b1 : 1'b0;
//     always @(*) begin
//         case (D_WR_state)
//             `D_WR_IDLE:begin
//                 if (dcache_wr_req == 1'b1) begin
//                     D_WR_nextstate = `D_AW_SHAKE;
//                 end
//                 else begin
//                     D_WR_nextstate = `D_WR_IDLE;
//                 end
//             end
//             `D_AW_SHAKE:begin
//                 if (data_awready == 1'b1) begin
//                     D_WR_nextstate = `D_W_SHAKE1;
//                 end else begin
//                     D_WR_nextstate = `D_AW_SHAKE;
//                 end
//             end
//             `D_W_SHAKE1:begin
//                 if ( data_wready == 1'b1) begin
//                     D_WR_nextstate = `D_W_SHAKE2;
//                 end
//                 else begin
//                     D_WR_nextstate = `D_W_SHAKE1;
//                 end
//             end
//             `D_W_SHAKE2:begin
//                 if (data_wready == 1'b1) begin
//                     D_WR_nextstate = `D_W_SHAKE3;
//                 end
//                 else begin
//                     D_WR_nextstate = `D_W_SHAKE2;
//                 end
//             end
//             `D_W_SHAKE3:begin
//                 if (data_wready == 1'b1) begin
//                     D_WR_nextstate = `D_W_SHAKE4;
//                 end
//                 else begin
//                     D_WR_nextstate = `D_W_SHAKE3;
//                 end
//             end
//             `D_W_SHAKE4:begin
//                 if (data_wready == 1'b1) begin
//                     D_WR_nextstate = `D_B_SHAKE;
//                 end
//                 else begin
//                     D_WR_nextstate = `D_W_SHAKE4;
//                 end
//             end
//             `D_B_SHAKE: begin
//                 if (data_bvalid == 1'b1) begin
//                     D_WR_nextstate = `D_B_FINISH;
//                 end
//                else begin
//                     D_WR_nextstate = `D_B_SHAKE;
//                 end
//             end
//             `D_B_FINISH: begin
//                 D_WR_nextstate = `D_WR_IDLE;
//             end
//             default:begin
//                 D_WR_nextstate = `D_WR_IDLE;
//             end
//         endcase
//     end

//     // awaddr & awvalid
//     assign data_awvalid = (D_WR_state == `D_AW_SHAKE) ? 1'b1: 1'b0;
//     assign data_awaddr  = (D_WR_state == `D_AW_SHAKE) ? D_WR_Addr : 32'b0;

//     // wvalid 
//     assign data_wvalid = (D_WR_state == `D_W_SHAKE1 || D_WR_state == `D_W_SHAKE2 
//         || D_WR_state == `D_W_SHAKE3 || D_WR_state == `D_W_SHAKE4) ? 1'b1 : 1'b0;

//     assign dcache_wr_valid = (D_WR_state == `D_B_FINISH) ? 1'b1 : 1'b0;

// // FSM -- Uncache RD 
//     always @(posedge clk) begin
//         if (~resetn) begin
//             U_RD_state  <= `UD_RD_IDLE;
//         end 
//         else begin  
//             U_RD_state  <= U_RD_nextstate;
//         end
//     end

//     always @(*) begin
//         case (U_RD_state)
//             `UD_RD_IDLE:begin
//                 if (udcache_rd_req == 1'b1) begin
//                     U_RD_nextstate = `UD_AR_SHAKE;
//                 end
//                 else begin
//                     U_RD_nextstate = `UD_RD_IDLE;
//                 end
//             end
//             `UD_AR_SHAKE:begin
//                 if (udata_arvalid == 1'b1 && udata_arready == 1'b1) begin
//                     U_RD_nextstate = `UD_R_SHAKE;
//                 end else begin
//                     U_RD_nextstate = `UD_AR_SHAKE;
//                 end
//             end
//             `UD_R_SHAKE:begin
//                 if (udata_rvalid == 1'b1 && udata_rready == 1'b1 && udata_rlast == 1'b1) begin
//                     U_RD_nextstate = `UD_R_FINISH;
//                 end
//                 else begin
//                     U_RD_nextstate = `UD_R_SHAKE;
//                 end
//             end
//             `UD_R_FINISH: begin
//                 U_RD_nextstate     = `UD_RD_IDLE;
//             end
//             default:begin
//                 U_RD_nextstate     = `UD_RD_IDLE;                
//             end
//         endcase
//     end

//     // araddr & arvalid
//     assign udata_arvalid = (U_RD_state == `UD_AR_SHAKE) ? 1'b1 : 1'b0;
//     assign udata_araddr  = (U_RD_state == `UD_AR_SHAKE) ? U_RD_Addr : 32'b0;

//     // rready 
//     assign udata_rready = (U_RD_state == `UD_R_SHAKE) ? 1'b1 : 1'b0;

//     //ret_valid & ret_rdata
//     assign udcache_ret_valid = (U_RD_state == `UD_R_FINISH) ? 1'b1 : 1'b0;
//     assign udcache_ret_data  = (U_RD_state == `UD_R_FINISH) ? AXI_U_RData : 0;

//     always @(posedge clk) begin
//         if (~resetn) begin
//             AXI_U_RData  <= 32'b0; 
//         end 
//         else begin
//             AXI_U_RData[31:0] <= udata_rdata;
//         end 
//     end

// // FSM -- Uncache WR
//     always @(posedge clk) begin
//         if (~resetn) begin
//             U_WR_state  <= `UD_WR_IDLE;
//         end 
//         else begin  
//             U_WR_state  <= U_WR_nextstate;
//         end
//     end

//     assign udata_wlast = (U_WR_state == `UD_W_SHAKE) ? 1'b1 : 1'b0;
//     always @(*) begin
//         case (U_WR_state)
//             `UD_WR_IDLE:begin
//                 if (udcache_wr_req == 1'b1) begin
//                     U_WR_nextstate = `UD_AW_SHAKE;
//                 end
//                 else begin
//                     U_WR_nextstate = `UD_WR_IDLE;
//                 end
//             end
//             `UD_AW_SHAKE:begin
//                 if (udata_awready == 1'b1) begin
//                     U_WR_nextstate = `UD_W_SHAKE;
//                 end else begin
//                     U_WR_nextstate = `UD_AW_SHAKE;
//                 end
//             end
//             `UD_W_SHAKE:begin
//                 if (udata_wready == 1'b1) begin
//                     U_WR_nextstate = `UD_B_SHAKE;
//                 end
//                 else begin
//                     U_WR_nextstate = `UD_W_SHAKE;
//                 end
//             end
//             `UD_B_SHAKE: begin
//                 if (udata_bvalid == 1'b1) begin
//                     U_WR_nextstate = `UD_B_FINISH;
//                 end
//                else begin
//                     U_WR_nextstate = `UD_B_SHAKE;
//                 end
//             end
//             `UD_B_FINISH: begin
//                 U_WR_nextstate = `UD_WR_IDLE;
//             end
//             default:begin
//                 U_WR_nextstate = `UD_WR_IDLE;
//             end
//         endcase
//     end
//     assign udata_wdata = AXI_U_WData[31:0];
//     // awaddr & awvalid
//     assign udata_awvalid = (U_WR_state == `UD_AW_SHAKE) ? 1'b1 : 1'b0;
//     assign udata_awaddr  = (U_WR_state == `UD_AW_SHAKE) ? U_WR_Addr : 0;

//     // wvalid 
//     assign udata_wvalid = (U_WR_state == `UD_W_SHAKE) ? 1'b1 : 1'b0;

//     // wr_valid
//     assign udcache_wr_valid = (U_WR_state == `UD_B_FINISH) ? 1'b1 : 1'b0;



// `ifndef use_crossbar_ip
//     //AXI crossbar impl
//     // AXI Arbiter: IValid logic
//     wire u_valid;
//     wire d_valid;
//     wire i_valid;
//     assign u_valid = (U_WR_state != `UD_WR_IDLE || U_RD_state != `UD_RD_IDLE) ? 1'b1 : 1'b0;
//     assign d_valid = (D_WR_state != `D_WR_IDLE || D_RD_state != `D_RD_IDLE) ? 1'b1 : 1'b0;
//     assign i_valid = (I_RD_state != `I_RD_IDLE) ? 1'b1 : 1'b0;

//     //i_bus_req
//     wire [31: 0] i_bus_req_axi_araddr  ;
//     wire [ 3: 0] i_bus_req_axi_arid    ;
//     wire [ 3: 0] i_bus_req_axi_arlen   ;
//     wire [ 2: 0] i_bus_req_axi_arsize  ;
//     wire [ 1: 0] i_bus_req_axi_arburst ;
//     wire [ 1: 0] i_bus_req_axi_arlock  ;
//     wire [ 3: 0] i_bus_req_axi_arcache ;
//     wire [ 2: 0] i_bus_req_axi_arprot  ;
//     wire         i_bus_req_axi_arvalid ;
//     wire         i_bus_req_axi_rready  ;
//     wire [ 3: 0] i_bus_req_axi_awid    ;
//     wire [31: 0] i_bus_req_axi_awaddr  ;
//     wire [ 3: 0] i_bus_req_axi_awlen   ;
//     wire [ 2: 0] i_bus_req_axi_awsize  ;
//     wire [ 1: 0] i_bus_req_axi_awburst ;
//     wire [ 1: 0] i_bus_req_axi_awlock  ;
//     wire [ 3: 0] i_bus_req_axi_awcache ;
//     wire [ 2: 0] i_bus_req_axi_awprot  ;
//     wire         i_bus_req_axi_awvalid ;
//     wire [ 3: 0] i_bus_req_axi_wid     ;
//     wire [31: 0] i_bus_req_axi_wdata   ;
//     wire [ 3: 0] i_bus_req_axi_wstrb   ;
//     wire         i_bus_req_axi_wlast   ;
//     wire         i_bus_req_axi_wvalid  ;
//     wire         i_bus_req_axi_bready  ;
    
//     assign i_bus_req_axi_araddr   = inst_araddr;
//     assign i_bus_req_axi_arid     = inst_arid;
//     assign i_bus_req_axi_arlen    = inst_arlen;
//     assign i_bus_req_axi_arsize   = inst_arsize;
//     assign i_bus_req_axi_arburst  = inst_arburst;
//     assign i_bus_req_axi_arlock   = inst_arlock;
//     assign i_bus_req_axi_arcache  = inst_arcache;
//     assign i_bus_req_axi_arprot   = inst_arprot;
//     assign i_bus_req_axi_arvalid  = inst_arvalid;
//     assign i_bus_req_axi_rready   = inst_rready;
//     assign i_bus_req_axi_awid     = inst_awid;
//     assign i_bus_req_axi_awaddr   = inst_awaddr;
//     assign i_bus_req_axi_awlen    = inst_awlen;
//     assign i_bus_req_axi_awsize   = inst_awsize;
//     assign i_bus_req_axi_awburst  = inst_awburst;
//     assign i_bus_req_axi_awlock   = inst_awlock;
//     assign i_bus_req_axi_awcache  = inst_awcache;
//     assign i_bus_req_axi_awprot   = inst_awprot;
//     assign i_bus_req_axi_awvalid  = inst_awvalid;
//     assign i_bus_req_axi_wid      = inst_wid;
//     assign i_bus_req_axi_wdata    = inst_wdata;
//     assign i_bus_req_axi_wstrb    = inst_wstrb;
//     assign i_bus_req_axi_wlast    = inst_wlast;
//     assign i_bus_req_axi_wvalid   = inst_wvalid;
//     assign i_bus_req_axi_bready   = inst_bready;

//     //d_bus_req
//     wire [31: 0] d_bus_req_axi_araddr  ;
//     wire [ 3: 0] d_bus_req_axi_arid    ;
//     wire [ 3: 0] d_bus_req_axi_arlen   ;
//     wire [ 2: 0] d_bus_req_axi_arsize  ;
//     wire [ 1: 0] d_bus_req_axi_arburst ;
//     wire [ 1: 0] d_bus_req_axi_arlock  ;
//     wire [ 3: 0] d_bus_req_axi_arcache ;
//     wire [ 2: 0] d_bus_req_axi_arprot  ;
//     wire         d_bus_req_axi_arvalid ;
//     wire         d_bus_req_axi_rready  ;
//     wire [ 3: 0] d_bus_req_axi_awid    ;
//     wire [31: 0] d_bus_req_axi_awaddr  ;
//     wire [ 3: 0] d_bus_req_axi_awlen   ;
//     wire [ 2: 0] d_bus_req_axi_awsize  ;
//     wire [ 1: 0] d_bus_req_axi_awburst ;
//     wire [ 1: 0] d_bus_req_axi_awlock  ;
//     wire [ 3: 0] d_bus_req_axi_awcache ;
//     wire [ 2: 0] d_bus_req_axi_awprot  ;
//     wire         d_bus_req_axi_awvalid ;
//     wire [ 3: 0] d_bus_req_axi_wid     ;
//     wire [31: 0] d_bus_req_axi_wdata   ;
//     wire [ 3: 0] d_bus_req_axi_wstrb   ;
//     wire         d_bus_req_axi_wlast   ;
//     wire         d_bus_req_axi_wvalid  ;
//     wire         d_bus_req_axi_bready  ;

//     assign d_bus_req_axi_araddr   = data_araddr;
//     assign d_bus_req_axi_arid     = data_arid;
//     assign d_bus_req_axi_arlen    = data_arlen;
//     assign d_bus_req_axi_arsize   = data_arsize;
//     assign d_bus_req_axi_arburst  = data_arburst;
//     assign d_bus_req_axi_arlock   = data_arlock;
//     assign d_bus_req_axi_arcache  = data_arcache;
//     assign d_bus_req_axi_arprot   = data_arprot;
//     assign d_bus_req_axi_arvalid  = data_arvalid;
//     assign d_bus_req_axi_rready   = data_rready;
//     assign d_bus_req_axi_awid     = data_awid;
//     assign d_bus_req_axi_awaddr   = data_awaddr;
//     assign d_bus_req_axi_awlen    = data_awlen;
//     assign d_bus_req_axi_awsize   = data_awsize;
//     assign d_bus_req_axi_awburst  = data_awburst;
//     assign d_bus_req_axi_awlock   = data_awlock;
//     assign d_bus_req_axi_awcache  = data_awcache;
//     assign d_bus_req_axi_awprot   = data_awprot;
//     assign d_bus_req_axi_awvalid  = data_awvalid;
//     assign d_bus_req_axi_wid      = data_wid;
//     assign d_bus_req_axi_wdata    = data_wdata;
//     assign d_bus_req_axi_wstrb    = data_wstrb;
//     assign d_bus_req_axi_wlast    = data_wlast;
//     assign d_bus_req_axi_wvalid   = data_wvalid;
//     assign d_bus_req_axi_bready   = data_bready;

//     //u_bus_req
//     wire [31: 0] u_bus_req_axi_araddr  ;
//     wire [ 3: 0] u_bus_req_axi_arid    ;
//     wire [ 3: 0] u_bus_req_axi_arlen   ;
//     wire [ 2: 0] u_bus_req_axi_arsize  ;
//     wire [ 1: 0] u_bus_req_axi_arburst ;
//     wire [ 1: 0] u_bus_req_axi_arlock  ;
//     wire [ 3: 0] u_bus_req_axi_arcache ;
//     wire [ 2: 0] u_bus_req_axi_arprot  ;
//     wire         u_bus_req_axi_arvalid ;
//     wire         u_bus_req_axi_rready  ;
//     wire [ 3: 0] u_bus_req_axi_awid    ;
//     wire [31: 0] u_bus_req_axi_awaddr  ;
//     wire [ 3: 0] u_bus_req_axi_awlen   ;
//     wire [ 2: 0] u_bus_req_axi_awsize  ;
//     wire [ 1: 0] u_bus_req_axi_awburst ;
//     wire [ 1: 0] u_bus_req_axi_awlock  ;
//     wire [ 3: 0] u_bus_req_axi_awcache ;
//     wire [ 2: 0] u_bus_req_axi_awprot  ;
//     wire         u_bus_req_axi_awvalid ;
//     wire [ 3: 0] u_bus_req_axi_wid     ;
//     wire [31: 0] u_bus_req_axi_wdata   ;
//     wire [ 3: 0] u_bus_req_axi_wstrb   ;
//     wire         u_bus_req_axi_wlast   ;
//     wire         u_bus_req_axi_wvalid  ;
//     wire         u_bus_req_axi_bready  ;
//     assign u_bus_req_axi_araddr   = udata_araddr;
//     assign u_bus_req_axi_arid     = udata_arid;
//     assign u_bus_req_axi_arlen    = udata_arlen;
//     assign u_bus_req_axi_arsize   = udata_arsize;
//     assign u_bus_req_axi_arburst  = udata_arburst;
//     assign u_bus_req_axi_arlock   = udata_arlock;
//     assign u_bus_req_axi_arcache  = udata_arcache;
//     assign u_bus_req_axi_arprot   = udata_arprot;
//     assign u_bus_req_axi_arvalid  = udata_arvalid;
//     assign u_bus_req_axi_rready   = udata_rready;
//     assign u_bus_req_axi_awid     = udata_awid;
//     assign u_bus_req_axi_awaddr   = udata_awaddr;
//     assign u_bus_req_axi_awlen    = udata_awlen;
//     assign u_bus_req_axi_awsize   = udata_awsize;
//     assign u_bus_req_axi_awburst  = udata_awburst;
//     assign u_bus_req_axi_awlock   = udata_awlock;
//     assign u_bus_req_axi_awcache  = udata_awcache;
//     assign u_bus_req_axi_awprot   = udata_awprot;
//     assign u_bus_req_axi_awvalid  = udata_awvalid;
//     assign u_bus_req_axi_wid      = udata_wid;
//     assign u_bus_req_axi_wdata    = udata_wdata;
//     assign u_bus_req_axi_wstrb    = udata_wstrb;
//     assign u_bus_req_axi_wlast    = udata_wlast;
//     assign u_bus_req_axi_wvalid   = udata_wvalid;
//     assign u_bus_req_axi_bready   = udata_bready;

//     //i_bus_resp
//     wire         i_bus_resp_axi_arready; 
//     wire [ 3: 0] i_bus_resp_axi_rid    ;
//     wire [31: 0] i_bus_resp_axi_rdata  ; 
//     wire [ 1: 0] i_bus_resp_axi_rresp  ; 
//     wire         i_bus_resp_axi_rlast  ; 
//     wire         i_bus_resp_axi_rvalid ; 
//     wire         i_bus_resp_axi_awready; 
//     wire         i_bus_resp_axi_wready ; 
//     wire [ 3: 0] i_bus_resp_axi_bid    ;
//     wire [ 1: 0] i_bus_resp_axi_bresp  ; 
//     wire         i_bus_resp_axi_bvalid ;

//     assign   inst_arready =  i_bus_resp_axi_arready;     
//     assign   inst_rid     =  i_bus_resp_axi_rid    ;
//     assign   inst_rdata   =  i_bus_resp_axi_rdata  ; 
//     assign   inst_rresp   =  i_bus_resp_axi_rresp  ; 
//     assign   inst_rlast   =  i_bus_resp_axi_rlast  ; 
//     assign   inst_rvalid  =  i_bus_resp_axi_rvalid ;   
//     assign   inst_awready =  i_bus_resp_axi_awready;     
//     assign   inst_wready  =  i_bus_resp_axi_wready ;   
//     assign   inst_bid     =  i_bus_resp_axi_bid    ;
//     assign   inst_bresp   =  i_bus_resp_axi_bresp  ; 
//     assign   inst_bvalid  =  i_bus_resp_axi_bvalid ;

//     //d_bus_resp
//     wire         d_bus_resp_axi_arready; 
//     wire [ 3: 0] d_bus_resp_axi_rid    ;
//     wire [31: 0] d_bus_resp_axi_rdata  ; 
//     wire [ 1: 0] d_bus_resp_axi_rresp  ; 
//     wire         d_bus_resp_axi_rlast  ; 
//     wire         d_bus_resp_axi_rvalid ; 
//     wire         d_bus_resp_axi_awready; 
//     wire         d_bus_resp_axi_wready ; 
//     wire [ 3: 0] d_bus_resp_axi_bid    ;
//     wire [ 1: 0] d_bus_resp_axi_bresp  ; 
//     wire         d_bus_resp_axi_bvalid ;

//     assign   data_arready =  d_bus_resp_axi_arready;     
//     assign   data_rid     =  d_bus_resp_axi_rid    ;
//     assign   data_rdata   =  d_bus_resp_axi_rdata  ; 
//     assign   data_rresp   =  d_bus_resp_axi_rresp  ; 
//     assign   data_rlast   =  d_bus_resp_axi_rlast  ; 
//     assign   data_rvalid  =  d_bus_resp_axi_rvalid ;   
//     assign   data_awready =  d_bus_resp_axi_awready;     
//     assign   data_wready  =  d_bus_resp_axi_wready ;   
//     assign   data_bid     =  d_bus_resp_axi_bid    ;
//     assign   data_bresp   =  d_bus_resp_axi_bresp  ; 
//     assign   data_bvalid  =  d_bus_resp_axi_bvalid ;

//     //u_bus_resp
//     wire         u_bus_resp_axi_arready; 
//     wire [ 3: 0] u_bus_resp_axi_rid    ;
//     wire [31: 0] u_bus_resp_axi_rdata  ; 
//     wire [ 1: 0] u_bus_resp_axi_rresp  ; 
//     wire         u_bus_resp_axi_rlast  ; 
//     wire         u_bus_resp_axi_rvalid ; 
//     wire         u_bus_resp_axi_awready; 
//     wire         u_bus_resp_axi_wready ; 
//     wire [ 3: 0] u_bus_resp_axi_bid    ;
//     wire [ 1: 0] u_bus_resp_axi_bresp  ; 
//     wire         u_bus_resp_axi_bvalid ;

//     assign   udata_arready =  u_bus_resp_axi_arready;     
//     assign   udata_rid     =  u_bus_resp_axi_rid    ;
//     assign   udata_rdata   =  u_bus_resp_axi_rdata  ; 
//     assign   udata_rresp   =  u_bus_resp_axi_rresp  ; 
//     assign   udata_rlast   =  u_bus_resp_axi_rlast  ; 
//     assign   udata_rvalid  =  u_bus_resp_axi_rvalid ;   
//     assign   udata_awready =  u_bus_resp_axi_awready;     
//     assign   udata_wready  =  u_bus_resp_axi_wready ;   
//     assign   udata_bid     =  u_bus_resp_axi_bid    ;
//     assign   udata_bresp   =  u_bus_resp_axi_bresp  ; 
//     assign   udata_bvalid  =  u_bus_resp_axi_bvalid ;

//     //master_req,master_resp
//     wire [31: 0] master_req_axi_araddr   ;
//     wire [ 3: 0] master_req_axi_arid     ;
//     wire [ 3: 0] master_req_axi_arlen    ;
//     wire [ 2: 0] master_req_axi_arsize   ;
//     wire [ 1: 0] master_req_axi_arburst  ;
//     wire [ 1: 0] master_req_axi_arlock   ;
//     wire [ 3: 0] master_req_axi_arcache  ;
//     wire [ 2: 0] master_req_axi_arprot   ;
//     wire         master_req_axi_arvalid  ;
//     wire         master_req_axi_rready   ;
//     wire [ 3: 0] master_req_axi_awid     ;
//     wire [31: 0] master_req_axi_awaddr   ;
//     wire [ 3: 0] master_req_axi_awlen    ;
//     wire [ 2: 0] master_req_axi_awsize   ;
//     wire [ 1: 0] master_req_axi_awburst  ;
//     wire [ 1: 0] master_req_axi_awlock   ;
//     wire [ 3: 0] master_req_axi_awcache  ;
//     wire [ 2: 0] master_req_axi_awprot   ;
//     wire         master_req_axi_awvalid  ;
//     wire [ 3: 0] master_req_axi_wid      ;
//     wire [31: 0] master_req_axi_wdata    ;
//     wire [ 3: 0] master_req_axi_wstrb    ;
//     wire         master_req_axi_wlast    ;
//     wire         master_req_axi_wvalid   ;
//     wire         master_req_axi_bready   ;

//     assign  araddr    =  master_req_axi_araddr   ;
//     assign  arid      =  master_req_axi_arid     ;
//     assign  arlen     =  master_req_axi_arlen    ;
//     assign  arsize    =  master_req_axi_arsize   ;
//     assign  arburst   =  master_req_axi_arburst  ;
//     assign  arlock    =  master_req_axi_arlock   ;
//     assign  arcache   =  master_req_axi_arcache  ;
//     assign  arprot    =  master_req_axi_arprot   ;
//     assign  arvalid   =  master_req_axi_arvalid  ;
//     assign  rready    =  master_req_axi_rready   ;
//     assign  awid      =  master_req_axi_awid     ;
//     assign  awaddr    =  master_req_axi_awaddr   ;
//     assign  awlen     =  master_req_axi_awlen    ;
//     assign  awsize    =  master_req_axi_awsize   ;
//     assign  awburst   =  master_req_axi_awburst  ;
//     assign  awlock    =  master_req_axi_awlock   ;
//     assign  awcache   =  master_req_axi_awcache  ;
//     assign  awprot    =  master_req_axi_awprot   ;
//     assign  awvalid   =  master_req_axi_awvalid  ;
//     assign  wid       =  master_req_axi_wid      ;
//     assign  wdata     =  master_req_axi_wdata    ;
//     assign  wstrb     =  master_req_axi_wstrb    ;
//     assign  wlast     =  master_req_axi_wlast    ;
//     assign  wvalid    =  master_req_axi_wvalid   ;
//     assign  bready    =  master_req_axi_bready   ;

//     wire          master_resp_axi_arready ;
//     wire  [ 3: 0] master_resp_axi_rid     ;
//     wire  [31: 0] master_resp_axi_rdata   ;
//     wire  [ 1: 0] master_resp_axi_rresp   ;
//     wire          master_resp_axi_rlast   ;
//     wire          master_resp_axi_rvalid  ;
//     wire          master_resp_axi_awready ;
//     wire          master_resp_axi_wready  ;
//     wire  [ 3: 0] master_resp_axi_bid     ;
//     wire  [ 1: 0] master_resp_axi_bresp   ;
//     wire          master_resp_axi_bvalid  ;
//     assign  master_resp_axi_arready  = arready  ;
//     assign  master_resp_axi_rid      = rid      ;
//     assign  master_resp_axi_rdata    = rdata    ;
//     assign  master_resp_axi_rresp    = rresp    ;
//     assign  master_resp_axi_rlast    = rlast    ;
//     assign  master_resp_axi_rvalid   = rvalid   ;
//     assign  master_resp_axi_awready  = awready  ;
//     assign  master_resp_axi_wready   = wready   ;
//     assign  master_resp_axi_bid      = bid      ;
//     assign  master_resp_axi_bresp    = bresp    ;
//     assign  master_resp_axi_bvalid   = bvalid   ;

//     BusArbiter   #(
//         .NUM_INPUTS(3)
//     )
//     U_BusArbiter_dut (
//         .clk    (clk ),
//         .resetn (resetn ),
//         .u_valid(u_valid),
//         .d_valid(d_valid),
//         .i_valid(i_valid),

//         .i_bus_req_axi_araddr  (i_bus_req_axi_araddr  ),
//         .i_bus_req_axi_arid    (i_bus_req_axi_arid    ),
//         .i_bus_req_axi_arlen   (i_bus_req_axi_arlen   ),
//         .i_bus_req_axi_arsize  (i_bus_req_axi_arsize  ),
//         .i_bus_req_axi_arburst (i_bus_req_axi_arburst ),
//         .i_bus_req_axi_arlock  (i_bus_req_axi_arlock  ),
//         .i_bus_req_axi_arcache (i_bus_req_axi_arcache ),
//         .i_bus_req_axi_arprot  (i_bus_req_axi_arprot  ),
//         .i_bus_req_axi_arvalid (i_bus_req_axi_arvalid ),
//         .i_bus_req_axi_rready  (i_bus_req_axi_rready  ),
//         .i_bus_req_axi_awid    (i_bus_req_axi_awid    ),
//         .i_bus_req_axi_awaddr  (i_bus_req_axi_awaddr  ),
//         .i_bus_req_axi_awlen   (i_bus_req_axi_awlen   ),
//         .i_bus_req_axi_awsize  (i_bus_req_axi_awsize  ),
//         .i_bus_req_axi_awburst (i_bus_req_axi_awburst ),
//         .i_bus_req_axi_awlock  (i_bus_req_axi_awlock  ),
//         .i_bus_req_axi_awcache (i_bus_req_axi_awcache ),
//         .i_bus_req_axi_awprot  (i_bus_req_axi_awprot  ),
//         .i_bus_req_axi_awvalid (i_bus_req_axi_awvalid ),
//         .i_bus_req_axi_wid     (i_bus_req_axi_wid     ),
//         .i_bus_req_axi_wdata   (i_bus_req_axi_wdata   ),
//         .i_bus_req_axi_wstrb   (i_bus_req_axi_wstrb   ),
//         .i_bus_req_axi_wlast   (i_bus_req_axi_wlast   ),
//         .i_bus_req_axi_wvalid  (i_bus_req_axi_wvalid  ),
//         .i_bus_req_axi_bready  (i_bus_req_axi_bready  ),

//         .d_bus_req_axi_araddr  (d_bus_req_axi_araddr  ),
//         .d_bus_req_axi_arid    (d_bus_req_axi_arid    ),
//         .d_bus_req_axi_arlen   (d_bus_req_axi_arlen   ),
//         .d_bus_req_axi_arsize  (d_bus_req_axi_arsize  ),
//         .d_bus_req_axi_arburst (d_bus_req_axi_arburst ),
//         .d_bus_req_axi_arlock  (d_bus_req_axi_arlock  ),
//         .d_bus_req_axi_arcache (d_bus_req_axi_arcache ),
//         .d_bus_req_axi_arprot  (d_bus_req_axi_arprot  ),
//         .d_bus_req_axi_arvalid (d_bus_req_axi_arvalid ),
//         .d_bus_req_axi_rready  (d_bus_req_axi_rready  ),
//         .d_bus_req_axi_awid    (d_bus_req_axi_awid    ),
//         .d_bus_req_axi_awaddr  (d_bus_req_axi_awaddr  ),
//         .d_bus_req_axi_awlen   (d_bus_req_axi_awlen   ),
//         .d_bus_req_axi_awsize  (d_bus_req_axi_awsize  ),
//         .d_bus_req_axi_awburst (d_bus_req_axi_awburst ),
//         .d_bus_req_axi_awlock  (d_bus_req_axi_awlock  ),
//         .d_bus_req_axi_awcache (d_bus_req_axi_awcache ),
//         .d_bus_req_axi_awprot  (d_bus_req_axi_awprot  ),
//         .d_bus_req_axi_awvalid (d_bus_req_axi_awvalid ),
//         .d_bus_req_axi_wid     (d_bus_req_axi_wid     ),
//         .d_bus_req_axi_wdata   (d_bus_req_axi_wdata   ),
//         .d_bus_req_axi_wstrb   (d_bus_req_axi_wstrb   ),
//         .d_bus_req_axi_wlast   (d_bus_req_axi_wlast   ),
//         .d_bus_req_axi_wvalid  (d_bus_req_axi_wvalid  ),
//         .d_bus_req_axi_bready  (d_bus_req_axi_bready  ),

//         .u_bus_req_axi_araddr  (u_bus_req_axi_araddr  ),
//         .u_bus_req_axi_arid    (u_bus_req_axi_arid    ),
//         .u_bus_req_axi_arlen   (u_bus_req_axi_arlen   ),
//         .u_bus_req_axi_arsize  (u_bus_req_axi_arsize  ),
//         .u_bus_req_axi_arburst (u_bus_req_axi_arburst ),
//         .u_bus_req_axi_arlock  (u_bus_req_axi_arlock  ),
//         .u_bus_req_axi_arcache (u_bus_req_axi_arcache ),
//         .u_bus_req_axi_arprot  (u_bus_req_axi_arprot  ),
//         .u_bus_req_axi_arvalid (u_bus_req_axi_arvalid ),
//         .u_bus_req_axi_rready  (u_bus_req_axi_rready  ),
//         .u_bus_req_axi_awid    (u_bus_req_axi_awid    ),
//         .u_bus_req_axi_awaddr  (u_bus_req_axi_awaddr  ),
//         .u_bus_req_axi_awlen   (u_bus_req_axi_awlen   ),
//         .u_bus_req_axi_awsize  (u_bus_req_axi_awsize  ),
//         .u_bus_req_axi_awburst (u_bus_req_axi_awburst ),
//         .u_bus_req_axi_awlock  (u_bus_req_axi_awlock  ),
//         .u_bus_req_axi_awcache (u_bus_req_axi_awcache ),
//         .u_bus_req_axi_awprot  (u_bus_req_axi_awprot  ),
//         .u_bus_req_axi_awvalid (u_bus_req_axi_awvalid ),
//         .u_bus_req_axi_wid     (u_bus_req_axi_wid     ),
//         .u_bus_req_axi_wdata   (u_bus_req_axi_wdata   ),
//         .u_bus_req_axi_wstrb   (u_bus_req_axi_wstrb   ),
//         .u_bus_req_axi_wlast   (u_bus_req_axi_wlast   ),
//         .u_bus_req_axi_wvalid  (u_bus_req_axi_wvalid  ),
//         .u_bus_req_axi_bready  (u_bus_req_axi_bready  ),

//         .master_resp_axi_arready (master_resp_axi_arready),
//         .master_resp_axi_rid     (master_resp_axi_rid    ),
//         .master_resp_axi_rdata   (master_resp_axi_rdata  ),
//         .master_resp_axi_rresp   (master_resp_axi_rresp  ),
//         .master_resp_axi_rlast   (master_resp_axi_rlast  ),
//         .master_resp_axi_rvalid  (master_resp_axi_rvalid ),
//         .master_resp_axi_awready (master_resp_axi_awready),
//         .master_resp_axi_wready  (master_resp_axi_wready ),
//         .master_resp_axi_bid     (master_resp_axi_bid    ),
//         .master_resp_axi_bresp   (master_resp_axi_bresp  ),
//         .master_resp_axi_bvalid  (master_resp_axi_bvalid ),

//         .i_bus_resp_axi_arready  (i_bus_resp_axi_arready),
//         .i_bus_resp_axi_rid      (i_bus_resp_axi_rid    ),
//         .i_bus_resp_axi_rdata    (i_bus_resp_axi_rdata  ),
//         .i_bus_resp_axi_rresp    (i_bus_resp_axi_rresp  ),
//         .i_bus_resp_axi_rlast    (i_bus_resp_axi_rlast  ),
//         .i_bus_resp_axi_rvalid   (i_bus_resp_axi_rvalid ),
//         .i_bus_resp_axi_awready  (i_bus_resp_axi_awready),
//         .i_bus_resp_axi_wready   (i_bus_resp_axi_wready ),
//         .i_bus_resp_axi_bid      (i_bus_resp_axi_bid    ),
//         .i_bus_resp_axi_bresp    (i_bus_resp_axi_bresp  ),
//         .i_bus_resp_axi_bvalid   (i_bus_resp_axi_bvalid ),

//         .d_bus_resp_axi_arready  (d_bus_resp_axi_arready),
//         .d_bus_resp_axi_rid      (d_bus_resp_axi_rid    ),
//         .d_bus_resp_axi_rdata    (d_bus_resp_axi_rdata  ),
//         .d_bus_resp_axi_rresp    (d_bus_resp_axi_rresp  ),
//         .d_bus_resp_axi_rlast    (d_bus_resp_axi_rlast  ),
//         .d_bus_resp_axi_rvalid   (d_bus_resp_axi_rvalid ),
//         .d_bus_resp_axi_awready  (d_bus_resp_axi_awready),
//         .d_bus_resp_axi_wready   (d_bus_resp_axi_wready ),
//         .d_bus_resp_axi_bid      (d_bus_resp_axi_bid    ),
//         .d_bus_resp_axi_bresp    (d_bus_resp_axi_bresp  ),
//         .d_bus_resp_axi_bvalid   (d_bus_resp_axi_bvalid ),

//         .u_bus_resp_axi_arready  (u_bus_resp_axi_arready),
//         .u_bus_resp_axi_rid      (u_bus_resp_axi_rid    ),
//         .u_bus_resp_axi_rdata    (u_bus_resp_axi_rdata  ),
//         .u_bus_resp_axi_rresp    (u_bus_resp_axi_rresp  ),
//         .u_bus_resp_axi_rlast    (u_bus_resp_axi_rlast  ),
//         .u_bus_resp_axi_rvalid   (u_bus_resp_axi_rvalid ),
//         .u_bus_resp_axi_awready  (u_bus_resp_axi_awready),
//         .u_bus_resp_axi_wready   (u_bus_resp_axi_wready ),
//         .u_bus_resp_axi_bid      (u_bus_resp_axi_bid    ),
//         .u_bus_resp_axi_bresp    (u_bus_resp_axi_bresp  ),
//         .u_bus_resp_axi_bvalid   (u_bus_resp_axi_bvalid ),        

//         .o_bus_req_axi_araddr    (master_req_axi_araddr ),
//         .o_bus_req_axi_arid      (master_req_axi_arid   ),
//         .o_bus_req_axi_arlen     (master_req_axi_arlen  ),
//         .o_bus_req_axi_arsize    (master_req_axi_arsize ),
//         .o_bus_req_axi_arburst   (master_req_axi_arburst),
//         .o_bus_req_axi_arlock    (master_req_axi_arlock ),
//         .o_bus_req_axi_arcache   (master_req_axi_arcache),
//         .o_bus_req_axi_arprot    (master_req_axi_arprot ),
//         .o_bus_req_axi_arvalid   (master_req_axi_arvalid),
//         .o_bus_req_axi_rready    (master_req_axi_rready ),
//         .o_bus_req_axi_awid      (master_req_axi_awid   ),
//         .o_bus_req_axi_awaddr    (master_req_axi_awaddr ),
//         .o_bus_req_axi_awlen     (master_req_axi_awlen  ),
//         .o_bus_req_axi_awsize    (master_req_axi_awsize ),
//         .o_bus_req_axi_awburst   (master_req_axi_awburst),
//         .o_bus_req_axi_awlock    (master_req_axi_awlock ),
//         .o_bus_req_axi_awcache   (master_req_axi_awcache),
//         .o_bus_req_axi_awprot    (master_req_axi_awprot ),
//         .o_bus_req_axi_awvalid   (master_req_axi_awvalid),
//         .o_bus_req_axi_wid       (master_req_axi_wid    ),
//         .o_bus_req_axi_wdata     (master_req_axi_wdata  ),
//         .o_bus_req_axi_wstrb     (master_req_axi_wstrb  ),
//         .o_bus_req_axi_wlast     (master_req_axi_wlast  ),
//         .o_bus_req_axi_wvalid    (master_req_axi_wvalid ),
//         .o_bus_req_axi_bready    (master_req_axi_bready )
//         // .ireqs  ({i_bus_req,  d_bus_req,  u_bus_req } ),
//         // .oresp  (master_resp),
//         // .iresps ({i_bus_resp, d_bus_resp, u_bus_resp} ),
//         // .oreq   (master_req)
//     );
// `endif
// `ifdef use_crossbar_ip
//     axi_crossbar U_axi_crossbar (
//         .aclk             ( clk     ),
//         .aresetn          ( resetn        ),
        
//         .s_axi_arid       ( {inst_arid   ,data_arid    ,udata_arid   } ),
//         .s_axi_araddr     ( {inst_araddr ,data_araddr  ,udata_araddr } ),
//         .s_axi_arlen      ( {inst_arlen  ,data_arlen   ,udata_arlen  } ),
//         .s_axi_arsize     ( {inst_arsize ,data_arsize  ,udata_arsize } ),
//         .s_axi_arburst    ( {inst_arburst,data_arburst ,udata_arburst} ),
//         .s_axi_arlock     ( {inst_arlock ,data_arlock  ,udata_arlock } ),
//         .s_axi_arcache    ( {inst_arcache,data_arcache ,udata_arcache} ),
//         .s_axi_arprot     ( {inst_arprot ,data_arprot  ,udata_arprot } ),
//         .s_axi_arqos      ( 0                                         ),
//         .s_axi_arvalid    ( {inst_arvalid,data_arvalid ,udata_arvalid} ),
//         .s_axi_arready    ( {inst_arready,data_arready ,udata_arready} ),
//         .s_axi_rid        ( {inst_rid    ,data_rid     ,udata_rid    } ),
//         .s_axi_rdata      ( {inst_rdata  ,data_rdata   ,udata_rdata  } ),
//         .s_axi_rresp      ( {inst_rresp  ,data_rresp   ,udata_rresp  } ),
//         .s_axi_rlast      ( {inst_rlast  ,data_rlast   ,udata_rlast  } ),
//         .s_axi_rvalid     ( {inst_rvalid ,data_rvalid  ,udata_rvalid } ),
//         .s_axi_rready     ( {inst_rready ,data_rready  ,udata_rready } ),
//         .s_axi_awid       ( {inst_awid   ,data_awid    ,udata_awid   } ),
//         .s_axi_awaddr     ( {inst_awaddr ,data_awaddr  ,udata_awaddr } ),
//         .s_axi_awlen      ( {inst_awlen  ,data_awlen   ,udata_awlen  } ),
//         .s_axi_awsize     ( {inst_awsize ,data_awsize  ,udata_awsize } ),
//         .s_axi_awburst    ( {inst_awburst,data_awburst ,udata_awburst} ),
//         .s_axi_awlock     ( {inst_awlock ,data_awlock  ,udata_awlock } ),
//         .s_axi_awcache    ( {inst_awcache,data_awcache ,udata_awcache} ),
//         .s_axi_awprot     ( {inst_awprot ,data_awprot  ,udata_awprot } ),
//         .s_axi_awqos      ( 0                                         ),
//         .s_axi_awvalid    ( {inst_awvalid,data_awvalid ,udata_awvalid} ),
//         .s_axi_awready    ( {inst_awready,data_awready ,udata_awready} ),
//         .s_axi_wid        ( {inst_wid    ,data_wid     ,udata_wid    } ),
//         .s_axi_wdata      ( {inst_wdata  ,data_wdata   ,udata_wdata  } ),
//         .s_axi_wstrb      ( {inst_wstrb  ,data_wstrb   ,udata_wstrb  } ),
//         .s_axi_wlast      ( {inst_wlast  ,data_wlast   ,udata_wlast  } ),
//         .s_axi_wvalid     ( {inst_wvalid ,data_wvalid  ,udata_wvalid } ),
//         .s_axi_wready     ( {inst_wready ,data_wready  ,udata_wready } ),
//         .s_axi_bid        ( {inst_bid    ,data_bid     ,udata_bid    } ),
//         .s_axi_bresp      ( {inst_bresp  ,data_bresp   ,udata_bresp  } ),
//         .s_axi_bvalid     ( {inst_bvalid ,data_bvalid  ,udata_bvalid } ),
//         .s_axi_bready     ( {inst_bready ,data_bready  ,udata_bready } ),
        
//         .m_axi_arid       (arid          ),
//         .m_axi_araddr     (araddr        ),
//         .m_axi_arlen      (arlen         ),
//         .m_axi_arsize     (arsize        ),
//         .m_axi_arburst    (arburst       ),
//         .m_axi_arlock     (arlock        ),
//         .m_axi_arcache    (arcache       ),
//         .m_axi_arprot     (arprot        ),
//         .m_axi_arqos      (              ),
//         .m_axi_arvalid    (arvalid       ),
//         .m_axi_arready    (arready       ),
//         .m_axi_rid        (rid           ),
//         .m_axi_rdata      (rdata         ),
//         .m_axi_rresp      (rresp         ),
//         .m_axi_rlast      (rlast         ),
//         .m_axi_rvalid     (rvalid        ),
//         .m_axi_rready     (rready        ),
//         .m_axi_awid       (awid          ),
//         .m_axi_awaddr     (awaddr        ),
//         .m_axi_awlen      (awlen         ),
//         .m_axi_awsize     (awsize        ),
//         .m_axi_awburst    (awburst       ),
//         .m_axi_awlock     (awlock        ),
//         .m_axi_awcache    (awcache       ),
//         .m_axi_awprot     (awprot        ),
//         .m_axi_awqos      (              ),
//         .m_axi_awvalid    (awvalid       ),
//         .m_axi_awready    (awready       ),
//         .m_axi_wid        (wid           ),
//         .m_axi_wdata      (wdata         ),
//         .m_axi_wstrb      (wstrb         ),
//         .m_axi_wlast      (wlast         ),
//         .m_axi_wvalid     (wvalid        ),
//         .m_axi_wready     (wready        ),
//         .m_axi_bid        (bid           ),
//         .m_axi_bresp      (bresp         ),
//         .m_axi_bvalid     (bvalid        ),
//         .m_axi_bready     (bready        )
//     );
// `endif 
// endmodule

`include "global_defines.vh"
`include "AXICache_defines.vh"
module AXI_Interface (
    input clk,
    input resetn,
`ifdef ILA_debug
    input  [31: 0] prefs_pc,
    input  [31: 0] fs_pc,
    input  [31: 0] m1s_pc,
    input  [31: 0] ms_pc,
`endif
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

    input             icache_rd_req, 
    input  [31:0]     icache_rd_addr, 
    output            icache_rd_rdy, 
    output            icache_ret_valid, 
    output    [127:0] icache_ret_data,

    input             dcache_rd_req, 
    input   [31:0]    dcache_rd_addr, 
    output            dcache_rd_rdy, 
    output            dcache_ret_valid, 
    output    [127:0] dcache_ret_data, 
    input             dcache_wr_req, 
    input   [31:0]    dcache_wr_addr,     
    input  [127:0]    dcache_wr_data, 
    output            dcache_wr_rdy,
    output            dcache_wr_valid, 

    input             udcache_rd_req, 
    input      [31:0] udcache_rd_addr,
    input      [ 2:0] udcache_load_size, 
    output            udcache_rd_rdy, 
    output            udcache_ret_valid,
    output     [31:0] udcache_ret_data, 
    input             udcache_wr_req, 
    input      [31:0] udcache_wr_addr,     
    input      [ 3:0] udcache_wr_strb, 
    input      [31:0] udcache_wr_data, 
    output            udcache_wr_rdy,   
    output            udcache_wr_valid //
);

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
// Uncache 
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
    
    reg   [ 31:0] I_RD_Addr;
    reg   [ 31:0] D_RD_Addr;
    reg   [ 31:0] D_WR_Addr;

    reg   [ 31:0] U_RD_Addr;
    reg   [  2:0] U_RD_load_size;
    reg   [ 31:0] AXI_U_RData;

    reg   [ 31:0] U_WR_Addr;
    reg   [ 31:0] AXI_U_WData;
    reg   [  3:0] AXI_U_WStrb;
    
    //Cache状态机 ICache RD和DCache RD可以共用
    parameter   IDLE   = 2'd0,
                REQ    = 2'd1,    
                WAIT   = 2'd2,    
                FINISH = 2'd3;    

    //DCache Write状态机
    parameter   WB_IDLE      = 3'd0,
                WB_REQ       = 3'd1,
                WB_WAIT      = 3'd2,
                WB_WAIT_RESP = 3'd3,
                WB_FINISH    = 3'd4;

    //Uncache 状态机
    parameter   UNCACHE_IDLE        = 3'd0,
                UNCACHE_RD          = 3'd1,
                UNCACHE_WB          = 3'd2,
                UNCACHE_WAIT_RD     = 3'd3,
                UNCACHE_WAIT_WB     = 3'd4,
                UNCACHE_WAIT_WBRESP = 3'd5,
                UNCACHE_FINISH      = 3'd6;

    reg [1:0] istate;
    reg [1:0] istate_next;
    reg [1:0] dstate;
    reg [1:0] dstate_next;

    reg [2:0] dstate_wb;
    reg [2:0] dstate_wb_next;

    reg [2:0] dstate_uncache;
    reg [2:0] dstate_uncache_next;

    reg [1:0] iburst_cnt,iburst_cnt_next;//读计数器
    reg [1:0] dburst_cnt,dburst_cnt_next;//dcache计数器

    reg [1:0] wb_dburst_cnt;
    reg [1:0] wb_dburst_cnt_next;//写计数器

//icache读 使用数据
    reg [31:0] icache_line_recv[3:0];// 读的块大小为两倍的cache line size
//dcache读 使用数据
    reg [31:0] dcache_line_recv[3:0];
//dcache写 使用数据
    reg [31:0] dcache_line_wb[3:0];

    always @( posedge clk ) begin
        if (~resetn) begin
            istate <= IDLE;
        end 
        else begin
            istate <= istate_next;
        end
    end
    
    always @(*) begin
        case (istate)
            IDLE:begin
                if (icache_rd_req) begin
                    istate_next = REQ;
                end else begin
                    istate_next = IDLE;
                end
            end
            REQ:begin
                if (inst_arready) begin
                    istate_next = WAIT;
                end else begin
                    istate_next = REQ;
                end
            end
            WAIT:begin
                if (inst_rlast & inst_rvalid) begin
                    istate_next = FINISH;
                end else begin
                    istate_next = WAIT;
                end
            end
            FINISH:begin
                istate_next = IDLE;
            end
            default:begin
                istate_next = IDLE;
            end
        endcase
    end

// icache读计数器  如果不在req状态计数器将清零
    always @(posedge clk) begin
        if (~resetn | istate == REQ) begin
            iburst_cnt <= 0;
        end else begin
            iburst_cnt <= iburst_cnt_next;
        end
    end

    always @(*) begin
        if (inst_rvalid) begin
            iburst_cnt_next = iburst_cnt + 1;
        end else begin
            iburst_cnt_next = iburst_cnt;
        end
    end
//对于icache读地址的控制
    always @(posedge clk ) begin
        if (~resetn) begin
            I_RD_Addr <= 0;
        end else if (~(istate == IDLE)) begin
            I_RD_Addr <= I_RD_Addr;
        end else begin
            I_RD_Addr <= icache_rd_addr;
        end
    end
//对于icache读出数据的锁存
    integer i;
    always @(posedge clk ) begin
        if (~resetn) begin
            for(i = 0;i < 4; i = i + 1) begin
                icache_line_recv[i] <= 0;
            end
        end else begin
            icache_line_recv[iburst_cnt] <= inst_rdata;
        end
    end

//********************* ibus ******************/
    // master -> slave
    assign inst_arid      = 0;
    assign inst_arlen     = 4'b0011;      // 传输4拍
    assign inst_arsize    = 3'b010;       // 每次传输4字节
    assign inst_arburst   = 2'b01;
    assign inst_arlock    = 0;
    assign inst_arcache   = 4'b1111;
    assign inst_arprot    = 0;

    // master -> slave
    assign inst_awid      = 4'h1;           
    assign inst_awlen     = 0;
    assign inst_awsize    = 0;
    assign inst_awburst   = 0;
    assign inst_awlock    = 0;
    assign inst_awcache   = 4'b1111;
    assign inst_awprot    = 0;
    assign inst_awvalid   = 0;
    assign inst_awaddr    = 0;
    // master -> slave
    assign inst_wid       = 0;
    assign inst_wdata     = 0;
    assign inst_wstrb     = 0;
    assign inst_wlast     = 0;
    assign inst_wvalid    = 0;
    assign inst_bready    = 0;
    //发送命令
    assign inst_arvalid   = (istate == REQ) ? 1'b1 : 1'b0;
    assign inst_araddr    = I_RD_Addr;
    assign inst_rready    = (istate == WAIT) ? 1'b1 : 1'b0;

    //ibus上的赋值
    assign icache_ret_valid = (istate == FINISH) ? 1'b1 : 1'b0;
    assign icache_ret_data  = {icache_line_recv[3],icache_line_recv[2],
                               icache_line_recv[1],icache_line_recv[0]};

//dcache读状态机
     always @( posedge clk ) begin
        if (~resetn) begin
            dstate <= IDLE;
        end else begin
            dstate <= dstate_next;
        end
        
    end
    
    always @(*) begin
        case (dstate)
            IDLE:begin
                if (dcache_rd_req) begin//TODO:增加了条件
                    dstate_next = REQ;
                end else begin
                    dstate_next = IDLE;
                end
            end
            REQ:begin
                if (data_arready) begin
                    dstate_next = WAIT;
                end else begin
                    dstate_next = REQ;
                end
            end
            WAIT:begin
                if (data_rlast & data_rvalid) begin
                    dstate_next = FINISH;
                end else begin
                    dstate_next = WAIT;
                end
            end
            FINISH:begin
                dstate_next =IDLE;
            end
            default:begin
                dstate_next = IDLE;
            end
        endcase
    end

// icache读计数器  如果不在req状态计数器将清零
    always @(posedge clk) begin
        if (~resetn || dstate==REQ ) begin
            dburst_cnt <= 0;
        end else begin
            dburst_cnt <= dburst_cnt_next;
        end
    end

    always @(*) begin
        if (data_rvalid) begin
            dburst_cnt_next = dburst_cnt +1;
        end else begin
            dburst_cnt_next = dburst_cnt;
        end
    end
//对于dcache读地址的控制
    always @(posedge clk ) begin
        if (~resetn) begin
            D_RD_Addr <= 0;
        end else if (~(dstate == IDLE)) begin
            D_RD_Addr <= D_RD_Addr;
        end else begin
            D_RD_Addr <= dcache_rd_addr;
        end
    end
//对于dcache读出数据的锁存
    always @(posedge clk ) begin
        if (~resetn) begin
            for(i = 0;i < 4; i = i + 1) begin
                dcache_line_recv[i] <= 0;
            end
        end else begin
            dcache_line_recv[dburst_cnt] <= data_rdata;
        end
    end
/********************* dbus ******************/
    assign data_arid      = 4'h2;//TODO: 在有写缓冲的情况下 需要考虑id
    assign data_arlen     = 4'b0011;//一次读两个cache line
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

    assign data_wid       = 4'b0001;
    assign data_wstrb     = 4'b1111;
    assign data_bready    = 1'b1;

    //发送命令
    assign data_arvalid   = (dstate == REQ) ? 1'b1 :1'b0;
    assign data_araddr    = D_RD_Addr;
    assign data_rready    = (dstate == WAIT) ? 1'b1 : 1'b0;
    assign data_wdata     = dcache_line_wb[wb_dburst_cnt];
    assign data_wlast     = (wb_dburst_cnt == 2'b11) ? 1'b1 : 1'b0;
    assign data_awvalid   = (dstate_wb == WB_REQ)?1'b1:1'b0;
    assign data_awaddr    = D_WR_Addr;
    assign data_wvalid    = (dstate_wb == WB_WAIT)?1'b1:1'b0;
    //dbus上的赋值
    assign dcache_ret_valid = (dstate == FINISH)? 1'b1:1'b0;
    assign dcache_ret_data  = {dcache_line_recv[3],dcache_line_recv[2],
                               dcache_line_recv[1],dcache_line_recv[0]};
    assign dcache_wr_valid  = (dstate_wb == WB_FINISH)? 1'b1 :1'b0; 

//dcache写状态机 因为write buffer的存在 所以没法和uncache共用一个通道
    always @( posedge clk ) begin
        if (~resetn) begin
            dstate_wb <=  WB_IDLE;
        end else begin
            dstate_wb <= dstate_wb_next;
        end
    end

    always @(*) begin
        case (dstate_wb)
            WB_IDLE:begin
                if (dcache_wr_req && dcache_wr_rdy) begin
                    dstate_wb_next = WB_REQ;
                end else begin
                    dstate_wb_next = WB_IDLE;
                end
            end
            WB_REQ:begin
                if (data_awready) begin
                    dstate_wb_next = WB_WAIT;
                end else begin
                    dstate_wb_next = WB_REQ;
                end
            end
            WB_WAIT:begin
                if (data_wready == 1'b1 && data_wlast == 1'b1 ) begin
                    dstate_wb_next = WB_WAIT_RESP;
                end else begin
                    dstate_wb_next = WB_WAIT;
                end
            end
            WB_WAIT_RESP:begin
                if (data_bvalid) begin
                    dstate_wb_next = WB_FINISH;
                end else begin
                    dstate_wb_next = WB_WAIT_RESP;
                end
            end
            WB_FINISH:begin
                dstate_wb_next = WB_IDLE;
            end
            default:begin
                dstate_wb_next = WB_IDLE;
            end
        endcase
    end

//dcache 写计数器 如果不在req状态 计数器将被清零
    always @( posedge clk ) begin
        if (~resetn | dstate_wb == WB_REQ) begin
            wb_dburst_cnt <= 0;
        end else begin
            wb_dburst_cnt <= wb_dburst_cnt_next;
        end
    end

    always @(*) begin
        if (data_wready) begin
            wb_dburst_cnt_next = wb_dburst_cnt + 1;
        end else begin
            wb_dburst_cnt_next = wb_dburst_cnt;
        end
    end
//对dcache写地址的控制
    always @( posedge clk ) begin
        if (~resetn) begin
            D_WR_Addr <= 0;
        end else if(~(dstate_wb == WB_IDLE)) begin
            D_WR_Addr <= D_WR_Addr;
        end else begin
            D_WR_Addr <= dcache_wr_addr;
        end
    end
//对于dcache 写数据的控制
    always @(posedge clk) begin
        if (~resetn) begin
            for(i = 0;i < 4; i = i + 1) begin
                dcache_line_wb[i] <= 0;
            end
        end 
        else if(dstate_wb == WB_IDLE) begin
            dcache_line_wb[0] <= dcache_wr_data[ 31:0];
            dcache_line_wb[1] <= dcache_wr_data[63:32];
            dcache_line_wb[2] <= dcache_wr_data[95:64];
            dcache_line_wb[3] <= dcache_wr_data[127:96];
        end
    end

/********************* udbus ******************/
    assign udata_arid     = 4'h6;
    assign udata_arlen    = 4'b0000; // 传输事件只有一个
    assign udata_arsize   = U_RD_load_size;
    assign udata_arburst  = 2'b01;
    assign udata_arlock   = 0;
    assign udata_arcache  = 0;
    assign udata_arprot   = 0;


    assign udata_awid     = 4'h6;
    assign udata_awlen    = 4'b0000;        // 传输1次
    assign udata_awsize   = 3'b010;         // 传输32bit 
    assign udata_awburst  = 2'b01;          // increase模式
    assign udata_awlock   = 0;
    assign udata_awcache  = 0;
    assign udata_awprot   = 0;


    assign udata_wid      = 4'b0001;
    assign udata_wstrb    = AXI_U_WStrb;  // 使用所存下来的信号。以支持uncache的SB
    assign udata_bready   = 1'b1;
 
    assign udata_arvalid  = (dstate_uncache==UNCACHE_RD)? 1'b1:1'b0;
    assign udata_araddr   = U_RD_Addr;
    assign udata_rready   = (dstate_uncache==UNCACHE_WAIT_RD)? 1'b1:1'b0;

    assign udata_wlast    = (dstate_uncache==UNCACHE_WAIT_WB)? 1'b1:1'b0;
    assign udata_wdata    = AXI_U_WData;
    assign udata_awvalid  = (dstate_uncache==UNCACHE_WB)?1'b1:1'b0;
    assign udata_awaddr   = U_WR_Addr;
    assign udata_wvalid   = (dstate_uncache==UNCACHE_WAIT_WB)?1'b1:1'b0;

    //udbus的赋值
    assign udcache_wr_valid  = (dstate_uncache==UNCACHE_FINISH)?1'b1:1'b0;
    assign udcache_ret_valid = (dstate_uncache==UNCACHE_FINISH)?1'b1:1'b0;
    assign udcache_ret_data  = AXI_U_RData;

    //空闲信号的输出
    assign icache_rd_rdy  = (istate == IDLE) ? 1'b1 : 1'b0;
    assign dcache_rd_rdy  = (dstate == IDLE) ? 1'b1 : 1'b0;
    assign dcache_wr_rdy  = (dstate_wb == WB_IDLE) ? 1'b1 : 1'b0;
    assign udcache_rd_rdy = (dstate_uncache == UNCACHE_IDLE && udcache_wr_req == 1'b0 ) ? 1'b1 : 1'b0;
    assign udcache_wr_rdy = (dstate_uncache == UNCACHE_IDLE ) ? 1'b1 : 1'b0;

    always @( posedge clk ) begin
        if (~resetn) begin
            dstate_uncache <= UNCACHE_IDLE;
        end else begin
            dstate_uncache <= dstate_uncache_next;
        end
    end

    always @(*) begin
        case (dstate_uncache)
            UNCACHE_IDLE:begin
                if (udcache_wr_req) begin
                    dstate_uncache_next =UNCACHE_WB;
                end else if(udcache_rd_req)begin
                    dstate_uncache_next =UNCACHE_RD;
                end
                else begin
                    dstate_uncache_next =UNCACHE_IDLE;
                end
            end 
            UNCACHE_RD:begin//发起读请求
                if (udata_arready) begin
                    dstate_uncache_next =UNCACHE_WAIT_RD;
                end else begin
                    dstate_uncache_next =UNCACHE_RD;
                end
            end
            UNCACHE_WB:begin//发起写请求
                if (udata_awready) begin
                    dstate_uncache_next =UNCACHE_WAIT_WB;
                end else begin
                    dstate_uncache_next =UNCACHE_WB;
                end                
            end
            UNCACHE_WAIT_RD:begin
                if (udata_rvalid) begin
                    dstate_uncache_next = UNCACHE_FINISH;
                end else begin
                    dstate_uncache_next = UNCACHE_WAIT_RD;
                end
            end
            UNCACHE_WAIT_WB:begin
                if (udata_wready) begin
                    dstate_uncache_next = UNCACHE_WAIT_WBRESP;
                end else begin
                    dstate_uncache_next = UNCACHE_WAIT_WB;
                end                
            end
            UNCACHE_WAIT_WBRESP:begin
                if (udata_bvalid) begin
                    dstate_uncache_next = UNCACHE_FINISH;
                end else begin
                    dstate_uncache_next = UNCACHE_WAIT_WBRESP;
                end                    
            end
            UNCACHE_FINISH:begin
                dstate_uncache_next = UNCACHE_IDLE;
            end
            default:begin
                dstate_uncache_next = UNCACHE_IDLE;
            end
        endcase
    end

    //对于uncache_addr_rd
    always @(posedge clk) begin
        if (~resetn) begin
            U_RD_Addr <= 0;
            U_RD_load_size <= 0;
        end 
        else if(dstate_uncache != UNCACHE_IDLE) begin
            U_RD_Addr <= U_RD_Addr;
            U_RD_load_size <= U_RD_load_size;
        end 
        else begin
            U_RD_Addr <= udcache_rd_addr;
            U_RD_load_size <= udcache_load_size;
        end
    end

    //对于uncache_line_wb
    always @( posedge clk ) begin
        if (~resetn) begin
            AXI_U_WData <= 0;
        end else if(dstate_uncache != UNCACHE_IDLE)begin
            AXI_U_WData <= AXI_U_WData;
        end else begin
            AXI_U_WData <= udcache_wr_data;
        end
    end

    //对于uncache_addr_wb
    always @( posedge clk ) begin
        if (~resetn) begin
            U_WR_Addr <= 0;
        end else if(dstate_uncache != UNCACHE_IDLE)begin
            U_WR_Addr <= U_WR_Addr;
        end else begin
            U_WR_Addr <= udcache_wr_addr;
        end        
    end
    //对于uncache_wstrb
    always @( posedge clk ) begin
        if (~resetn) begin
            AXI_U_WStrb <= 0;
        end else if(dstate_uncache != UNCACHE_IDLE)begin
            AXI_U_WStrb <= AXI_U_WStrb;
        end else begin
            AXI_U_WStrb <= udcache_wr_strb;
        end           
    end
    //对于uncache_line_rd
    always @( posedge clk ) begin
         if (~resetn) begin
            AXI_U_RData <= 0;
        end else if(dstate_uncache != UNCACHE_WAIT_RD)begin
            AXI_U_RData <= AXI_U_RData;
        end else begin
            AXI_U_RData <= udata_rdata;
        end        
    end

`ifndef use_crossbar_ip
    //AXI crossbar impl
    // AXI Arbiter: IValid logic
    wire u_valid;
    wire d_valid;
    wire i_valid;
    assign u_valid = (dstate_uncache != UNCACHE_IDLE) ? 1'b1 : 1'b0;
    assign d_valid = (dstate != IDLE || dstate_wb != WB_IDLE) ? 1'b1 : 1'b0;
    assign i_valid = (istate != IDLE) ? 1'b1 : 1'b0;

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

    //u_bus_req
    wire [31: 0] u_bus_req_axi_araddr  ;
    wire [ 3: 0] u_bus_req_axi_arid    ;
    wire [ 3: 0] u_bus_req_axi_arlen   ;
    wire [ 2: 0] u_bus_req_axi_arsize  ;
    wire [ 1: 0] u_bus_req_axi_arburst ;
    wire [ 1: 0] u_bus_req_axi_arlock  ;
    wire [ 3: 0] u_bus_req_axi_arcache ;
    wire [ 2: 0] u_bus_req_axi_arprot  ;
    wire         u_bus_req_axi_arvalid ;
    wire         u_bus_req_axi_rready  ;
    wire [ 3: 0] u_bus_req_axi_awid    ;
    wire [31: 0] u_bus_req_axi_awaddr  ;
    wire [ 3: 0] u_bus_req_axi_awlen   ;
    wire [ 2: 0] u_bus_req_axi_awsize  ;
    wire [ 1: 0] u_bus_req_axi_awburst ;
    wire [ 1: 0] u_bus_req_axi_awlock  ;
    wire [ 3: 0] u_bus_req_axi_awcache ;
    wire [ 2: 0] u_bus_req_axi_awprot  ;
    wire         u_bus_req_axi_awvalid ;
    wire [ 3: 0] u_bus_req_axi_wid     ;
    wire [31: 0] u_bus_req_axi_wdata   ;
    wire [ 3: 0] u_bus_req_axi_wstrb   ;
    wire         u_bus_req_axi_wlast   ;
    wire         u_bus_req_axi_wvalid  ;
    wire         u_bus_req_axi_bready  ;
    assign u_bus_req_axi_araddr   = udata_araddr;
    assign u_bus_req_axi_arid     = udata_arid;
    assign u_bus_req_axi_arlen    = udata_arlen;
    assign u_bus_req_axi_arsize   = udata_arsize;
    assign u_bus_req_axi_arburst  = udata_arburst;
    assign u_bus_req_axi_arlock   = udata_arlock;
    assign u_bus_req_axi_arcache  = udata_arcache;
    assign u_bus_req_axi_arprot   = udata_arprot;
    assign u_bus_req_axi_arvalid  = udata_arvalid;
    assign u_bus_req_axi_rready   = udata_rready;
    assign u_bus_req_axi_awid     = udata_awid;
    assign u_bus_req_axi_awaddr   = udata_awaddr;
    assign u_bus_req_axi_awlen    = udata_awlen;
    assign u_bus_req_axi_awsize   = udata_awsize;
    assign u_bus_req_axi_awburst  = udata_awburst;
    assign u_bus_req_axi_awlock   = udata_awlock;
    assign u_bus_req_axi_awcache  = udata_awcache;
    assign u_bus_req_axi_awprot   = udata_awprot;
    assign u_bus_req_axi_awvalid  = udata_awvalid;
    assign u_bus_req_axi_wid      = udata_wid;
    assign u_bus_req_axi_wdata    = udata_wdata;
    assign u_bus_req_axi_wstrb    = udata_wstrb;
    assign u_bus_req_axi_wlast    = udata_wlast;
    assign u_bus_req_axi_wvalid   = udata_wvalid;
    assign u_bus_req_axi_bready   = udata_bready;

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

    //u_bus_resp
    wire         u_bus_resp_axi_arready; 
    wire [ 3: 0] u_bus_resp_axi_rid    ;
    wire [31: 0] u_bus_resp_axi_rdata  ; 
    wire [ 1: 0] u_bus_resp_axi_rresp  ; 
    wire         u_bus_resp_axi_rlast  ; 
    wire         u_bus_resp_axi_rvalid ; 
    wire         u_bus_resp_axi_awready; 
    wire         u_bus_resp_axi_wready ; 
    wire [ 3: 0] u_bus_resp_axi_bid    ;
    wire [ 1: 0] u_bus_resp_axi_bresp  ; 
    wire         u_bus_resp_axi_bvalid ;

    assign   udata_arready =  u_bus_resp_axi_arready;     
    assign   udata_rid     =  u_bus_resp_axi_rid    ;
    assign   udata_rdata   =  u_bus_resp_axi_rdata  ; 
    assign   udata_rresp   =  u_bus_resp_axi_rresp  ; 
    assign   udata_rlast   =  u_bus_resp_axi_rlast  ; 
    assign   udata_rvalid  =  u_bus_resp_axi_rvalid ;   
    assign   udata_awready =  u_bus_resp_axi_awready;     
    assign   udata_wready  =  u_bus_resp_axi_wready ;   
    assign   udata_bid     =  u_bus_resp_axi_bid    ;
    assign   udata_bresp   =  u_bus_resp_axi_bresp  ; 
    assign   udata_bvalid  =  u_bus_resp_axi_bvalid ;

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
        .u_valid(u_valid),
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

        .u_bus_req_axi_araddr  (u_bus_req_axi_araddr  ),
        .u_bus_req_axi_arid    (u_bus_req_axi_arid    ),
        .u_bus_req_axi_arlen   (u_bus_req_axi_arlen   ),
        .u_bus_req_axi_arsize  (u_bus_req_axi_arsize  ),
        .u_bus_req_axi_arburst (u_bus_req_axi_arburst ),
        .u_bus_req_axi_arlock  (u_bus_req_axi_arlock  ),
        .u_bus_req_axi_arcache (u_bus_req_axi_arcache ),
        .u_bus_req_axi_arprot  (u_bus_req_axi_arprot  ),
        .u_bus_req_axi_arvalid (u_bus_req_axi_arvalid ),
        .u_bus_req_axi_rready  (u_bus_req_axi_rready  ),
        .u_bus_req_axi_awid    (u_bus_req_axi_awid    ),
        .u_bus_req_axi_awaddr  (u_bus_req_axi_awaddr  ),
        .u_bus_req_axi_awlen   (u_bus_req_axi_awlen   ),
        .u_bus_req_axi_awsize  (u_bus_req_axi_awsize  ),
        .u_bus_req_axi_awburst (u_bus_req_axi_awburst ),
        .u_bus_req_axi_awlock  (u_bus_req_axi_awlock  ),
        .u_bus_req_axi_awcache (u_bus_req_axi_awcache ),
        .u_bus_req_axi_awprot  (u_bus_req_axi_awprot  ),
        .u_bus_req_axi_awvalid (u_bus_req_axi_awvalid ),
        .u_bus_req_axi_wid     (u_bus_req_axi_wid     ),
        .u_bus_req_axi_wdata   (u_bus_req_axi_wdata   ),
        .u_bus_req_axi_wstrb   (u_bus_req_axi_wstrb   ),
        .u_bus_req_axi_wlast   (u_bus_req_axi_wlast   ),
        .u_bus_req_axi_wvalid  (u_bus_req_axi_wvalid  ),
        .u_bus_req_axi_bready  (u_bus_req_axi_bready  ),

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

        .u_bus_resp_axi_arready  (u_bus_resp_axi_arready),
        .u_bus_resp_axi_rid      (u_bus_resp_axi_rid    ),
        .u_bus_resp_axi_rdata    (u_bus_resp_axi_rdata  ),
        .u_bus_resp_axi_rresp    (u_bus_resp_axi_rresp  ),
        .u_bus_resp_axi_rlast    (u_bus_resp_axi_rlast  ),
        .u_bus_resp_axi_rvalid   (u_bus_resp_axi_rvalid ),
        .u_bus_resp_axi_awready  (u_bus_resp_axi_awready),
        .u_bus_resp_axi_wready   (u_bus_resp_axi_wready ),
        .u_bus_resp_axi_bid      (u_bus_resp_axi_bid    ),
        .u_bus_resp_axi_bresp    (u_bus_resp_axi_bresp  ),
        .u_bus_resp_axi_bvalid   (u_bus_resp_axi_bvalid ),        

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
`ifdef use_crossbar_ip
    axi_crossbar U_axi_crossbar (
        .aclk             ( clk     ),
        .aresetn          ( resetn        ),
        
        .s_axi_arid       ( {inst_arid   ,data_arid    ,udata_arid   } ),
        .s_axi_araddr     ( {inst_araddr ,data_araddr  ,udata_araddr } ),
        .s_axi_arlen      ( {inst_arlen  ,data_arlen   ,udata_arlen  } ),
        .s_axi_arsize     ( {inst_arsize ,data_arsize  ,udata_arsize } ),
        .s_axi_arburst    ( {inst_arburst,data_arburst ,udata_arburst} ),
        .s_axi_arlock     ( {inst_arlock ,data_arlock  ,udata_arlock } ),
        .s_axi_arcache    ( {inst_arcache,data_arcache ,udata_arcache} ),
        .s_axi_arprot     ( {inst_arprot ,data_arprot  ,udata_arprot } ),
        .s_axi_arqos      ( 0                                         ),
        .s_axi_arvalid    ( {inst_arvalid,data_arvalid ,udata_arvalid} ),
        .s_axi_arready    ( {inst_arready,data_arready ,udata_arready} ),
        .s_axi_rid        ( {inst_rid    ,data_rid     ,udata_rid    } ),
        .s_axi_rdata      ( {inst_rdata  ,data_rdata   ,udata_rdata  } ),
        .s_axi_rresp      ( {inst_rresp  ,data_rresp   ,udata_rresp  } ),
        .s_axi_rlast      ( {inst_rlast  ,data_rlast   ,udata_rlast  } ),
        .s_axi_rvalid     ( {inst_rvalid ,data_rvalid  ,udata_rvalid } ),
        .s_axi_rready     ( {inst_rready ,data_rready  ,udata_rready } ),
        .s_axi_awid       ( {inst_awid   ,data_awid    ,udata_awid   } ),
        .s_axi_awaddr     ( {inst_awaddr ,data_awaddr  ,udata_awaddr } ),
        .s_axi_awlen      ( {inst_awlen  ,data_awlen   ,udata_awlen  } ),
        .s_axi_awsize     ( {inst_awsize ,data_awsize  ,udata_awsize } ),
        .s_axi_awburst    ( {inst_awburst,data_awburst ,udata_awburst} ),
        .s_axi_awlock     ( {inst_awlock ,data_awlock  ,udata_awlock } ),
        .s_axi_awcache    ( {inst_awcache,data_awcache ,udata_awcache} ),
        .s_axi_awprot     ( {inst_awprot ,data_awprot  ,udata_awprot } ),
        .s_axi_awqos      ( 0                                         ),
        .s_axi_awvalid    ( {inst_awvalid,data_awvalid ,udata_awvalid} ),
        .s_axi_awready    ( {inst_awready,data_awready ,udata_awready} ),
        .s_axi_wid        ( {inst_wid    ,data_wid     ,udata_wid    } ),
        .s_axi_wdata      ( {inst_wdata  ,data_wdata   ,udata_wdata  } ),
        .s_axi_wstrb      ( {inst_wstrb  ,data_wstrb   ,udata_wstrb  } ),
        .s_axi_wlast      ( {inst_wlast  ,data_wlast   ,udata_wlast  } ),
        .s_axi_wvalid     ( {inst_wvalid ,data_wvalid  ,udata_wvalid } ),
        .s_axi_wready     ( {inst_wready ,data_wready  ,udata_wready } ),
        .s_axi_bid        ( {inst_bid    ,data_bid     ,udata_bid    } ),
        .s_axi_bresp      ( {inst_bresp  ,data_bresp   ,udata_bresp  } ),
        .s_axi_bvalid     ( {inst_bvalid ,data_bvalid  ,udata_bvalid } ),
        .s_axi_bready     ( {inst_bready ,data_bready  ,udata_bready } ),
        
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
`endif 


endmodule
