`include "global_defines.vh"
`include "AXICache_defines.svh"
`include "AXI_Packed.svh"
//Attention:AXI和CACHE相关定义可以写到AXICache_defines.vh文件中

module AXI_Interface (
/*******************AXI定义信号如下******************/
//Attention:arlen上《CPU设计实战》的定义有点问题,这里采用四位宽即可;
//Attention:icache_ret_data/dcache_ret_data位宽这里改为128位(一个Cache line);
    input         clk,
    input         resetn,
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

/*******************AXI与Cache的交互信号定义如下******************/
//Attention:本人目前没有实现《CPU设计实战》中的rd_type,ret_last和wr_type,不过Uncache可能会实现;
    //和ICache交互
    input          icache_rd_req, 
    input  [31:0]  icache_rd_addr, 
    output         icache_rd_rdy, 
    output reg     icache_ret_valid, //传输完成后ret_valid置1
    output [127:0] icache_ret_data,
    //和DCache交互
    input          dcache_rd_req, 
    input   [31:0] dcache_rd_addr, 
    output         dcache_rd_rdy, 
    output   reg   dcache_ret_valid, //传输完成后ret_valid置1
    output [127:0] dcache_ret_data, 
    input          dcache_wr_req, 
    input   [31:0] dcache_wr_addr,     
    // input   [ 3:0] dcache_wr_strb, //TODO:感觉用不到?
    input  [127:0] dcache_wr_data, //一次写一个cache line的数据
    output         dcache_wr_rdy,
    //和Uncache(DCache)交互
    input             udcache_rd_req, 
    input      [31:0] udcache_rd_addr, 
    output            udcache_rd_rdy, 
    output reg        udcache_ret_valid, //传输完成后ret_valid置1
    output reg [31:0] udcache_ret_data, //一次一个字
    input             udcache_wr_req, 
    input      [31:0] udcache_wr_addr,     
    input      [ 3:0] udcache_wr_strb, 
    input      [31:0] udcache_wr_data, //一次一个字
    output            udcache_wr_rdy,    
/*******************AXI与Cache的交互信号定义如上******************/
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
//icache不处理写问题，下面信号悬空即可
wire        inst_awready;
wire        inst_wready;
wire [ 3:0] inst_bid;
wire [ 1:0] inst_bresp;
wire        inst_bvalid;

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

/*******************Uncache(对应DCache)对应的AXI端口信号定义如下******************/
wire [ 3:0] udata_arid;
wire [31:0] udata_araddr;
wire [ 3:0] udata_arlen;
wire [ 2:0] udata_arsize;
wire [ 1:0] udata_arburst;
wire [ 1:0] udata_arlock;
wire [ 3:0] udata_arcache;
wire [ 2:0] udata_arprot;
wire        udata_arvalid;
wire        udata_arready;
//r读响应通道
wire [ 3:0] udata_rid;
wire [31:0] udata_rdata;
wire [ 1:0] udata_rresp;
wire        udata_rlast;
wire        udata_rvalid;
wire        udata_rready;
//aw写请求通道
wire [ 3:0] udata_awid;
wire [31:0] udata_awaddr;
wire [ 3:0] udata_awlen;
wire [ 2:0] udata_awsize;
wire [ 1:0] udata_awburst;
wire [ 1:0] udata_awlock;
wire [ 3:0] udata_awcache;
wire [ 2:0] udata_awprot;
wire        udata_awvalid;
wire        udata_awready;
//w写数据通道
wire [ 3:0] udata_wid;
reg  [31:0] udata_wdata;
wire [ 3:0] udata_wstrb;
wire        udata_wlast;
wire        udata_wvalid;
wire        udata_wready;
//b写响应通道
wire [ 3:0] udata_bid;
wire [ 1:0] udata_bresp;
wire        udata_bvalid;
wire        udata_bready;
/*******************Uncache(对应DCache)对应的AXI端口信号定义如上******************/

//状态机定义
reg  [ 2:0] I_RD_state,I_RD_nextstate;
reg  [ 2:0] D_RD_state,D_RD_nextstate; 
reg  [ 2:0] D_WR_state,D_WR_nextstate;
reg  [ 1:0] UD_RD_state,UD_RD_nextstate; 
reg  [ 1:0] UD_WR_state,UD_WR_nextstate; 

//锁存器
reg  [31:0] ff_inst_araddr; 
reg  [31:0] ff_data_araddr;
reg  [31:0] ff_data_awaddr;
reg  [31:0] ff_udata_araddr;
reg  [31:0] ff_udata_awaddr;
reg [127:0] ff_dcache_wr_data;
reg [127:0] ff_icache_ret_data;
reg [127:0] ff_dcache_ret_data;

/*******************AXI与ICache/DCache/Uncache的交互信号定义如下******************/
//Attention:把ret_valid设置成reg类型,是为了保证ret_valid高电平和返回的数据在同一个时钟上升沿返回
always @(posedge clk) begin
    if(~resetn) 
        icache_ret_valid <= 1'b0;
    else if(I_RD_nextstate == `I_RD_IDLE && I_RD_state == `I_R_SHAKE4)
        icache_ret_valid <= 1'b1;
    else
        icache_ret_valid <= 1'b0;
end

always @(posedge clk) begin
    if(~resetn) 
        ff_icache_ret_data <= 128'b0;
    else if(I_RD_nextstate == `I_R_SHAKE2 && I_RD_state == `I_R_SHAKE1)
        ff_icache_ret_data[31:0] <= inst_rdata;
    else if(I_RD_nextstate == `I_R_SHAKE3 && I_RD_state == `I_R_SHAKE2)
        ff_icache_ret_data[63:32] <= inst_rdata;
    else if(I_RD_nextstate == `I_R_SHAKE4 && I_RD_state == `I_R_SHAKE3)
        ff_icache_ret_data[95:64] <= inst_rdata;        
    else if(I_RD_nextstate == `I_RD_IDLE && I_RD_state == `I_R_SHAKE4)
        ff_icache_ret_data[127:96] <= inst_rdata;
end
assign icache_ret_data  = ff_icache_ret_data;

always @(posedge clk) begin
    if(~resetn) 
        dcache_ret_valid <= 1'b0;
    else if(D_RD_nextstate == `D_RD_IDLE && D_RD_state == `D_R_SHAKE4)
        dcache_ret_valid <= 1'b1;
    else
        dcache_ret_valid <= 1'b0;
end

always @(posedge clk) begin
    if(~resetn) 
        ff_dcache_ret_data <= 128'b0;
    else if(D_RD_nextstate == `D_R_SHAKE2 && D_RD_state == `D_R_SHAKE1)
        ff_dcache_ret_data[31:0] <= data_rdata;
    else if(D_RD_nextstate == `D_R_SHAKE3 && D_RD_state == `D_R_SHAKE2)
        ff_dcache_ret_data[63:32] <= data_rdata;
    else if(D_RD_nextstate == `D_R_SHAKE4 && D_RD_state == `D_R_SHAKE3)
        ff_dcache_ret_data[95:64] <= data_rdata;        
    else if(D_RD_nextstate == `D_RD_IDLE && D_RD_state == `D_R_SHAKE4)
        ff_dcache_ret_data[127:96] <= data_rdata;
end
assign dcache_ret_data  = ff_dcache_ret_data;

always @(posedge clk) begin
    if(~resetn) 
        udcache_ret_valid <= 1'b0;
    else if(UD_RD_nextstate == `UD_RD_IDLE && UD_RD_state == `UD_R_SHAKE)
        udcache_ret_valid <= 1'b1;
    else
        udcache_ret_valid <= 1'b0;
end

always @(posedge clk) begin
    if(~resetn) 
        udcache_ret_data <= 32'b0;
    else if(UD_RD_nextstate == `UD_RD_IDLE && UD_RD_state == `UD_R_SHAKE)
        udcache_ret_data <= udata_rdata;
end

//书上是要求wr_rdy先于wr_req置1;那rd_rdy大概同理?? 个人认为rd_rdy信号对于Cache设计影响较小
assign icache_rd_rdy   = (I_RD_state  == `I_RD_IDLE)  ? 1'b1 : 1'b0;
assign dcache_rd_rdy   = (D_RD_state  == `D_RD_IDLE)  ? 1'b1 : 1'b0;
assign dcache_wr_rdy   = (D_WR_state  == `D_WR_IDLE)  ? 1'b1 : 1'b0;
assign udcache_rd_rdy  = (UD_RD_state == `UD_RD_IDLE) ? 1'b1 : 1'b0;
assign udcache_wr_rdy  = (UD_WR_state == `UD_WR_IDLE) ? 1'b1 : 1'b0;

