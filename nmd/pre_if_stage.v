`include "global_defines.vh"

module pre_if_stage(
    input         clk,
    input         reset,
    input [31:0]  fs_pc,
    //allowin
    input         fs_allowin, 
    //brbus
    input  [`BR_BUS_WD       -1:0] br_bus, 
    //input                          ps_bd,
    //to ds
    output [`PS_TO_FS_BUS_WD -1:0] ps_to_fs_bus,
    input         flush, //flush=1ʱ������Ҫ�����쳣
    // input         flush_refill,
    input  [31:0] CP0_EPC_out, //CP0�Ĵ�����,EPC��ֵ
    input         m1s_inst_eret,
    // input  [4:0]  tlb_refill_if_ex,
    // input  [4:0]  tlb_invalid_if_ex,
    //Attention:CPU��ICache�Ľ����ź�����;����Ŀǰû��ʵ�֡�CPU���ʵս���е�wstrb��wdata
    output reg    inst_valid,
    output        inst_op,
    output [ 7:0] inst_index,
    output [19:0] inst_tag,
    output [ 3:0] inst_offset,
    input         inst_addr_ok,
    input         inst_data_ok,
    input         mfc0_stall //TODO: ��ʱ��mfc0_stall�ź��͵�IF�׶�,ȷ��nextpc��ת����ȷ��
);

//wire        ps_allowin; //����IF�׶������� fs_allowin=1,IF�׶�����ָ������ ��fs_valid fs_pc inst_sram_en�Ŀ����ź�
wire        br_stall;      //ID�׶μ�⵽branchָ��,����loadָ����EXE�׶�,�޷�ʹ��forward,������ͣ

wire [31:0] seq_pc;
reg [31:0] nextpc;

wire         br_taken;
wire [ 31:0] br_target;
assign {br_stall,br_taken,br_target} = br_bus; 

//wire  [31:0] fs_inst;
assign ps_to_fs_bus = {
                       nextpc    
                       };

reg npc_block;
always @(posedge clk)begin
    npc_block <= fs_allowin & inst_addr_ok;
end

reg flush_r; //Attention:����flush_r���ӳ�flush����ʱ��
always @(posedge clk) begin
    if(reset) flush_r <= 1'b0;
    else if(flush & ~m1s_inst_eret) flush_r <= 1'b1;
    else if(inst_data_ok) flush_r <= 1'b0;
end

// pre-IF stage
//lab8�޸� ���ڵ�WB�׶η�������ʱ,ID�׶η���br_stall������;��������������Ȼ����������ȼ�
assign seq_pc          = fs_pc + 3'h4;
reg [31:0] nextpc_buffer;
reg [31:0] nextpc_timely;
always @(*) begin
    if(m1s_inst_eret)
        nextpc_timely <= CP0_EPC_out;
    else if(flush | flush_r)
        nextpc_timely <= 32'hbfc00380;
    else if(npc_block)begin
        if(br_taken && ~br_stall && ~mfc0_stall)
            nextpc_timely <= br_target;
        else
            nextpc_timely <= seq_pc;
    end
    else
        nextpc_timely <= 32'b0;
end

always @(posedge clk) begin
    if(reset)
        nextpc_buffer <= 32'b0;
    else if(m1s_inst_eret | flush | npc_block)
        nextpc_buffer <= nextpc_timely;
end

always @(*) begin
    if(m1s_inst_eret)
        nextpc <= nextpc_timely;
    else if(flush | flush_r)
        nextpc <= nextpc_timely;
    else if(npc_block)begin
        nextpc <= nextpc_timely;
    end
    else
        nextpc <= nextpc_buffer;
end

always @(*) begin///CHANGE
    if(flush)
        inst_valid <= 1'b1;
    else if(nextpc[1:0] != 2'b00)
        inst_valid <= 1'b0;
    else if(inst_addr_ok & fs_allowin) 
        inst_valid <= 1'b1;
    else
        inst_valid <= 1'b0;
end

assign inst_op    = 1'b0; //��
assign {inst_tag,inst_index,inst_offset} = nextpc;

/*******************CPU��ICache�Ľ����źŸ�ֵ����******************/
endmodule
