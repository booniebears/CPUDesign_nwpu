module axi_crossbar(
   input wire aclk,
   input wire aresetn,
   input wire [3 : 0] s_axi_awid,
   input wire [31 : 0] s_axi_awaddr,
   input wire [3 : 0] s_axi_awlen,
   input wire [2 : 0] s_axi_awsize,
   input wire [1 : 0] s_axi_awburst,
   input wire [1 : 0] s_axi_awlock,
   input wire [3 : 0] s_axi_awcache,
   input wire [2 : 0] s_axi_awprot,
   input wire [0 : 0] s_axi_awvalid,
   output wire [0 : 0] s_axi_awready,
   input wire [31 : 0] s_axi_wdata,
   input wire [3 : 0] s_axi_wstrb,
   input wire [0 : 0] s_axi_wlast,
   input wire [0 : 0] s_axi_wvalid,
   output wire [0 : 0] s_axi_wready,
   output wire [3 : 0] s_axi_bid,
   output wire [1 : 0] s_axi_bresp,
   output wire [0 : 0] s_axi_bvalid,
   input wire [0 : 0] s_axi_bready,
   input wire [3 : 0] s_axi_arid,
   input wire [31 : 0] s_axi_araddr,
   input wire [3 : 0] s_axi_arlen,
   input wire [2 : 0] s_axi_arsize,
   input wire [1 : 0] s_axi_arburst,
   input wire [1 : 0] s_axi_arlock,
   input wire [3 : 0] s_axi_arcache,
   input wire [2 : 0] s_axi_arprot,
   input wire [0 : 0] s_axi_arvalid,
   output wire [0 : 0] s_axi_arready,
   output wire [3 : 0] s_axi_rid,
   output wire [31 : 0] s_axi_rdata,
   output wire [1 : 0] s_axi_rresp,
   output wire [0 : 0] s_axi_rlast,
   output wire [0 : 0] s_axi_rvalid,
   input wire [0 : 0] s_axi_rready,
   output wire [7 : 0] m_axi_awid,
   output wire [63 : 0] m_axi_awaddr,
   output wire [7 : 0] m_axi_awlen,
   output wire [5 : 0] m_axi_awsize,
   output wire [3 : 0] m_axi_awburst,
   output wire [3 : 0] m_axi_awlock,
   output wire [7 : 0] m_axi_awcache,
   output wire [5 : 0] m_axi_awprot,
   output wire [1 : 0] m_axi_awvalid,
   input wire [1 : 0] m_axi_awready,
   output wire [63 : 0] m_axi_wdata,
   output wire [7 : 0] m_axi_wstrb,
   output wire [1 : 0] m_axi_wlast,
   output wire [1 : 0] m_axi_wvalid,
   input wire [1 : 0] m_axi_wready,
   input wire [7 : 0] m_axi_bid,
   input wire [3 : 0] m_axi_bresp,
   input wire [1 : 0] m_axi_bvalid,
   output wire [1 : 0] m_axi_bready,
   output wire [7 : 0] m_axi_arid,
   output wire [63 : 0] m_axi_araddr,
   output wire [7 : 0] m_axi_arlen,
   output wire [5 : 0] m_axi_arsize,
   output wire [3 : 0] m_axi_arburst,
   output wire [3 : 0] m_axi_arlock,
   output wire [7 : 0] m_axi_arcache,
   output wire [5 : 0] m_axi_arprot,
   output wire [1 : 0] m_axi_arvalid,
   input wire [1 : 0] m_axi_arready,
   input wire [7 : 0] m_axi_rid,
   input wire [63 : 0] m_axi_rdata,
   input wire [3 : 0] m_axi_rresp,
   input wire [1 : 0] m_axi_rlast,
   input wire [1 : 0] m_axi_rvalid,
  output wire [1 : 0] m_axi_rready
);

wire araddr_conf_hit=s_axi_araddr[31:16]==16'h1faf;
wire awaddr_conf_hit=s_axi_araddr[31:16]==16'h1faf;
wire waddr_conf_hit=addr_buf[31:16]==16'h1af;
reg [31:0] addr_buf;