/*******************AXI与ICache/DCache/Uncache的交互信号定义如上******************/

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

//TODO:下面Cache生成的AXI信号,可能会存在时序上延迟较多的问题，后期需要解决
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
    else if(D_WR_state == `D_WR_IDLE && dcache_wr_req) //此时已经发起传输;之后就锁存,保持data_awaddr不变
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
//TODO:
assign data_wlast   = (D_WR_state == `D_W_SHAKE4 && data_wvalid && data_wready) ? 1'b1 : 1'b0;
assign data_wvalid  = (D_WR_state == `D_W_SHAKE1 || D_WR_state == `D_W_SHAKE2 ||
                       D_WR_state == `D_W_SHAKE3 || D_WR_state == `D_W_SHAKE4) ? 1'b1 : 1'b0;

assign data_bready  = 1'b1; //可以始终置为1
/*******************DCache对应的AXI端口信号赋值如上******************/

/*******************Uncache(对应DCache)对应的AXI端口信号赋值如下******************/
always @(posedge clk) begin //udata_araddr
    if(~resetn) 
        ff_udata_araddr <= 32'b0;
    else if(UD_RD_state == `UD_RD_IDLE && udcache_rd_req) //此时已经发起传输;之后就锁存,保持udata_araddr不变
        ff_udata_araddr <= udcache_rd_addr;
end
assign udata_araddr  = ff_udata_araddr;

always @(posedge clk) begin //udata_awaddr
    if(~resetn) 
        ff_udata_awaddr <= 32'b0;
    else if(UD_WR_state == `UD_WR_IDLE && udcache_wr_req) //此时已经发起传输;之后就锁存,保持udata_awaddr不变
        ff_udata_awaddr <= udcache_wr_addr;
