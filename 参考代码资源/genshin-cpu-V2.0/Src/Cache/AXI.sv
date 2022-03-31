`include "Cache_Defines.svh"
`include "CPU_Defines.svh"
module AXIInteract(
    input logic clk,
    input logic resetn,
    AXI_Bus_Interface.slave  DcacheAXIBus,  // AXI模块向外输出的接口
    AXI_Bus_Interface.slave  IcacheAXIBus,  // AXI模块向外输出的接口

    output logic [ 3: 0] m_axi_arid,
    output logic [31: 0] m_axi_araddr,
    output logic [ 3: 0] m_axi_arlen,
    output logic [ 2: 0] m_axi_arsize,
    output logic [ 1: 0] m_axi_arburst,
    output logic [ 1: 0] m_axi_arlock,
    output logic [ 3: 0] m_axi_arcache,
    output logic [ 2: 0] m_axi_arprot,
    output logic         m_axi_arvalid,
    input  logic         m_axi_arready,
    input  logic [ 3: 0] m_axi_rid,
    input  logic [31: 0] m_axi_rdata,
    input  logic [ 1: 0] m_axi_rresp,
    input  logic         m_axi_rlast,
    input  logic         m_axi_rvalid,
    output logic         m_axi_rready,
    output logic [ 3: 0] m_axi_awid,
    output logic [31: 0] m_axi_awaddr,
    output logic [ 3: 0] m_axi_awlen,
    output logic [ 2: 0] m_axi_awsize,
    output logic [ 1: 0] m_axi_awburst,
    output logic [ 1: 0] m_axi_awlock,
    output logic [ 3: 0] m_axi_awcache,
    output logic [ 2: 0] m_axi_awprot,
    output logic         m_axi_awvalid,
    input  logic         m_axi_awready,
    output logic [ 3: 0] m_axi_wid,
    output logic [31: 0] m_axi_wdata,
    output logic [ 3: 0] m_axi_wstrb,
    output logic         m_axi_wlast,
    output logic         m_axi_wvalid,
    input  logic         m_axi_wready,
    input  logic [ 3: 0] m_axi_bid,
    input  logic [ 1: 0] m_axi_bresp,
    input  logic         m_axi_bvalid,
    output logic         m_axi_bready
  );

    logic [ 3: 0] ibus_arid;
    logic [31: 0] ibus_araddr;
    logic [ 3: 0] ibus_arlen;
    logic [ 2: 0] ibus_arsize;
    logic [ 1: 0] ibus_arburst;
    logic [ 1: 0] ibus_arlock;
    logic [ 3: 0] ibus_arcache;
    logic [ 2: 0] ibus_arprot;
    logic         ibus_arvalid;
    logic         ibus_arready;
    logic [ 3: 0] ibus_rid;
    logic [31: 0] ibus_rdata;
    logic [ 1: 0] ibus_rresp;
    logic         ibus_rlast;
    logic         ibus_rvalid;
    logic         ibus_rready;
    logic [ 3: 0] ibus_awid;
    logic [31: 0] ibus_awaddr;
    logic [ 3: 0] ibus_awlen;
    logic [ 2: 0] ibus_awsize;
    logic [ 1: 0] ibus_awburst;
    logic [ 1: 0] ibus_awlock;
    logic [ 3: 0] ibus_awcache;
    logic [ 2: 0] ibus_awprot;
    logic         ibus_awvalid;
    logic         ibus_awready;
    logic [ 3: 0] ibus_wid;
    logic [31: 0] ibus_wdata;
    logic [ 3: 0] ibus_wstrb;
    logic         ibus_wlast;
    logic         ibus_wvalid;
    logic         ibus_wready;
    logic [ 3: 0] ibus_bid;
    logic [ 1: 0] ibus_bresp;
    logic         ibus_bvalid;
    logic         ibus_bready;

    logic [ 3: 0] dbus_arid;
    logic [31: 0] dbus_araddr;
    logic [ 3: 0] dbus_arlen;
    logic [ 2: 0] dbus_arsize;
    logic [ 1: 0] dbus_arburst;
    logic [ 1: 0] dbus_arlock;
    logic [ 3: 0] dbus_arcache;
    logic [ 2: 0] dbus_arprot;
    logic         dbus_arvalid;
    logic         dbus_arready;
    logic [ 3: 0] dbus_rid;
    logic [31: 0] dbus_rdata;
    logic [ 1: 0] dbus_rresp;
    logic         dbus_rlast;
    logic         dbus_rvalid;
    logic         dbus_rready;
    logic [ 3: 0] dbus_awid;
    logic [31: 0] dbus_awaddr;
    logic [ 3: 0] dbus_awlen;
    logic [ 2: 0] dbus_awsize;
    logic [ 1: 0] dbus_awburst;
    logic [ 1: 0] dbus_awlock;
    logic [ 3: 0] dbus_awcache;
    logic [ 2: 0] dbus_awprot;
    logic         dbus_awvalid;
    logic         dbus_awready;
    logic [ 3: 0] dbus_wid;
    logic [31: 0] dbus_wdata;
    logic [ 3: 0] dbus_wstrb;
    logic         dbus_wlast;
    logic         dbus_wvalid;
    logic         dbus_wready;
    logic [ 3: 0] dbus_bid;
    logic [ 1: 0] dbus_bresp;
    logic         dbus_bvalid;
    logic         dbus_bready;
    

    typedef enum logic [3:0] {
    I_RD_EMPTY ,
    I_RD_RECREQ,
    I_RD_WAIT1 ,
    I_RD_WAIT2 ,
    I_RD_WAIT3 ,
    I_RD_WAIT4 ,
    I_RD_FINISH
    } IcacheRD;

    typedef enum logic [3:0] {
    D_RD_EMPTY, 
    D_RD_RECREQ,
    D_RD_WAIT1, 
    D_RD_WAIT2, 
    D_RD_WAIT3, 
    D_RD_WAIT4, 
    D_RD_FINISH
    } DcacheRD;
 
    typedef enum logic [3:0] {
    D_WR_EMPTY, 
    D_WR_RECREQ,
    D_WR_WAIT1, 
    D_WR_WAIT2, 
    D_WR_WAIT3, 
    D_WR_WAIT4, 
    D_WR_S,     
    D_WR_FINISH
    } DcacheWR;
    // I$ 读通道
    IcacheRD      I_RD_pre_state;
    IcacheRD      I_RD_next_state;
    logic [2:0]   I_RD_DataReady;
    logic [31:0]  I_RD_Addr;
    logic [127:0] AXI_I_RData;
    // D$ 读通道
    DcacheRD      D_RD_pre_state;
    DcacheRD      D_RD_next_state;
    logic [2:0]   D_RD_DataReady;
    logic [31:0]  D_RD_Addr;
    logic [127:0] AXI_D_RData;
    // D$ 写通道
    DcacheWR      D_WR_pre_state;
    DcacheWR      D_WR_next_state;
    logic [31:0]  D_WR_Addr;
    logic [127:0] AXI_D_WData;
