`include "global_defines.vh"
`include "AXICache_defines.vh"
//Attention:AXI和CACHE相关定义可以写到AXICache_defines.vh文件中

module AXI_Interface (
/*******************AXI定义信号如下******************/
//Attention:arlen上《CPU设计实战》的定义有点问题,这里采用四位宽即可;
//Attention:icache_ret_data/dcache_ret_data位宽这里改为128位(一个Cache line);
    input clk,
    input resetn,
    //ar读请求通道
    output [ 3:0] arid,
    output [31:0] araddr,
    output [ 3:0] arlen,
    output [ 2:0] arsize,
    output [ 1:0] arburst,
    output [ 1:0] arlock,
    output [ 3:0] arcache,
    output [ 2:0] arprot,
    output        arvalid,
    input         arready,
    //r读响应通道
    input  [ 3:0] rid,
    input  [31:0] rdata,
    input  [ 1:0] rresp,
    input         rlast,
    input         rvalid,
    output        rready,
    //aw写请求通道
    output [ 3:0] awid,
    output [31:0] awaddr,
    output [ 3:0] awlen,
    output [ 2:0] awsize,
    output [ 1:0] awburst,
    output [ 1:0] awlock,
    output [ 3:0] awcache,
    output [ 2:0] awprot,
    output        awvalid,
    input         awready,
    //w写数据通道
    output [ 3:0] wid,
    output [31:0] wdata,
    output [ 3:0] wstrb,
    output        wlast,
    output        wvalid,
    input         wready,
    //b写响应通道
    input  [ 3:0] bid,
    input  [ 1:0] bresp,
    input         bvalid,
    input         bready,
/*******************AXI定义信号如上******************/

/*******************AXI与Cache的交互信号如下******************/
//Attention:本人没有实现《CPU设计实战》中的rd_type,ret_last和wr_type;
    //和ICache交互
    input          icache_rd_req, 
    input  [31:0]  icache_rd_addr, 
    output         icache_rd_rdy, 
    output         icache_ret_valid, //传输完成后ret_valid置1
    output [127:0] icache_ret_data,
    //和DCache交互
    input          dcache_rd_req, 
    input   [31:0] dcache_rd_addr, 
    output         dcache_rd_rdy, 
    output         dcache_ret_valid, //传输完成后ret_valid置1
    output [127:0] dcache_ret_data, 
    input          dcache_wr_req, 
    input   [31:0] dcache_wr_addr,     
    input   [ 3:0] dcache_wr_strb, //TODO:目前没用到,不过Uncache会用到
    input  [127:0] dcache_wr_data, //一次写一个cache line的数据
    output         dcache_wr_rdy
/*******************AXI与Cache的交互信号如上******************/
);

//Function:AXI控制模块 实现AXI接口和远端axi_ram交互;和Cache与Uncache交互;

/*******************ICache对应的AXI端口信号定义如下******************/
//Attention: 访问指令存储器,谈不上写请求/写数据/写响应,所以这里没有定义
wire [ 3:0] inst_arid;
wire [31:0] inst_araddr;
wire [ 3:0] inst_arlen;
wire [ 2:0] inst_arsize;
wire [ 1:0] inst_arburst;
wire [ 1:0] inst_arlock;
wire [ 3:0] inst_arcache;
wire [ 2:0] inst_arprot;
wire        inst_arvalid;
wire        inst_arready;
//r读响应通道
wire [ 3:0] inst_rid;
wire [31:0] inst_rdata;
wire [ 1:0] inst_rresp;
wire        inst_rlast;
wire        inst_rvalid;
wire        inst_rready;
/*******************ICache对应的AXI端口信号定义如上******************/