end
assign udata_awaddr  = ff_udata_awaddr;

always @(posedge clk) begin //udata_wdata 直接写一个字到远端axi_ram 配合下面的udata_wstrb
    if(~resetn)
        udata_wdata <= 32'b0;
    else if(UD_WR_nextstate == `UD_W_SHAKE) //这个可以看nextstate
        udata_wdata <= udcache_wr_data;
end

assign udata_araddr  = ff_udata_araddr;
assign udata_arid    = 4'b0010;
assign udata_arlen   = 4'b0000; //一次传输
assign udata_arsize  = 3'b010; //一次4 bytes
assign udata_arburst = 2'b01;
assign udata_arlock  = 2'b00;
assign udata_arcache = 4'b0000;
assign udata_arprot  = 3'b000;
//udata_arvalid比udcache_rd_req晚一周期
assign udata_arvalid = (UD_RD_state == `UD_AR_SHAKE) ? 1'b1 : 1'b0; 
assign udata_rready  = (UD_RD_state == `UD_R_SHAKE) ? 1'b1 : 1'b0;

assign udata_awid    = 4'b0010;
assign udata_awlen   = 4'b0000; //一次传输
assign udata_awsize  = 3'b010; //一次4 bytes
assign udata_awburst = 2'b01;
assign udata_awlock  = 2'b00; 
assign udata_awcache = 4'b0000;
assign udata_awprot  = 3'b000;
//udata_awvalid比udcache_wr_req晚一周期
assign udata_awvalid = (UD_WR_state == `UD_AW_SHAKE) ? 1'b1 : 1'b0; 

