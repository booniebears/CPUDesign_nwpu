`include "global_defines.vh"
`include "AXICache_defines.vh"
module AXI_Interface(
    input clk,
    input resetn,

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
    // input   [ 3:0] dcache_wr_strb, 
    input  [127:0]    dcache_wr_data, 
    output            dcache_wr_rdy,
    output            dcache_wr_valid, 

    input             udcache_rd_req, 
    input      [31:0] udcache_rd_addr, 
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
    wire  [ 3: 0] ibus_arid;
    wire  [31: 0] ibus_araddr;
    wire  [ 3: 0] ibus_arlen;
    wire  [ 2: 0] ibus_arsize;
    wire  [ 1: 0] ibus_arburst;
    wire  [ 1: 0] ibus_arlock;
    wire  [ 3: 0] ibus_arcache; 
    wire  [ 2: 0] ibus_arprot;
    wire          ibus_arvalid;
    wire          ibus_arready;
    wire  [ 3: 0] ibus_rid;
    wire  [31: 0] ibus_rdata;
    wire  [ 1: 0] ibus_rresp;
    wire          ibus_rlast;
    wire          ibus_rvalid;
    wire          ibus_rready;
    wire  [ 3: 0] ibus_awid;
    wire  [31: 0] ibus_awaddr;
    wire  [ 3: 0] ibus_awlen;
    wire  [ 2: 0] ibus_awsize;
    wire  [ 1: 0] ibus_awburst;
    wire  [ 1: 0] ibus_awlock;
    wire  [ 3: 0] ibus_awcache;
    wire  [ 2: 0] ibus_awprot;
    wire          ibus_awvalid;
    wire          ibus_awready;
    wire  [ 3: 0] ibus_wid;
    wire  [31: 0] ibus_wdata;
    wire  [ 3: 0] ibus_wstrb;
    wire          ibus_wlast;
    wire          ibus_wvalid;
    wire          ibus_wready;
    wire  [ 3: 0] ibus_bid;
    wire  [ 1: 0] ibus_bresp;
    wire          ibus_bvalid;
    wire          ibus_bready;

// Dcache 
    wire  [ 3: 0] dbus_arid;
    wire  [31: 0] dbus_araddr;
    wire  [ 3: 0] dbus_arlen;
    wire  [ 2: 0] dbus_arsize;
    wire  [ 1: 0] dbus_arburst;
    wire  [ 1: 0] dbus_arlock;
    wire  [ 3: 0] dbus_arcache;
    wire  [ 2: 0] dbus_arprot;
    wire          dbus_arvalid;
    wire          dbus_arready;
    wire  [ 3: 0] dbus_rid;
    wire  [31: 0] dbus_rdata;
    wire  [ 1: 0] dbus_rresp;
    wire          dbus_rlast;
    wire          dbus_rvalid;
    wire          dbus_rready;
    wire  [ 3: 0] dbus_awid;
    wire  [31: 0] dbus_awaddr;
    wire  [ 3: 0] dbus_awlen;
    wire  [ 2: 0] dbus_awsize;
    wire  [ 1: 0] dbus_awburst;
    wire  [ 1: 0] dbus_awlock;
    wire  [ 3: 0] dbus_awcache;
    wire  [ 2: 0] dbus_awprot;
    wire          dbus_awvalid;
    wire          dbus_awready;
    wire  [ 3: 0] dbus_wid;
    wire  [31: 0] dbus_wdata;
    wire  [ 3: 0] dbus_wstrb;
    wire          dbus_wlast;
    wire          dbus_wvalid;
    wire          dbus_wready;
    wire  [ 3: 0] dbus_bid;
    wire  [ 1: 0] dbus_bresp;
    wire          dbus_bvalid;
    wire          dbus_bready;
// Uncache 
    wire  [ 3: 0] ubus_arid;
    wire  [31: 0] ubus_araddr;
    wire  [ 3: 0] ubus_arlen;
    wire  [ 2: 0] ubus_arsize;
    wire  [ 1: 0] ubus_arburst;
    wire  [ 1: 0] ubus_arlock;
    wire  [ 3: 0] ubus_arcache;
    wire  [ 2: 0] ubus_arprot;
    wire          ubus_arvalid;
    wire          ubus_arready;
    wire  [ 3: 0] ubus_rid;
    wire  [31: 0] ubus_rdata;
    wire  [ 1: 0] ubus_rresp;
    wire          ubus_rlast;
    wire          ubus_rvalid;
    wire          ubus_rready;
    wire  [ 3: 0] ubus_awid;
    wire  [31: 0] ubus_awaddr;
    wire  [ 3: 0] ubus_awlen;
    wire  [ 2: 0] ubus_awsize;
    wire  [ 1: 0] ubus_awburst;
    wire  [ 1: 0] ubus_awlock;
    wire  [ 3: 0] ubus_awcache;
    wire  [ 2: 0] ubus_awprot;
    wire          ubus_awvalid;
    wire          ubus_awready;
    wire  [ 3: 0] ubus_wid;
    wire  [31: 0] ubus_wdata;
    wire  [ 3: 0] ubus_wstrb;
    wire          ubus_wlast;
    wire          ubus_wvalid;
    wire          ubus_wready;
    wire  [ 3: 0] ubus_bid;
    wire  [ 1: 0] ubus_bresp;
    wire          ubus_bvalid;
    wire          ubus_bready;
    
    reg   [  2:0] I_RD_pre_state;
    reg   [  2:0] I_RD_next_state;
    wire  [  2:0] I_RD_DataReady;
    reg   [ 31:0] I_RD_Addr;
    reg   [127:0] AXI_I_RData;

    reg   [  2:0] D_RD_pre_state;
    reg   [  2:0] D_RD_next_state;
    wire  [ 2:0]  D_RD_DataReady;
    reg  [ 31:0]  D_RD_Addr;
    reg  [ 127:0] AXI_D_RData;

    reg    [2:0]  D_WR_pre_state;
    reg    [2:0]  D_WR_next_state;
    reg   [31:0]  D_WR_Addr;
    reg   [127:0] AXI_D_WData;

    reg     [1:0] U_RD_pre_state;
    reg     [1:0] U_RD_next_state;
    reg    [31:0] U_RD_Addr;
    reg    [31:0] AXI_U_RData;

    reg     [2:0] U_WR_pre_state;
    reg     [2:0] U_WR_next_state;
    reg    [31:0] U_WR_Addr;
    reg    [31:0] AXI_U_WData;
    //I$ RD
    always @(posedge clk) begin
        if (~resetn) begin
            I_RD_Addr <= 0;
        end 
        else begin  
            if (icache_rd_req == 1'b1 && I_RD_pre_state == `I_RD_EMPTY) begin
                I_RD_Addr <= icache_rd_addr;
            end 
        end 
    end

    //D$ RD
    always @(posedge clk) begin
        if (~resetn) begin
            D_RD_Addr <= 0;
        end 
        else begin  
            if (dcache_rd_req == 1'b1 && D_RD_pre_state == `D_RD_EMPTY) begin
                D_RD_Addr <= dcache_rd_addr;
            end
        end 
    end

    //D$ WR
    always @(posedge clk) begin
        if (~resetn) begin
            D_WR_Addr   <= 0;
            AXI_D_WData <= 0;
        end 
        else begin  
            if (dcache_wr_req && D_WR_pre_state == `D_WR_EMPTY) begin
                D_WR_Addr   <= dcache_wr_addr;
                AXI_D_WData <= dcache_wr_data;
            end 
        end 
    end

    //U$ RD
    always @(posedge clk) begin
        if (~resetn) begin
            U_RD_Addr <= 0;
        end 
        else begin  
            if (udcache_rd_req == 1'b1 && U_RD_pre_state == `U_RD_EMPTY) begin
                U_RD_Addr <= udcache_rd_addr;
            end
        end 
    end

    //U$ WR
    always @(posedge clk) begin
        if (~resetn) begin
            U_WR_Addr   <= 0;
            AXI_U_WData <= 0;
        end 
        else begin  
            if (udcache_wr_req == 1'b1 && U_WR_pre_state == `U_WR_EMPTY) begin
                U_WR_Addr   <= udcache_wr_addr;
                AXI_U_WData <= udcache_wr_data;
            end 
        end 
    end

/********************* ibus ******************/
    // master -> slave
    assign ibus_arid     = 4'b0000;
    assign ibus_arlen    = 4'b0011;      
    assign ibus_arsize   = 3'b010;       
    assign ibus_arburst  = 2'b01;
    assign ibus_arlock   = 2'b00;
    assign ibus_arcache  = 0;
    assign ibus_arprot   = 0;
    

    // master -> slave
    assign ibus_awid     = 0;           
    assign ibus_awlen    = 0;
    assign ibus_awsize   = 0;
    assign ibus_awburst  = 0;
    assign ibus_awlock   = 0;
    assign ibus_awcache  = 0;
    assign ibus_awprot   = 0;
    assign ibus_awvalid  = 0;
    assign ibus_awaddr   = 0;
    // master -> slave
    assign ibus_wid      = 0;
    assign ibus_wdata    = 0;
    assign ibus_wstrb    = 0;
    assign ibus_wlast    = 0;
    assign ibus_wvalid   = 0;
    assign ibus_bready   = 0;


/********************* dbus ******************/
    assign dbus_arid     = 4'b0001;
    assign dbus_arlen    = 4'b0011;
    assign dbus_arsize   = 3'b010;
    assign dbus_arburst  = 2'b01;
    assign dbus_arlock   = 0;
    assign dbus_arcache  = 0;
    assign dbus_arprot   = 0;

    assign dbus_awid     = 4'b0001;
    assign dbus_awlen    = 4'b0011;        
    assign dbus_awsize   = 3'b010;         
    assign dbus_awburst  = 2'b01;          
    assign dbus_awlock   = 0;
    assign dbus_awcache  = 0;
    assign dbus_awprot   = 0;

    assign dbus_wid     = 4'b0001;
    assign dbus_wstrb   = 4'b1111;
    assign dbus_bready  = 1'b1;

/********************* ubus ******************/
    assign ubus_arid     = 4'b0011;
    assign ubus_arlen    = 4'b0000; 
    assign ubus_arsize   = 3'b010; 
    assign ubus_arburst  = 2'b01;
    assign ubus_arlock   = 0;
    assign ubus_arcache  = 0;
    assign ubus_arprot   = 0;


    assign ubus_awid     = 4'b0011;
    assign ubus_awlen    = 4'b0000;        
    assign ubus_awsize   = 3'b010;         
    assign ubus_awburst  = 2'b01;          
    assign ubus_awlock   = 0;
    assign ubus_awcache  = 0;
    assign ubus_awprot   = 0;


    assign ubus_wid     = 4'b0001;
    assign ubus_wstrb   = udcache_wr_strb;  
    assign ubus_bready  = 1'b1;

    assign icache_rd_rdy  = (I_RD_pre_state == `I_RD_EMPTY ) ? 1'b1 : 1'b0;
    assign dcache_rd_rdy  = (D_RD_pre_state == `D_RD_EMPTY ) ? 1'b1 : 1'b0;
    assign dcache_wr_rdy  = (D_WR_pre_state == `D_WR_EMPTY )  ? 1'b1 : 1'b0;
    assign udcache_rd_rdy = (U_RD_pre_state == `U_RD_EMPTY ) ? 1'b1 : 1'b0;
    assign udcache_wr_rdy = (U_WR_pre_state == `U_WR_EMPTY )  ? 1'b1 : 1'b0;

// FSM -- Icache RD 
    always @(posedge clk) begin
        if (~resetn) begin
            I_RD_pre_state  <= `I_RD_EMPTY;
        end 
        else begin  
            I_RD_pre_state <= I_RD_next_state;
        end
    end

    assign I_RD_DataReady = 
        (I_RD_pre_state == `I_RD_WAIT1 && ibus_rvalid == 1'b1 && ibus_rready == 1'b1) ? 3'd1 :
        (I_RD_pre_state == `I_RD_WAIT2 && ibus_rvalid == 1'b1 && ibus_rready == 1'b1) ? 3'd2 :
        (I_RD_pre_state == `I_RD_WAIT3 && ibus_rvalid == 1'b1 && ibus_rready == 1'b1) ? 3'd3 :
        (I_RD_pre_state == `I_RD_WAIT4 && ibus_rvalid == 1'b1 && ibus_rready == 1'b1) ? 3'd4 :
                                                                                        3'd0 ;
    always @(*)begin
        case (I_RD_pre_state)
            `I_RD_EMPTY:begin
                if (icache_rd_req == 1'b1) begin
                    I_RD_next_state <= `I_RD_RECREQ;
                end
                else begin
                    I_RD_next_state <= `I_RD_EMPTY;
                end
            end
            `I_RD_RECREQ:begin
                if (ibus_arvalid == 1'b1 && ibus_arready == 1'b1) begin
                    I_RD_next_state <= `I_RD_WAIT1;
                end else begin
                    I_RD_next_state <= `I_RD_RECREQ;
                end
            end
            `I_RD_WAIT1:begin
                if (ibus_rvalid == 1'b1 && ibus_rready == 1'b1) begin
                    I_RD_next_state <= `I_RD_WAIT2;
                end
                else begin
                    I_RD_next_state <= `I_RD_WAIT1;
                end
            end
            `I_RD_WAIT2:begin
                if (ibus_rvalid == 1'b1 && ibus_rready == 1'b1) begin
                    I_RD_next_state <= `I_RD_WAIT3;
                end
                else begin
                    I_RD_next_state <= `I_RD_WAIT2;
                end
            end
            `I_RD_WAIT3:begin
                if (ibus_rvalid == 1'b1 && ibus_rready == 1'b1) begin
                    I_RD_next_state <= `I_RD_WAIT4;
                end
                else begin
                    I_RD_next_state <= `I_RD_WAIT3;
                end
            end
            `I_RD_WAIT4:begin
                if (ibus_rvalid == 1'b1 && ibus_rready == 1'b1 && ibus_rlast == 1'b1) begin
                    I_RD_next_state <= `I_RD_FINISH;
                end
                else begin
                    I_RD_next_state <= `I_RD_WAIT4;
                end
            end
            `I_RD_FINISH: begin
                I_RD_next_state     <= `I_RD_EMPTY;
            end
            default:begin
                I_RD_next_state     <= `I_RD_EMPTY;
            end
        endcase
    end

    // araddr & arvalid
    assign ibus_arvalid = (I_RD_pre_state == `I_RD_RECREQ) ? 1'b1 : 1'b0;
    assign ibus_araddr  = (I_RD_pre_state == `I_RD_RECREQ) ? I_RD_Addr : 32'b0;

    // rready 
    assign ibus_rready = (I_RD_pre_state == `I_RD_WAIT1 || I_RD_pre_state == `I_RD_WAIT2 
                 || I_RD_pre_state == `I_RD_WAIT3 || I_RD_pre_state == `I_RD_WAIT4) ? 1'b1 : 1'b0;

    //ret_valid & ret_rdata
    assign icache_ret_valid = (I_RD_pre_state == `I_RD_FINISH) ? 1'b1 : 1'b0;
    assign icache_ret_data  = (I_RD_pre_state == `I_RD_FINISH) ? AXI_I_RData : 0;

    // AXI burst
    always @(posedge clk) begin
        if (~resetn) begin
            AXI_I_RData  <= 128'b0; 
        end 
        else if(I_RD_pre_state == `I_RD_EMPTY) begin
            AXI_I_RData  <= 128'b0; 
        end
        else if (I_RD_DataReady != 3'd0) begin
            case (I_RD_DataReady)
                3'd1:begin
                    AXI_I_RData[31:0]   <= ibus_rdata;
                end
                3'd2:begin
                    AXI_I_RData[63:32]  <= ibus_rdata;
                end
                3'd3:begin
                    AXI_I_RData[95:64]  <= ibus_rdata;
                end
                3'd4:begin
                    AXI_I_RData[127:96] <= ibus_rdata;
                end
                default:
                    AXI_I_RData <= AXI_I_RData;
            endcase
        end 
    end

// FSM -- Dcache RD 
    always @(posedge clk) begin
        if (~resetn) begin
            D_RD_pre_state  <= `D_RD_EMPTY;
        end 
        else begin  
            D_RD_pre_state <= D_RD_next_state;
        end
    end

    assign D_RD_DataReady = 
        (D_RD_pre_state == `D_RD_WAIT1 && dbus_rvalid == 1'b1 && dbus_rready == 1'b1) ? 3'd1 :
        (D_RD_pre_state == `D_RD_WAIT2 && dbus_rvalid == 1'b1 && dbus_rready == 1'b1) ? 3'd2 :
        (D_RD_pre_state == `D_RD_WAIT3 && dbus_rvalid == 1'b1 && dbus_rready == 1'b1) ? 3'd3 :
        (D_RD_pre_state == `D_RD_WAIT4 && dbus_rvalid == 1'b1 && dbus_rready == 1'b1) ? 3'd4 : 
                                                                                        3'd0 ;
    always @(*) begin
        case (D_RD_pre_state)
            `D_RD_EMPTY:begin
                if (dcache_rd_req == 1'b1) begin
                    D_RD_next_state <= `D_RD_RECREQ;
                end
                else begin
                    D_RD_next_state <= `D_RD_EMPTY;
                end
            end
            `D_RD_RECREQ:begin
                if (dbus_arvalid == 1'b1 && dbus_arready == 1'b1) begin
                    D_RD_next_state <= `D_RD_WAIT1;
                end else begin
                    D_RD_next_state <= `D_RD_RECREQ;

                end
            end
            `D_RD_WAIT1:begin
                if (dbus_rvalid == 1'b1 && dbus_rready == 1'b1) begin
                    D_RD_next_state <= `D_RD_WAIT2;
                end
                else begin
                    D_RD_next_state <= `D_RD_WAIT1;
                end
            end
            `D_RD_WAIT2:begin
                if (dbus_rvalid == 1'b1 && dbus_rready == 1'b1) begin
                    D_RD_next_state <= `D_RD_WAIT3;
                end
                else begin
                    D_RD_next_state <= `D_RD_WAIT2;
                end
            end
            `D_RD_WAIT3:begin
                if (dbus_rvalid == 1'b1 && dbus_rready == 1'b1) begin
                    D_RD_next_state <= `D_RD_WAIT4;
                end
                else begin
                    D_RD_next_state <= `D_RD_WAIT3;
                end
            end
            `D_RD_WAIT4:begin
                if (dbus_rvalid == 1'b1 && dbus_rready == 1'b1 && dbus_rlast == 1'b1) begin
                    D_RD_next_state <= `D_RD_FINISH;
                end
                else begin
                    D_RD_next_state <= `D_RD_WAIT4;
                end
            end
            `D_RD_FINISH: begin
                D_RD_next_state     <= `D_RD_EMPTY;
            end
            default:begin
                D_RD_next_state     <= `D_RD_EMPTY;                
            end

        endcase
    end

    // araddr & arvalid
    assign dbus_arvalid = (D_RD_pre_state == `D_RD_RECREQ) ? 1'b1 : 1'b0;
    assign dbus_araddr  = (D_RD_pre_state == `D_RD_RECREQ) ? D_RD_Addr : 32'b0;

    assign dbus_rready = (D_RD_pre_state == `D_RD_WAIT1 || D_RD_pre_state == `D_RD_WAIT2 
    || D_RD_pre_state == `D_RD_WAIT3 ||D_RD_pre_state == `D_RD_WAIT4) ? 1'b1 : 1'b0;

    //ret_valid & ret_rdata
    assign dcache_ret_valid = (D_RD_pre_state == `D_RD_FINISH) ? 1'b1 : 1'b0;
    assign dcache_ret_data  = (D_RD_pre_state == `D_RD_FINISH) ? AXI_D_RData : 0;

    // AXI burst
    always @(posedge clk) begin
        if (~resetn) begin
            AXI_D_RData  <= 128'b0; 
        end 
        else if(D_RD_pre_state == `D_RD_EMPTY) begin
            AXI_D_RData  <= 128'b0; 
        end
        else if (D_RD_DataReady != 3'd0) begin
            case (D_RD_DataReady)
                3'd1:begin
                    AXI_D_RData[31:0]   <= dbus_rdata;
                end
                3'd2:begin
                    AXI_D_RData[63:32]  <= dbus_rdata;
                end
                3'd3:begin
                    AXI_D_RData[95:64]  <= dbus_rdata;
                end
                3'd4:begin
                    AXI_D_RData[127:96] <= dbus_rdata;
                end
                default:
                    AXI_D_RData <= AXI_D_RData; 
            endcase
        end 
    end
// FSM -- Dcache WR
    always @(posedge clk) begin
        if (~resetn) begin
            D_WR_pre_state  <= `D_WR_EMPTY;
        end 
        else begin  
            D_WR_pre_state <= D_WR_next_state;
        end
    end

    //valid & wdata
    assign dbus_wdata = (D_WR_pre_state == `D_WR_WAIT1) ? AXI_D_WData[31:0] :
                        (D_WR_pre_state == `D_WR_WAIT2) ? AXI_D_WData[63:32] :
                        (D_WR_pre_state == `D_WR_WAIT3) ? AXI_D_WData[95:64] :
                        (D_WR_pre_state == `D_WR_WAIT4) ? AXI_D_WData[127:96] :
                                                          32'b0; 
    assign dbus_wlast = (D_WR_pre_state == `D_WR_WAIT4) ? 1'b1 : 1'b0;
    always @(*) begin
        case (D_WR_pre_state)
            `D_WR_EMPTY:begin
                if (dcache_wr_req == 1'b1) begin
                    D_WR_next_state <= `D_WR_RECREQ;
                end
                else begin
                    D_WR_next_state <= `D_WR_EMPTY;
                end
            end
            `D_WR_RECREQ:begin
                if (dbus_awready == 1'b1) begin
                    D_WR_next_state <= `D_WR_WAIT1;
                end else begin
                    D_WR_next_state <= `D_WR_RECREQ;
                end
            end
            `D_WR_WAIT1:begin
                if ( dbus_wready == 1'b1) begin
                    D_WR_next_state <= `D_WR_WAIT2;
                end
                else begin
                    D_WR_next_state <= `D_WR_WAIT1;
                end
            end
            `D_WR_WAIT2:begin
                if (dbus_wready == 1'b1) begin
                    D_WR_next_state <= `D_WR_WAIT3;
                end
                else begin
                    D_WR_next_state <= `D_WR_WAIT2;
                end
            end
            `D_WR_WAIT3:begin
                if (dbus_wready == 1'b1) begin
                    D_WR_next_state <= `D_WR_WAIT4;
                end
                else begin
                    D_WR_next_state <= `D_WR_WAIT3;
                end
            end
            `D_WR_WAIT4:begin
                if (dbus_wready == 1'b1) begin
                    D_WR_next_state <= `D_WR_S;
                end
                else begin
                    D_WR_next_state <= `D_WR_WAIT4;
                end
            end
            `D_WR_S: begin
                if (dbus_bvalid == 1'b1) begin
                    D_WR_next_state <= `D_WR_FINISH;
                end
               else begin
                    D_WR_next_state <= `D_WR_S;
                end
            end
            `D_WR_FINISH: begin
                D_WR_next_state <= `D_WR_EMPTY;
            end
            default:begin
                D_WR_next_state <= `D_WR_EMPTY;
            end
        endcase
    end

    // awaddr & awvalid
    assign dbus_awvalid = (D_WR_pre_state == `D_WR_RECREQ) ? 1'b1: 1'b0;
    assign dbus_awaddr  = (D_WR_pre_state == `D_WR_RECREQ) ? D_WR_Addr : 32'b0;

    // wvalid 
    assign dbus_wvalid = (D_WR_pre_state == `D_WR_WAIT1 || D_WR_pre_state == `D_WR_WAIT2 
        || D_WR_pre_state == `D_WR_WAIT3 || D_WR_pre_state == `D_WR_WAIT4) ? 1'b1 : 1'b0;

    assign dcache_wr_valid = (D_WR_pre_state == `D_WR_FINISH) ? 1'b1 : 1'b0;

// FSM -- Uncache RD 
    always @(posedge clk) begin
        if (~resetn) begin
            U_RD_pre_state  <= `U_RD_EMPTY;
        end 
        else begin  
            U_RD_pre_state  <= U_RD_next_state;
        end
    end

    always @(*) begin
        case (U_RD_pre_state)
            `U_RD_EMPTY:begin
                if (udcache_rd_req == 1'b1) begin
                    U_RD_next_state <= `U_RD_RECREQ;
                end
                else begin
                    U_RD_next_state <= `U_RD_EMPTY;
                end
            end
            `U_RD_RECREQ:begin
                if (ubus_arvalid == 1'b1 && ubus_arready == 1'b1) begin
                    U_RD_next_state <= `U_RD_WAIT1;
                end else begin
                    U_RD_next_state <= `U_RD_RECREQ;
                end
            end
            `U_RD_WAIT1:begin
                if (ubus_rvalid == 1'b1 && ubus_rready == 1'b1 && ubus_rlast == 1'b1) begin
                    U_RD_next_state <= `U_RD_FINISH;
                end
                else begin
                    U_RD_next_state <= `U_RD_WAIT1;
                end
            end
            `U_RD_FINISH: begin
                U_RD_next_state     <= `U_RD_EMPTY;
            end
            default:begin
                U_RD_next_state     <= `U_RD_EMPTY;                
            end
        endcase
    end

    // araddr & arvalid
    assign ubus_arvalid = (U_RD_pre_state == `U_RD_RECREQ) ? 1'b1 : 1'b0;
    assign ubus_araddr  = (U_RD_pre_state == `U_RD_RECREQ) ? U_RD_Addr : 32'b0;

    // rready 
    assign ubus_rready = (U_RD_pre_state == `U_RD_WAIT1) ? 1'b1 : 1'b0;

    //ret_valid & ret_rdata
    assign udcache_ret_valid = (U_RD_pre_state == `U_RD_FINISH) ? 1'b1 : 1'b0;
    assign udcache_ret_data  = (U_RD_pre_state == `U_RD_FINISH) ? AXI_U_RData : 0;

    always @(posedge clk) begin
        if (~resetn) begin
            AXI_U_RData  <= 32'b0; 
        end 
        else begin
            AXI_U_RData[31:0] <= ubus_rdata;
        end 
    end

// FSM -- Uncache WR
    always @(posedge clk) begin
        if (~resetn) begin
            U_WR_pre_state  <= `U_WR_EMPTY;
        end 
        else begin  
            U_WR_pre_state  <= U_WR_next_state;
        end
    end

    assign ubus_wlast = (U_WR_pre_state == `U_WR_WAIT1) ? 1'b1 : 1'b0;
    always @(*) begin
        case (U_WR_pre_state)
            `U_WR_EMPTY:begin
                if (udcache_wr_req == 1'b1) begin
                    U_WR_next_state <= `U_WR_RECREQ;
                end
                else begin
                    U_WR_next_state <= `U_WR_EMPTY;
                end
            end
            `U_WR_RECREQ:begin
                if (ubus_awready == 1'b1) begin
                    U_WR_next_state <= `U_WR_WAIT1;
                end else begin
                    U_WR_next_state <= `U_WR_RECREQ;
                end
            end
            `U_WR_WAIT1:begin
                if (ubus_wready == 1'b1) begin
                    U_WR_next_state <= `U_WR_S;
                end
                else begin
                    U_WR_next_state <= `U_WR_WAIT1;
                end
            end
            `U_WR_S: begin
                if (ubus_bvalid == 1'b1) begin
                    U_WR_next_state <= `U_WR_FINISH;
                end
               else begin
                    U_WR_next_state <= `U_WR_S;
                end
            end
            `U_WR_FINISH: begin
                U_WR_next_state <= `U_WR_EMPTY;
            end
            default:begin
                U_WR_next_state <= `U_WR_EMPTY;
            end
        endcase
    end
    assign ubus_wdata = AXI_U_WData[31:0];
    // awaddr & awvalid
    assign ubus_awvalid = (U_WR_pre_state == `U_WR_RECREQ) ? 1'b1 : 1'b0;
    assign ubus_awaddr  = (U_WR_pre_state == `U_WR_RECREQ) ? U_WR_Addr : 0;

    // wvalid 
    assign ubus_wvalid = (U_WR_pre_state == `U_WR_WAIT1) ? 1'b1 : 1'b0;

    // wr_valid
    assign udcache_wr_valid = (U_WR_pre_state == `U_WR_FINISH) ? 1'b1 : 1'b0;

    axi_crossbar U_axi_crossbar (
        .aclk             ( clk     ),
        .aresetn          ( resetn        ),
        
        .s_axi_arid       ( {ibus_arid   ,dbus_arid    ,ubus_arid   } ),
        .s_axi_araddr     ( {ibus_araddr ,dbus_araddr  ,ubus_araddr } ),
        .s_axi_arlen      ( {ibus_arlen  ,dbus_arlen   ,ubus_arlen  } ),
        .s_axi_arsize     ( {ibus_arsize ,dbus_arsize  ,ubus_arsize } ),
        .s_axi_arburst    ( {ibus_arburst,dbus_arburst ,ubus_arburst} ),
        .s_axi_arlock     ( {ibus_arlock ,dbus_arlock  ,ubus_arlock } ),
        .s_axi_arcache    ( {ibus_arcache,dbus_arcache ,ubus_arcache} ),
        .s_axi_arprot     ( {ibus_arprot ,dbus_arprot  ,ubus_arprot } ),
        .s_axi_arqos      ( 0                                         ),
        .s_axi_arvalid    ( {ibus_arvalid,dbus_arvalid ,ubus_arvalid} ),
        .s_axi_arready    ( {ibus_arready,dbus_arready ,ubus_arready} ),
        .s_axi_rid        ( {ibus_rid    ,dbus_rid     ,ubus_rid    } ),
        .s_axi_rdata      ( {ibus_rdata  ,dbus_rdata   ,ubus_rdata  } ),
        .s_axi_rresp      ( {ibus_rresp  ,dbus_rresp   ,ubus_rresp  } ),
        .s_axi_rlast      ( {ibus_rlast  ,dbus_rlast   ,ubus_rlast  } ),
        .s_axi_rvalid     ( {ibus_rvalid ,dbus_rvalid  ,ubus_rvalid } ),
        .s_axi_rready     ( {ibus_rready ,dbus_rready  ,ubus_rready } ),
        .s_axi_awid       ( {ibus_awid   ,dbus_awid    ,ubus_awid   } ),
        .s_axi_awaddr     ( {ibus_awaddr ,dbus_awaddr  ,ubus_awaddr } ),
        .s_axi_awlen      ( {ibus_awlen  ,dbus_awlen   ,ubus_awlen  } ),
        .s_axi_awsize     ( {ibus_awsize ,dbus_awsize  ,ubus_awsize } ),
        .s_axi_awburst    ( {ibus_awburst,dbus_awburst ,ubus_awburst} ),
        .s_axi_awlock     ( {ibus_awlock ,dbus_awlock  ,ubus_awlock } ),
        .s_axi_awcache    ( {ibus_awcache,dbus_awcache ,ubus_awcache} ),
        .s_axi_awprot     ( {ibus_awprot ,dbus_awprot  ,ubus_awprot } ),
        .s_axi_awqos      ( 0                                         ),
        .s_axi_awvalid    ( {ibus_awvalid,dbus_awvalid ,ubus_awvalid} ),
        .s_axi_awready    ( {ibus_awready,dbus_awready ,ubus_awready} ),
        .s_axi_wid        ( {ibus_wid    ,dbus_wid     ,ubus_wid    } ),
        .s_axi_wdata      ( {ibus_wdata  ,dbus_wdata   ,ubus_wdata  } ),
        .s_axi_wstrb      ( {ibus_wstrb  ,dbus_wstrb   ,ubus_wstrb  } ),
        .s_axi_wlast      ( {ibus_wlast  ,dbus_wlast   ,ubus_wlast  } ),
        .s_axi_wvalid     ( {ibus_wvalid ,dbus_wvalid  ,ubus_wvalid } ),
        .s_axi_wready     ( {ibus_wready ,dbus_wready  ,ubus_wready } ),
        .s_axi_bid        ( {ibus_bid    ,dbus_bid     ,ubus_bid    } ),
        .s_axi_bresp      ( {ibus_bresp  ,dbus_bresp   ,ubus_bresp  } ),
        .s_axi_bvalid     ( {ibus_bvalid ,dbus_bvalid  ,ubus_bvalid } ),
        .s_axi_bready     ( {ibus_bready ,dbus_bready  ,ubus_bready } ),
        
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

endmodule
