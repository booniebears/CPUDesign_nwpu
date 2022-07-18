`include "global_defines.vh"

module mem_stage(
    input          clk,
    input          reset,
    //allowin 
    input          ws_allowin,
    output         ms_allowin,
<<<<<<< HEAD
    //to ds
    output         ms_load_op,
=======
>>>>>>> c1ccb7a1a3b9fb332c7e46bb1f5b86fad890f5fa
    //from m1s
    input          m1s_to_ms_valid,
    input  [`M1_TO_MS_BUS_WD -1:0] m1s_to_ms_bus,
    //to ws
    output         ms_to_ws_valid,
    output [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus,
    input  [ 31:0] data_rdata, //TODO:data_rdata换成从DCache读回来的数据rdata
    input          dcache_busy,
    output [ 4:0]  MEM_dest, // MEM阶段写RF地址 通过旁路送到ID阶段
    output [31:0]  MEM_result //MEM阶段 ms_final_result  
);

reg         ms_valid;
wire        ms_ready_go;

reg [`M1_TO_MS_BUS_WD -1:0] m1s_to_ms_bus_r;
wire        ms_res_from_mem;
wire        ms_gr_we;
wire [ 4:0] ms_dest;
wire [31:0] ms_result;
wire [31:0] ms_pc;
wire        ms_ex;
<<<<<<< HEAD
=======
wire        ms_inst_mfc0;
wire [31:0] CP0_data;
>>>>>>> c1ccb7a1a3b9fb332c7e46bb1f5b86fad890f5fa
wire        ms_store_flow;

wire [11:0] ms_mem_inst;
wire [31:0] ms_rt_value;
wire 		load_sign_lb;
wire 		load_sign_lh;
wire [31:0] mem_result_lb;
wire [31:0] mem_result_lbu;
wire [31:0] mem_result_lh;
wire [31:0] mem_result_lhu;
wire [31:0] mem_result_lwl;
wire [31:0] mem_result_lwr;

assign {
<<<<<<< HEAD
        ms_load_op     ,
        ms_store_flow  ,
=======
        ms_store_flow  ,
        ms_inst_mfc0   ,
        CP0_data       ,
>>>>>>> c1ccb7a1a3b9fb332c7e46bb1f5b86fad890f5fa
        ms_ex          ,                                
        ms_rt_value    ,
        ms_mem_inst    ,
        ms_res_from_mem,
        ms_gr_we       ,
        ms_dest        ,
<<<<<<< HEAD
        ms_result  ,
=======
        ms_alu_result  ,
>>>>>>> c1ccb7a1a3b9fb332c7e46bb1f5b86fad890f5fa
        ms_pc           
       } = m1s_to_ms_bus_r;

wire [31:0] mem_data;
wire [31:0] ms_final_result;

wire [1:0] rdata_type;

assign rdata_type = ms_result[1:0];

assign ms_to_ws_bus = {
<<<<<<< HEAD
                       ms_res_from_mem,
                       ms_mem_inst    ,
                       ms_rt_value    ,
                       data_rdata     ,
                       rdata_type     ,
=======
>>>>>>> c1ccb7a1a3b9fb332c7e46bb1f5b86fad890f5fa
                       ms_ex          ,  //70:70
                       ms_gr_we       ,  //69:69 --写RF使能
                       ms_dest        ,  //68:64 --写RF的地址
                       ms_final_result,  //63:32 --写RF的数据
                       ms_pc             //31:0 --MEM阶段 PC值
                      };

// //lab7添加
// //TODO:data_rdata换成从DCache读回来的数据rdata
// assign load_sign_lb         = (ms_result[1:0] == 2'd0) ? data_rdata[ 7] :
//                               (ms_result[1:0] == 2'd1) ? data_rdata[15] :
//                               (ms_result[1:0] == 2'd2) ? data_rdata[23] :
//                                                              data_rdata[31];                                                  
// assign mem_result_lb[ 7:0]  = (ms_result[1:0] == 2'd0) ? data_rdata[ 7:0 ] :
//                               (ms_result[1:0] == 2'd1) ? data_rdata[15:8 ] :
//                               (ms_result[1:0] == 2'd2) ? data_rdata[23:16] :
//                                                              data_rdata[31:24];
// assign mem_result_lb[31:8]  = {24{load_sign_lb}};
// assign mem_result_lbu       = {24'd0, mem_result_lb[7:0]};


// //lh/lhu
// assign load_sign_lh         = (ms_result[1:0] == 2'b00) ? data_rdata[15]   :
//                               (ms_result[1:0] == 2'b10) ? data_rdata[31]   : 1'b0;                                                   
// assign mem_result_lh[15:0]  = (ms_result[1:0] == 2'b00) ? data_rdata[15:0] : 
//                               (ms_result[1:0] == 2'b10) ? data_rdata[31:16]: 16'd0;
// assign mem_result_lh[31:16] = {16{load_sign_lh}};
// assign mem_result_lhu       = {16'd0, mem_result_lh[15:0]};

// //lwl
// assign mem_result_lwl       = (ms_result[1:0] == 2'd0) ? {data_rdata[ 7:0], ms_rt_value[23:0]} :
//                               (ms_result[1:0] == 2'd1) ? {data_rdata[15:0], ms_rt_value[15:0]} :
//                               (ms_result[1:0] == 2'd2) ? {data_rdata[23:0], ms_rt_value[7 :0]} :
//                                                               data_rdata[31:0];

// //lwr
// assign mem_result_lwr       = (ms_result[1:0] == 2'd0) ?  data_rdata[31:0]                       :
//                               (ms_result[1:0] == 2'd1) ? {ms_rt_value[31:24], data_rdata[31: 8]} :
//                               (ms_result[1:0] == 2'd2) ? {ms_rt_value[31:16], data_rdata[31:16]} :
//                                                              {ms_rt_value[31: 8], data_rdata[31:24]} ;

assign ms_ready_go    = ms_store_flow | ~dcache_busy;
assign ms_allowin     = !ms_valid || ms_ready_go && ws_allowin;
assign ms_to_ws_valid = ms_valid && ms_ready_go;
always @(posedge clk) begin
    if (reset) begin
        ms_valid <= 1'b0;
    end
    else if (ms_allowin) begin
        ms_valid <= m1s_to_ms_valid;
    end
end

always @(posedge clk ) begin
    if (reset)
        m1s_to_ms_bus_r <= 0;
    else if (m1s_to_ms_valid && ms_allowin) begin
        m1s_to_ms_bus_r <= m1s_to_ms_bus;
    end
end

// assign mem_data = (ms_mem_inst[2]) ? mem_result_lb  :
//                   (ms_mem_inst[3]) ? mem_result_lbu :
//                   (ms_mem_inst[4]) ? mem_result_lh  :
//                   (ms_mem_inst[5]) ? mem_result_lhu : 
//                   (ms_mem_inst[6]) ? mem_result_lwl :
//                   (ms_mem_inst[7]) ? mem_result_lwr : data_rdata; //lw对应data_rdata


`ifdef OPEN_VA_PERF
    reg [31:0] getsoccount; 
    //lw v0, -8192(t9)
    assign ms_final_result =((ms_mem_inst[0] == 1) && (ms_result == 32'hbfafe000) && (ms_dest == 5'h02)) ?
                            getsoccount :
                            // ms_res_from_mem ? mem_data :
                            // ms_inst_mfc0    ? CP0_data :
                                              ms_result;
    always @(posedge clk) begin //set values for soc count
        if(reset)
            getsoccount <= 0;
        //lw v0, -8192(t9)
        else
            getsoccount <= getsoccount + 1;
    end

`else
    // assign ms_final_result = ms_res_from_mem ? mem_data:
    //                          ms_inst_mfc0    ? CP0_data :
    //                                            ms_result;
    assign ms_final_result =   ms_result;
`endif

<<<<<<< HEAD
=======

`ifdef OPEN_VA_PERF
    reg [31:0] getsoccount; 
    //lw v0, -8192(t9)
    assign ms_final_result =((ms_mem_inst[0] == 1) && (ms_alu_result == 32'hbfafe000) && (ms_dest == 5'h02)) ?
                            getsoccount :
                            ms_res_from_mem ? mem_data :
                            ms_inst_mfc0    ? CP0_data :
                                              ms_alu_result;
    always @(posedge clk) begin //set values for soc count
        if(reset)
            getsoccount <= 0;
        //lw v0, -8192(t9)
        else
            getsoccount <= getsoccount + 1;
    end

`else
    assign ms_final_result = ms_res_from_mem ? mem_data:
                             ms_inst_mfc0    ? CP0_data :
                                               ms_alu_result;
`endif

>>>>>>> c1ccb7a1a3b9fb332c7e46bb1f5b86fad890f5fa
//lab4添加
assign MEM_dest   = ms_dest & {5{ms_to_ws_valid}}; //写RF地址通过旁路送到ID阶段 注意考虑ms_valid有效性
assign MEM_result = ms_final_result; //ms_final_result可以是DM中值,也可以是MEM阶段ALU运算值,forward到ID阶段
endmodule
