// `include "global_defines.vh"
// `include "AXICache_defines.vh"
// //Attention:AXI��CACHE��ض������д��AXICache_defines.vh�ļ���

// module AXI_Interface (
// /*******************AXI�����ź�����******************/
// //Attention:arlen�ϡ�CPU���ʵս���Ķ����е�����,���������λ����;
// //Attention:icache_ret_data/dcache_ret_dataλ�������Ϊ128λ(һ��Cache line);
//     input         clk,
//     input         resetn,
//     //ar������ͨ��
//     output [ 3:0] arid,
//     output [31:0] araddr,
//     output [ 3:0] arlen,
//     output [ 2:0] arsize,
//     output [ 1:0] arburst,
//     output [ 1:0] arlock,
//     output [ 3:0] arcache,
//     output [ 2:0] arprot,
//     output        arvalid,
//     input         arready,
//     //r����Ӧͨ��
//     input  [ 3:0] rid,
//     input  [31:0] rdata,
//     input  [ 1:0] rresp,
//     input         rlast,
//     input         rvalid,
//     output        rready,
//     //awд����ͨ��
//     output [ 3:0] awid,
//     output [31:0] awaddr,
//     output [ 3:0] awlen,
//     output [ 2:0] awsize,
//     output [ 1:0] awburst,
//     output [ 1:0] awlock,
//     output [ 3:0] awcache,
//     output [ 2:0] awprot,
//     output        awvalid,
//     input         awready,
//     //wд����ͨ��
//     output [ 3:0] wid,
//     output [31:0] wdata,
//     output [ 3:0] wstrb,
//     output        wlast,
//     output        wvalid,
//     input         wready,
//     //bд��Ӧͨ��
//     input  [ 3:0] bid,
//     input  [ 1:0] bresp,
//     input         bvalid,
//     output        bready,
// /*******************AXI�����ź�����******************/

// /*******************AXI��Cache�Ľ����źŶ�������******************/
// //Attention:����Ŀǰû��ʵ�֡�CPU���ʵս���е�rd_type,ret_last��wr_type,����Uncache���ܻ�ʵ��;
//     //��ICache����
//     input             icache_rd_req, 
//     input  [31:0]     icache_rd_addr, 
//     output            icache_rd_rdy, 
//     output reg        icache_ret_valid, //������ɺ�ret_valid��1
//     output [127:0]    icache_ret_data,
//     //��DCache����
//     input             dcache_rd_req, 
//     input   [31:0]    dcache_rd_addr, 
//     output            dcache_rd_rdy, 
//     output   reg      dcache_ret_valid, //������ɺ�ret_valid��1
//     output [127:0]    dcache_ret_data, 
//     input             dcache_wr_req, 
//     input   [31:0]    dcache_wr_addr,     
//     // input   [ 3:0] dcache_wr_strb, //TODO:�о��ò���?
//     input  [127:0]    dcache_wr_data, //һ��дһ��cache line������
//     output            dcache_wr_rdy,
//     output reg        dcache_wr_valid, //Attention:AXIд���Ҫ��Ϊ1,֪ͨCPU��
//     //��Uncache(DCache)����
//     input             udcache_rd_req, 
//     input      [31:0] udcache_rd_addr, 
//     output            udcache_rd_rdy, 
//     output reg        udcache_ret_valid, //������ɺ�ret_valid��1
//     output reg [31:0] udcache_ret_data, //һ��һ����
//     input             udcache_wr_req, 
//     input      [31:0] udcache_wr_addr,     
//     input      [ 3:0] udcache_wr_strb, 
//     input      [31:0] udcache_wr_data, //һ��һ����
//     output            udcache_wr_rdy,   
//     output reg        udcache_wr_valid //Attention:AXIд���Ҫ��Ϊ1,֪ͨCPU��
// /*******************AXI��Cache�Ľ����źŶ�������******************/
// );

// //Function:AXI����ģ�� ʵ��AXI�ӿں�Զ��axi_ram����;��Cache��Uncache����;

// /*******************ICache��Ӧ��AXI�˿��źŶ�������******************/
// //Attention: ����ָ��洢��,̸����д����/д����/д��Ӧ,��������û�ж���
// wire [ 3:0] inst_arid;
// wire [31:0] inst_araddr;
// wire [ 3:0] inst_arlen;
// wire [ 2:0] inst_arsize;
// wire [ 1:0] inst_arburst;
// wire [ 1:0] inst_arlock;
// wire [ 3:0] inst_arcache;
// wire [ 2:0] inst_arprot;
// wire        inst_arvalid;
// wire        inst_arready;
// //r����Ӧͨ��
// wire [ 3:0] inst_rid;
// wire [31:0] inst_rdata;
// wire [ 1:0] inst_rresp;
// wire        inst_rlast;
// wire        inst_rvalid;
// wire        inst_rready;
// //awд����ͨ��
// wire [ 3:0] inst_awid;
// wire [31:0] inst_awaddr;
// wire [ 3:0] inst_awlen;
// wire [ 2:0] inst_awsize;
// wire [ 1:0] inst_awburst;
// wire [ 1:0] inst_awlock;
// wire [ 3:0] inst_awcache;
// wire [ 2:0] inst_awprot;
// wire        inst_awvalid;
// wire        inst_awready;
// //wд����ͨ��
// wire [ 3:0] inst_wid;
// wire [31:0] inst_wdata;
// wire [ 3:0] inst_wstrb;
// wire        inst_wlast;
// wire        inst_wvalid;
// wire        inst_wready;
// //bд��Ӧͨ��
// wire [ 3:0] inst_bid;
// wire [ 1:0] inst_bresp;
// wire        inst_bvalid;
// wire        inst_bready;

// /*******************ICache��Ӧ��AXI�˿��źŶ�������******************/

// /*******************DCache��Ӧ��AXI�˿��źŶ�������******************/
// wire [ 3:0] data_arid;
// wire [31:0] data_araddr;
// wire [ 3:0] data_arlen;
// wire [ 2:0] data_arsize;
// wire [ 1:0] data_arburst;
// wire [ 1:0] data_arlock;
// wire [ 3:0] data_arcache;
// wire [ 2:0] data_arprot;
// wire        data_arvalid;
// wire        data_arready;
// //r����Ӧͨ��
// wire [ 3:0] data_rid;
// wire [31:0] data_rdata;
// wire [ 1:0] data_rresp;
// wire        data_rlast;
// wire        data_rvalid;
// wire        data_rready;
// //awд����ͨ��
// wire [ 3:0] data_awid;
// wire [31:0] data_awaddr;
// wire [ 3:0] data_awlen;
// wire [ 2:0] data_awsize;
// wire [ 1:0] data_awburst;
// wire [ 1:0] data_awlock;
// wire [ 3:0] data_awcache;
// wire [ 2:0] data_awprot;
// wire        data_awvalid;
// wire        data_awready;
// //wд����ͨ��
// wire [ 3:0] data_wid;
// reg  [31:0] data_wdata;
// wire [ 3:0] data_wstrb;
// wire        data_wlast;
// wire        data_wvalid;
// wire        data_wready;
// //bд��Ӧͨ��
// wire [ 3:0] data_bid;
// wire [ 1:0] data_bresp;
// wire        data_bvalid;
// wire        data_bready;
// /*******************DCache��Ӧ��AXI�˿��źŶ�������******************/