assign udata_wid     = 4'b0010;
assign udata_wstrb   = udcache_wr_strb; 
assign udata_wlast   = (UD_WR_state == `UD_W_SHAKE && udata_wvalid && udata_wready) ? 1'b1 : 1'b0;
assign udata_wvalid  = (UD_WR_state == `UD_W_SHAKE) ? 1'b1 : 1'b0;

assign udata_bready  = 1'b1; //可以始终置为1
/*******************Uncache(对应DCache)对应的AXI端口信号赋值如上******************/

/*******************AXI-Cache状态机如下******************/
//TODO:状态机的转移条件或许可以简化，后期处理
//ICache Read
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

//Uncache(DCache) Read
always @(posedge clk) begin
    if(~resetn) 
        UD_RD_state <= `UD_RD_IDLE;
    else
        UD_RD_state <= UD_RD_nextstate;        
end

always @(*) begin
    case (UD_RD_state)
        `UD_RD_IDLE: 
            if(udcache_rd_req) UD_RD_nextstate <= `UD_AR_SHAKE;
            else UD_RD_nextstate <= `UD_RD_IDLE;
        `UD_AR_SHAKE:
            if(udata_arvalid & udata_arready) UD_RD_nextstate <= `UD_R_SHAKE;
            else UD_RD_nextstate <= `UD_AR_SHAKE;
        `UD_R_SHAKE:
        //Attention:因为Uncache只传输一个字,所以到了UD_R_SHAKE如果有握手必然传输结束,不必考虑rlast
            if(udata_rvalid & udata_rready) UD_RD_nextstate <= `UD_RD_IDLE;
            else UD_RD_nextstate <= `UD_R_SHAKE;
        default: UD_RD_nextstate <= `UD_RD_IDLE;
    endcase
end

//Uncache(DCache) Write
always @(posedge clk) begin
    if(~resetn) 
        UD_WR_state <= `UD_WR_IDLE;
    else
        UD_WR_state <= UD_WR_nextstate;        
end