/*******************DCache对应的AXI端口信号定义如下******************/
wire [ 3:0] data_arid;
wire [31:0] data_araddr;
wire [ 3:0] data_arlen;
wire [ 2:0] data_arsize;
wire [ 1:0] data_arburst;
wire [ 1:0] data_arlock;
wire [ 3:0] data_arcache;
wire [ 2:0] data_arprot;
wire        data_arvalid;
wire        data_arready;
//r读响应通道
wire [ 3:0] data_rid;
wire [31:0] data_rdata;
wire [ 1:0] data_rresp;
wire        data_rlast;
wire        data_rvalid;
wire        data_rready;
//aw写请求通道
wire [ 3:0] data_awid;
wire [31:0] data_awaddr;
wire [ 3:0] data_awlen;
wire [ 2:0] data_awsize;
wire [ 1:0] data_awburst;
wire [ 1:0] data_awlock;
wire [ 3:0] data_awcache;
wire [ 2:0] data_awprot;
wire        data_awvalid;
wire        data_awready;
//w写数据通道
wire [ 3:0] data_wid;
reg  [31:0] data_wdata;
wire [ 3:0] data_wstrb;
wire        data_wlast;
wire        data_wvalid;
wire        data_wready;
//b写响应通道
wire [ 3:0] data_bid;
wire [ 1:0] data_bresp;
wire        data_bvalid;
wire        data_bready;
/*******************DCache对应的AXI端口信号定义如上******************/

//状态机定义
reg  [ 2:0] I_RD_state,I_RD_nextstate;
reg  [ 2:0] D_RD_state,D_RD_nextstate; 
reg  [ 2:0] D_WR_state,D_WR_nextstate; 
//锁存器
reg  [31:0] ff_inst_araddr; 
reg  [31:0] ff_data_araddr;
reg  [31:0] ff_data_awaddr;
reg [127:0] ff_dcache_wr_data;
/*******************ICache对应的AXI端口信号赋值如下******************/
//Attention:AXI总线要求,master端一旦发起某一地址或者数据传输的请求(req),在握手成功之前,不得更改传输的地址/数据
//因此,对于此处的读请求对应的地址,我们需要锁存操作,在req发出后,先把addr保存起来不变;DCache的数据和地址同理。
always @(posedge clk) begin //inst_araddr
    if(~resetn) 
        ff_inst_araddr <= 32'b0;
    else if(I_RD_state == `I_RD_IDLE && icache_rd_req) //此时已经发起传输;之后就锁存,保持inst_araddr不变
        ff_inst_araddr <= icache_rd_addr;
end
assign inst_araddr  = ff_inst_araddr;

assign inst_arid    = 4'b0000;
assign inst_arlen   = 4'b0011; //四次传输
assign inst_arsize  = 3'b010; //一次4 bytes
assign inst_arburst = 2'b01;
assign inst_arlock  = 2'b00;
assign inst_arcache = 4'b0000;
assign inst_arprot  = 3'b000;
assign inst_arvalid = (I_RD_state == `I_AR_SHAKE) ? 1'b1 : 1'b0; //inst_arvalid比icache_rd_req晚一周期

assign inst_rready  = (I_RD_state == `I_R_SHAKE1 || I_RD_state == `I_R_SHAKE2 ||
                       I_RD_state == `I_R_SHAKE3 || I_RD_state == `I_R_SHAKE4) ? 1'b1 : 1'b0;
/*******************ICache对应的AXI端口信号赋值如上******************/

/*******************DCache对应的AXI端口信号赋值如下******************/
always @(posedge clk) begin //data_araddr
    if(~resetn) 
        ff_data_araddr <= 32'b0;
    else if(D_RD_state == `D_RD_IDLE && dcache_rd_req) //此时已经发起传输;之后就锁存,保持data_araddr不变
        ff_data_araddr <= dcache_rd_addr;
end
assign data_araddr  = ff_data_araddr;

always @(posedge clk) begin //data_awaddr
    if(~resetn) 
        ff_data_awaddr <= 32'b0;
    else if(D_WR_state == `D_RD_IDLE && dcache_wr_req) //此时已经发起传输;之后就锁存,保持data_araddr不变
        ff_data_awaddr <= dcache_wr_addr;
end
assign data_awaddr  = ff_data_awaddr;