// /*******************Uncache(��ӦDCache)��Ӧ��AXI�˿��źŶ�������******************/
// wire [ 3:0] udata_arid;
// wire [31:0] udata_araddr;
// wire [ 3:0] udata_arlen;
// wire [ 2:0] udata_arsize;
// wire [ 1:0] udata_arburst;
// wire [ 1:0] udata_arlock;
// wire [ 3:0] udata_arcache;
// wire [ 2:0] udata_arprot;
// wire        udata_arvalid;
// wire        udata_arready;
// //r����Ӧͨ��
// wire [ 3:0] udata_rid;
// wire [31:0] udata_rdata;
// wire [ 1:0] udata_rresp;
// wire        udata_rlast;
// wire        udata_rvalid;
// wire        udata_rready;
// //awд����ͨ��
// wire [ 3:0] udata_awid;
// wire [31:0] udata_awaddr;
// wire [ 3:0] udata_awlen;
// wire [ 2:0] udata_awsize;
// wire [ 1:0] udata_awburst;
// wire [ 1:0] udata_awlock;
// wire [ 3:0] udata_awcache;
// wire [ 2:0] udata_awprot;
// wire        udata_awvalid;
// wire        udata_awready;
// //wд����ͨ��
// wire [ 3:0] udata_wid;
// reg  [31:0] udata_wdata;
// wire [ 3:0] udata_wstrb;
// wire        udata_wlast;
// wire        udata_wvalid;
// wire        udata_wready;
// //bд��Ӧͨ��
// wire [ 3:0] udata_bid;
// wire [ 1:0] udata_bresp;
// wire        udata_bvalid;
// wire        udata_bready;
// /*******************Uncache(��ӦDCache)��Ӧ��AXI�˿��źŶ�������******************/

// //״̬������
// reg  [ 2:0] I_RD_state,I_RD_nextstate;
// reg  [ 2:0] D_RD_state,D_RD_nextstate; 
// reg  [ 2:0] D_WR_state,D_WR_nextstate;
// reg  [ 1:0] UD_RD_state,UD_RD_nextstate; 
// reg  [ 1:0] UD_WR_state,UD_WR_nextstate; 

// //������
// reg  [31:0] ff_inst_araddr; 
// reg  [31:0] ff_data_araddr;
// reg  [31:0] ff_data_awaddr;
// reg  [31:0] ff_udata_araddr;
// reg  [31:0] ff_udata_awaddr;
// reg [127:0] ff_dcache_wr_data;
// reg [127:0] ff_icache_ret_data;
// reg [127:0] ff_dcache_ret_data;

// /*******************AXI��ICache/DCache/Uncache�Ľ����źŶ�������******************/
// //Attention:��ret_valid���ó�reg����,��Ϊ�˱�֤ret_valid�ߵ�ƽ�ͷ��ص�������ͬһ��ʱ�������ط���
// always @(posedge clk) begin
//     if(~resetn) 
//         icache_ret_valid <= 1'b0;
//     else if(I_RD_nextstate == `I_RD_IDLE && I_RD_state == `I_R_SHAKE4)
//         icache_ret_valid <= 1'b1;
//     else
//         icache_ret_valid <= 1'b0;
// end

// always @(posedge clk) begin
//     if(~resetn) 
//         ff_icache_ret_data <= 128'b0;
//     else if(I_RD_nextstate == `I_R_SHAKE2 && I_RD_state == `I_R_SHAKE1)
//         ff_icache_ret_data[31:0] <= inst_rdata;
//     else if(I_RD_nextstate == `I_R_SHAKE3 && I_RD_state == `I_R_SHAKE2)
//         ff_icache_ret_data[63:32] <= inst_rdata;
//     else if(I_RD_nextstate == `I_R_SHAKE4 && I_RD_state == `I_R_SHAKE3)
//         ff_icache_ret_data[95:64] <= inst_rdata;        
//     else if(I_RD_nextstate == `I_RD_IDLE && I_RD_state == `I_R_SHAKE4)
//         ff_icache_ret_data[127:96] <= inst_rdata;
// end
// assign icache_ret_data  = ff_icache_ret_data;

// always @(posedge clk) begin
//     if(~resetn) 
//         dcache_ret_valid <= 1'b0;
//     else if(D_RD_nextstate == `D_RD_IDLE && D_RD_state == `D_R_SHAKE4)
//         dcache_ret_valid <= 1'b1;
//     else
//         dcache_ret_valid <= 1'b0;
// end

// always @(posedge clk) begin
//     if(~resetn) 
//         dcache_wr_valid <= 1'b0;
//     else if(D_WR_nextstate == `D_WR_IDLE && D_WR_state == `D_B_SHAKE)
//         dcache_wr_valid <= 1'b1;
//     else
//         dcache_wr_valid <= 1'b0;
// end

// always @(posedge clk) begin
//     if(~resetn) 
//         ff_dcache_ret_data <= 128'b0;
//     else if(D_RD_nextstate == `D_R_SHAKE2 && D_RD_state == `D_R_SHAKE1)
//         ff_dcache_ret_data[31:0] <= data_rdata;
//     else if(D_RD_nextstate == `D_R_SHAKE3 && D_RD_state == `D_R_SHAKE2)
//         ff_dcache_ret_data[63:32] <= data_rdata;
//     else if(D_RD_nextstate == `D_R_SHAKE4 && D_RD_state == `D_R_SHAKE3)
//         ff_dcache_ret_data[95:64] <= data_rdata;        
//     else if(D_RD_nextstate == `D_RD_IDLE && D_RD_state == `D_R_SHAKE4)
//         ff_dcache_ret_data[127:96] <= data_rdata;
// end
// assign dcache_ret_data  = ff_dcache_ret_data;

// always @(posedge clk) begin
//     if(~resetn) 
//         udcache_ret_valid <= 1'b0;
//     else if(UD_RD_nextstate == `UD_RD_IDLE && UD_RD_state == `UD_R_SHAKE)
//         udcache_ret_valid <= 1'b1;
//     else
//         udcache_ret_valid <= 1'b0;
// end

// always @(posedge clk) begin
//     if(~resetn) 
//         udcache_wr_valid <= 1'b0;
//     else if(UD_WR_nextstate == `UD_WR_IDLE && UD_WR_state == `UD_B_SHAKE)
//         udcache_wr_valid <= 1'b1;
//     else
//         udcache_wr_valid <= 1'b0;
// end

// always @(posedge clk) begin
//     if(~resetn) 
//         udcache_ret_data <= 32'b0;
//     else if(UD_RD_nextstate == `UD_RD_IDLE && UD_RD_state == `UD_R_SHAKE)
//         udcache_ret_data <= udata_rdata;
// end

// //������Ҫ��wr_rdy����wr_req��1;��rd_rdy���ͬ��?? ������Ϊrd_rdy�źŶ���Cache���Ӱ���С
// assign icache_rd_rdy   = (I_RD_state  == `I_RD_IDLE)  ? 1'b1 : 1'b0;
// assign dcache_rd_rdy   = (D_RD_state  == `D_RD_IDLE)  ? 1'b1 : 1'b0;
// assign dcache_wr_rdy   = (D_WR_state  == `D_WR_IDLE)  ? 1'b1 : 1'b0;
// assign udcache_rd_rdy  = (UD_RD_state == `UD_RD_IDLE) ? 1'b1 : 1'b0;
// assign udcache_wr_rdy  = (UD_WR_state == `UD_WR_IDLE) ? 1'b1 : 1'b0;

