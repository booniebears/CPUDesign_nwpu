`timescale 1ns / 1ps

`define SIZE_INDEX 7:0
`define BUS_WIDTH  31:0
`define TYPE_WIDTH 1:0
`include "defines.v"

module branch_predictor_lite(
    input wire resetn,
    input wire clk,
    input wire stall,  //stall from ex!
    
    input wire[`RegBus] pc,
    input wire[`RegBus] pc_p4,
    
    input wire cp0_exl_i,
    
    //actual branch infomation from ex
    input wire[`SIZE_OF_BRANCH_INFO] branch_info0, // pc + jump flag 1bit + jump target 32bit + branch type2bit
    
    // instruction address error exceptions
    input wire TLB_Imiss,
    input wire ADEL_assert,
    input wire TLB_Iinvalid,
    input wire TLB_Iillegal,
        
    //predict result
    output reg[`SIZE_OF_PTA] pta0,   //33bit:jump flag 1bit + jump target 32bit
    output reg[`SIZE_OF_PTA] pta1,
    output reg[`SIZE_OF_CORR_PACK] corr_pack0_o, 
    output reg[`SIZE_OF_CORR_PACK] corr_pack1_o
    
    );
    
    wire[`BUS_WIDTH]     corr_pc0;
    wire[`BUS_WIDTH]     corr_pc1;
    
    wire[`SIZE_TAG]     corr_tag0;                
    wire[`SIZE_TAG]     corr_tag1;                
    wire[`SIZE_INDEX]   corr_index0;              
    wire[`SIZE_INDEX]   corr_index1;              
                                       
    wire[`SIZE_TAG]     tag0;            
    wire[`SIZE_TAG]     tag1;            
    wire[`SIZE_INDEX]   index0;          
    wire[`SIZE_INDEX]   index1;          
                                       
    wire [`TYPE_WIDTH]  predict_type0; 
    wire [`TYPE_WIDTH]  predict_type1; 
    wire [`BUS_WIDTH]   predict_tar0;  
    wire [`BUS_WIDTH]   predict_tar1;  
    wire                predict_dir0;  
    wire                predict_dir1;  
    wire                hit0;          
    wire                hit1;         
    wire                pred_flag0;
    
   
    assign corr_pc0 = branch_info0[`BRANCH_INFO_PC];
    assign corr_tag0 = corr_pc0[31:10];
    assign corr_index0 = corr_pc0[9:2];
    
    assign index0 = pc[9:2];
    assign index1 = pc_p4[9:2];
    assign tag0 = pc[31:10];
    assign tag1 = pc_p4[31:10];
    
    assign pred_flag0 = ~(|branch_info0[34:0]);
    
    
    always@(*)begin
        if(hit0 == 1'b1)begin
            pta0 = {predict_dir0,predict_tar0};
            corr_pack0_o = {predict_dir0,predict_tar0,46'd0,cp0_exl_i,4'd0,TLB_Imiss,ADEL_assert,TLB_Iillegal,TLB_Iinvalid};
        end else begin
            pta0 = 33'd0;
            corr_pack0_o = {84'd0,TLB_Imiss,ADEL_assert,TLB_Iillegal,TLB_Iinvalid};
        end
        
        if(hit1 == 1'b1)begin
            pta1 = {predict_dir1,predict_tar1};
            corr_pack1_o = {predict_dir1,predict_tar1,46'd0,cp0_exl_i,4'd0,TLB_Imiss,ADEL_assert,TLB_Iillegal,TLB_Iinvalid};
        end else begin
            pta1 = 33'd0;
            corr_pack1_o = {84'd0,TLB_Imiss,ADEL_assert,TLB_Iillegal,TLB_Iinvalid};
        end
    end 

    
    
    branch_buffer_lite bbl0(
        resetn,      
        clk,         
                          
        branch_info0[34:0],
        pred_flag0, 
                
        corr_tag0,      
        corr_index0,
        
        tag0,           
        tag1,           
        index0,         
        index1,         
                        
        predict_type0,
        predict_type1,
        predict_tar0, 
        predict_tar1, 
        predict_dir0, 
        predict_dir1, 
        hit0,         
        hit1          

    );
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/08/01 09:13:08
// Design Name: 
// Module Name: branch_buffer_lite
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`define SIZE_TAG   21:0
`define SIZE_INDEX 7:0
`define BUS_WIDTH  31:0
`define TYPE_WIDTH 1:0
`include "defines.v"

module branch_buffer_lite(
    input wire                          resetn,
    input wire                          clk,
  
    input wire[`SIZE_OF_BRANCH_INFO]    branch_info0,
  
    input wire     pred_flag0,

    input wire[`SIZE_TAG]     corr_tag0,
    input wire[`SIZE_INDEX]   corr_index0,
    
    input wire[`SIZE_TAG]   tag0,    
    input wire[`SIZE_TAG]   tag1,    
    input wire[`SIZE_INDEX] index0,
    input wire[`SIZE_INDEX] index1,
    
    output reg [`TYPE_WIDTH]  predict_type0, //预测的分支类型 
    output reg [`TYPE_WIDTH]  predict_type1,
    output reg [`BUS_WIDTH]   predict_tar0,  //预测的分支地址
    output reg [`BUS_WIDTH]   predict_tar1,
    output reg                predict_dir0,  //预测跳或不跳
    output reg                predict_dir1,
    output reg                hit0,          //是否命中
    output reg                hit1

    );
    
    reg [`SIZE_TAG]   taglist [255:0];
    reg [`BUS_WIDTH]  tarlist [255:0];
    reg [`TYPE_WIDTH] typelist[255:0];
    reg [1:0] dirlist [255:0];
    reg [255:0] valid;
    
    //direct prediction
    always@(*)begin
        if(resetn == `RstEnable)begin
            predict_dir0 <= 1'b0;
            predict_dir1 <= 1'b0;
        end else begin
            case(dirlist[index0])
                `SNT:predict_dir0 <= 1'b0;
                `WNT:predict_dir0 <= 1'b0;
                `WT:predict_dir0 <= 1'b1;
                `ST:predict_dir0 <= 1'b1;
                default:predict_dir0 <= 1'b0;          
            endcase
            case(dirlist[index1])
                `SNT:predict_dir1 <= 1'b0;
                `WNT:predict_dir1 <= 1'b0;
                `WT:predict_dir1 <= 1'b1;
                `ST:predict_dir1 <= 1'b1;
                default:predict_dir1 <= 1'b0;          
            endcase
        end
    end
    
    //target and type prediction
    always@(*)begin
        if(resetn == `RstEnable)begin
            hit0 <= `False_v;
            predict_type0 <= 2'b00;
            predict_tar0 <= `ZeroWord;
            hit1 <= `False_v;
            predict_type1 <= 2'b00;
            predict_tar1 <= `ZeroWord;
        end else begin
            
            if(taglist[index0] == tag0 && valid[index0] == `True_v)begin 
                hit0 <= `True_v;       //hit
                predict_type0 <= typelist[index0];
                predict_tar0 <= tarlist[index0];                
            end else begin          
                hit0 <= `False_v;      //miss
                predict_type0 <= 2'b00;
                predict_tar0 <= `ZeroWord;             
            end
            
            if(taglist[index1] == tag1 && valid[index1] == `True_v)begin 
                hit1 <= `True_v;       //hit
                predict_type1 <= typelist[index1];
                predict_tar1 <= tarlist[index1];
            end else begin          
                hit1 <= `False_v;      //miss
                predict_type1 <= 2'b00;
                predict_tar1 <= `ZeroWord;
            end          
        end
    end
    
    //fix
    always@(posedge clk)begin
        if(resetn == `RstEnable)begin
            
        end else begin
            if(pred_flag0 == 1'b0)begin
                taglist [corr_index0] <= corr_tag0;
                tarlist [corr_index0] <= branch_info0[`BRANCH_INFO_TAR];
                typelist[corr_index0] <= branch_info0[`BRANCH_INFO_TYP];
                valid[corr_index0] <= |(branch_info0[`BRANCH_INFO_TAR]);
            end
        end
    end
    
    //方向修正
    always@(posedge clk)begin
        if(resetn == `RstEnable)begin
        
        end else begin
            case(dirlist[corr_index0])
                `SNT:begin
                    if(branch_info0[`BRANCH_INFO_DIR])begin
                        dirlist[corr_index0] <= `WNT;
                    end                   
                end
                `WNT:begin
                    if(branch_info0[`BRANCH_INFO_DIR])begin
                        dirlist[corr_index0] <= `WT;            
                    end else begin
                        dirlist[corr_index0] <= `SNT;
                    end              
                end
                `WT:begin
                    if(branch_info0[`BRANCH_INFO_DIR])begin
                        dirlist[corr_index0] <= `ST;                         
                    end else begin
                        dirlist[corr_index0] <= `WNT;
                    end  
                end
                `ST:begin
                    if(!branch_info0[`BRANCH_INFO_DIR])begin
                        dirlist[corr_index0] <= `WT;
                    end           
                end
                default:dirlist[corr_index0] <= `WT;             
            endcase    
        end
    end
endmodule