always @(*) begin
    case (UD_WR_state)
        `UD_WR_IDLE: 
            if(udcache_wr_req) UD_WR_nextstate <= `UD_AW_SHAKE;
            else UD_WR_nextstate <= `UD_WR_IDLE;
        `UD_AW_SHAKE:
            if(udata_awvalid & udata_awready) UD_WR_nextstate <= `UD_W_SHAKE;
            else UD_WR_nextstate <= `UD_AW_SHAKE;
        `UD_W_SHAKE:
        //Attention:因为Uncache只传输一个字,所以到了UD_W_SHAKE如果有握手必然传输结束,不必考虑wlast
            if(udata_wvalid & udata_wready) UD_WR_nextstate <= `UD_B_SHAKE;
            else UD_WR_nextstate <= `UD_W_SHAKE;
        `UD_B_SHAKE:
            if(udata_bvalid & udata_bready) UD_WR_nextstate <= `UD_WR_IDLE;
            else UD_WR_nextstate <= `UD_B_SHAKE;
        default: UD_WR_nextstate <= `UD_WR_IDLE;
    endcase
end

/*******************AXI-Cache状态机如上******************/
//Attention:为了适配verilator,手写axi_crossbar处理仲裁问题.
    //定义打包信号
    axi_req ubus_req;
    axi_req d_bus_req;
    axi_req i_bus_req;
    axi_req master_req;

    axi_resp ubus_resp;
    axi_resp d_bus_resp;
    axi_resp i_bus_resp;
    axi_resp master_resp;
    wire [2:0] ivalid;

    assign ivalid[0] = (UD_RD_state != `UD_RD_IDLE || UD_WR_state != `UD_WR_IDLE) ? 1'b1:1'b0;
    assign ivalid[1] = (D_RD_state != `D_RD_IDLE || D_WR_state != `D_WR_IDLE ) ?1'b1 : 1'b0;
    assign ivalid[2] = (I_RD_state != `I_RD_IDLE ) ?1'b1 : 1'b0;

    assign ubus_req.axi_araddr   = udata_araddr;
    assign ubus_req.axi_arid     = udata_arid;
    assign ubus_req.axi_arlen    = udata_arlen;
    assign ubus_req.axi_arsize   = udata_arsize;
    assign ubus_req.axi_arburst  = udata_arburst;
    assign ubus_req.axi_arlock   = udata_arlock;
    assign ubus_req.axi_arcache  = udata_arcache;
    assign ubus_req.axi_arprot   = udata_arprot;
    assign ubus_req.axi_arvalid  = udata_arvalid;
    assign ubus_req.axi_rready   = udata_rready;
    assign ubus_req.axi_awid     = udata_awid;
    assign ubus_req.axi_awaddr   = udata_awaddr;
    assign ubus_req.axi_awlen    = udata_awlen;
    assign ubus_req.axi_awsize   = udata_awsize;
    assign ubus_req.axi_awburst  = udata_awburst;
    assign ubus_req.axi_awlock   = udata_awlock;
    assign ubus_req.axi_awcache  = udata_awcache;
    assign ubus_req.axi_awprot   = udata_awprot;
    assign ubus_req.axi_awvalid  = udata_awvalid;
    assign ubus_req.axi_wid      = udata_wid;
    assign ubus_req.axi_wdata    = udata_wdata;
    assign ubus_req.axi_wstrb    = udata_wstrb;
    assign ubus_req.axi_wlast    = udata_wlast;
    assign ubus_req.axi_wvalid   = udata_wvalid;
    assign ubus_req.axi_bready   = udata_bready;

    assign d_bus_req.axi_araddr   = data_araddr;
    assign d_bus_req.axi_arid     = data_arid;
    assign d_bus_req.axi_arlen    = data_arlen;
    assign d_bus_req.axi_arsize   = data_arsize;
    assign d_bus_req.axi_arburst  = data_arburst;
    assign d_bus_req.axi_arlock   = data_arlock;
    assign d_bus_req.axi_arcache  = data_arcache;
    assign d_bus_req.axi_arprot   = data_arprot;
    assign d_bus_req.axi_arvalid  = data_arvalid;
    assign d_bus_req.axi_rready   = data_rready;
    assign d_bus_req.axi_awid     = data_awid;
    assign d_bus_req.axi_awaddr   = data_awaddr;
    assign d_bus_req.axi_awlen    = data_awlen;
    assign d_bus_req.axi_awsize   = data_awsize;
    assign d_bus_req.axi_awburst  = data_awburst;
    assign d_bus_req.axi_awlock   = data_awlock;
    assign d_bus_req.axi_awcache  = data_awcache;
    assign d_bus_req.axi_awprot   = data_awprot;
    assign d_bus_req.axi_awvalid  = data_awvalid;
    assign d_bus_req.axi_wid      = data_wid;
    assign d_bus_req.axi_wdata    = data_wdata;
    assign d_bus_req.axi_wstrb    = data_wstrb;
    assign d_bus_req.axi_wlast    = data_wlast;
    assign d_bus_req.axi_wvalid   = data_wvalid;
    assign d_bus_req.axi_bready   = data_bready;

    assign i_bus_req.axi_araddr   = inst_araddr;
    assign i_bus_req.axi_arid     = inst_arid;
    assign i_bus_req.axi_arlen    = inst_arlen;
    assign i_bus_req.axi_arsize   = inst_arsize;
    assign i_bus_req.axi_arburst  = inst_arburst;
    assign i_bus_req.axi_arlock   = inst_arlock;
    assign i_bus_req.axi_arcache  = inst_arcache;
    assign i_bus_req.axi_arprot   = inst_arprot;
    assign i_bus_req.axi_arvalid  = inst_arvalid;
    assign i_bus_req.axi_rready   = inst_rready;
    assign i_bus_req.axi_awid     = 4'b0;
    assign i_bus_req.axi_awaddr   = 32'b0;
    assign i_bus_req.axi_awlen    = 4'b0;
    assign i_bus_req.axi_awsize   = 3'b0;
    assign i_bus_req.axi_awburst  = 2'b0;
    assign i_bus_req.axi_awlock   = 2'b0;
    assign i_bus_req.axi_awcache  = 4'b0;
    assign i_bus_req.axi_awprot   = 3'b0;
    assign i_bus_req.axi_awvalid  = 1'b0;
    assign i_bus_req.axi_wid      = 4'b0;
    assign i_bus_req.axi_wdata    = 32'b0;
    assign i_bus_req.axi_wstrb    = 4'b0;
    assign i_bus_req.axi_wlast    = 1'b0;
    assign i_bus_req.axi_wvalid   = 1'b0;
    assign i_bus_req.axi_bready   = 1'b0;