// /*******************AXI��ICache/DCache/Uncache�Ľ����źŶ�������******************/

// /*******************ICache��Ӧ��AXI�˿��źŸ�ֵ����******************/
// //Attention:AXI����Ҫ��,master��һ������ĳһ��ַ�������ݴ��������(req),�����ֳɹ�֮ǰ,���ø��Ĵ���ĵ�ַ/����
// //���,���ڴ˴��Ķ������Ӧ�ĵ�ַ,������Ҫ�������,��req������,�Ȱ�addr������������;DCache�����ݺ͵�ַͬ��
// always @(posedge clk) begin //inst_araddr
//     if(~resetn) 
//         ff_inst_araddr <= 32'b0;
//     else if(I_RD_state == `I_RD_IDLE && icache_rd_req) //��ʱ�Ѿ�������;֮�������,����inst_araddr����
//         ff_inst_araddr <= icache_rd_addr;
//     else if(I_RD_state == `I_AR_SHAKE && I_RD_nextstate == `I_R_SHAKE1)
//         ff_inst_araddr <= 32'b0;
// end
// assign inst_araddr  = ff_inst_araddr;

// //TODO:����Cache���ɵ�AXI�ź�,���ܻ����ʱ�����ӳٽ϶�����⣬������Ҫ���
// assign inst_arid    = 4'b0000;
// assign inst_arlen   = 4'b0011; //�Ĵδ���
// assign inst_arsize  = 3'b010; //һ��4 bytes
// assign inst_arburst = 2'b01;
// assign inst_arlock  = 2'b00;
// assign inst_arcache = 4'b0000;
// assign inst_arprot  = 3'b000;
// assign inst_arvalid = (I_RD_state == `I_AR_SHAKE) ? 1'b1 : 1'b0; //inst_arvalid��icache_rd_req��һ����

// assign inst_rready  = (I_RD_state == `I_R_SHAKE1 || I_RD_state == `I_R_SHAKE2 ||
//                        I_RD_state == `I_R_SHAKE3 || I_RD_state == `I_R_SHAKE4) ? 1'b1 : 1'b0;



// /*******************ICache��Ӧ��AXI�˿��źŸ�ֵ����******************/

// /*******************DCache��Ӧ��AXI�˿��źŸ�ֵ����******************/
// always @(posedge clk) begin //data_araddr
//     if(~resetn) 
//         ff_data_araddr <= 32'b0;
//     else if(D_RD_state == `D_RD_IDLE && dcache_rd_req) //��ʱ�Ѿ�������;֮�������,����data_araddr����
//         ff_data_araddr <= dcache_rd_addr;
//     else if(D_RD_state == `D_AR_SHAKE && D_RD_nextstate == `D_R_SHAKE1)
//         ff_data_araddr <= 32'b0;
// end
// assign data_araddr  = ff_data_araddr;

// always @(posedge clk) begin //data_awaddr
//     if(~resetn) 
//         ff_data_awaddr <= 32'b0;
//     else if(D_WR_state == `D_WR_IDLE && dcache_wr_req) //��ʱ�Ѿ�������;֮�������,����data_awaddr����
//         ff_data_awaddr <= dcache_wr_addr;
//     else if(D_WR_state == `D_AW_SHAKE && D_WR_nextstate == `D_W_SHAKE1)
//         ff_data_awaddr <= 32'b0;
// end
// assign data_awaddr  = ff_data_awaddr;

// always @(posedge clk) begin //ff_dcache_wr_data
//     if(~resetn) 
//         ff_dcache_wr_data <= 128'b0;
//     else if(D_WR_state == `D_WR_IDLE && dcache_wr_req)
//         ff_dcache_wr_data <= dcache_wr_data;
// end

// always @(posedge clk) begin //data_wdata ��һ��Cache line�����λ�ȡ
//     if(~resetn)
//         data_wdata <= 32'b0;
//     else if(D_WR_nextstate == `D_W_SHAKE1) //������Կ�nextstate
//         data_wdata <= ff_dcache_wr_data[31:0];
//     else if(D_WR_nextstate == `D_W_SHAKE2)
//         data_wdata <= ff_dcache_wr_data[63:32];
//     else if(D_WR_nextstate == `D_W_SHAKE3)
//         data_wdata <= ff_dcache_wr_data[95:64];
//     else if(D_WR_nextstate == `D_W_SHAKE4)
//         data_wdata <= ff_dcache_wr_data[127:96];                
// end

// assign data_arid    = 4'b0001;
// assign data_arlen   = 4'b0011; //�Ĵδ���
// assign data_arsize  = 3'b010; //һ��4 bytes
// assign data_arburst = 2'b01;
// assign data_arlock  = 2'b00;
// assign data_arcache = 4'b0000;
// assign data_arprot  = 3'b000;
// assign data_arvalid = (D_RD_state == `D_AR_SHAKE) ? 1'b1 : 1'b0; //data_arvalid��dcache_rd_req��һ����

// assign data_rready  = (D_RD_state == `D_R_SHAKE1 || D_RD_state == `D_R_SHAKE2 ||
//                        D_RD_state == `D_R_SHAKE3 || D_RD_state == `D_R_SHAKE4) ? 1'b1 : 1'b0;

// assign data_awid    = 4'b0001;
// assign data_awlen   = 4'b0011; //�Ĵδ���
// assign data_awsize  = 3'b010; //һ��4 bytes
// assign data_awburst = 2'b01;
// assign data_awlock  = 2'b00; 
// assign data_awcache = 4'b0000;
// assign data_awprot  = 3'b000;
// assign data_awvalid = (D_WR_state == `D_AW_SHAKE) ? 1'b1 : 1'b0; //data_awvalid��dcache_wr_req��һ����

// assign data_wid     = 4'b0001;
// assign data_wstrb   = 4'b1111; //Attention:����Զ�̵�axi_ram,wstrb��Ȼ��ȫ����Ч��;дDCache������һ������
// //Attention:����֤��,��ʱ�������һ����,ͬʱͨ������data_wvalid���Ա�֤wlastֻ��һ��ʱ������������
// //TODO:
// assign data_wlast   = (D_WR_state == `D_W_SHAKE4 && data_wvalid && data_wready) ? 1'b1 : 1'b0;
// assign data_wvalid  = (D_WR_state == `D_W_SHAKE1 || D_WR_state == `D_W_SHAKE2 ||
//                        D_WR_state == `D_W_SHAKE3 || D_WR_state == `D_W_SHAKE4) & data_wready ? 1'b1 : 1'b0;

// assign data_bready  = 1'b1; //����ʼ����Ϊ1
// /*******************DCache��Ӧ��AXI�˿��źŸ�ֵ����******************/

// /*******************Uncache(��ӦDCache)��Ӧ��AXI�˿��źŸ�ֵ����******************/
// always @(posedge clk) begin //udata_araddr
//     if(~resetn) 
//         ff_udata_araddr <= 32'b0;
//     else if(UD_RD_state == `UD_RD_IDLE && udcache_rd_req) //��ʱ�Ѿ�������;֮�������,����udata_araddr����
//         ff_udata_araddr <= udcache_rd_addr;
//     else if(UD_RD_state == `UD_AR_SHAKE && UD_RD_nextstate == `UD_R_SHAKE)
//         ff_udata_araddr <= 32'b0;
// end
// assign udata_araddr  = ff_udata_araddr;