always @(posedge clk) begin //ff_dcache_wr_data
    if(~resetn) 
        ff_dcache_wr_data <= 128'b0;
    else if(D_WR_state == `D_WR_IDLE && dcache_wr_req)
        ff_dcache_wr_data <= dcache_wr_data;
end

always @(posedge clk) begin //data_wdata 从一个Cache line中依次获取
    if(~resetn)
        data_wdata <= 32'b0;
    else if(D_WR_nextstate == `D_W_SHAKE1) //这个可以看nextstate
        data_wdata <= ff_dcache_wr_data[31:0];
    else if(D_WR_nextstate == `D_W_SHAKE2)
        data_wdata <= ff_dcache_wr_data[63:32];
    else if(D_WR_nextstate == `D_W_SHAKE3)
        data_wdata <= ff_dcache_wr_data[95:64];
    else if(D_WR_nextstate == `D_W_SHAKE4)
        data_wdata <= ff_dcache_wr_data[127:96];                
end

assign data_arid    = 4'b0001;
assign data_arlen   = 4'b0011; //四次传输
assign data_arsize  = 3'b010; //一次4 bytes
assign data_arburst = 2'b01;
assign data_arlock  = 2'b00;
assign data_arcache = 4'b0000;
assign data_arprot  = 3'b000;
assign data_arvalid = (D_RD_state == `D_AR_SHAKE) ? 1'b1 : 1'b0; //data_arvalid比dcache_rd_req晚一周期

assign data_rready  = (D_RD_state == `D_R_SHAKE1 || D_RD_state == `D_R_SHAKE2 ||
                       D_RD_state == `D_R_SHAKE3 || D_RD_state == `D_R_SHAKE4) ? 1'b1 : 1'b0;

assign data_awid    = 4'b0001;
assign data_awlen   = 4'b0011; //四次传输
assign data_awsize  = 3'b010; //一次4 bytes
assign data_awburst = 2'b01;
assign data_awlock  = 2'b00; 
assign data_awcache = 4'b0000;
assign data_awprot  = 3'b000;
assign data_awvalid = (D_WR_state == `D_AW_SHAKE) ? 1'b1 : 1'b0; //data_awvalid比dcache_wr_req晚一周期

assign data_wid     = 4'b0001;
assign data_wstrb   = 4'b1111; //Attention:对于远程的axi_ram,wstrb必然是全部有效的;写DCache就是另一回事了
//Attention:可以证明,此时传输最后一个字,同时通过控制data_wvalid可以保证wlast只在一个时钟上升沿作用
assign data_wlast   = (D_WR_nextstate == `D_B_SHAKE && data_wvalid && data_wready) ? 1'b1 : 1'b0;
assign data_wvalid  = (D_WR_state == `D_W_SHAKE1 || D_WR_state == `D_W_SHAKE2 ||
                       D_WR_state == `D_W_SHAKE3 || D_WR_state == `D_W_SHAKE4) ? 1'b1 : 1'b0;

assign data_bready  = 1'b1; //可以始终置为1
/*******************DCache对应的AXI端口信号赋值如上******************/

//状态机:ICache Read
always @(posedge clk) begin
    if(~resetn) 
        I_RD_state <= `I_RD_IDLE;
    else
        I_RD_state <= I_RD_nextstate;        
end

always @(*) begin //ICache Read
    case (I_RD_state)
        `I_RD_IDLE:
            if(icache_rd_req) I_RD_nextstate <= `I_AR_SHAKE;
            else I_RD_nextstate <= `I_RD_IDLE;
        `I_AR_SHAKE:
            if(inst_arvalid & inst_arready) I_RD_nextstate <= `I_R_SHAKE1;
            else I_RD_nextstate <= `I_AR_SHAKE;
        `I_R_SHAKE1:
            if(inst_rvalid & inst_rready) I_RD_nextstate <= `I_R_SHAKE2;
            else I_RD_nextstate <= `I_R_SHAKE1;
        `I_R_SHAKE2:
            if(inst_rvalid & inst_rready) I_RD_nextstate <= `I_R_SHAKE3;
            else I_RD_nextstate <= `I_R_SHAKE2;        
        `I_R_SHAKE3:
            if(inst_rvalid & inst_rready) I_RD_nextstate <= `I_R_SHAKE4;
            else I_RD_nextstate <= `I_R_SHAKE3;
        `I_R_SHAKE4:
        //Attention:因为规定了Cache line是四个字,所以到了I_R_SHAKE4如果有握手必然传输结束,不必考虑rlast
            if(inst_rvalid & inst_rready) I_RD_nextstate <= `I_RD_IDLE;
            else I_RD_nextstate <= `I_R_SHAKE4;  
        default: I_RD_nextstate <= `I_RD_IDLE;
    endcase