/***************响应打包*************************/
    assign   udata_arready =  ubus_resp.axi_arready;     
    assign   udata_rid     =  ubus_resp.axi_rid    ;
    assign   udata_rdata   =  ubus_resp.axi_rdata  ; 
    assign   udata_rresp   =  ubus_resp.axi_rresp  ; 
    assign   udata_rlast   =  ubus_resp.axi_rlast  ; 
    assign   udata_rvalid  =  ubus_resp.axi_rvalid ;   
    assign   udata_awready =  ubus_resp.axi_awready;     
    assign   udata_wready  =  ubus_resp.axi_wready ;   
    assign   udata_bid     =  ubus_resp.axi_bid    ;
    assign   udata_bresp   =  ubus_resp.axi_bresp  ; 
    assign   udata_bvalid  =  ubus_resp.axi_bvalid ;

    assign   inst_arready =  i_bus_resp.axi_arready;     
    assign   inst_rid     =  i_bus_resp.axi_rid    ;
    assign   inst_rdata   =  i_bus_resp.axi_rdata  ; 
    assign   inst_rresp   =  i_bus_resp.axi_rresp  ; 
    assign   inst_rlast   =  i_bus_resp.axi_rlast  ; 
    assign   inst_rvalid  =  i_bus_resp.axi_rvalid ;   
    assign   inst_awready =  i_bus_resp.axi_awready;     
    assign   inst_wready  =  i_bus_resp.axi_wready ;   
    assign   inst_bid     =  i_bus_resp.axi_bid    ;
    assign   inst_bresp   =  i_bus_resp.axi_bresp  ; 
    assign   inst_bvalid  =  i_bus_resp.axi_bvalid ;

    assign   data_arready =  d_bus_resp.axi_arready;     
    assign   data_rid     =  d_bus_resp.axi_rid    ;
    assign   data_rdata   =  d_bus_resp.axi_rdata  ; 
    assign   data_rresp   =  d_bus_resp.axi_rresp  ; 
    assign   data_rlast   =  d_bus_resp.axi_rlast  ; 
    assign   data_rvalid  =  d_bus_resp.axi_rvalid ;   
    assign   data_awready =  d_bus_resp.axi_awready;     
    assign   data_wready  =  d_bus_resp.axi_wready ;   
    assign   data_bid     =  d_bus_resp.axi_bid    ;
    assign   data_bresp   =  d_bus_resp.axi_bresp  ; 
    assign   data_bvalid  =  d_bus_resp.axi_bvalid ;

    BusArbiter   #(
        .NUM_INPUTS(3 )
    )
    BusArbiter_dut (
    .clk        (clk ),
    .resetn     (resetn ),
    .ivalid     (ivalid ),
    .ireqs      ({i_bus_req, d_bus_req, ubus_req} ),
    .oresp      ({master_resp}),
    .iresps     ({i_bus_resp,d_bus_resp,ubus_resp} ),
    .oreq       ( master_req)
    );

    assign   araddr    =  master_req.axi_araddr   ;
    assign   arid      =  master_req.axi_arid     ;
    assign   arlen     =  master_req.axi_arlen    ;
    assign   arsize    =  master_req.axi_arsize   ;
    assign   arburst   =  master_req.axi_arburst  ;
    assign   arlock    =  master_req.axi_arlock   ;
    assign   arcache   =  master_req.axi_arcache  ;
    assign   arprot    =  master_req.axi_arprot   ;
    assign   arvalid   =  master_req.axi_arvalid  ;
    assign   rready    =  master_req.axi_rready   ;
    assign   awid      =  master_req.axi_awid     ;
    assign   awaddr    =  master_req.axi_awaddr   ;
    assign   awlen     =  master_req.axi_awlen    ;
    assign   awsize    =  master_req.axi_awsize   ;
    assign   awburst   =  master_req.axi_awburst  ;
    assign   awlock    =  master_req.axi_awlock   ;
    assign   awcache   =  master_req.axi_awcache  ;
    assign   awprot    =  master_req.axi_awprot   ;
    assign   awvalid   =  master_req.axi_awvalid  ;
    assign   wid       =  master_req.axi_wid      ;
    assign   wdata     =  master_req.axi_wdata    ;
    assign   wstrb     =  master_req.axi_wstrb    ;
    assign   wlast     =  master_req.axi_wlast    ;
    assign   wvalid    =  master_req.axi_wvalid   ;
    assign   bready    =  master_req.axi_bready   ;

    assign   master_resp.axi_arready  = m_axi_arready  ;
    assign   master_resp.axi_rid      = m_axi_rid      ;
    assign   master_resp.axi_rdata    = m_axi_rdata    ;
    assign   master_resp.axi_rresp    = m_axi_rresp    ;
    assign   master_resp.axi_rlast    = m_axi_rlast    ;
    assign   master_resp.axi_rvalid   = m_axi_rvalid   ;
    assign   master_resp.axi_awready  = m_axi_awready  ;
    assign   master_resp.axi_wready   = m_axi_wready   ;
    assign   master_resp.axi_bid      = m_axi_bid      ;
    assign   master_resp.axi_bresp    = m_axi_bresp    ;
    assign   master_resp.axi_bvalid   = m_axi_bvalid   ;

