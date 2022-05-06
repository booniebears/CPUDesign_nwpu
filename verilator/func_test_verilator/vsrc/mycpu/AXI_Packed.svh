`ifndef AXI_Packed_SVH
`define AXI_Packed_SVH

typedef struct packed {
    logic [31: 0] axi_araddr; 
    logic [ 3: 0] axi_arid;
    logic [ 3: 0] axi_arlen;
    logic [ 2: 0] axi_arsize;
    logic [ 1: 0] axi_arburst;
    logic [ 1: 0] axi_arlock;
    logic [ 3: 0] axi_arcache;
    logic [ 2: 0] axi_arprot;
    logic         axi_arvalid;
    logic         axi_rready;
    logic [ 3: 0] axi_awid;
    logic [31: 0] axi_awaddr;
    logic [ 3: 0] axi_awlen;
    logic [ 2: 0] axi_awsize;
    logic [ 1: 0] axi_awburst;
    logic [ 1: 0] axi_awlock;
    logic [ 3: 0] axi_awcache;
    logic [ 2: 0] axi_awprot;
    logic         axi_awvalid;
    logic [ 3: 0] axi_wid;
    logic [31: 0] axi_wdata;
    logic [ 3: 0] axi_wstrb;
    logic         axi_wlast;
    logic         axi_wvalid;
    logic         axi_bready;
    } axi_req;

typedef struct packed {
    logic         axi_arready;
    logic [ 3: 0] axi_rid;
    logic [31: 0] axi_rdata;
    logic [ 1: 0] axi_rresp;
    logic         axi_rlast;
    logic         axi_rvalid;
    logic         axi_awready;
    logic         axi_wready;
    logic [ 3: 0] axi_bid;
    logic [ 1: 0] axi_bresp;
    logic         axi_bvalid;
    } axi_resp;

`endif