// 锁存请求时的数据
    always_ff @(posedge clk or negedge resetn) begin
        if (resetn == `RstEnable) begin
            I_RD_Addr = '0;
        end 
        else begin  
            if (IcacheAXIBus.rd_req == 1'b1&& I_RD_pre_state == I_RD_EMPTY) begin
                I_RD_Addr = IcacheAXIBus.rd_addr;
            end 
        end 
    end

    always_ff @(posedge clk or negedge resetn) begin
        if (resetn == `RstEnable) begin
            D_RD_Addr = '0;
        end 
        else begin  
            if (DcacheAXIBus.rd_req == 1'b1 && D_RD_pre_state == D_RD_EMPTY) begin
                D_RD_Addr = DcacheAXIBus.rd_addr;
            end
        end 
    end

    always_ff @(posedge clk or negedge resetn) begin
        if (resetn == `RstEnable) begin
            D_WR_Addr = '0;
        end 
        else begin  
            if (DcacheAXIBus.wr_req && D_WR_pre_state == D_WR_EMPTY) begin
                D_WR_Addr   = DcacheAXIBus.wr_addr;
                AXI_D_WData = DcacheAXIBus.wr_data;
            end 
        end 
    end
/********************* ibus ******************/
    // master -> slave
    assign ibus_arid     = 1'b0;
    assign ibus_arlen    = 4'b0011;      // 传输4拍
    assign ibus_arsize   = 3'b010;       // 每次传输4字节
    assign ibus_arburst  = 2'b01;
    assign ibus_arlock   =  2'b00;
    assign ibus_arcache  = '0;
    assign ibus_arprot   = '0;
    

    // master -> slave
    assign ibus_awid     = 'x;           
    assign ibus_awlen    = 'x;
    assign ibus_awsize   = 'x;
    assign ibus_awburst  = 'x;
    assign ibus_awlock   = 'x;
    assign ibus_awcache  = 'x;
    assign ibus_awprot   = 'x;
    assign ibus_awvalid  = 'x;

    // master -> slave
    assign ibus_wid      = 'x;
    assign ibus_wdata    = 'x;
    assign ibus_wstrb    = 'x;
    assign ibus_wlast    = 'x;
    assign ibus_wvalid   = 'x;
    assign ibus_bready   = 'x;


/********************* dbus ******************/
    assign dbus_arid     = 1'b1;
    assign dbus_arlen    = 4'b0011;
    assign dbus_arsize   = 3'b010;
    assign dbus_arburst  = 2'b01;
    assign dbus_arlock   = '0;
    assign dbus_arcache  = '0;
    assign dbus_arprot   = '0;


    assign dbus_awid     = 1'b1;
    assign dbus_awlen    = 4'b0011;        // 传输4次
    assign dbus_awsize   = 3'b010;         // 传输32bit 
    assign dbus_awburst  = 2'b01;          // increase模式
    assign dbus_awlock   = '0;
    assign dbus_awcache  = '0;
    assign dbus_awprot   = '0;


    assign dbus_wid     = 1'b1;
    assign dbus_wstrb   = 4'b1111;
    assign dbus_bready  = 1'b1;

    // 空闲信号的输出
    assign IcacheAXIBus.rd_rdy = (I_RD_pre_state == I_RD_EMPTY ) ? 1'b1 : 1'b0;
    assign IcacheAXIBus.wr_rdy = 1'b0;
    assign DcacheAXIBus.rd_rdy = (D_RD_pre_state == D_RD_EMPTY ) ? 1'b1 : 1'b0;
    assign DcacheAXIBus.wr_rdy = (D_WR_pre_state == D_WR_EMPTY)  ? 1'b1 : 1'b0;

// FSM -- Icache RD 
    always_ff @(posedge clk or negedge resetn) begin
        if (resetn == `RstEnable) begin
            I_RD_pre_state  = I_RD_EMPTY;
            I_RD_next_state = I_RD_EMPTY;
        end 
        else begin  
            I_RD_pre_state = I_RD_next_state;
        end
    end

    // 状态转移
    // 因为AXI的握手在时钟沿上，所以在状态转移里面加入了I_RD_DataReady 用于burst数据的拼接
    always_comb begin
        unique case (I_RD_pre_state)
            I_RD_EMPTY:begin
                I_RD_DataReady  = 'x;
                if (IcacheAXIBus.rd_req == 1'b1) begin
                    I_RD_next_state = I_RD_RECREQ;
                end
                else begin
                    I_RD_next_state = I_RD_EMPTY;
                end
            end
            I_RD_RECREQ:begin
                I_RD_DataReady  = 'x;
                if (ibus_arvalid == 1'b1 && ibus_arready == 1'b1) begin
                    I_RD_next_state = I_RD_WAIT1;
                end else begin
                    I_RD_next_state = I_RD_next_state;

                end
            end
            I_RD_WAIT1:begin
                if (ibus_rvalid == 1'b1 && ibus_rready == 1'b1) begin
                    I_RD_next_state = I_RD_WAIT2;
                    I_RD_DataReady  = 3'd1;
                end
                else begin
                    I_RD_next_state = I_RD_next_state;
                    I_RD_DataReady  = 'x;
                end
            end
            I_RD_WAIT2:begin
                if (ibus_rvalid == 1'b1 && ibus_rready == 1'b1) begin
                    I_RD_next_state = I_RD_WAIT3;
                    I_RD_DataReady  = 3'd2;
                end
                else begin
                    I_RD_next_state = I_RD_next_state;
                    I_RD_DataReady  = 'x;
                end
            end
            I_RD_WAIT3:begin
                if (ibus_rvalid == 1'b1 && ibus_rready == 1'b1) begin
                    I_RD_next_state = I_RD_WAIT4;
                    I_RD_DataReady  = 3'd3;
                end
                else begin
                    I_RD_next_state = I_RD_next_state;
                    I_RD_DataReady  = 'x;
                end
            end
            I_RD_WAIT4:begin
                if (ibus_rvalid == 1'b1 && ibus_rready == 1'b1 && ibus_rlast == 1'b1) begin
                    I_RD_next_state = I_RD_FINISH;
                    I_RD_DataReady  = 3'd4;
                end
                else begin
                    I_RD_next_state = I_RD_next_state;
                    I_RD_DataReady  = 'x;
                end
            end
            I_RD_FINISH: begin
                I_RD_DataReady  = 'x;
                I_RD_next_state     = I_RD_EMPTY;
            end

        endcase
    end

    // 状态转移产生的变化
    // araddr & arvalid
    always_comb begin
        if (I_RD_pre_state == I_RD_RECREQ ) begin
                ibus_arvalid = 1'b1;
                ibus_araddr  = I_RD_Addr;  // 传输地址
        end else begin
                ibus_arvalid = 'x;
                ibus_araddr  = 'x;  // 传输地址
        end
    end
    // rready 
    always_comb begin
        if (I_RD_pre_state == I_RD_WAIT1 || I_RD_pre_state == I_RD_WAIT2 ||I_RD_pre_state == I_RD_WAIT3 ||I_RD_pre_state == I_RD_WAIT4) begin
            if (ibus_rvalid == 1'b1) begin
                ibus_rready = 1'b1;
            end 
            else begin
                ibus_rready = 'x;
            end
        end           
   end
    // finish 时产生的ret_valid & ret_rdata
    always_comb begin
        if (I_RD_pre_state == I_RD_FINISH) begin
            IcacheAXIBus.ret_valid = 1'b1;
            IcacheAXIBus.ret_data = AXI_I_RData;
        end
        else begin
            IcacheAXIBus.ret_valid = 1'bx;
            IcacheAXIBus.ret_data = 'x;
        end
    end
    // AXI brust数据的获取
    always_ff @(posedge clk or negedge resetn) begin
        if (resetn == `RstEnable) begin
            AXI_I_RData  = 128'b0; 
        end 
        else if(I_RD_pre_state == I_RD_EMPTY) begin
            AXI_I_RData  = 128'b0; 
        end
        else if (I_RD_DataReady != 3'd0) begin
            case (I_RD_DataReady)
                3'd1:begin
                    AXI_I_RData[31:0]   = ibus_rdata;
                end
                3'd2:begin
                    AXI_I_RData[63:32]  = ibus_rdata;
                end
                3'd3:begin
                    AXI_I_RData[95:64]  = ibus_rdata;
                end
                3'd4:begin
                    AXI_I_RData[127:96] = ibus_rdata;
                end
                default:
                    AXI_I_RData = AXI_I_RData;
            endcase
        end 
    end

// FSM -- Dcache RD 
    always_ff @(posedge clk or negedge resetn) begin
        if (resetn == `RstEnable) begin
            D_RD_pre_state  = D_RD_EMPTY;
            D_RD_next_state = D_RD_EMPTY;
        end 
        else begin  
            D_RD_pre_state = D_RD_next_state;
        end
    end

    // 状态转移
    // 因为AXI的握手在时钟沿上，所以在状态转移里面加入了D_RD_DataReady 用于burst数据的拼接
    always_comb begin
        unique case (D_RD_pre_state)
            D_RD_EMPTY:begin
                D_RD_DataReady  = 'x;
                if (DcacheAXIBus.rd_req == 1'b1) begin
                    D_RD_next_state = D_RD_RECREQ;
                end
                else begin
                    D_RD_next_state = D_RD_EMPTY;
                end
            end
            D_RD_RECREQ:begin
                D_RD_DataReady  = 'x;
                if (dbus_arvalid == 1'b1 && dbus_arready == 1'b1) begin
                    D_RD_next_state = D_RD_WAIT1;
                end else begin
                    D_RD_next_state = D_RD_next_state;

                end
            end
            D_RD_WAIT1:begin
                if (dbus_rvalid == 1'b1 && dbus_rready == 1'b1) begin
                    D_RD_next_state = D_RD_WAIT2;
                    D_RD_DataReady  = 3'd1;
                end
                else begin
                    D_RD_next_state = D_RD_next_state;
                    D_RD_DataReady  = 'x;
                end
            end
            D_RD_WAIT2:begin
                if (dbus_rvalid == 1'b1 && dbus_rready == 1'b1) begin
                    D_RD_next_state = D_RD_WAIT3;
                    D_RD_DataReady  = 3'd2;
                end
                else begin
                    D_RD_next_state = D_RD_next_state;
                    D_RD_DataReady  = 'x;
                end
            end
            D_RD_WAIT3:begin
                if (dbus_rvalid == 1'b1 && dbus_rready == 1'b1) begin
                    D_RD_next_state = D_RD_WAIT4;
                    D_RD_DataReady  = 3'd3;
                end
                else begin
                    D_RD_next_state = D_RD_next_state;
                    D_RD_DataReady  = 'x;
                end
            end
            D_RD_WAIT4:begin
                if (dbus_rvalid == 1'b1 && dbus_rready == 1'b1 && dbus_rlast == 1'b1) begin
                    D_RD_next_state = D_RD_FINISH;
                    D_RD_DataReady  = 3'd4;
                end
                else begin
                    D_RD_next_state = D_RD_next_state;
                    D_RD_DataReady  = 'x;
                end
            end
            D_RD_FINISH: begin
                D_RD_DataReady  = 'x;
                D_RD_next_state     = D_RD_EMPTY;
            end

        endcase
    end

    // 状态转移产生的变化
    // araddr & arvalid
    always_comb begin
        if (D_RD_pre_state == D_RD_RECREQ ) begin
                dbus_arvalid = 1'b1;
                dbus_araddr  = D_RD_Addr; // 传输地址
        end else begin
                dbus_arvalid = 'x;
                dbus_araddr  = 'x;  // 传输地址
        end
    end
    // rready 
    always_comb begin
        if (D_RD_pre_state == D_RD_WAIT1 || D_RD_pre_state == D_RD_WAIT2 ||D_RD_pre_state == D_RD_WAIT3 ||D_RD_pre_state == D_RD_WAIT4) begin
            if (dbus_rvalid == 1'b1) begin
                dbus_rready = 1'b1;
            end 
            else begin
                dbus_rready = 'x;
            end
        end           
   end
    // finish 时产生的ret_valid & ret_rdata
    always_comb begin
        if (D_RD_pre_state == D_RD_FINISH) begin
            DcacheAXIBus.ret_valid = 1'b1;
            DcacheAXIBus.ret_data = AXI_I_RData;
        end
        else begin
            DcacheAXIBus.ret_valid = 1'bx;
            DcacheAXIBus.ret_data = 'x;
        end
    end
    // AXI brust数据的获取
    always_ff @(posedge clk or negedge resetn) begin
        if (resetn == `RstEnable) begin
            AXI_D_RData  = 128'b0; 
        end 
        else if(D_RD_pre_state == D_RD_EMPTY) begin
            AXI_D_RData  = 128'b0; 
        end
        else if (D_RD_DataReady != 3'd0) begin
            case (D_RD_DataReady)
                3'd1:begin
                    AXI_D_RData[31:0]   = dbus_rdata;
                end
                3'd2:begin
                    AXI_D_RData[63:32]  = dbus_rdata;
                end
                3'd3:begin
                    AXI_D_RData[95:64]  = dbus_rdata;
                end
                3'd4:begin
                    AXI_D_RData[127:96] = dbus_rdata;
                end
                default:
                    AXI_D_RData = AXI_I_RData;
            endcase
        end 
    end
// FSM -- Dcache WR
    always_ff @(posedge clk or negedge resetn) begin
        if (resetn == `RstEnable) begin
            D_WR_pre_state  = D_WR_EMPTY;
            D_WR_next_state = D_WR_EMPTY;
        end 
        else begin  
            D_WR_pre_state = D_WR_next_state;
        end
    end

    // 状态转移
    always_comb begin
        unique case (D_WR_pre_state)
            D_WR_EMPTY:begin
                dbus_wdata      = 'x;
                if (DcacheAXIBus.wr_req == 1'b1) begin
                    D_WR_next_state = D_WR_RECREQ;
                end
                else begin
                    D_WR_next_state = D_WR_EMPTY;
                end
            end
            D_WR_RECREQ:begin
                dbus_wdata      = 'x;
                if (dbus_awready == 1'b1) begin
                    D_WR_next_state = D_WR_WAIT1;
                end else begin
                    D_WR_next_state = D_WR_next_state;
                end
            end
            D_WR_WAIT1:begin
                dbus_wdata = AXI_D_WData[31:0];
                if ( dbus_wready == 1'b1) begin
                    D_WR_next_state = D_WR_WAIT2;
                end
                else begin
                    D_WR_next_state = D_WR_next_state;
                end
            end
            D_WR_WAIT2:begin
                dbus_wdata = AXI_D_WData[63:32];
                if (dbus_wready == 1'b1) begin
                    D_WR_next_state = D_WR_WAIT3;
                end
                else begin
                    D_WR_next_state = D_WR_next_state;
                end
            end
            D_WR_WAIT3:begin
                dbus_wdata = AXI_D_WData[95:64];
                if ( dbus_wready == 1'b1) begin
                    D_WR_next_state = D_WR_WAIT4;
                end
                else begin
                    D_WR_next_state = D_WR_next_state;
                end
            end
            D_WR_WAIT4:begin
                dbus_wdata = AXI_D_WData[127:96];
                dbus_wlast = 1'b1;
                if (dbus_wready == 1'b1 && dbus_wlast == 1'b1) begin
                    D_WR_next_state = D_WR_S;
                end
                else begin
                    D_WR_next_state = D_WR_next_state;
                end
            end
            D_WR_S: begin
                dbus_wdata      = 'x;
                if (dbus_bvalid == 1'b1) begin
                    D_WR_next_state = D_WR_FINISH;
                end
            end
            D_WR_FINISH: begin
                dbus_wdata      = 'x;
                D_WR_next_state = D_WR_EMPTY;
            end
        endcase
    end

    // 状态转移产生的变化
    // awaddr & awvalid
    always_comb begin
        if (D_WR_pre_state == D_WR_RECREQ ) begin
                dbus_awvalid = 1'b1;
                dbus_awaddr  = D_WR_Addr;  // 传输地址
        end else begin
                dbus_awvalid = 'x;
                dbus_awaddr  = 'x;  // 传输地址
        end
    end
    // wvalid 
    always_comb begin
        if (D_WR_pre_state == D_WR_WAIT1 || D_WR_pre_state == D_WR_WAIT2 ||D_WR_pre_state == D_WR_WAIT3 ||D_WR_pre_state == D_WR_WAIT4) begin
            dbus_wvalid = 1'b1;
        end     
        else begin
            dbus_wvalid = 'x;            
        end      
   end
    // finish 时产生的ret_valid & ret_rdata
    always_comb begin
        if (D_WR_pre_state == D_WR_FINISH) begin
            DcacheAXIBus.wr_rdy = 1'b1;
        end
        else begin
            DcacheAXIBus.wr_rdy = 1'bx;
        end
    end

    Bus_Interface biu (
        .aclk             ( cpu_clk     ),
        .aresetn          ( rstn        ),
        
        .s_axi_arid       ( {ibus_arid   ,dbus_arid   } ),
        .s_axi_araddr     ( {ibus_araddr ,dbus_araddr } ),
        .s_axi_arlen      ( {ibus_arlen  ,dbus_arlen  } ),
        .s_axi_arsize     ( {ibus_arsize ,dbus_arsize } ),
        .s_axi_arburst    ( {ibus_arburst,dbus_arburst} ),
        .s_axi_arlock     ( {ibus_arlock ,dbus_arlock } ),
        .s_axi_arcache    ( {ibus_arcache,dbus_arcache} ),
        .s_axi_arprot     ( {ibus_arprot ,dbus_arprot } ),
        .s_axi_arqos      ( 0                           ),
        .s_axi_arvalid    ( {ibus_arvalid,dbus_arvalid} ),
        .s_axi_arready    ( {ibus_arready,dbus_arready} ),
        .s_axi_rid        ( {ibus_rid    ,dbus_rid    } ),
        .s_axi_rdata      ( {ibus_rdata  ,dbus_rdata  } ),
        .s_axi_rresp      ( {ibus_rresp  ,dbus_rresp  } ),
        .s_axi_rlast      ( {ibus_rlast  ,dbus_rlast  } ),
        .s_axi_rvalid     ( {ibus_rvalid ,dbus_rvalid } ),
        .s_axi_rready     ( {ibus_rready ,dbus_rready } ),
        .s_axi_awid       ( {ibus_awid   ,dbus_awid   } ),
        .s_axi_awaddr     ( {ibus_awaddr ,dbus_awaddr } ),
        .s_axi_awlen      ( {ibus_awlen  ,dbus_awlen  } ),
        .s_axi_awsize     ( {ibus_awsize ,dbus_awsize } ),
        .s_axi_awburst    ( {ibus_awburst,dbus_awburst} ),
        .s_axi_awlock     ( {ibus_awlock ,dbus_awlock } ),
        .s_axi_awcache    ( {ibus_awcache,dbus_awcache} ),
        .s_axi_awprot     ( {ibus_awprot ,dbus_awprot } ),
        .s_axi_awqos      ( 0                           ),
        .s_axi_awvalid    ( {ibus_awvalid,dbus_awvalid} ),
        .s_axi_awready    ( {ibus_awready,dbus_awready} ),
        .s_axi_wid        ( {ibus_wid    ,dbus_wid    } ),
        .s_axi_wdata      ( {ibus_wdata  ,dbus_wdata  } ),
        .s_axi_wstrb      ( {ibus_wstrb  ,dbus_wstrb  } ),
        .s_axi_wlast      ( {ibus_wlast  ,dbus_wlast  } ),
        .s_axi_wvalid     ( {ibus_wvalid ,dbus_wvalid } ),
        .s_axi_wready     ( {ibus_wready ,dbus_wready } ),
        .s_axi_bid        ( {ibus_bid    ,dbus_bid    } ),
        .s_axi_bresp      ( {ibus_bresp  ,dbus_bresp  } ),
        .s_axi_bvalid     ( {ibus_bvalid ,dbus_bvalid } ),
        .s_axi_bready     ( {ibus_bready ,dbus_bready } ),
        
        .m_axi_arid       ( m_axi_arid          ),
        .m_axi_araddr     ( m_axi_araddr        ),
        .m_axi_arlen      ( m_axi_arlen[3:0]    ),
        .m_axi_arsize     ( m_axi_arsize        ),
        .m_axi_arburst    ( m_axi_arburst       ),
        .m_axi_arlock     ( m_axi_arlock        ),
        .m_axi_arcache    ( m_axi_arcache       ),
        .m_axi_arprot     ( m_axi_arprot        ),
        .m_axi_arqos      (                     ),
        .m_axi_arvalid    ( m_axi_arvalid       ),
        .m_axi_arready    ( m_axi_arready       ),
        .m_axi_rid        ( m_axi_rid           ),
        .m_axi_rdata      ( m_axi_rdata         ),
        .m_axi_rresp      ( m_axi_rresp         ),
        .m_axi_rlast      ( m_axi_rlast         ),
        .m_axi_rvalid     ( m_axi_rvalid        ),
        .m_axi_rready     ( m_axi_rready        ),
        .m_axi_awid       ( m_axi_awid          ),
        .m_axi_awaddr     ( m_axi_awaddr        ),
        .m_axi_awlen      ( m_axi_awlen[3:0]    ),
        .m_axi_awsize     ( m_axi_awsize        ),
        .m_axi_awburst    ( m_axi_awburst       ),
        .m_axi_awlock     ( m_axi_awlock        ),
        .m_axi_awcache    ( m_axi_awcache       ),
        .m_axi_awprot     ( m_axi_awprot        ),
        .m_axi_awqos      (                     ),
        .m_axi_awvalid    ( m_axi_awvalid       ),
        .m_axi_awready    ( m_axi_awready       ),
        .m_axi_wid        ( m_axi_wid           ),
        .m_axi_wdata      ( m_axi_wdata         ),
        .m_axi_wstrb      ( m_axi_wstrb         ),
        .m_axi_wlast      ( m_axi_wlast         ),
        .m_axi_wvalid     ( m_axi_wvalid        ),
        .m_axi_wready     ( m_axi_wready        ),
        .m_axi_bid        ( m_axi_bid           ),
        .m_axi_bresp      ( m_axi_bresp         ),
        .m_axi_bvalid     ( m_axi_bvalid        ),
        .m_axi_bready     ( m_axi_bready        )
    );

endmodule