end

//DCache Read
always @(posedge clk) begin
    if(~resetn) 
        D_RD_state <= `D_RD_IDLE;
    else
        D_RD_state <= D_RD_nextstate;        
end

always @(*) begin //DCache Read
    case (D_RD_state)
        `D_RD_IDLE:
            if(dcache_rd_req) D_RD_nextstate <= `D_AR_SHAKE;
            else D_RD_nextstate <= `D_RD_IDLE;
        `D_AR_SHAKE:
            if(data_arvalid & data_arready) D_RD_nextstate <= `D_R_SHAKE1;
            else D_RD_nextstate <= `D_AR_SHAKE;
        `D_R_SHAKE1:
            if(data_rvalid & data_rready) D_RD_nextstate <= `D_R_SHAKE2;
            else D_RD_nextstate <= `D_R_SHAKE1;
        `D_R_SHAKE2:
            if(data_rvalid & data_rready) D_RD_nextstate <= `D_R_SHAKE3;
            else D_RD_nextstate <= `D_R_SHAKE3;
        `D_R_SHAKE3:
            if(data_rvalid & data_rready) D_RD_nextstate <= `D_R_SHAKE4;
            else D_RD_nextstate <= `D_R_SHAKE3;
        `D_R_SHAKE4:
        //Attention:因为规定了Cache line是四个字,所以到了D_R_SHAKE4如果有握手必然传输结束,不必考虑rlast
            if(data_rvalid & data_rready) D_RD_nextstate <= `D_RD_IDLE;
            else D_RD_nextstate <= `D_R_SHAKE4;
        default: D_RD_nextstate <= `D_RD_IDLE;
    endcase
end

