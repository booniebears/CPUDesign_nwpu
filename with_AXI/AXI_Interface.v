`include "global_defines.vh"
`include "AXICache_defines.vh"
//Attention:AXI��CACHE��ض������д��AXICache_defines.vh�ļ���

module AXI_Interface (
/*******************AXI�����ź�����******************/
//Attention:arlen�ϡ�CPU���ʵս���Ķ����е�����,���������λ����;
//Attention:icache_ret_data/dcache_ret_dataλ�������Ϊ128λ(һ��Cache line);
    input clk,
    input resetn,
    //ar������ͨ��
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
    //r����Ӧͨ��
    input  [ 3:0] rid,
    input  [31:0] rdata,
    input  [ 1:0] rresp,
    input         rlast,
    input         rvalid,
    output        rready,
    //awд����ͨ��
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
    //wд����ͨ��
    output [ 3:0] wid,
    output [31:0] wdata,
    output [ 3:0] wstrb,
    output        wlast,
    output        wvalid,
    input         wready,
    //bд��Ӧͨ��
    input  [ 3:0] bid,
    input  [ 1:0] bresp,
    input         bvalid,
    input         bready,
/*******************AXI�����ź�����******************/

/*******************AXI��Cache�Ľ����ź�����******************/
//Attention:����û��ʵ�֡�CPU���ʵս���е�rd_type,ret_last��wr_type;
    //��ICache����
    input          icache_rd_req, 
    input  [31:0]  icache_rd_addr, 
    output         icache_rd_rdy, 
    output         icache_ret_valid, //������ɺ�ret_valid��1
    output [127:0] icache_ret_data,
    //��DCache����
    input          dcache_rd_req, 
    input   [31:0] dcache_rd_addr, 
    output         dcache_rd_rdy, 
    output         dcache_ret_valid, //������ɺ�ret_valid��1
    output [127:0] dcache_ret_data, 
    input          dcache_wr_req, 
    input   [31:0] dcache_wr_addr,     
    input   [ 3:0] dcache_wr_strb, //TODO:Ŀǰû�õ�,����Uncache���õ�
    input  [127:0] dcache_wr_data, //һ��дһ��cache line������
    output         dcache_wr_rdy
/*******************AXI��Cache�Ľ����ź�����******************/
);

//Function:AXI����ģ�� ʵ��AXI�ӿں�Զ��axi_ram����;��Cache��Uncache����;

/*******************ICache��Ӧ��AXI�˿��źŶ�������******************/
//Attention: ����ָ��洢��,̸����д����/д����/д��Ӧ,��������û�ж���
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
//r����Ӧͨ��
wire [ 3:0] inst_rid;
wire [31:0] inst_rdata;
wire [ 1:0] inst_rresp;
wire        inst_rlast;
wire        inst_rvalid;
wire        inst_rready;
/*******************ICache��Ӧ��AXI�˿��źŶ�������******************/

/*******************DCache��Ӧ��AXI�˿��źŶ�������******************/
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
//r����Ӧͨ��
wire [ 3:0] data_rid;
wire [31:0] data_rdata;
wire [ 1:0] data_rresp;
wire        data_rlast;
wire        data_rvalid;
wire        data_rready;
//awд����ͨ��
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
//wд����ͨ��
wire [ 3:0] data_wid;
reg  [31:0] data_wdata;
wire [ 3:0] data_wstrb;
wire        data_wlast;
wire        data_wvalid;
wire        data_wready;
//bд��Ӧͨ��
wire [ 3:0] data_bid;
wire [ 1:0] data_bresp;
wire        data_bvalid;
wire        data_bready;
/*******************DCache��Ӧ��AXI�˿��źŶ�������******************/

//״̬������
reg  [ 2:0] I_RD_state,I_RD_nextstate;
reg  [ 2:0] D_RD_state,D_RD_nextstate; 
reg  [ 2:0] D_WR_state,D_WR_nextstate; 
//������
reg  [31:0] ff_inst_araddr; 
reg  [31:0] ff_data_araddr;
reg  [31:0] ff_data_awaddr;
reg [127:0] ff_dcache_wr_data;
/*******************ICache��Ӧ��AXI�˿��źŸ�ֵ����******************/
//Attention:AXI����Ҫ��,master��һ������ĳһ��ַ�������ݴ��������(req),�����ֳɹ�֮ǰ,���ø��Ĵ���ĵ�ַ/����
//���,���ڴ˴��Ķ������Ӧ�ĵ�ַ,������Ҫ�������,��req������,�Ȱ�addr������������;DCache�����ݺ͵�ַͬ��
always @(posedge clk) begin //inst_araddr
    if(~resetn) 
        ff_inst_araddr <= 32'b0;
    else if(I_RD_state == `I_RD_IDLE && icache_rd_req) //��ʱ�Ѿ�������;֮�������,����inst_araddr����
        ff_inst_araddr <= icache_rd_addr;
end
assign inst_araddr  = ff_inst_araddr;

assign inst_arid    = 4'b0000;
assign inst_arlen   = 4'b0011; //�Ĵδ���
assign inst_arsize  = 3'b010; //һ��4 bytes
assign inst_arburst = 2'b01;
assign inst_arlock  = 2'b00;
assign inst_arcache = 4'b0000;
assign inst_arprot  = 3'b000;
assign inst_arvalid = (I_RD_state == `I_AR_SHAKE) ? 1'b1 : 1'b0; //inst_arvalid��icache_rd_req��һ����

