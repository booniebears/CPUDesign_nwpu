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
    wire  [31: 0]  ibus_araddr;
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
    reg  [ 31:0] I_RD_Addr;
    reg  [127:0] AXI_I_RData;

    reg   [  2:0] D_RD_pre_state;
    reg   [  2:0] D_RD_next_state;
    wire  [ 2:0]   D_RD_DataReady;
    reg  [ 31:0]  D_RD_Addr;
    reg  [ 127:0] AXI_D_RData;

    reg   [2:0]  D_WR_pre_state;
    reg   [2:0]  D_WR_next_state;
    reg  [31:0]  D_WR_Addr;
    reg  [127:0] AXI_D_WData;

    reg   [1:0] U_RD_pre_state;
    reg   [1:0] U_RD_next_state;
    reg  [31:0]  U_RD_Addr;
    reg  [31:0]  AXI_U_RData;

    reg   [2:0] U_WR_pre_state;
    reg   [2:0] U_WR_next_state;
    reg  [31:0]  U_WR_Addr;
    reg  [31:0]  AXI_U_WData;
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
            //I_RD_next_state <= `I_RD_EMPTY;
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
                // I_RD_DataReady  = 0;
                if (icache_rd_req == 1'b1) begin
                    I_RD_next_state <= `I_RD_RECREQ;
                end
                else begin
                    I_RD_next_state <= `I_RD_EMPTY;
                end
            end
            `I_RD_RECREQ:begin
                // I_RD_DataReady  = 0;
                if (ibus_arvalid == 1'b1 && ibus_arready == 1'b1) begin
                    I_RD_next_state <= `I_RD_WAIT1;
                end else begin
                    I_RD_next_state <= `I_RD_RECREQ;
                end
            end
            `I_RD_WAIT1:begin
                if (ibus_rvalid == 1'b1 && ibus_rready == 1'b1) begin
                    I_RD_next_state <= `I_RD_WAIT2;
                    // I_RD_DataReady  = 3'd1;
                end
                else begin
                    I_RD_next_state <= `I_RD_WAIT1;
                    // I_RD_DataReady  = 0;
                end
            end
            `I_RD_WAIT2:begin
                if (ibus_rvalid == 1'b1 && ibus_rready == 1'b1) begin
                    I_RD_next_state <= `I_RD_WAIT3;
                    // I_RD_DataReady  = 3'd2;
                end
                else begin
                    I_RD_next_state <= `I_RD_WAIT2;
                    // I_RD_DataReady  = 0;
                end
            end
            `I_RD_WAIT3:begin
                if (ibus_rvalid == 1'b1 && ibus_rready == 1'b1) begin
                    I_RD_next_state <= `I_RD_WAIT4;
                    // I_RD_DataReady  = 3'd3;
                end
                else begin
                    I_RD_next_state <= `I_RD_WAIT3;
                    // I_RD_DataReady  = 0;
                end
            end
            `I_RD_WAIT4:begin
                if (ibus_rvalid == 1'b1 && ibus_rready == 1'b1 && ibus_rlast == 1'b1) begin
                    I_RD_next_state <= `I_RD_FINISH;
                    // I_RD_DataReady  = 3'd4;
                end
                else begin
                    I_RD_next_state <= `I_RD_WAIT4;
                    // I_RD_DataReady  = 0;
                end
            end
            `I_RD_FINISH: begin
                // I_RD_DataReady  = 0;
                I_RD_next_state     <= `I_RD_EMPTY;
            end
            default:begin
                // I_RD_DataReady  = 0;
                I_RD_next_state     <= `I_RD_EMPTY;
            end
        endcase
    end

    // araddr & arvalid
    assign ibus_arvalid = (I_RD_pre_state == `I_RD_RECREQ) ? 1'b1 : 1'b0;
    assign ibus_araddr  = (I_RD_pre_state == `I_RD_RECREQ) ? I_RD_Addr : 32'b0;
    // always @(*)begin
    //     if (I_RD_pre_state == `I_RD_RECREQ ) begin
    //             ibus_arvalid = 1'b1;
    //             ibus_araddr  = I_RD_Addr;  // 浼犺�?鍦板�?
    //     end else begin
    //             ibus_arvalid = 0;
    //             ibus_araddr  = 0;  // 浼犺�?鍦板�?
    //     end
    // end

    // rready 
    assign ibus_rready = (I_RD_pre_state == `I_RD_WAIT1 || I_RD_pre_state == `I_RD_WAIT2 
                 || I_RD_pre_state == `I_RD_WAIT3 || I_RD_pre_state == `I_RD_WAIT4) ? 1'b1 : 1'b0;
//     always @(*) begin
//         if (I_RD_pre_state == `I_RD_WAIT1 || I_RD_pre_state == `I_RD_WAIT2 ||I_RD_pre_state == `I_RD_WAIT3 ||I_RD_pre_state == `I_RD_WAIT4) begin
//             if (ibus_rvalid == 1'b1) begin
//                 ibus_rready = 1'b1;
//             end 
//             else begin
//                 ibus_rready = 0;
//             end
//         end
//         else begin
//             ibus_rready = 0;
//         end           
//    end
    //ret_valid & ret_rdata
    assign icache_ret_valid = (I_RD_pre_state == `I_RD_FINISH) ? 1'b1 : 1'b0;
    assign icache_ret_data  = (I_RD_pre_state == `I_RD_FINISH) ? AXI_I_RData : 0;
    // always @(*) begin
    //     if (I_RD_pre_state == `I_RD_FINISH) begin
    //         icache_ret_valid = 1'b1;
    //         icache_ret_data  = AXI_I_RData;
    //     end
    //     else begin
    //         icache_ret_valid = 1'b0;
    //         icache_ret_data  = 0;
    //     end
    // end
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
            //D_RD_next_state <= `D_RD_EMPTY;
        end 
        else begin  
            D_RD_pre_state <= D_RD_next_state;
        end
    end

    //
    assign D_RD_DataReady = 
        (D_RD_pre_state == `D_RD_WAIT1 && dbus_rvalid == 1'b1 && dbus_rready == 1'b1) ? 3'd1 :
        (D_RD_pre_state == `D_RD_WAIT2 && dbus_rvalid == 1'b1 && dbus_rready == 1'b1) ? 3'd2 :
        (D_RD_pre_state == `D_RD_WAIT3 && dbus_rvalid == 1'b1 && dbus_rready == 1'b1) ? 3'd3 :
        (D_RD_pre_state == `D_RD_WAIT4 && dbus_rvalid == 1'b1 && dbus_rready == 1'b1) ? 3'd4 : 
                                                                                        3'd0 ;
    always @(*) begin
        case (D_RD_pre_state)
            `D_RD_EMPTY:begin
                // D_RD_DataReady  = 0;
                if (dcache_rd_req == 1'b1) begin
                    D_RD_next_state <= `D_RD_RECREQ;
                end
                else begin
                    D_RD_next_state <= `D_RD_EMPTY;
                end
            end
            `D_RD_RECREQ:begin
                // D_RD_DataReady  = 0;
                if (dbus_arvalid == 1'b1 && dbus_arready == 1'b1) begin
                    D_RD_next_state <= `D_RD_WAIT1;
                end else begin
                    D_RD_next_state <= `D_RD_RECREQ;

                end
            end
            `D_RD_WAIT1:begin
                if (dbus_rvalid == 1'b1 && dbus_rready == 1'b1) begin
                    D_RD_next_state <= `D_RD_WAIT2;
                    // D_RD_DataReady  = 3'd1;
                end
                else begin
                    D_RD_next_state <= `D_RD_WAIT1;
                    // D_RD_DataReady  = 0;
                end
            end
            `D_RD_WAIT2:begin
                if (dbus_rvalid == 1'b1 && dbus_rready == 1'b1) begin
                    D_RD_next_state <= `D_RD_WAIT3;
                    // D_RD_DataReady  = 3'd2;
                end
                else begin
                    D_RD_next_state <= `D_RD_WAIT2;
                    // D_RD_DataReady  = 0;
                end
            end
            `D_RD_WAIT3:begin
                if (dbus_rvalid == 1'b1 && dbus_rready == 1'b1) begin
                    D_RD_next_state <= `D_RD_WAIT4;
                    // D_RD_DataReady  = 3'd3;
                end
                else begin
                    D_RD_next_state <= `D_RD_WAIT3;
                    // D_RD_DataReady  = 0;
                end
            end
            `D_RD_WAIT4:begin
                if (dbus_rvalid == 1'b1 && dbus_rready == 1'b1 && dbus_rlast == 1'b1) begin
                    D_RD_next_state <= `D_RD_FINISH;
                    // D_RD_DataReady  = 3'd4;
                end
                else begin
                    D_RD_next_state <= `D_RD_WAIT4;
                    // D_RD_DataReady  = 0;
                end
            end
            `D_RD_FINISH: begin
                // D_RD_DataReady  = 0;
                D_RD_next_state     <= `D_RD_EMPTY;
            end
            default:begin
                // D_RD_DataReady  = 0;
                D_RD_next_state     <= `D_RD_EMPTY;                
            end

        endcase
    end

    // araddr & arvalid
    assign dbus_arvalid = (D_RD_pre_state == `D_RD_RECREQ) ? 1'b1 : 1'b0;
    assign dbus_araddr  = (D_RD_pre_state == `D_RD_RECREQ) ? D_RD_Addr : 32'b0;
    // always @(*) begin
    //     if (D_RD_pre_state == `D_RD_RECREQ ) begin
    //             dbus_arvalid = 1'b1;
    //             dbus_araddr  = D_RD_Addr; 
    //     end else begin
    //             dbus_arvalid = 0;
    //             dbus_araddr  = 0;  
    //     end
    // end
    // rready
    assign dbus_rready = (D_RD_pre_state == `D_RD_WAIT1 || D_RD_pre_state == `D_RD_WAIT2 
    || D_RD_pre_state == `D_RD_WAIT3 ||D_RD_pre_state == `D_RD_WAIT4) ? 1'b1 : 1'b0;
//     always @(*) begin
//         if (D_RD_pre_state == `D_RD_WAIT1 || D_RD_pre_state == `D_RD_WAIT2 ||D_RD_pre_state == `D_RD_WAIT3 ||D_RD_pre_state == `D_RD_WAIT4) begin
//             if (dbus_rvalid == 1'b1) begin
//                 dbus_rready = 1'b1;
//             end 
//             else begin
//                 dbus_rready = 0;
//             end
//         end 
//         else begin
//             dbus_rready = 0;
//         end          
//    end
    //ret_valid & ret_rdata
    assign dcache_ret_valid = (D_RD_pre_state == `D_RD_FINISH) ? 1'b1 : 1'b0;
    assign dcache_ret_data  = (D_RD_pre_state == `D_RD_FINISH) ? AXI_D_RData : 0;
    // always @(*) begin
    //     if (D_RD_pre_state == `D_RD_FINISH) begin
    //         dcache_ret_valid = 1'b1;
    //         dcache_ret_data  = AXI_D_RData;
    //     end
    //     else begin
    //         dcache_ret_valid = 1'b0;
    //         dcache_ret_data  = 0;
    //     end
    // end
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
           //s D_WR_next_state = `D_WR_EMPTY;
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
                // dbus_wdata = 0;
                // dbus_wlast = 1'b0;
                if (dcache_wr_req == 1'b1) begin
                    D_WR_next_state <= `D_WR_RECREQ;
                end
                else begin
                    D_WR_next_state <= `D_WR_EMPTY;
                end
            end
            `D_WR_RECREQ:begin
                // dbus_wdata = 0;
                // dbus_wlast = 1'b0;
                if (dbus_awready == 1'b1) begin
                    D_WR_next_state <= `D_WR_WAIT1;
                end else begin
                    D_WR_next_state <= `D_WR_RECREQ;
                end
            end
            `D_WR_WAIT1:begin
                // dbus_wdata = AXI_D_WData[31:0];
                // dbus_wlast = 1'b0;
                if ( dbus_wready == 1'b1) begin
                    D_WR_next_state <= `D_WR_WAIT2;
                end
                else begin
                    D_WR_next_state <= `D_WR_WAIT1;
                end
            end
            `D_WR_WAIT2:begin
                // dbus_wdata = AXI_D_WData[63:32];
                // dbus_wlast = 1'b0;
                if (dbus_wready == 1'b1) begin
                    D_WR_next_state <= `D_WR_WAIT3;
                end
                else begin
                    D_WR_next_state <= `D_WR_WAIT2;
                end
            end
            `D_WR_WAIT3:begin
                // dbus_wdata = AXI_D_WData[95:64];
                // dbus_wlast = 1'b0;
                if (dbus_wready == 1'b1) begin
                    D_WR_next_state <= `D_WR_WAIT4;
                end
                else begin
                    D_WR_next_state <= `D_WR_WAIT3;
                end
            end
            `D_WR_WAIT4:begin
                // dbus_wdata = AXI_D_WData[127:96];
                // dbus_wlast = 1'b1;
                if (dbus_wready == 1'b1) begin
                    D_WR_next_state <= `D_WR_S;
                end
                else begin
                    D_WR_next_state <= `D_WR_WAIT4;
                end
            end
            `D_WR_S: begin
                // dbus_wdata      = 0;
                // dbus_wlast      = 1'b0;
                if (dbus_bvalid == 1'b1) begin
                    D_WR_next_state <= `D_WR_FINISH;
                end
               else begin
                    D_WR_next_state <= `D_WR_S;
                end
            end
            `D_WR_FINISH: begin
                // dbus_wlast      = 1'b0;
                // dbus_wdata      = 0;
                D_WR_next_state <= `D_WR_EMPTY;
            end
            default:begin
                // dbus_wlast      = 1'b0;
                // dbus_wdata      = 0;
                D_WR_next_state <= `D_WR_EMPTY;
            end
        endcase
    end

    // awaddr & awvalid
    assign dbus_awvalid = (D_WR_pre_state == `D_WR_RECREQ) ? 1'b1: 1'b0;
    assign dbus_awaddr  = (D_WR_pre_state == `D_WR_RECREQ) ? D_WR_Addr : 32'b0;
    // always @(*) begin
    //     if (D_WR_pre_state == `D_WR_RECREQ ) begin
    //             dbus_awvalid = 1'b1;
    //             dbus_awaddr  = D_WR_Addr;  
    //     end else begin
    //             dbus_awvalid = 0;
    //             dbus_awaddr  = 0; 
    //     end
    // end
    // wvalid 
    assign dbus_wvalid = (D_WR_pre_state == `D_WR_WAIT1 || D_WR_pre_state == `D_WR_WAIT2 
        || D_WR_pre_state == `D_WR_WAIT3 || D_WR_pre_state == `D_WR_WAIT4) ? 1'b1 : 1'b0;
//     always @(*) begin
//         if (D_WR_pre_state == `D_WR_WAIT1 || D_WR_pre_state == `D_WR_WAIT2 ||D_WR_pre_state == `D_WR_WAIT3 ||D_WR_pre_state == `D_WR_WAIT4) begin
//             dbus_wvalid = 1'b1;
//         end     
//         else begin
//             dbus_wvalid = 0;            
//         end      
//    end

    // finish 鏃朵骇鐢熺殑wr_valid
    assign dcache_wr_valid = (D_WR_pre_state == `D_WR_FINISH) ? 1'b1 : 1'b0;
    // always @(*) begin
    //     if (D_WR_pre_state == `D_WR_FINISH) begin
    //         dcache_wr_valid = 1'b1;
    //     end
    //     else begin
    //         dcache_wr_valid = 1'b0;
    //     end
    // end

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
    // always @(*) begin
    //     if (U_RD_pre_state == `U_RD_RECREQ ) begin
    //             ubus_arvalid = 1'b1;
    //             ubus_araddr  = U_RD_Addr; 
    //     end else begin
    //             ubus_arvalid = 0;
    //             ubus_araddr  = 0;  
    //     end
    // end
    // rready 
    assign ubus_rready = (U_RD_pre_state == `U_RD_WAIT1) ? 1'b1 : 1'b0;
//     always @(*) begin
//         if (U_RD_pre_state == `U_RD_WAIT1 ) begin
//             if (ubus_rvalid == 1'b1) begin
//                 ubus_rready = 1'b1;
//             end 
//             else begin
//                 ubus_rready = 0;
//             end
//         end 
//         else begin
//             ubus_rready = 0;
//         end          
//    end
    //ret_valid & ret_rdata
    assign udcache_ret_valid = (U_RD_pre_state == `U_RD_FINISH) ? 1'b1 : 1'b0;
    assign udcache_ret_data  = (U_RD_pre_state == `U_RD_FINISH) ? AXI_U_RData : 0;
    // always @(*) begin
    //     if (U_RD_pre_state == `U_RD_FINISH) begin
    //         udcache_ret_valid = 1'b1;
    //         udcache_ret_data  = AXI_U_RData;
    //     end
    //     else begin
    //         udcache_ret_valid = 1'b0;
    //         udcache_ret_data  = 0;
    //     end
    // end
    // AXI brust鏁版嵁鐨�?幏锟�???
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
                // ubus_wlast = 1'b0;
                if (udcache_wr_req == 1'b1) begin
                    U_WR_next_state <= `U_WR_RECREQ;
                end
                else begin
                    U_WR_next_state <= `U_WR_EMPTY;
                end
            end
            `U_WR_RECREQ:begin
                // ubus_wlast = 1'b0;
                if (ubus_awready == 1'b1) begin
                    U_WR_next_state <= `U_WR_WAIT1;
                end else begin
                    U_WR_next_state <= `U_WR_RECREQ;
                end
            end
            `U_WR_WAIT1:begin
                // ubus_wlast = 1'b1;
                if (ubus_wready == 1'b1) begin
                    U_WR_next_state <= `U_WR_S;
                end
                else begin
                    U_WR_next_state <= `U_WR_WAIT1;
                end
            end
            `U_WR_S: begin
                // ubus_wlast = 1'b0;
                if (ubus_bvalid == 1'b1) begin
                    U_WR_next_state <= `U_WR_FINISH;
                end
               else begin
                    U_WR_next_state <= `U_WR_S;
                end
            end
            `U_WR_FINISH: begin
                // ubus_wlast = 1'b0;
                U_WR_next_state <= `U_WR_EMPTY;
            end
            default:begin
                // ubus_wlast = 1'b0;
                U_WR_next_state <= `U_WR_EMPTY;
            end
        endcase
    end
    assign ubus_wdata = AXI_U_WData[31:0];
    // awaddr & awvalid
    assign ubus_awvalid = (U_WR_pre_state == `U_WR_RECREQ) ? 1'b1 : 1'b0;
    assign ubus_awaddr  = (U_WR_pre_state == `U_WR_RECREQ) ? U_WR_Addr : 0;
    // always @(*) begin
    //     if (U_WR_pre_state == `U_WR_RECREQ ) begin
    //             ubus_awvalid = 1'b1;
    //             ubus_awaddr  = U_WR_Addr;  
    //     end else begin
    //             ubus_awvalid = 0;
    //             ubus_awaddr  = 0;  
    //     end
    // end
    // wvalid 
    assign ubus_wvalid = (U_WR_pre_state == `U_WR_WAIT1) ? 1'b1 : 1'b0;
//     always @(*) begin
//         if (U_WR_pre_state == `U_WR_WAIT1 ) begin
//             ubus_wvalid = 1'b1;
//         end     
//         else begin
//             ubus_wvalid = 0;            
//         end     
//    end
    // wr_valid
    assign udcache_wr_valid = (U_WR_pre_state == `U_WR_FINISH) ? 1'b1 : 1'b0;
    // always @(*) begin
    //     if (U_WR_pre_state == `U_WR_FINISH) begin
    //         udcache_wr_valid = 1'b1;
    //     end
    //     else begin
    //         udcache_wr_valid = 1'b0;
    //     end
    // end

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
