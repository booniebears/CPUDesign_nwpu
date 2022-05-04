module axi_crossbar(aclk, aresetn, s_axi_awid, s_axi_awaddr, 
  s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awlock, s_axi_awcache, s_axi_awprot, 
  s_axi_awqos, s_axi_awvalid, s_axi_awready, s_axi_wid, s_axi_wdata, s_axi_wstrb, s_axi_wlast, 
  s_axi_wvalid, s_axi_wready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_arid, 
  s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arlock, s_axi_arcache, 
  s_axi_arprot, s_axi_arqos, s_axi_arvalid, s_axi_arready, s_axi_rid, s_axi_rdata, s_axi_rresp, 
  s_axi_rlast, s_axi_rvalid, s_axi_rready, m_axi_awid, m_axi_awaddr, m_axi_awlen, m_axi_awsize, 
  m_axi_awburst, m_axi_awlock, m_axi_awcache, m_axi_awprot, m_axi_awqos, m_axi_awvalid, 
  m_axi_awready, m_axi_wid, m_axi_wdata, m_axi_wstrb, m_axi_wlast, m_axi_wvalid, m_axi_wready, 
  m_axi_bid, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_arid, m_axi_araddr, m_axi_arlen, 
  m_axi_arsize, m_axi_arburst, m_axi_arlock, m_axi_arcache, m_axi_arprot, m_axi_arqos, 
  m_axi_arvalid, m_axi_arready, m_axi_rid, m_axi_rdata, m_axi_rresp, m_axi_rlast, m_axi_rvalid, 
  m_axi_rready);

  input aclk;
  input aresetn;
  input [11:0]s_axi_awid;
  input [95:0]s_axi_awaddr;
  input [11:0]s_axi_awlen;
  input [8:0]s_axi_awsize;
  input [5:0]s_axi_awburst;
  input [5:0]s_axi_awlock;
  input [11:0]s_axi_awcache;
  input [8:0]s_axi_awprot;
  input [11:0]s_axi_awqos;
  input [2:0]s_axi_awvalid;
  output [2:0]s_axi_awready;
  input [11:0]s_axi_wid;
  input [95:0]s_axi_wdata;
  input [11:0]s_axi_wstrb;
  input [2:0]s_axi_wlast;
  input [2:0]s_axi_wvalid;
  output [2:0]s_axi_wready;
  output [11:0]s_axi_bid;
  output [5:0]s_axi_bresp;
  output [2:0]s_axi_bvalid;
  input [2:0]s_axi_bready;
  input [11:0]s_axi_arid;
  input [95:0]s_axi_araddr;
  input [11:0]s_axi_arlen;
  input [8:0]s_axi_arsize;
  input [5:0]s_axi_arburst;
  input [5:0]s_axi_arlock;
  input [11:0]s_axi_arcache;
  input [8:0]s_axi_arprot;
  input [11:0]s_axi_arqos;
  input [2:0]s_axi_arvalid;
  output [2:0]s_axi_arready;
  output [11:0]s_axi_rid;
  output [95:0]s_axi_rdata;
  output [5:0]s_axi_rresp;
  output [2:0]s_axi_rlast;
  output [2:0]s_axi_rvalid;
  input [2:0]s_axi_rready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awvalid;
  input [0:0]m_axi_awready;
  output [3:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [0:0]m_axi_wlast;
  output [0:0]m_axi_wvalid;
  input [0:0]m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_bvalid;
  output [0:0]m_axi_bready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_arvalid;
  input [0:0]m_axi_arready;
  input [3:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input [0:0]m_axi_rlast;
  input [0:0]m_axi_rvalid;
  output [0:0]m_axi_rready;

wire araddr_conf_hit=m_axi_araddr[31:16]==16'h1faf;
wire awaddr_conf_hit=m_axi_araddr[31:16]==16'h1faf;
reg [31:0] addr_buf;
wire waddr_conf_hit=addr_buf[31:16]==16'h1faf;


always @(posedge aclk) begin
     if(!aresetn)
     begin
          addr_buf=0;
     end
     else if(m_axi_awvalid)
     begin
          addr_buf<=m_axi_awaddr;
     end
end

assign m_axi_awready=&s_axi_awready;
assign m_axi_wready=&s_axi_wready;
assign m_axi_bid=s_axi_bvalid[2] ?
                        s_axi_bid[11:8] :
                 s_axi_bvalid[1] ?
                        s_axi_bid[7:4] :
                 s_axi_bvalid[0] ?
                        s_axi_bid[3:0] :
                        0;
assign m_axi_bresp=s_axi_bvalid[2] ?
                        s_axi_bresp[5:4] :
                 s_axi_bvalid[1] ?
                        s_axi_bresp[3:2] :
                 s_axi_bvalid[0] ?
                        s_axi_bresp[1:0] :
                        0;
assign m_axi_bvalid= |s_axi_bvalid; //TODO

assign m_axi_arready= &s_axi_arready;
assign m_axi_rid = s_axi_rvalid[2] ?
                        s_axi_rid[11:8] :
                   s_axi_rvalid[1] ?
                        s_axi_rid[7:4] :
                   s_axi_rvalid[0] ?
                        s_axi_rid[3:0] :
                        0;
assign m_axi_rdata = s_axi_rvalid[2] ?
                        s_axi_rdata[95:64] :
                    s_axi_rvalid[1] ?
                        s_axi_rdata[63:32] :
                   s_axi_rvalid[0] ?
                        s_axi_rdata[31:0] :
                        0;
assign m_axi_rresp =s_axi_rvalid[2] ?
                        s_axi_rresp[5:4] : 
                    s_axi_rvalid[1] ?
                        s_axi_rresp[3:2] :
                   s_axi_rvalid[0] ?
                        s_axi_rresp[1:0] :
                        0;
assign m_axi_rlast =s_axi_rvalid[2] ?
                        s_axi_rlast[2] : 
                    s_axi_rvalid[1] ?
                        s_axi_rlast[1] :
                   s_axi_rvalid[0] ?
                        s_axi_rlast[0] :
                        0;
assign m_axi_rvalid = | s_axi_rvalid;

assign s_axi_awid={m_axi_awid,m_axi_awid,m_axi_awid};
assign s_axi_awaddr={m_axi_awaddr,m_axi_awaddr,m_axi_awaddr};
assign s_axi_awlen={m_axi_awlen,m_axi_awlen,m_axi_awlen};
assign s_axi_awsize={m_axi_awsize,m_axi_awsize,m_axi_awsize};
assign s_axi_awburst={m_axi_awburst,m_axi_awburst,m_axi_awburst};
assign s_axi_awlock={m_axi_awlock,m_axi_awlock,m_axi_awlock};
assign s_axi_awcache={m_axi_awcache,m_axi_awcache,m_axi_awcache};
assign s_axi_awprot={m_axi_awprot,m_axi_awprot,m_axi_awprot};
assign s_axi_awvalid={m_axi_awvalid&(~awaddr_conf_hit),m_axi_awvalid&(awaddr_conf_hit),m_axi_awvalid&(awaddr_conf_hit)}; //TODO
assign s_axi_wdata={m_axi_wdata,m_axi_wdata,m_axi_wdata};
assign s_axi_wstrb={m_axi_wstrb,m_axi_wstrb,m_axi_wstrb};
assign s_axi_wlast={m_axi_wlast,m_axi_wlast,m_axi_wlast};
assign s_axi_wvalid={m_axi_wvalid&(~waddr_conf_hit),m_axi_wvalid&(waddr_conf_hit),m_axi_wvalid&(waddr_conf_hit)}; //TODO
assign s_axi_bready={m_axi_bready,m_axi_bready,m_axi_bready};
assign s_axi_arid={m_axi_arid,m_axi_arid,m_axi_arid};
assign s_axi_araddr={m_axi_araddr,m_axi_araddr,m_axi_araddr};
assign s_axi_arlen={m_axi_arlen,m_axi_arlen,m_axi_arlen};
assign s_axi_arsize={m_axi_arsize,m_axi_arsize,m_axi_arsize};
assign s_axi_arburst={m_axi_arburst,m_axi_arburst,m_axi_arburst};
assign s_axi_arlock={m_axi_arlock,m_axi_arlock,m_axi_arlock};
assign s_axi_arcache={m_axi_arcache,m_axi_arcache,m_axi_arcache};
assign s_axi_arprot={m_axi_arprot,m_axi_arprot,m_axi_arprot};
assign s_axi_arvalid={m_axi_arvalid&(~araddr_conf_hit),m_axi_arvalid&(araddr_conf_hit),m_axi_arvalid&(araddr_conf_hit)};
assign s_axi_rready={m_axi_rready,m_axi_rready,m_axi_rready};
assign s_axi_arqos={m_axi_arqos,m_axi_arqos,m_axi_arqos};
assign s_axi_awqos={m_axi_awqos,m_axi_awqos,m_axi_awqos};

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
  reg [31:0] addr_buf;
  wire waddr_conf_hit=addr_buf[31:16] == 16'h1faf;

  
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