assign inst_rready  = (I_RD_state == `I_R_SHAKE1 || I_RD_state == `I_R_SHAKE2 ||
                       I_RD_state == `I_R_SHAKE3 || I_RD_state == `I_R_SHAKE4) ? 1'b1 : 1'b0;
/*******************ICache��Ӧ��AXI�˿��źŸ�ֵ����******************/

/*******************DCache��Ӧ��AXI�˿��źŸ�ֵ����******************/
always @(posedge clk) begin //data_araddr
    if(~resetn) 
        ff_data_araddr <= 32'b0;
    else if(D_RD_state == `D_RD_IDLE && dcache_rd_req) //��ʱ�Ѿ�������;֮�������,����data_araddr����
        ff_data_araddr <= dcache_rd_addr;
end
assign data_araddr  = ff_data_araddr;

always @(posedge clk) begin //data_awaddr
    if(~resetn) 
        ff_data_awaddr <= 32'b0;
    else if(D_WR_state == `D_RD_IDLE && dcache_wr_req) //��ʱ�Ѿ�������;֮�������,����data_araddr����
        ff_data_awaddr <= dcache_wr_addr;
end
assign data_awaddr  = ff_data_awaddr;

always @(posedge clk) begin //ff_dcache_wr_data
    if(~resetn) 
        ff_dcache_wr_data <= 128'b0;
    else if(D_WR_state == `D_WR_IDLE && dcache_wr_req)
        ff_dcache_wr_data <= dcache_wr_data;
end

always @(posedge clk) begin //data_wdata ��һ��Cache line�����λ�ȡ
    if(~resetn)
        data_wdata <= 32'b0;
    else if(D_WR_nextstate == `D_W_SHAKE1) //������Կ�nextstate
        data_wdata <= ff_dcache_wr_data[31:0];
    else if(D_WR_nextstate == `D_W_SHAKE2)
        data_wdata <= ff_dcache_wr_data[63:32];
    else if(D_WR_nextstate == `D_W_SHAKE3)
        data_wdata <= ff_dcache_wr_data[95:64];
    else if(D_WR_nextstate == `D_W_SHAKE4)
        data_wdata <= ff_dcache_wr_data[127:96];                
end

assign data_arid    = 4'b0001;
assign data_arlen   = 4'b0011; //�Ĵδ���
assign data_arsize  = 3'b010; //һ��4 bytes
assign data_arburst = 2'b01;
assign data_arlock  = 2'b00;
assign data_arcache = 4'b0000;
assign data_arprot  = 3'b000;
assign data_arvalid = (D_RD_state == `D_AR_SHAKE) ? 1'b1 : 1'b0; //data_arvalid��dcache_rd_req��һ����

assign data_rready  = (D_RD_state == `D_R_SHAKE1 || D_RD_state == `D_R_SHAKE2 ||
                       D_RD_state == `D_R_SHAKE3 || D_RD_state == `D_R_SHAKE4) ? 1'b1 : 1'b0;

assign data_awid    = 4'b0001;
assign data_awlen   = 4'b0011; //�Ĵδ���
assign data_awsize  = 3'b010; //һ��4 bytes
assign data_awburst = 2'b01;
assign data_awlock  = 2'b00; 
assign data_awcache = 4'b0000;
assign data_awprot  = 3'b000;
assign data_awvalid = (D_WR_state == `D_AW_SHAKE) ? 1'b1 : 1'b0; //data_awvalid��dcache_wr_req��һ����

assign data_wid     = 4'b0001;
assign data_wstrb   = 4'b1111; //Attention:����Զ�̵�axi_ram,wstrb��Ȼ��ȫ����Ч��;дDCache������һ������
//Attention:����֤��,��ʱ�������һ����,ͬʱͨ������data_wvalid���Ա�֤wlastֻ��һ��ʱ������������
assign data_wlast   = (D_WR_nextstate == `D_B_SHAKE && data_wvalid && data_wready) ? 1'b1 : 1'b0;
assign data_wvalid  = (D_WR_state == `D_W_SHAKE1 || D_WR_state == `D_W_SHAKE2 ||
                       D_WR_state == `D_W_SHAKE3 || D_WR_state == `D_W_SHAKE4) ? 1'b1 : 1'b0;

assign data_bready  = 1'b1; //����ʼ����Ϊ1
/*******************DCache��Ӧ��AXI�˿��źŸ�ֵ����******************/

//״̬��:ICache Read
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
        //Attention:��Ϊ�涨��Cache line���ĸ���,���Ե���I_R_SHAKE4��������ֱ�Ȼ�������,���ؿ���rlast
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
        //Attention:��Ϊ�涨��Cache line���ĸ���,���Ե���D_R_SHAKE4��������ֱ�Ȼ�������,���ؿ���rlast
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
        //Attention:��Ϊ�涨��Cache line���ĸ���,���Ե���D_W_SHAKE4��������ֱ�Ȼ�������,���ؿ���wlast
            if(data_wvalid & data_wready) D_WR_nextstate <= `D_B_SHAKE;
            else D_WR_nextstate <= `D_W_SHAKE4;
        `D_B_SHAKE:
            if(data_bvalid & data_bready) D_WR_nextstate <= `D_WR_IDLE;
            else D_WR_nextstate <= `D_B_SHAKE;
        default: D_WR_nextstate <= `D_WR_IDLE;
    endcase
end

//axi_crossbar:�����ٲ��ź�
//Attention:���ȼ�ΪDCache>ICache
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
    .s_axi_awqos   (0                           ), //û��
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
    .s_axi_arqos   (0                           ), //û��
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
    .m_axi_awqos   (       ), //ֱ���ÿ�
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
    .m_axi_arqos   (       ), //ֱ���ÿ�
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