//DCache Write
always @(posedge clk) begin
    if(~resetn) 
        D_WR_state <= `D_WR_IDLE;
    else
        D_WR_state <= D_WR_nextstate;        
end

always @(*) begin //DCache Write
    case (D_WR_state)
        `D_WR_IDLE: 
            if(dcache_wr_req) D_WR_nextstate <= `D_AW_SHAKE;
            else D_WR_nextstate <= `D_WR_IDLE;
        `D_AW_SHAKE:
            if(data_awvalid & data_awready) D_WR_nextstate <= `D_W_SHAKE1;
            else D_WR_nextstate <= `D_AW_SHAKE;
        `D_W_SHAKE1:
            if(data_wvalid & data_wready) D_WR_nextstate <= `D_W_SHAKE2;
            else D_WR_nextstate <= `D_W_SHAKE1;
        `D_W_SHAKE2:
            if(data_wvalid & data_wready) D_WR_nextstate <= `D_W_SHAKE3;
            else D_WR_nextstate <= `D_W_SHAKE2;
        `D_W_SHAKE3:
            if(data_wvalid & data_wready) D_WR_nextstate <= `D_W_SHAKE4;
            else D_WR_nextstate <= `D_W_SHAKE3;
        `D_W_SHAKE4: 
        //Attention:因为规定了Cache line是四个字,所以到了D_W_SHAKE4如果有握手必然传输结束,不必考虑wlast
            if(data_wvalid & data_wready) D_WR_nextstate <= `D_B_SHAKE;
            else D_WR_nextstate <= `D_W_SHAKE4;
        `D_B_SHAKE:
            if(data_bvalid & data_bready) D_WR_nextstate <= `D_WR_IDLE;
            else D_WR_nextstate <= `D_B_SHAKE;
        default: D_WR_nextstate <= `D_WR_IDLE;
    endcase
end

//axi_crossbar:负责仲裁信号
//Attention:优先级为DCache>ICache
axi_crossbar U_axi_crossbar(
    .aclk(clk),
    .aresetn(resetn),

    .s_axi_awid    ({4'b0         ,data_awid   }),
    .s_axi_awaddr  ({32'b0        ,data_awaddr }),
    .s_axi_awlen   ({4'b0         ,data_awlen  }),
    .s_axi_awsize  ({3'b0         ,data_awsize }),
    .s_axi_awburst ({2'b0         ,data_awburst}),
    .s_axi_awlock  ({2'b0         ,data_awlock }),
    .s_axi_awcache ({4'b0         ,data_awcache}),
    .s_axi_awprot  ({3'b0         ,data_awprot }),
    .s_axi_awqos   (0                           ), //没用
    .s_axi_awvalid ({1'b0         ,data_awvalid}),
    .s_axi_awready ({1'b0         ,data_awready}),

    .s_axi_wid     ({4'b0         ,data_wid    }),
    .s_axi_wdata   ({32'b0        ,data_wdata  }),
    .s_axi_wstrb   ({4'b0         ,data_wstrb  }),
    .s_axi_wlast   ({1'b0         ,data_wlast  }),
    .s_axi_wvalid  ({1'b0         ,data_wvalid }),
    .s_axi_wready  ({1'b0         ,data_wready }),

    .s_axi_bid     ({4'b0         ,data_bid    }),
    .s_axi_bresp   ({2'b0         ,data_bresp  }),
    .s_axi_bvalid  ({1'b0         ,data_bvalid }),
    .s_axi_bready  ({1'b0         ,data_bready }),  

    .s_axi_arid    ({inst_arid    ,data_arid   }),
    .s_axi_araddr  ({inst_araddr  ,data_araddr }),
    .s_axi_arlen   ({inst_arlen   ,data_arlen  }),
    .s_axi_arsize  ({inst_arsize  ,data_arsize }),
    .s_axi_arburst ({inst_arburst ,data_arburst}),
    .s_axi_arlock  ({inst_arlock  ,data_arlock }),
    .s_axi_arcache ({inst_arcache ,data_arcache}),
    .s_axi_arprot  ({inst_arprot  ,data_arprot }),
    .s_axi_arqos   (0                           ), //没用
    .s_axi_arvalid ({inst_arvalid ,data_arvalid}),
    .s_axi_arready ({inst_arready ,data_arready}),

    .s_axi_rid     ({inst_rid     ,data_rid    }),
    .s_axi_rdata   ({inst_rdata   ,data_rdata  }),
    .s_axi_rresp   ({inst_rresp   ,data_rresp  }),
    .s_axi_rlast   ({inst_rlast   ,data_rlast  }),              
    .s_axi_rvalid  ({inst_rvalid  ,data_rvalid }),              
    .s_axi_rready  ({inst_rready  ,data_rready }),             

    .m_axi_awid    (awid   ),
    .m_axi_awaddr  (awaddr ),
    .m_axi_awlen   (awlen  ),
    .m_axi_awsize  (awsize ),
    .m_axi_awburst (awburst),
    .m_axi_awlock  (awlock ),
    .m_axi_awcache (awcache),
    .m_axi_awprot  (awprot ),
    .m_axi_awqos   (       ), //直接置空
    .m_axi_awvalid (awvalid),
    .m_axi_awready (awready),
    .m_axi_wid     (wid    ),
    .m_axi_wdata   (wdata  ),
    .m_axi_wstrb   (wstrb  ),
    .m_axi_wlast   (wlast  ),
    .m_axi_wvalid  (wvalid ),
    .m_axi_wready  (wready ),
    .m_axi_bid     (bid    ),
    .m_axi_bresp   (bresp  ),
    .m_axi_bvalid  (bvalid ),
    .m_axi_bready  (bready ),
    .m_axi_arid    (arid   ),
    .m_axi_araddr  (araddr ),
    .m_axi_arlen   (arlen  ),
    .m_axi_arsize  (arsize ),
    .m_axi_arburst (arburst),
    .m_axi_arlock  (arlock ),
    .m_axi_arcache (arcache),
    .m_axi_arprot  (arprot ),
    .m_axi_arqos   (       ), //直接置空
    .m_axi_arvalid (arvalid),
    .m_axi_arready (arready),
    .m_axi_rid     (rid    ),
    .m_axi_rdata   (rdata  ),
    .m_axi_rresp   (rresp  ),
    .m_axi_rlast   (rlast  ),
    .m_axi_rvalid  (rvalid ),
    .m_axi_rready  (rready )
);

endmodule //AXI_Interface