// always @(posedge clk) begin //udata_awaddr
//     if(~resetn) 
//         ff_udata_awaddr <= 32'b0;
//     else if(UD_WR_state == `UD_WR_IDLE && udcache_wr_req) //��ʱ�Ѿ�������;֮�������,����udata_awaddr����
//         ff_udata_awaddr <= udcache_wr_addr;
//     else if(UD_WR_state == `UD_AW_SHAKE && UD_WR_nextstate == `UD_W_SHAKE)
//         ff_udata_awaddr <= 32'b0;
// end
// assign udata_awaddr  = ff_udata_awaddr;

// always @(posedge clk) begin //udata_wdata ֱ��дһ���ֵ�Զ��axi_ram ��������udata_wstrb
//     if(~resetn)
//         udata_wdata <= 32'b0;
//     else if(UD_WR_state == `UD_WR_IDLE && udcache_wr_req) //Attention:��awaddr����һ�¡������հ�data_wdata
//         udata_wdata <= udcache_wr_data;
// end

// assign udata_araddr  = ff_udata_araddr;
// assign udata_arid    = 4'b0011;
// assign udata_arlen   = 4'b0000; //һ�δ���
// assign udata_arsize  = 3'b010; //һ��4 bytes
// assign udata_arburst = 2'b01;
// assign udata_arlock  = 2'b00;
// assign udata_arcache = 4'b0000;
// assign udata_arprot  = 3'b000;
// //udata_arvalid��udcache_rd_req��һ����
// assign udata_arvalid = (UD_RD_state == `UD_AR_SHAKE) ? 1'b1 : 1'b0; 
// assign udata_rready  = (UD_RD_state == `UD_R_SHAKE) ? 1'b1 : 1'b0;

// assign udata_awid    = 4'b0011;
// assign udata_awlen   = 4'b0000; //һ�δ���
// assign udata_awsize  = 3'b010; //һ��4 bytes
// assign udata_awburst = 2'b01;
// assign udata_awlock  = 2'b00; 
// assign udata_awcache = 4'b0000;
// assign udata_awprot  = 3'b000;
// //udata_awvalid��udcache_wr_req��һ����
// assign udata_awvalid = (UD_WR_state == `UD_AW_SHAKE) ? 1'b1 : 1'b0; 

// assign udata_wid     = 4'b0001;
// assign udata_wstrb   = udcache_wr_strb; 
// assign udata_wlast   = (UD_WR_state == `UD_W_SHAKE && udata_wvalid && udata_wready) ? 1'b1 : 1'b0;
// assign udata_wvalid  = (UD_WR_state == `UD_W_SHAKE) ? 1'b1 : 1'b0;

// assign udata_bready  = 1'b1; //����ʼ����Ϊ1
// /*******************Uncache(��ӦDCache)��Ӧ��AXI�˿��źŸ�ֵ����******************/

// /*******************AXI-Cache״̬������******************/
// //TODO:״̬����ת������������Լ򻯣����ڴ���
// //ICache Read
// always @(posedge clk) begin
//     if(~resetn) 
//         I_RD_state <= `I_RD_IDLE;
//     else
//         I_RD_state <= I_RD_nextstate;        
// end

// always @(*) begin //ICache Read
//     case (I_RD_state)
//         `I_RD_IDLE:
//             if(icache_rd_req) I_RD_nextstate <= `I_AR_SHAKE;
//             else I_RD_nextstate <= `I_RD_IDLE;
//         `I_AR_SHAKE:
//             if(inst_arvalid & inst_arready) I_RD_nextstate <= `I_R_SHAKE1;
//             else I_RD_nextstate <= `I_AR_SHAKE;
//         `I_R_SHAKE1:
//             if(inst_rvalid & inst_rready) I_RD_nextstate <= `I_R_SHAKE2;
//             else I_RD_nextstate <= `I_R_SHAKE1;
//         `I_R_SHAKE2:
//             if(inst_rvalid & inst_rready) I_RD_nextstate <= `I_R_SHAKE3;
//             else I_RD_nextstate <= `I_R_SHAKE2;        
//         `I_R_SHAKE3:
//             if(inst_rvalid & inst_rready) I_RD_nextstate <= `I_R_SHAKE4;
//             else I_RD_nextstate <= `I_R_SHAKE3;
//         `I_R_SHAKE4:
//         //Attention:��Ϊ�涨��Cache line���ĸ���,���Ե���I_R_SHAKE4��������ֱ�Ȼ�������,���ؿ���rlast
//             if(inst_rvalid & inst_rready) I_RD_nextstate <= `I_RD_IDLE;
//             else I_RD_nextstate <= `I_R_SHAKE4;  
//         default: I_RD_nextstate <= `I_RD_IDLE;
//     endcase
// end

// //DCache Read
// always @(posedge clk) begin
//     if(~resetn) 
//         D_RD_state <= `D_RD_IDLE;
//     else
//         D_RD_state <= D_RD_nextstate;        
// end

// always @(*) begin //DCache Read
//     case (D_RD_state)
//         `D_RD_IDLE:
//             if(dcache_rd_req) D_RD_nextstate <= `D_AR_SHAKE;
//             else D_RD_nextstate <= `D_RD_IDLE;
//         `D_AR_SHAKE:
//             if(data_arvalid & data_arready) D_RD_nextstate <= `D_R_SHAKE1;
//             else D_RD_nextstate <= `D_AR_SHAKE;
//         `D_R_SHAKE1:
//             if(data_rvalid & data_rready) D_RD_nextstate <= `D_R_SHAKE2;
//             else D_RD_nextstate <= `D_R_SHAKE1;
//         `D_R_SHAKE2:
//             if(data_rvalid & data_rready) D_RD_nextstate <= `D_R_SHAKE3;
//             else D_RD_nextstate <= `D_R_SHAKE3;
//         `D_R_SHAKE3:
//             if(data_rvalid & data_rready) D_RD_nextstate <= `D_R_SHAKE4;
//             else D_RD_nextstate <= `D_R_SHAKE3;
//         `D_R_SHAKE4:
//         //Attention:��Ϊ�涨��Cache line���ĸ���,���Ե���D_R_SHAKE4��������ֱ�Ȼ�������,���ؿ���rlast
//             if(data_rvalid & data_rready) D_RD_nextstate <= `D_RD_IDLE;
//             else D_RD_nextstate <= `D_R_SHAKE4;
//         default: D_RD_nextstate <= `D_RD_IDLE;
//     endcase
// end

// //DCache Write
// always @(posedge clk) begin
//     if(~resetn) 
//         D_WR_state <= `D_WR_IDLE;
//     else
//         D_WR_state <= D_WR_nextstate;        
// end

