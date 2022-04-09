`include "global_defines.vh"
`include "AXICache_defines.vh"
module AXI_Interface (
/*******************AXI�����ź�����******************/
//Attention:arlen�ϡ�CPU���ʵս���Ķ����е�����,���������λ����
    input aclk,
    input aresetn,
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
    input         inst_rd_req, 
    input  [31:0] inst_rd_addr, 
    output        inst_rd_rdy, 
    output        inst_ret_valid, //������ɺ�ret_valid��1
    output [31:0] inst_ret_data,
    //��DCache����
    input         data_rd_req, 
    input  [31:0] data_rd_addr, 
    output        data_rd_rdy, 
    output        data_ret_valid, //������ɺ�ret_valid��1
    output [31:0] data_ret_data,
    input         data_wr_req, 
    input  [31:0] data_wr_addr,     
    input  [ 3:0] data_wr_strb, 
    input [127:0] data_wr_data, //һ��дһ��cache line������
    output        data_wr_rdy
/*******************AXI��Cache�Ľ����ź�����******************/
);

//Function:AXI����ģ�� ʵ��AXI�ӿں�Զ��axi_ram����;��Cache��Uncache����;

//ICache��Ӧ��AXI�˿��ź�


//DCache��Ӧ��AXI�˿��ź�



endmodule //AXI_Interface