//axi_crossbar:负责仲裁信号
//Attention:优先级为DCache>ICache
// axi_crossbar U_axi_crossbar(
//     .aclk(clk),
//     .aresetn(resetn),

//     .s_axi_awid    ({4'b0         ,data_awid    ,udata_awid   }),
//     .s_axi_awaddr  ({32'b0        ,data_awaddr  ,udata_awaddr }),
//     .s_axi_awlen   ({4'b0         ,data_awlen   ,udata_awlen  }),
//     .s_axi_awsize  ({3'b0         ,data_awsize  ,udata_awsize }),
//     .s_axi_awburst ({2'b0         ,data_awburst ,udata_awburst}),
//     .s_axi_awlock  ({2'b0         ,data_awlock  ,udata_awlock }),
//     .s_axi_awcache ({4'b0         ,data_awcache ,udata_awcache}),
//     .s_axi_awprot  ({3'b0         ,data_awprot  ,udata_awprot }),
//     .s_axi_awqos   (0                                          ), //没用
//     .s_axi_awvalid ({1'b0         ,data_awvalid ,udata_awvalid}),
//     .s_axi_awready ({inst_awready ,data_awready ,udata_awready}),

//     .s_axi_wid     ({4'b0         ,data_wid     ,udata_wid    }),
//     .s_axi_wdata   ({32'b0        ,data_wdata   ,udata_wdata  }),
//     .s_axi_wstrb   ({4'b0         ,data_wstrb   ,udata_wstrb  }),
//     .s_axi_wlast   ({1'b0         ,data_wlast   ,udata_wlast  }),
//     .s_axi_wvalid  ({1'b0         ,data_wvalid  ,udata_wvalid }),
//     .s_axi_wready  ({inst_wready  ,data_wready  ,udata_wready }),

