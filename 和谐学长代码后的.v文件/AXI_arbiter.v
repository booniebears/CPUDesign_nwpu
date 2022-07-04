module BusArbiter #(
    parameter NUM_INPUTS = 3  // NOTE: NUM_INPUTS >= 1

    // localparam int MAX_INDEX = NUM_INPUTS - 1
) (
    input clk, 
    input resetn,
    input u_valid,
    input d_valid,
    input i_valid,
    //i_bus_req
    input [31: 0] i_bus_req_axi_araddr  ,
    input [ 3: 0] i_bus_req_axi_arid    ,
    input [ 3: 0] i_bus_req_axi_arlen   ,
    input [ 2: 0] i_bus_req_axi_arsize  ,
    input [ 1: 0] i_bus_req_axi_arburst ,
    input [ 1: 0] i_bus_req_axi_arlock  ,
    input [ 3: 0] i_bus_req_axi_arcache ,
    input [ 2: 0] i_bus_req_axi_arprot  ,
    input         i_bus_req_axi_arvalid ,
    input         i_bus_req_axi_rready  ,
    input [ 3: 0] i_bus_req_axi_awid    ,
    input [31: 0] i_bus_req_axi_awaddr  ,
    input [ 3: 0] i_bus_req_axi_awlen   ,
    input [ 2: 0] i_bus_req_axi_awsize  ,
    input [ 1: 0] i_bus_req_axi_awburst ,
    input [ 1: 0] i_bus_req_axi_awlock  ,
    input [ 3: 0] i_bus_req_axi_awcache ,
    input [ 2: 0] i_bus_req_axi_awprot  ,
    input         i_bus_req_axi_awvalid ,
    input [ 3: 0] i_bus_req_axi_wid     ,
    input [31: 0] i_bus_req_axi_wdata   ,
    input [ 3: 0] i_bus_req_axi_wstrb   ,
    input         i_bus_req_axi_wlast   ,
    input         i_bus_req_axi_wvalid  ,
    input         i_bus_req_axi_bready  ,
    //d_bus_req
    input [31: 0] d_bus_req_axi_araddr  ,
    input [ 3: 0] d_bus_req_axi_arid    ,
    input [ 3: 0] d_bus_req_axi_arlen   ,
    input [ 2: 0] d_bus_req_axi_arsize  ,
    input [ 1: 0] d_bus_req_axi_arburst ,
    input [ 1: 0] d_bus_req_axi_arlock  ,
    input [ 3: 0] d_bus_req_axi_arcache ,
    input [ 2: 0] d_bus_req_axi_arprot  ,
    input         d_bus_req_axi_arvalid ,
    input         d_bus_req_axi_rready  ,
    input [ 3: 0] d_bus_req_axi_awid    ,
    input [31: 0] d_bus_req_axi_awaddr  ,
    input [ 3: 0] d_bus_req_axi_awlen   ,
    input [ 2: 0] d_bus_req_axi_awsize  ,
    input [ 1: 0] d_bus_req_axi_awburst ,
    input [ 1: 0] d_bus_req_axi_awlock  ,
    input [ 3: 0] d_bus_req_axi_awcache ,
    input [ 2: 0] d_bus_req_axi_awprot  ,
    input         d_bus_req_axi_awvalid ,
    input [ 3: 0] d_bus_req_axi_wid     ,
    input [31: 0] d_bus_req_axi_wdata   ,
    input [ 3: 0] d_bus_req_axi_wstrb   ,
    input         d_bus_req_axi_wlast   ,
    input         d_bus_req_axi_wvalid  ,
    input         d_bus_req_axi_bready  ,
    //u_bus_req
    input [31: 0] u_bus_req_axi_araddr  ,
    input [ 3: 0] u_bus_req_axi_arid    ,
    input [ 3: 0] u_bus_req_axi_arlen   ,
    input [ 2: 0] u_bus_req_axi_arsize  ,
    input [ 1: 0] u_bus_req_axi_arburst ,
    input [ 1: 0] u_bus_req_axi_arlock  ,
    input [ 3: 0] u_bus_req_axi_arcache ,
    input [ 2: 0] u_bus_req_axi_arprot  ,
    input         u_bus_req_axi_arvalid ,
    input         u_bus_req_axi_rready  ,
    input [ 3: 0] u_bus_req_axi_awid    ,
    input [31: 0] u_bus_req_axi_awaddr  ,
    input [ 3: 0] u_bus_req_axi_awlen   ,
    input [ 2: 0] u_bus_req_axi_awsize  ,
    input [ 1: 0] u_bus_req_axi_awburst ,
    input [ 1: 0] u_bus_req_axi_awlock  ,
    input [ 3: 0] u_bus_req_axi_awcache ,
    input [ 2: 0] u_bus_req_axi_awprot  ,
    input         u_bus_req_axi_awvalid ,
    input [ 3: 0] u_bus_req_axi_wid     ,
    input [31: 0] u_bus_req_axi_wdata   ,
    input [ 3: 0] u_bus_req_axi_wstrb   ,
    input         u_bus_req_axi_wlast   ,
    input         u_bus_req_axi_wvalid  ,
    input         u_bus_req_axi_bready  ,
    //master_resp
    input         master_resp_axi_arready ,
    input [ 3: 0] master_resp_axi_rid     ,
    input [31: 0] master_resp_axi_rdata   ,
    input [ 1: 0] master_resp_axi_rresp   ,
    input         master_resp_axi_rlast   ,
    input         master_resp_axi_rvalid  ,
    input         master_resp_axi_awready ,
    input         master_resp_axi_wready  ,
    input [ 3: 0] master_resp_axi_bid     ,
    input [ 1: 0] master_resp_axi_bresp   ,
    input         master_resp_axi_bvalid  ,

    //i_bus_resp
    output reg         i_bus_resp_axi_arready,
    output reg [ 3: 0] i_bus_resp_axi_rid    ,
    output reg [31: 0] i_bus_resp_axi_rdata  ,
    output reg [ 1: 0] i_bus_resp_axi_rresp  ,
    output reg         i_bus_resp_axi_rlast  ,
    output reg         i_bus_resp_axi_rvalid ,
    output reg         i_bus_resp_axi_awready,
    output reg         i_bus_resp_axi_wready ,
    output reg [ 3: 0] i_bus_resp_axi_bid    ,
    output reg [ 1: 0] i_bus_resp_axi_bresp  ,
    output reg         i_bus_resp_axi_bvalid ,

    //d_bus_resp
    output reg         d_bus_resp_axi_arready,
    output reg [ 3: 0] d_bus_resp_axi_rid    ,
    output reg [31: 0] d_bus_resp_axi_rdata  ,
    output reg [ 1: 0] d_bus_resp_axi_rresp  ,
    output reg         d_bus_resp_axi_rlast  ,
    output reg         d_bus_resp_axi_rvalid ,
    output reg         d_bus_resp_axi_awready,
    output reg         d_bus_resp_axi_wready ,
    output reg [ 3: 0] d_bus_resp_axi_bid    ,
    output reg [ 1: 0] d_bus_resp_axi_bresp  ,
    output reg         d_bus_resp_axi_bvalid ,  

    //u_bus_resp
    output reg         u_bus_resp_axi_arready,
    output reg [ 3: 0] u_bus_resp_axi_rid    ,
    output reg [31: 0] u_bus_resp_axi_rdata  ,
    output reg [ 1: 0] u_bus_resp_axi_rresp  ,
    output reg         u_bus_resp_axi_rlast  ,
    output reg         u_bus_resp_axi_rvalid ,
    output reg         u_bus_resp_axi_awready,
    output reg         u_bus_resp_axi_wready ,
    output reg [ 3: 0] u_bus_resp_axi_bid    ,
    output reg [ 1: 0] u_bus_resp_axi_bresp  ,
    output reg         u_bus_resp_axi_bvalid , 

    //o_bus_req
    output [31: 0] o_bus_req_axi_araddr  ,
    output [ 3: 0] o_bus_req_axi_arid    ,
    output [ 3: 0] o_bus_req_axi_arlen   ,
    output [ 2: 0] o_bus_req_axi_arsize  ,
    output [ 1: 0] o_bus_req_axi_arburst ,
    output [ 1: 0] o_bus_req_axi_arlock  ,
    output [ 3: 0] o_bus_req_axi_arcache ,
    output [ 2: 0] o_bus_req_axi_arprot  ,
    output         o_bus_req_axi_arvalid ,
    output         o_bus_req_axi_rready  ,
    output [ 3: 0] o_bus_req_axi_awid    ,
    output [31: 0] o_bus_req_axi_awaddr  ,
    output [ 3: 0] o_bus_req_axi_awlen   ,
    output [ 2: 0] o_bus_req_axi_awsize  ,
    output [ 1: 0] o_bus_req_axi_awburst ,
    output [ 1: 0] o_bus_req_axi_awlock  ,
    output [ 3: 0] o_bus_req_axi_awcache ,
    output [ 2: 0] o_bus_req_axi_awprot  ,
    output         o_bus_req_axi_awvalid ,
    output [ 3: 0] o_bus_req_axi_wid     ,
    output [31: 0] o_bus_req_axi_wdata   ,
    output [ 3: 0] o_bus_req_axi_wstrb   ,
    output         o_bus_req_axi_wlast   ,
    output         o_bus_req_axi_wvalid  ,
    output         o_bus_req_axi_bready  

    // input  [2:0] ivalid
    // input  axi_req  [2:0] ireqs,
    // input  axi_resp oresp,
    // output axi_resp [2:0] iresps,
    // output axi_req  oreq
);
    reg  busy;
    wire [2:0] select ;
    reg  [2:0] index ;

    // assign oreq = busy ? ireqs[index - 1] : '0;  // prevent early issue
    assign o_bus_req_axi_araddr = busy ? (index == 1) ? u_bus_req_axi_araddr :
                                         (index == 2) ? d_bus_req_axi_araddr :
                                         (index == 3) ? i_bus_req_axi_araddr : 0 : 0;

    assign o_bus_req_axi_arid   = busy ? (index == 1) ? u_bus_req_axi_arid   :
                                         (index == 2) ? d_bus_req_axi_arid   :
                                         (index == 3) ? i_bus_req_axi_arid   : 0 : 0;
    
    assign o_bus_req_axi_arlen  = busy ? (index == 1) ? u_bus_req_axi_arlen  :
                                         (index == 2) ? d_bus_req_axi_arlen  :
                                         (index == 3) ? i_bus_req_axi_arlen  : 0 : 0;

    assign o_bus_req_axi_arsize = busy ? (index == 1) ? u_bus_req_axi_arsize :
                                         (index == 2) ? d_bus_req_axi_arsize :
                                         (index == 3) ? i_bus_req_axi_arsize : 0 : 0;

    assign o_bus_req_axi_arburst= busy ? (index == 1) ? u_bus_req_axi_arburst :
                                         (index == 2) ? d_bus_req_axi_arburst :
                                         (index == 3) ? i_bus_req_axi_arburst : 0 : 0;    

    assign o_bus_req_axi_arlock = busy ? (index == 1) ? u_bus_req_axi_arlock  :
                                         (index == 2) ? d_bus_req_axi_arlock  :
                                         (index == 3) ? i_bus_req_axi_arlock  : 0 : 0;    

    assign o_bus_req_axi_arcache= busy ? (index == 1) ? u_bus_req_axi_arcache :
                                         (index == 2) ? d_bus_req_axi_arcache :
                                         (index == 3) ? i_bus_req_axi_arcache : 0 : 0; 

    assign o_bus_req_axi_arprot = busy ? (index == 1) ? u_bus_req_axi_arprot  :
                                         (index == 2) ? d_bus_req_axi_arprot  :
                                         (index == 3) ? i_bus_req_axi_arprot  : 0 : 0; 

    assign o_bus_req_axi_arvalid= busy ? (index == 1) ? u_bus_req_axi_arvalid :
                                         (index == 2) ? d_bus_req_axi_arvalid :
                                         (index == 3) ? i_bus_req_axi_arvalid : 0 : 0;   

    assign o_bus_req_axi_rready = busy ? (index == 1) ? u_bus_req_axi_rready  :
                                         (index == 2) ? d_bus_req_axi_rready  :
                                         (index == 3) ? i_bus_req_axi_rready  : 0 : 0;       

    assign o_bus_req_axi_awid   = busy ? (index == 1) ? u_bus_req_axi_awid    :
                                         (index == 2) ? d_bus_req_axi_awid    :
                                         (index == 3) ? i_bus_req_axi_awid    : 0 : 0;   

    assign o_bus_req_axi_awaddr = busy ? (index == 1) ? u_bus_req_axi_awaddr  :
                                         (index == 2) ? d_bus_req_axi_awaddr  :
                                         (index == 3) ? i_bus_req_axi_awaddr  : 0 : 0;      

    assign o_bus_req_axi_awlen  = busy ? (index == 1) ? u_bus_req_axi_awlen   :
                                         (index == 2) ? d_bus_req_axi_awlen   :
                                         (index == 3) ? i_bus_req_axi_awlen   : 0 : 0; 

    assign o_bus_req_axi_awsize = busy ? (index == 1) ? u_bus_req_axi_awsize  :
                                         (index == 2) ? d_bus_req_axi_awsize  :
                                         (index == 3) ? i_bus_req_axi_awsize  : 0 : 0; 

    assign o_bus_req_axi_awburst= busy ? (index == 1) ? u_bus_req_axi_awburst :
                                         (index == 2) ? d_bus_req_axi_awburst :
                                         (index == 3) ? i_bus_req_axi_awburst : 0 : 0;

    assign o_bus_req_axi_awlock = busy ? (index == 1) ? u_bus_req_axi_awlock  :
                                         (index == 2) ? d_bus_req_axi_awlock  :
                                         (index == 3) ? i_bus_req_axi_awlock  : 0 : 0; 

    assign o_bus_req_axi_awcache= busy ? (index == 1) ? u_bus_req_axi_awcache :
                                         (index == 2) ? d_bus_req_axi_awcache :
                                         (index == 3) ? i_bus_req_axi_awcache : 0 : 0;    

    assign o_bus_req_axi_awprot = busy ? (index == 1) ? u_bus_req_axi_awprot  :
                                         (index == 2) ? d_bus_req_axi_awprot  :
                                         (index == 3) ? i_bus_req_axi_awprot  : 0 : 0;  

    assign o_bus_req_axi_awvalid= busy ? (index == 1) ? u_bus_req_axi_awvalid :
                                         (index == 2) ? d_bus_req_axi_awvalid :
                                         (index == 3) ? i_bus_req_axi_awvalid : 0 : 0;  

    assign o_bus_req_axi_wid    = busy ? (index == 1) ? u_bus_req_axi_wid     :
                                         (index == 2) ? d_bus_req_axi_wid     :
                                         (index == 3) ? i_bus_req_axi_wid     : 0 : 0;  

    assign o_bus_req_axi_wdata  = busy ? (index == 1) ? u_bus_req_axi_wdata   :
                                         (index == 2) ? d_bus_req_axi_wdata   :
                                         (index == 3) ? i_bus_req_axi_wdata   : 0 : 0;  

    assign o_bus_req_axi_wstrb  = busy ? (index == 1) ? u_bus_req_axi_wstrb   :
                                         (index == 2) ? d_bus_req_axi_wstrb   :
                                         (index == 3) ? i_bus_req_axi_wstrb   : 0 : 0;      

    assign o_bus_req_axi_wlast  = busy ? (index == 1) ? u_bus_req_axi_wlast   :
                                         (index == 2) ? d_bus_req_axi_wlast   :
                                         (index == 3) ? i_bus_req_axi_wlast   : 0 : 0; 

    assign o_bus_req_axi_wvalid = busy ? (index == 1) ? u_bus_req_axi_wvalid  :
                                         (index == 2) ? d_bus_req_axi_wvalid  :
                                         (index == 3) ? i_bus_req_axi_wvalid  : 0 : 0;     

    assign o_bus_req_axi_bready = busy ? (index == 1) ? u_bus_req_axi_bready  :
                                         (index == 2) ? d_bus_req_axi_bready  :
                                         (index == 3) ? i_bus_req_axi_bready  : 0 : 0;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        

    // select a preferred request
    // always @(*) begin
    //     select = 0;
    //     for (int i = 0; i < 3; i = i + 1) begin
    //         if (ivalid[i] == 1'b1) begin
    //             select = i + 1;
    //             break;
    //         end
    //     end
    // end
    assign select = u_valid ? 3'd1 : d_valid ? 3'd2 : i_valid ? 3'd3 : 3'd0;

    // feedback to selected request
    // always @(*) begin
    //     iresps = '0;
    //     if (busy) begin
    //         for (int i = 0; i < NUM_INPUTS; i = i + 1) begin
    //             if (index - 1  == i)
    //                 iresps[i] = oresp;
    //         end
    //     end
    // end
    always @(*) begin
        u_bus_resp_axi_arready = 0;
        d_bus_resp_axi_arready = 0;
        i_bus_resp_axi_arready = 0;
        if(busy) begin
            if(index == 1)      u_bus_resp_axi_arready = master_resp_axi_arready;
            else if(index == 2) d_bus_resp_axi_arready = master_resp_axi_arready;
            else if(index == 3) i_bus_resp_axi_arready = master_resp_axi_arready;
        end
    end

    always @(*) begin
        u_bus_resp_axi_rid = 0;
        d_bus_resp_axi_rid = 0;
        i_bus_resp_axi_rid = 0;
        if(busy) begin
            if(index == 1)      u_bus_resp_axi_rid = master_resp_axi_rid;
            else if(index == 2) d_bus_resp_axi_rid = master_resp_axi_rid;
            else if(index == 3) i_bus_resp_axi_rid = master_resp_axi_rid;
        end
    end   
    
    always @(*) begin
        u_bus_resp_axi_rdata = 0;
        d_bus_resp_axi_rdata = 0;
        i_bus_resp_axi_rdata = 0;
        if(busy) begin
            if(index == 1)      u_bus_resp_axi_rdata = master_resp_axi_rdata;
            else if(index == 2) d_bus_resp_axi_rdata = master_resp_axi_rdata;
            else if(index == 3) i_bus_resp_axi_rdata = master_resp_axi_rdata;
        end
    end       

    always @(*) begin
        u_bus_resp_axi_rresp = 0;
        d_bus_resp_axi_rresp = 0;
        i_bus_resp_axi_rresp = 0;
        if(busy) begin
            if(index == 1)      u_bus_resp_axi_rresp = master_resp_axi_rresp;
            else if(index == 2) d_bus_resp_axi_rresp = master_resp_axi_rresp;
            else if(index == 3) i_bus_resp_axi_rresp = master_resp_axi_rresp;
        end
    end  

    always @(*) begin
        u_bus_resp_axi_rlast = 0;
        d_bus_resp_axi_rlast = 0;
        i_bus_resp_axi_rlast = 0;
        if(busy) begin
            if(index == 1)      u_bus_resp_axi_rlast = master_resp_axi_rlast;
            else if(index == 2) d_bus_resp_axi_rlast = master_resp_axi_rlast;
            else if(index == 3) i_bus_resp_axi_rlast = master_resp_axi_rlast;
        end
    end  

    always @(*) begin
        u_bus_resp_axi_rvalid = 0;
        d_bus_resp_axi_rvalid = 0;
        i_bus_resp_axi_rvalid = 0;
        if(busy) begin
            if(index == 1)      u_bus_resp_axi_rvalid = master_resp_axi_rvalid;
            else if(index == 2) d_bus_resp_axi_rvalid = master_resp_axi_rvalid;
            else if(index == 3) i_bus_resp_axi_rvalid = master_resp_axi_rvalid;
        end
    end 

    always @(*) begin
        u_bus_resp_axi_awready = 0;
        d_bus_resp_axi_awready = 0;
        i_bus_resp_axi_awready = 0;
        if(busy) begin
            if(index == 1)      u_bus_resp_axi_awready = master_resp_axi_awready;
            else if(index == 2) d_bus_resp_axi_awready = master_resp_axi_awready;
            else if(index == 3) i_bus_resp_axi_awready = master_resp_axi_awready;
        end
    end 

    always @(*) begin
        u_bus_resp_axi_wready = 0;
        d_bus_resp_axi_wready = 0;
        i_bus_resp_axi_wready = 0;
        if(busy) begin
            if(index == 1)      u_bus_resp_axi_wready = master_resp_axi_wready;
            else if(index == 2) d_bus_resp_axi_wready = master_resp_axi_wready;
            else if(index == 3) i_bus_resp_axi_wready = master_resp_axi_wready;
        end
    end 

    always @(*) begin
        u_bus_resp_axi_bid = 0;
        d_bus_resp_axi_bid = 0;
        i_bus_resp_axi_bid = 0;
        if(busy) begin
            if(index == 1)      u_bus_resp_axi_bid = master_resp_axi_bid;
            else if(index == 2) d_bus_resp_axi_bid = master_resp_axi_bid;
            else if(index == 3) i_bus_resp_axi_bid = master_resp_axi_bid;
        end
    end 

    always @(*) begin
        u_bus_resp_axi_bresp = 0;
        d_bus_resp_axi_bresp = 0;
        i_bus_resp_axi_bresp = 0;
        if(busy) begin
            if(index == 1)      u_bus_resp_axi_bresp = master_resp_axi_bresp;
            else if(index == 2) d_bus_resp_axi_bresp = master_resp_axi_bresp;
            else if(index == 3) i_bus_resp_axi_bresp = master_resp_axi_bresp;
        end
    end 

    always @(*) begin
        u_bus_resp_axi_bvalid = 0;
        d_bus_resp_axi_bvalid = 0;
        i_bus_resp_axi_bvalid = 0;
        if(busy) begin
            if(index == 1)      u_bus_resp_axi_bvalid = master_resp_axi_bvalid;
            else if(index == 2) d_bus_resp_axi_bvalid = master_resp_axi_bvalid;
            else if(index == 3) i_bus_resp_axi_bvalid = master_resp_axi_bvalid;
        end
    end 
    
    always @(posedge clk) begin
        if (resetn == 1'b0) begin
            busy <= 1'b0;
            index <= 3'b0;
        end 
        else begin
            if (busy) begin
                // if (ivalid[index - 1] == 1'b0) begin
                if ((~u_valid && index == 1) | (~d_valid && index == 2) | (~i_valid && index == 3)) begin
                    busy  <= 1'b0;
                    index <= 3'b0;
                end
            end 
            else if (select != 0)begin
                // if not valid, busy <= 0
                busy   <= 1'b1;
                index  <= select;
            end
        end
    end

endmodule