always @(posedge aclk) begin
     if(!aresetn)
     begin
          addr_buf=0;
     end
     else if(s_axi_awvalid)
     begin
          addr_buf<=s_axi_awaddr;
     end
end

assign s_axi_awready=&m_axi_awready;
assign s_axi_wready=&m_axi_wready;
assign s_axi_bid=m_axi_bvalid[1] ?
                        m_axi_bid[7:4] :
                 m_axi_bvalid[0] ?
                        m_axi_bid[3:0] :
                        0;
assign s_axi_bresp=m_axi_bvalid[1] ?
                        m_axi_bresp[3:2] :
                 m_axi_bvalid[0] ?
                        m_axi_bresp[1:0] :
                        0;
assign s_axi_bvalid= |m_axi_bvalid[1];

assign s_axi_arready= &m_axi_arready;
assign s_axi_rid = m_axi_rvalid[1] ?
                        m_axi_rid[7:4] :
                   m_axi_rvalid[0] ?
                        m_axi_rid[3:0] :
                        0;
assign s_axi_rdata = m_axi_rvalid[1] ?
                        m_axi_rdata[63:32] :
                   m_axi_rvalid[0] ?
                        m_axi_rdata[31:0] :
                        0;
assign s_axi_rresp = m_axi_rvalid[1] ?
                        m_axi_rresp[3:2] :
                   m_axi_rvalid[0] ?
                        m_axi_rresp[1:0] :
                        0;
assign s_axi_rlast = m_axi_rvalid[1] ?
                        m_axi_rlast[1] :
                   m_axi_rvalid[0] ?
                        m_axi_rlast[0] :
                        0;
assign s_axi_rvalid = | m_axi_rvalid;

assign m_axi_awid={s_axi_awid,s_axi_awid};
assign m_axi_awaddr={s_axi_awaddr,s_axi_awaddr};
assign m_axi_awlen={s_axi_awlen,s_axi_awlen};
assign m_axi_awsize={s_axi_awsize,s_axi_awsize};
assign m_axi_awburst={s_axi_awburst,s_axi_awburst};
assign m_axi_awlock={s_axi_awlock,s_axi_awlock};
assign m_axi_awcache={s_axi_awcache,s_axi_awcache};
assign m_axi_awprot={s_axi_awprot,s_axi_awprot};
assign m_axi_awvalid={s_axi_awvalid&(~awaddr_conf_hit),s_axi_awvalid&(awaddr_conf_hit)};
assign m_axi_wdata={s_axi_wdata,s_axi_wdata};
assign m_axi_wstrb={s_axi_wstrb,s_axi_wstrb};
assign m_axi_wlast={s_axi_wlast,s_axi_wlast};
assign m_axi_wvalid={s_axi_wvalid&(~waddr_conf_hit),s_axi_wvalid&(waddr_conf_hit)};
assign m_axi_bready={s_axi_bready,s_axi_bready};
assign m_axi_arid={s_axi_arid,s_axi_arid};
assign m_axi_araddr={s_axi_araddr,s_axi_araddr};
assign m_axi_arlen={s_axi_arlen,s_axi_arlen};
assign m_axi_arsize={s_axi_arsize,s_axi_arsize};
assign m_axi_arburst={s_axi_arburst,s_axi_arburst};
assign m_axi_arlock={s_axi_arlock,s_axi_arlock};
assign m_axi_arcache={s_axi_arcache,s_axi_arcache};
assign m_axi_arprot={s_axi_arprot,s_axi_arprot};
assign m_axi_arvalid={s_axi_arvalid&(~araddr_conf_hit),s_axi_arvalid&(araddr_conf_hit)};
assign m_axi_rready={s_axi_rready,s_axi_rready};
endmodule