//     .s_axi_bid     ({inst_bid     ,data_bid     ,udata_bid    }),
//     .s_axi_bresp   ({inst_bresp   ,data_bresp   ,udata_bresp  }),
//     .s_axi_bvalid  ({inst_bvalid  ,data_bvalid  ,udata_bvalid }),
//     .s_axi_bready  ({1'b0         ,data_bready  ,udata_bready }),  

//     .s_axi_arid    ({inst_arid    ,data_arid    ,udata_arid   }),
//     .s_axi_araddr  ({inst_araddr  ,data_araddr  ,udata_araddr }),
//     .s_axi_arlen   ({inst_arlen   ,data_arlen   ,udata_arlen  }),
//     .s_axi_arsize  ({inst_arsize  ,data_arsize  ,udata_arsize }),
//     .s_axi_arburst ({inst_arburst ,data_arburst ,udata_arburst}),
//     .s_axi_arlock  ({inst_arlock  ,data_arlock  ,udata_arlock }),
//     .s_axi_arcache ({inst_arcache ,data_arcache ,udata_arcache}),
//     .s_axi_arprot  ({inst_arprot  ,data_arprot  ,udata_arprot }),
//     .s_axi_arqos   (0                                          ), //没用
//     .s_axi_arvalid ({inst_arvalid ,data_arvalid ,udata_arvalid}),
//     .s_axi_arready ({inst_arready ,data_arready ,udata_arready}),

//     .s_axi_rid     ({inst_rid     ,data_rid     ,udata_rid    }),
//     .s_axi_rdata   ({inst_rdata   ,data_rdata   ,udata_rdata  }),
//     .s_axi_rresp   ({inst_rresp   ,data_rresp   ,udata_rresp  }),
//     .s_axi_rlast   ({inst_rlast   ,data_rlast   ,udata_rlast  }),              
//     .s_axi_rvalid  ({inst_rvalid  ,data_rvalid  ,udata_rvalid }),              
//     .s_axi_rready  ({inst_rready  ,data_rready  ,udata_rready }),             

//     .m_axi_awid    (awid   ),
//     .m_axi_awaddr  (awaddr ),
//     .m_axi_awlen   (awlen  ),
//     .m_axi_awsize  (awsize ),
//     .m_axi_awburst (awburst),
//     .m_axi_awlock  (awlock ),
//     .m_axi_awcache (awcache),
//     .m_axi_awprot  (awprot ),
//     .m_axi_awqos   (       ), //直接置空
//     .m_axi_awvalid (awvalid),
//     .m_axi_awready (awready),
//     .m_axi_wid     (wid    ),
//     .m_axi_wdata   (wdata  ),
//     .m_axi_wstrb   (wstrb  ),
//     .m_axi_wlast   (wlast  ),
//     .m_axi_wvalid  (wvalid ),
//     .m_axi_wready  (wready ),
//     .m_axi_bid     (bid    ),
//     .m_axi_bresp   (bresp  ),
//     .m_axi_bvalid  (bvalid ),
//     .m_axi_bready  (bready ),
//     .m_axi_arid    (arid   ),
//     .m_axi_araddr  (araddr ),
//     .m_axi_arlen   (arlen  ),
//     .m_axi_arsize  (arsize ),
//     .m_axi_arburst (arburst),
//     .m_axi_arlock  (arlock ),
//     .m_axi_arcache (arcache),
//     .m_axi_arprot  (arprot ),
//     .m_axi_arqos   (       ), //直接置空
//     .m_axi_arvalid (arvalid),
//     .m_axi_arready (arready),
//     .m_axi_rid     (rid    ),
//     .m_axi_rdata   (rdata  ),
//     .m_axi_rresp   (rresp  ),
//     .m_axi_rlast   (rlast  ),
//     .m_axi_rvalid  (rvalid ),
//     .m_axi_rready  (rready )
// );
endmodule //AXI_Interface