// always @(*) begin //DCache Write
//     case (D_WR_state)
//         `D_WR_IDLE: 
//             if(dcache_wr_req) D_WR_nextstate <= `D_AW_SHAKE;
//             else D_WR_nextstate <= `D_WR_IDLE;
//         `D_AW_SHAKE:
//             if(data_awvalid & data_awready) D_WR_nextstate <= `D_W_SHAKE1;
//             else D_WR_nextstate <= `D_AW_SHAKE;
//         `D_W_SHAKE1:
//             if(data_wvalid & data_wready) D_WR_nextstate <= `D_W_SHAKE2;
//             else D_WR_nextstate <= `D_W_SHAKE1;
//         `D_W_SHAKE2:
//             if(data_wvalid & data_wready) D_WR_nextstate <= `D_W_SHAKE3;
//             else D_WR_nextstate <= `D_W_SHAKE2;
//         `D_W_SHAKE3:
//             if(data_wvalid & data_wready) D_WR_nextstate <= `D_W_SHAKE4;
//             else D_WR_nextstate <= `D_W_SHAKE3;
//         `D_W_SHAKE4: 
//         //Attention:��Ϊ�涨��Cache line���ĸ���,���Ե���D_W_SHAKE4��������ֱ�Ȼ�������,���ؿ���wlast
//             if(data_wvalid & data_wready) D_WR_nextstate <= `D_B_SHAKE;
//             else D_WR_nextstate <= `D_W_SHAKE4;
//         `D_B_SHAKE:
//             if(data_bvalid & data_bready) D_WR_nextstate <= `D_WR_IDLE;
//             else D_WR_nextstate <= `D_B_SHAKE;
//         default: D_WR_nextstate <= `D_WR_IDLE;
//     endcase
// end

// //Uncache(DCache) Read
// always @(posedge clk) begin
//     if(~resetn) 
//         UD_RD_state <= `UD_RD_IDLE;
//     else
//         UD_RD_state <= UD_RD_nextstate;        
// end

// always @(*) begin
//     case (UD_RD_state)
//         `UD_RD_IDLE: 
//             if(udcache_rd_req) UD_RD_nextstate <= `UD_AR_SHAKE;
//             else UD_RD_nextstate <= `UD_RD_IDLE;
//         `UD_AR_SHAKE:
//             if(udata_arvalid & udata_arready) UD_RD_nextstate <= `UD_R_SHAKE;
//             else UD_RD_nextstate <= `UD_AR_SHAKE;
//         `UD_R_SHAKE:
//         //Attention:��ΪUncacheֻ����һ����,���Ե���UD_R_SHAKE��������ֱ�Ȼ�������,���ؿ���rlast
//             if(udata_rvalid & udata_rready) UD_RD_nextstate <= `UD_RD_IDLE;
//             else UD_RD_nextstate <= `UD_R_SHAKE;
//         default: UD_RD_nextstate <= `UD_RD_IDLE;
//     endcase
// end

// //Uncache(DCache) Write
// always @(posedge clk) begin
//     if(~resetn) 
//         UD_WR_state <= `UD_WR_IDLE;
//     else
//         UD_WR_state <= UD_WR_nextstate;        
// end

// always @(*) begin
//     case (UD_WR_state)
//         `UD_WR_IDLE: 
//             if(udcache_wr_req) UD_WR_nextstate <= `UD_AW_SHAKE;
//             else UD_WR_nextstate <= `UD_WR_IDLE;
//         `UD_AW_SHAKE:
//             if(udata_awvalid & udata_awready) UD_WR_nextstate <= `UD_W_SHAKE;
//             else UD_WR_nextstate <= `UD_AW_SHAKE;
//         `UD_W_SHAKE:
//         //Attention:��ΪUncacheֻ����һ����,���Ե���UD_W_SHAKE��������ֱ�Ȼ�������,���ؿ���wlast
//             if(udata_wvalid & udata_wready) UD_WR_nextstate <= `UD_B_SHAKE;
//             else UD_WR_nextstate <= `UD_W_SHAKE;
//         `UD_B_SHAKE:
//             if(udata_bvalid & udata_bready) UD_WR_nextstate <= `UD_WR_IDLE;
//             else UD_WR_nextstate <= `UD_B_SHAKE;
//         default: UD_WR_nextstate <= `UD_WR_IDLE;
//     endcase
// end
// /*******************AXI-Cache״̬������******************/


// //axi_crossbar:�����ٲ��ź�
// //Attention:���ȼ�ΪDCache>ICache
// assign  inst_awid     = 0;
// assign  inst_awaddr   = 0;
// assign  inst_awlen    = 0;
// assign  inst_awsize   = 0;
// assign  inst_awburst  = 0;
// assign  inst_awlock   = 0;
// assign  inst_awcache  = 0;
// assign  inst_awprot   = 0;
// assign  inst_awvalid  = 0;

// assign  inst_wid      = 0;
// assign  inst_wdata    = 0;
// assign  inst_wstrb    = 0;
// assign  inst_wlast    = 0;
// assign  inst_wvalid   = 0;

// assign  inst_bready   = 0;


// axi_crossbar U_axi_crossbar(
//     .aclk(clk),
//     .aresetn(resetn),

//     .s_axi_awid    ({inst_awid    ,data_awid    ,udata_awid   }),
//     .s_axi_awaddr  ({inst_awaddr  ,data_awaddr  ,udata_awaddr }),
//     .s_axi_awlen   ({inst_awlen   ,data_awlen   ,udata_awlen  }),
//     .s_axi_awsize  ({inst_awsize  ,data_awsize  ,udata_awsize }),
//     .s_axi_awburst ({inst_awburst ,data_awburst ,udata_awburst}),
//     .s_axi_awlock  ({inst_awlock  ,data_awlock  ,udata_awlock }),
//     .s_axi_awcache ({inst_awcache ,data_awcache ,udata_awcache}),
//     .s_axi_awprot  ({inst_awprot  ,data_awprot  ,udata_awprot }),
//     .s_axi_awqos   (12'b0                                      ), //û��
//     .s_axi_awvalid ({inst_awvalid ,data_awvalid ,udata_awvalid}),
//     .s_axi_awready ({inst_awready ,data_awready ,udata_awready}),

//     .s_axi_wid     ({inst_wid     ,data_wid     ,udata_wid    }),
//     .s_axi_wdata   ({inst_wdata   ,data_wdata   ,udata_wdata  }),
//     .s_axi_wstrb   ({inst_wstrb   ,data_wstrb   ,udata_wstrb  }),
//     .s_axi_wlast   ({inst_wlast   ,data_wlast   ,udata_wlast  }),
//     .s_axi_wvalid  ({inst_wvalid  ,data_wvalid  ,udata_wvalid }),
//     .s_axi_wready  ({inst_wready  ,data_wready  ,udata_wready }),

//     .s_axi_bid     ({inst_bid     ,data_bid     ,udata_bid    }),
//     .s_axi_bresp   ({inst_bresp   ,data_bresp   ,udata_bresp  }),
//     .s_axi_bvalid  ({inst_bvalid  ,data_bvalid  ,udata_bvalid }),
//     .s_axi_bready  ({inst_bready  ,data_bready  ,udata_bready }),  

//     .s_axi_arid    ({inst_arid    ,data_arid    ,udata_arid   }),
//     .s_axi_araddr  ({inst_araddr  ,data_araddr  ,udata_araddr }),
//     .s_axi_arlen   ({inst_arlen   ,data_arlen   ,udata_arlen  }),
//     .s_axi_arsize  ({inst_arsize  ,data_arsize  ,udata_arsize }),
//     .s_axi_arburst ({inst_arburst ,data_arburst ,udata_arburst}),
//     .s_axi_arlock  ({inst_arlock  ,data_arlock  ,udata_arlock }),
//     .s_axi_arcache ({inst_arcache ,data_arcache ,udata_arcache}),
//     .s_axi_arprot  ({inst_arprot  ,data_arprot  ,udata_arprot }),
//     .s_axi_arqos   (12'b0                                      ), //û��
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
//     .m_axi_awqos   (       ), //ֱ���ÿ�
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
//     .m_axi_arqos   (       ), //ֱ���ÿ�
//     .m_axi_arvalid (arvalid),
//     .m_axi_arready (arready),
//     .m_axi_rid     (rid    ),
//     .m_axi_rdata   (rdata  ),
//     .m_axi_rresp   (rresp  ),
//     .m_axi_rlast   (rlast  ),
//     .m_axi_rvalid  (rvalid ),
//     .m_axi_rready  (rready )
// );