// 0 - > ram   1 - > confreg
module axi_xbar
(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [31:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  input         auto_in_aw_bits_lock,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [31:0] auto_in_w_bits_data,
  input  [3:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [31:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_ar_bits_lock,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [31:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output        auto_in_r_bits_last,
  input         auto_out_1_aw_ready,
  output        auto_out_1_aw_valid,
  output [3:0]  auto_out_1_aw_bits_id,
  output [31:0] auto_out_1_aw_bits_addr,
  output [7:0]  auto_out_1_aw_bits_len,
  output [2:0]  auto_out_1_aw_bits_size,
  output [1:0]  auto_out_1_aw_bits_burst,
  output        auto_out_1_aw_bits_lock,
  output [3:0]  auto_out_1_aw_bits_cache,
  output [2:0]  auto_out_1_aw_bits_prot,
  input         auto_out_1_w_ready,
  output        auto_out_1_w_valid,
  output [31:0] auto_out_1_w_bits_data,
  output [3:0]  auto_out_1_w_bits_strb,
  output        auto_out_1_w_bits_last,
  output        auto_out_1_b_ready,
  input         auto_out_1_b_valid,
  input  [3:0]  auto_out_1_b_bits_id,
  input  [1:0]  auto_out_1_b_bits_resp,
  input         auto_out_1_ar_ready,
  output        auto_out_1_ar_valid,
  output [3:0]  auto_out_1_ar_bits_id,
  output [31:0] auto_out_1_ar_bits_addr,
  output [7:0]  auto_out_1_ar_bits_len,
  output [2:0]  auto_out_1_ar_bits_size,
  output [1:0]  auto_out_1_ar_bits_burst,
  output        auto_out_1_ar_bits_lock,
  output [3:0]  auto_out_1_ar_bits_cache,
  output [2:0]  auto_out_1_ar_bits_prot,
  output        auto_out_1_r_ready,
  input         auto_out_1_r_valid,
  input  [3:0]  auto_out_1_r_bits_id,
  input  [31:0] auto_out_1_r_bits_data,
  input  [1:0]  auto_out_1_r_bits_resp,
  input         auto_out_1_r_bits_last,
  input         auto_out_0_aw_ready,
  output        auto_out_0_aw_valid,
  output [3:0]  auto_out_0_aw_bits_id,
  output [31:0] auto_out_0_aw_bits_addr,
  input         auto_out_0_w_ready,
  output        auto_out_0_w_valid,
  output [31:0] auto_out_0_w_bits_data,
  output [3:0]  auto_out_0_w_bits_strb,
  output        auto_out_0_w_bits_last,
  output        auto_out_0_b_ready,
  input         auto_out_0_b_valid,
  input  [3:0]  auto_out_0_b_bits_id,
  input         auto_out_0_ar_ready,
  output        auto_out_0_ar_valid,
  output [3:0]  auto_out_0_ar_bits_id,
  output [31:0] auto_out_0_ar_bits_addr,
  output [7:0]  auto_out_0_ar_bits_len,
  output [2:0]  auto_out_0_ar_bits_size,
  output [1:0]  auto_out_0_ar_bits_burst,
  output        auto_out_0_r_ready,
  input         auto_out_0_r_valid,
  input  [3:0]  auto_out_0_r_bits_id,
  input  [31:0] auto_out_0_r_bits_data,
  input         auto_out_0_r_bits_last
  );
  wire awaddr_conf_hit=auto_in_aw_bits_addr[31:16] == 16'h1faf;
  wire araddr_conf_hit=auto_in_ar_bits_addr[31:16] == 16'h1faf;
  wire waddr_conf_hit=addr_buf[31:16] == 16'h1faf;

  reg [31:0] addr_buf;
  always @(posedge clock)
  begin
      if(reset)
      begin
      addr_buf<=0;
      end
     else if(auto_in_aw_valid)
     begin
          addr_buf<=auto_in_aw_bits_addr;
     end
  end

  assign auto_in_aw_ready=auto_out_0_aw_ready&auto_out_1_aw_ready;
  assign auto_in_w_ready=(auto_out_0_w_ready&~waddr_conf_hit)|(auto_out_1_w_ready&waddr_conf_hit);
  assign auto_in_b_valid=auto_out_0_b_valid|auto_out_1_b_valid;
  assign auto_in_b_bits_id=auto_out_0_b_valid ?
                                 auto_out_0_b_bits_id:
                             auto_out_1_b_valid ?
                                 auto_out_1_b_bits_id:0;
  assign auto_in_b_bits_resp=auto_out_1_b_bits_resp;
  assign auto_in_ar_ready=auto_out_0_ar_ready&auto_out_1_ar_ready;
  assign auto_in_r_valid=auto_out_0_r_valid|auto_out_1_r_valid;
  assign auto_in_r_bits_id=auto_out_0_r_valid ?
                                 auto_out_0_r_bits_id:
                             auto_out_1_r_valid ?
                                 auto_out_1_r_bits_id:0;
  assign auto_in_r_bits_data=auto_out_0_r_valid ?
                                 auto_out_0_r_bits_data:
                             auto_out_1_r_valid ?
                                 auto_out_1_r_bits_data:0;
  assign auto_in_r_bits_resp=auto_out_1_r_bits_resp;
  assign auto_in_r_bits_last=auto_out_0_r_valid ?
                                 auto_out_0_r_bits_last:
                             auto_out_1_r_valid ?
                                 auto_out_1_r_bits_last:0;
  assign auto_out_1_aw_valid=auto_in_aw_valid&awaddr_conf_hit;
  assign auto_out_1_aw_bits_id=auto_in_aw_bits_id;
  assign auto_out_1_aw_bits_addr=auto_in_aw_bits_addr;
  assign auto_out_1_aw_bits_len=auto_in_aw_bits_len;
  assign auto_out_1_aw_bits_size=auto_in_aw_bits_size;
  assign auto_out_1_aw_bits_burst=auto_in_aw_bits_burst;
  assign auto_out_1_aw_bits_lock=auto_in_aw_bits_lock;
  assign auto_out_1_aw_bits_cache=auto_in_aw_bits_cache;
  assign auto_out_1_aw_bits_prot=auto_in_aw_bits_prot;
  assign auto_out_1_w_valid=auto_in_w_valid&waddr_conf_hit;
  assign auto_out_1_w_bits_data=auto_in_w_bits_data;
  assign auto_out_1_w_bits_strb=auto_in_w_bits_strb;
  assign auto_out_1_w_bits_last=auto_in_w_bits_last;
  assign auto_out_1_b_ready=auto_in_b_ready;
  assign auto_out_1_ar_valid=auto_in_ar_valid&araddr_conf_hit;
  assign auto_out_1_ar_bits_id=auto_in_ar_bits_id;
  assign auto_out_1_ar_bits_addr=auto_in_ar_bits_addr;
  assign auto_out_1_ar_bits_len=auto_in_ar_bits_len;
  assign auto_out_1_ar_bits_size=auto_in_ar_bits_size;
  assign auto_out_1_ar_bits_burst=auto_in_ar_bits_burst;
  assign auto_out_1_ar_bits_lock=auto_in_ar_bits_lock;
  assign auto_out_1_ar_bits_cache=auto_in_ar_bits_cache;
  assign auto_out_1_ar_bits_prot=auto_in_ar_bits_prot;
  assign auto_out_1_r_ready=auto_in_r_ready;

  assign auto_out_0_aw_valid=auto_in_aw_valid&(~awaddr_conf_hit);
  assign auto_out_0_aw_bits_id=auto_in_aw_bits_id;
  assign auto_out_0_aw_bits_addr=auto_in_aw_bits_addr;
  assign auto_out_0_w_valid=auto_in_w_valid&(~waddr_conf_hit);
  assign auto_out_0_w_bits_data=auto_in_w_bits_data;
  assign auto_out_0_w_bits_strb=auto_in_w_bits_strb;
  assign auto_out_0_w_bits_last=auto_in_w_bits_last;
  assign auto_out_0_b_ready=auto_in_b_ready;
  assign auto_out_0_ar_valid=auto_in_ar_valid&(~araddr_conf_hit);
  assign auto_out_0_ar_bits_id=auto_in_ar_bits_id;
  assign auto_out_0_ar_bits_addr=auto_in_ar_bits_addr;
  assign auto_out_0_ar_bits_len=auto_in_ar_bits_len;
  assign auto_out_0_ar_bits_size=auto_in_ar_bits_size;
  assign auto_out_0_ar_bits_burst=auto_in_ar_bits_burst;
  assign auto_out_0_r_ready=auto_in_r_ready;
endmodule

