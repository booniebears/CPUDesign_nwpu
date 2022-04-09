`include "global_defines.vh"
`include "AXICache_defines.vh"
module AXI_Interface (
/*******************AXI定义信号如下******************/
//Attention:arlen上《CPU设计实战》的定义有点问题,这里采用四位宽即可
    input aclk,
    input aresetn,
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
    input         inst_rd_req, 
    input  [31:0] inst_rd_addr, 
    output        inst_rd_rdy, 
    output        inst_ret_valid, //传输完成后ret_valid置1
    output [31:0] inst_ret_data,
    //和DCache交互
    input         data_rd_req, 
    input  [31:0] data_rd_addr, 
    output        data_rd_rdy, 
    output        data_ret_valid, //传输完成后ret_valid置1
    output [31:0] data_ret_data,
    input         data_wr_req, 
    input  [31:0] data_wr_addr,     
    input  [ 3:0] data_wr_strb, 
    input [127:0] data_wr_data, //一次写一个cache line的数据
    output        data_wr_rdy
/*******************AXI与Cache的交互信号如上******************/
);

//Function:AXI控制模块 实现AXI接口和远端axi_ram交互;和Cache与Uncache交互;

//ICache对应的AXI端口信号


//DCache对应的AXI端口信号



endmodule //AXI_Interface