// endmodule 

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
    
    reg   [  2:0] I_RD_state;
    reg   [  2:0] I_RD_nextstate;
    wire  [  2:0] I_RD_DataReady;
    reg   [ 31:0] I_RD_Addr;
    reg   [127:0] AXI_I_RData;

    reg   [  2:0] D_RD_state;
    reg   [  2:0] D_RD_nextstate;
    wire  [  2:0] D_RD_DataReady;
    reg   [ 31:0] D_RD_Addr;
    reg   [127:0] AXI_D_RData;

    reg   [  2:0] D_WR_state;
    reg   [  2:0] D_WR_nextstate;
    reg   [ 31:0] D_WR_Addr;
    reg   [127:0] AXI_D_WData;

    reg   [  1:0] U_RD_state;
    reg   [  1:0] U_RD_nextstate;
    reg   [ 31:0] U_RD_Addr;
    reg   [ 31:0] AXI_U_RData;

    reg   [  2:0] U_WR_state;
    reg   [  2:0] U_WR_nextstate;
    reg   [ 31:0] U_WR_Addr;
    reg   [ 31:0] AXI_U_WData;

    always @(posedge clk) begin
        if (~resetn) begin
            I_RD_Addr <= 0;
        end 
        else begin  
            if (icache_rd_req == 1'b1 && I_RD_state == `I_RD_IDLE) begin
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
            if (dcache_rd_req == 1'b1 && D_RD_state == `D_RD_IDLE) begin
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
            if (dcache_wr_req && D_WR_state == `D_WR_IDLE) begin
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
            if (udcache_rd_req == 1'b1 && U_RD_state == `UD_RD_IDLE) begin
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
            if (udcache_wr_req == 1'b1 && U_WR_state == `UD_WR_IDLE) begin
                U_WR_Addr   <= udcache_wr_addr;
                AXI_U_WData <= udcache_wr_data;
            end 
        end 
    end

/********************* ibus ******************/
    //ar
    assign inst_arid     = 4'b0000;
    assign inst_arlen    = 4'b0011;      
    assign inst_arsize   = 3'b010;       
    assign inst_arburst  = 2'b01;
    assign inst_arlock   = 2'b00;
    assign inst_arcache  = 0;
    assign inst_arprot   = 0;

    //aw,w(����inst ȫ������)
    assign inst_awid     = 0;           
    assign inst_awlen    = 0;
    assign inst_awsize   = 0;
    assign inst_awburst  = 0;
    assign inst_awlock   = 0;
    assign inst_awcache  = 0;
    assign inst_awprot   = 0;
    assign inst_awvalid  = 0;
    assign inst_awaddr   = 0;
    assign inst_wid      = 0;
    assign inst_wdata    = 0;
    assign inst_wstrb    = 0;
    assign inst_wlast    = 0;
    assign inst_wvalid   = 0;
    assign inst_bready   = 0;


/********************* dbus ******************/
    assign data_arid     = 4'b0001;
    assign data_arlen    = 4'b0011;
    assign data_arsize   = 3'b010;
    assign data_arburst  = 2'b01;
    assign data_arlock   = 0;
    assign data_arcache  = 0;
    assign data_arprot   = 0;

    assign data_awid     = 4'b0001;
    assign data_awlen    = 4'b0011;        
    assign data_awsize   = 3'b010;         
    assign data_awburst  = 2'b01;          
    assign data_awlock   = 0;
    assign data_awcache  = 0;
    assign data_awprot   = 0;

    assign data_wid     = 4'b0001;
    assign data_wstrb   = 4'b1111;
    assign data_bready  = 1'b1;

/********************* ubus ******************/
    assign udata_arid     = 4'b0011;
    assign udata_arlen    = 4'b0000; 
    assign udata_arsize   = 3'b010; 
    assign udata_arburst  = 2'b01;
    assign udata_arlock   = 0;
    assign udata_arcache  = 0;
    assign udata_arprot   = 0;


    assign udata_awid     = 4'b0011;
    assign udata_awlen    = 4'b0000;        
    assign udata_awsize   = 3'b010;         
    assign udata_awburst  = 2'b01;          
    assign udata_awlock   = 0;
    assign udata_awcache  = 0;
    assign udata_awprot   = 0;


    assign udata_wid     = 4'b0001;
    assign udata_wstrb   = udcache_wr_strb;  
    assign udata_bready  = 1'b1;

    assign icache_rd_rdy  = (I_RD_state == `I_RD_IDLE ) ? 1'b1 : 1'b0;
    assign dcache_rd_rdy  = (D_RD_state == `D_RD_IDLE ) ? 1'b1 : 1'b0;
    assign dcache_wr_rdy  = (D_WR_state == `D_WR_IDLE )  ? 1'b1 : 1'b0;
    assign udcache_rd_rdy = (U_RD_state == `UD_RD_IDLE ) ? 1'b1 : 1'b0;
    assign udcache_wr_rdy = (U_WR_state == `UD_WR_IDLE )  ? 1'b1 : 1'b0;

// FSM -- Icache RD 
    always @(posedge clk) begin
        if (~resetn) begin
            I_RD_state  <= `I_RD_IDLE;
        end 
        else begin  
            I_RD_state <= I_RD_nextstate;
        end
    end

    assign I_RD_DataReady = 
        (I_RD_state == `I_R_SHAKE1 && inst_rvalid == 1'b1 && inst_rready == 1'b1) ? 3'd1 :
        (I_RD_state == `I_R_SHAKE2 && inst_rvalid == 1'b1 && inst_rready == 1'b1) ? 3'd2 :
        (I_RD_state == `I_R_SHAKE3 && inst_rvalid == 1'b1 && inst_rready == 1'b1) ? 3'd3 :
        (I_RD_state == `I_R_SHAKE4 && inst_rvalid == 1'b1 && inst_rready == 1'b1) ? 3'd4 :
                                                                                    3'd0 ;
    always @(*)begin
        case (I_RD_state)
            `I_RD_IDLE:begin
                if (icache_rd_req == 1'b1) begin
                    I_RD_nextstate = `I_AR_SHAKE;
                end
                else begin
                    I_RD_nextstate = `I_RD_IDLE;
                end
            end
            `I_AR_SHAKE:begin
                if (inst_arvalid == 1'b1 && inst_arready == 1'b1) begin
                    I_RD_nextstate = `I_R_SHAKE1;
                end else begin
                    I_RD_nextstate = `I_AR_SHAKE;
                end
            end
            `I_R_SHAKE1:begin
                if (inst_rvalid == 1'b1 && inst_rready == 1'b1) begin
                    I_RD_nextstate = `I_R_SHAKE2;
                end
                else begin
                    I_RD_nextstate = `I_R_SHAKE1;
                end
            end
            `I_R_SHAKE2:begin
                if (inst_rvalid == 1'b1 && inst_rready == 1'b1) begin
                    I_RD_nextstate = `I_R_SHAKE3;
                end
                else begin
                    I_RD_nextstate = `I_R_SHAKE2;
                end
            end
            `I_R_SHAKE3:begin
                if (inst_rvalid == 1'b1 && inst_rready == 1'b1) begin
                    I_RD_nextstate = `I_R_SHAKE4;
                end
                else begin
                    I_RD_nextstate = `I_R_SHAKE3;
                end
            end
            `I_R_SHAKE4:begin
                if (inst_rvalid == 1'b1 && inst_rready == 1'b1 && inst_rlast == 1'b1) begin
                    I_RD_nextstate = `I_R_FINISH;
                end
                else begin
                    I_RD_nextstate = `I_R_SHAKE4;
                end
            end
            `I_R_FINISH: begin
                I_RD_nextstate     = `I_RD_IDLE;
            end
            default:begin
                I_RD_nextstate     = `I_RD_IDLE;
            end
        endcase
    end

    // araddr & arvalid
    assign inst_arvalid = (I_RD_state == `I_AR_SHAKE) ? 1'b1 : 1'b0;
    assign inst_araddr  = (I_RD_state == `I_AR_SHAKE) ? I_RD_Addr : 32'b0;

    // rready 
    assign inst_rready = (I_RD_state == `I_R_SHAKE1 || I_RD_state == `I_R_SHAKE2 
                 || I_RD_state == `I_R_SHAKE3 || I_RD_state == `I_R_SHAKE4) ? 1'b1 : 1'b0;

    //ret_valid & ret_rdata
    assign icache_ret_valid = (I_RD_state == `I_R_FINISH) ? 1'b1 : 1'b0;
    assign icache_ret_data  = (I_RD_state == `I_R_FINISH) ? AXI_I_RData : 0;

    // AXI burst
    always @(posedge clk) begin
        if (~resetn) begin
            AXI_I_RData  <= 128'b0; 
        end 
        else if(I_RD_state == `I_RD_IDLE) begin
            AXI_I_RData  <= 128'b0; 
        end
        else if (I_RD_DataReady != 3'd0) begin
            case (I_RD_DataReady)
                3'd1:begin
                    AXI_I_RData[31:0]   <= inst_rdata;
                end
                3'd2:begin
                    AXI_I_RData[63:32]  <= inst_rdata;
                end
                3'd3:begin
                    AXI_I_RData[95:64]  <= inst_rdata;
                end
                3'd4:begin
                    AXI_I_RData[127:96] <= inst_rdata;
                end
                default:
                    AXI_I_RData <= AXI_I_RData;
            endcase
        end 
    end

// FSM -- Dcache RD 
    always @(posedge clk) begin
        if (~resetn) begin
            D_RD_state  <= `D_RD_IDLE;
        end 
        else begin  
            D_RD_state <= D_RD_nextstate;
        end
    end

    assign D_RD_DataReady = 
        (D_RD_state == `D_R_SHAKE1 && data_rvalid == 1'b1 && data_rready == 1'b1) ? 3'd1 :
        (D_RD_state == `D_R_SHAKE2 && data_rvalid == 1'b1 && data_rready == 1'b1) ? 3'd2 :
        (D_RD_state == `D_R_SHAKE3 && data_rvalid == 1'b1 && data_rready == 1'b1) ? 3'd3 :
        (D_RD_state == `D_R_SHAKE4 && data_rvalid == 1'b1 && data_rready == 1'b1) ? 3'd4 : 
                                                                                        3'd0 ;
    always @(*) begin
        case (D_RD_state)
            `D_RD_IDLE:begin
                if (dcache_rd_req == 1'b1) begin
                    D_RD_nextstate = `D_AR_SHAKE;
                end
                else begin
                    D_RD_nextstate = `D_RD_IDLE;
                end
            end
            `D_AR_SHAKE:begin
                if (data_arvalid == 1'b1 && data_arready == 1'b1) begin
                    D_RD_nextstate = `D_R_SHAKE1;
                end else begin
                    D_RD_nextstate = `D_AR_SHAKE;

                end
            end
            `D_R_SHAKE1:begin
                if (data_rvalid == 1'b1 && data_rready == 1'b1) begin
                    D_RD_nextstate = `D_R_SHAKE2;
                end
                else begin
                    D_RD_nextstate = `D_R_SHAKE1;
                end
            end
            `D_R_SHAKE2:begin
                if (data_rvalid == 1'b1 && data_rready == 1'b1) begin
                    D_RD_nextstate = `D_R_SHAKE3;
                end
                else begin
                    D_RD_nextstate = `D_R_SHAKE2;
                end
            end
            `D_R_SHAKE3:begin
                if (data_rvalid == 1'b1 && data_rready == 1'b1) begin
                    D_RD_nextstate = `D_R_SHAKE4;
                end
                else begin
                    D_RD_nextstate = `D_R_SHAKE3;
                end
            end
            `D_R_SHAKE4:begin
                if (data_rvalid == 1'b1 && data_rready == 1'b1 && data_rlast == 1'b1) begin
                    D_RD_nextstate = `D_R_FINISH;
                end
                else begin
                    D_RD_nextstate = `D_R_SHAKE4;
                end
            end
            `D_R_FINISH: begin
                D_RD_nextstate     = `D_RD_IDLE;
            end
            default:begin
                D_RD_nextstate     = `D_RD_IDLE;                
            end

        endcase
    end

    // araddr & arvalid
    assign data_arvalid = (D_RD_state == `D_AR_SHAKE) ? 1'b1 : 1'b0;
    assign data_araddr  = (D_RD_state == `D_AR_SHAKE) ? D_RD_Addr : 32'b0;

    assign data_rready = (D_RD_state == `D_R_SHAKE1 || D_RD_state == `D_R_SHAKE2 
    || D_RD_state == `D_R_SHAKE3 ||D_RD_state == `D_R_SHAKE4) ? 1'b1 : 1'b0;

    //ret_valid & ret_rdata
    assign dcache_ret_valid = (D_RD_state == `D_R_FINISH) ? 1'b1 : 1'b0;
    assign dcache_ret_data  = (D_RD_state == `D_R_FINISH) ? AXI_D_RData : 0;

    // AXI burst
    always @(posedge clk) begin
        if (~resetn) begin
            AXI_D_RData  <= 128'b0; 
        end 
        else if(D_RD_state == `D_RD_IDLE) begin
            AXI_D_RData  <= 128'b0; 
        end
        else if (D_RD_DataReady != 3'd0) begin
            case (D_RD_DataReady)
                3'd1:begin
                    AXI_D_RData[31:0]   <= data_rdata;
                end
                3'd2:begin
                    AXI_D_RData[63:32]  <= data_rdata;
                end
                3'd3:begin
                    AXI_D_RData[95:64]  <= data_rdata;
                end
                3'd4:begin
                    AXI_D_RData[127:96] <= data_rdata;
                end
                default:
                    AXI_D_RData <= AXI_D_RData; 
            endcase
        end 
    end
// FSM -- Dcache WR
    always @(posedge clk) begin
        if (~resetn) begin
            D_WR_state  <= `D_WR_IDLE;
        end 
        else begin  
            D_WR_state <= D_WR_nextstate;
        end
    end

    //valid & wdata
    assign data_wdata = (D_WR_state == `D_W_SHAKE1) ? AXI_D_WData[31:0] :
                        (D_WR_state == `D_W_SHAKE2) ? AXI_D_WData[63:32] :
                        (D_WR_state == `D_W_SHAKE3) ? AXI_D_WData[95:64] :
                        (D_WR_state == `D_W_SHAKE4) ? AXI_D_WData[127:96] :
                                                          32'b0; 
    assign data_wlast = (D_WR_state == `D_W_SHAKE4) ? 1'b1 : 1'b0;
    always @(*) begin
        case (D_WR_state)
            `D_WR_IDLE:begin
                if (dcache_wr_req == 1'b1) begin
                    D_WR_nextstate = `D_AW_SHAKE;
                end
                else begin
                    D_WR_nextstate = `D_WR_IDLE;
                end
            end
            `D_AW_SHAKE:begin
                if (data_awready == 1'b1) begin
                    D_WR_nextstate = `D_W_SHAKE1;
                end else begin
                    D_WR_nextstate = `D_AW_SHAKE;
                end
            end
            `D_W_SHAKE1:begin
                if ( data_wready == 1'b1) begin
                    D_WR_nextstate = `D_W_SHAKE2;
                end
                else begin
                    D_WR_nextstate = `D_W_SHAKE1;
                end
            end
            `D_W_SHAKE2:begin
                if (data_wready == 1'b1) begin
                    D_WR_nextstate = `D_W_SHAKE3;
                end
                else begin
                    D_WR_nextstate = `D_W_SHAKE2;
                end
            end
            `D_W_SHAKE3:begin
                if (data_wready == 1'b1) begin
                    D_WR_nextstate = `D_W_SHAKE4;
                end
                else begin
                    D_WR_nextstate = `D_W_SHAKE3;
                end
            end
            `D_W_SHAKE4:begin
                if (data_wready == 1'b1) begin
                    D_WR_nextstate = `D_B_SHAKE;
                end
                else begin
                    D_WR_nextstate = `D_W_SHAKE4;
                end
            end
            `D_B_SHAKE: begin
                if (data_bvalid == 1'b1) begin
                    D_WR_nextstate = `D_B_FINISH;
                end
               else begin
                    D_WR_nextstate = `D_B_SHAKE;
                end
            end
            `D_B_FINISH: begin
                D_WR_nextstate = `D_WR_IDLE;
            end
            default:begin
                D_WR_nextstate = `D_WR_IDLE;
            end
        endcase
    end

    // awaddr & awvalid
    assign data_awvalid = (D_WR_state == `D_AW_SHAKE) ? 1'b1: 1'b0;
    assign data_awaddr  = (D_WR_state == `D_AW_SHAKE) ? D_WR_Addr : 32'b0;

    // wvalid 
    assign data_wvalid = (D_WR_state == `D_W_SHAKE1 || D_WR_state == `D_W_SHAKE2 
        || D_WR_state == `D_W_SHAKE3 || D_WR_state == `D_W_SHAKE4) ? 1'b1 : 1'b0;

    assign dcache_wr_valid = (D_WR_state == `D_B_FINISH) ? 1'b1 : 1'b0;

// FSM -- Uncache RD 
    always @(posedge clk) begin
        if (~resetn) begin
            U_RD_state  <= `UD_RD_IDLE;
        end 
        else begin  
            U_RD_state  <= U_RD_nextstate;
        end
    end

    always @(*) begin
        case (U_RD_state)
            `UD_RD_IDLE:begin
                if (udcache_rd_req == 1'b1) begin
                    U_RD_nextstate = `UD_AR_SHAKE;
                end
                else begin
                    U_RD_nextstate = `UD_RD_IDLE;
                end
            end
            `UD_AR_SHAKE:begin
                if (udata_arvalid == 1'b1 && udata_arready == 1'b1) begin
                    U_RD_nextstate = `UD_R_SHAKE;
                end else begin
                    U_RD_nextstate = `UD_AR_SHAKE;
                end
            end
            `UD_R_SHAKE:begin
                if (udata_rvalid == 1'b1 && udata_rready == 1'b1 && udata_rlast == 1'b1) begin
                    U_RD_nextstate = `UD_R_FINISH;
                end
                else begin
                    U_RD_nextstate = `UD_R_SHAKE;
                end
            end
            `UD_R_FINISH: begin
                U_RD_nextstate     = `UD_RD_IDLE;
            end
            default:begin
                U_RD_nextstate     = `UD_RD_IDLE;                
            end
        endcase
    end

    // araddr & arvalid
    assign udata_arvalid = (U_RD_state == `UD_AR_SHAKE) ? 1'b1 : 1'b0;
    assign udata_araddr  = (U_RD_state == `UD_AR_SHAKE) ? U_RD_Addr : 32'b0;

    // rready 
    assign udata_rready = (U_RD_state == `UD_R_SHAKE) ? 1'b1 : 1'b0;

    //ret_valid & ret_rdata
    assign udcache_ret_valid = (U_RD_state == `UD_R_FINISH) ? 1'b1 : 1'b0;
    assign udcache_ret_data  = (U_RD_state == `UD_R_FINISH) ? AXI_U_RData : 0;

    always @(posedge clk) begin
        if (~resetn) begin
            AXI_U_RData  <= 32'b0; 
        end 
        else begin
            AXI_U_RData[31:0] <= udata_rdata;
        end 
    end

// FSM -- Uncache WR
    always @(posedge clk) begin
        if (~resetn) begin
            U_WR_state  <= `UD_WR_IDLE;
        end 
        else begin  
            U_WR_state  <= U_WR_nextstate;
        end
    end

    assign udata_wlast = (U_WR_state == `UD_W_SHAKE) ? 1'b1 : 1'b0;
    always @(*) begin
        case (U_WR_state)
            `UD_WR_IDLE:begin
                if (udcache_wr_req == 1'b1) begin
                    U_WR_nextstate = `UD_AW_SHAKE;
                end
                else begin
                    U_WR_nextstate = `UD_WR_IDLE;
                end
            end
            `UD_AW_SHAKE:begin
                if (udata_awready == 1'b1) begin
                    U_WR_nextstate = `UD_W_SHAKE;
                end else begin
                    U_WR_nextstate = `UD_AW_SHAKE;
                end
            end
            `UD_W_SHAKE:begin
                if (udata_wready == 1'b1) begin
                    U_WR_nextstate = `UD_B_SHAKE;
                end
                else begin
                    U_WR_nextstate = `UD_W_SHAKE;
                end
            end
            `UD_B_SHAKE: begin
                if (udata_bvalid == 1'b1) begin
                    U_WR_nextstate = `UD_B_FINISH;
                end
               else begin
                    U_WR_nextstate = `UD_B_SHAKE;
                end
            end
            `UD_B_FINISH: begin
                U_WR_nextstate = `UD_WR_IDLE;
            end
            default:begin
                U_WR_nextstate = `UD_WR_IDLE;
            end
        endcase
    end
    assign udata_wdata = AXI_U_WData[31:0];
    // awaddr & awvalid
    assign udata_awvalid = (U_WR_state == `UD_AW_SHAKE) ? 1'b1 : 1'b0;
    assign udata_awaddr  = (U_WR_state == `UD_AW_SHAKE) ? U_WR_Addr : 0;

    // wvalid 
    assign udata_wvalid = (U_WR_state == `UD_W_SHAKE) ? 1'b1 : 1'b0;

    // wr_valid
    assign udcache_wr_valid = (U_WR_state == `UD_B_FINISH) ? 1'b1 : 1'b0;

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

endmodule
