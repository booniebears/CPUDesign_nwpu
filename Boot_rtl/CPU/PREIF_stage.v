`include "global_defines.vh"

module pre_if_stage(
    input                          clk,
    input                          reset,
`ifdef ILA_debug
    output                         ps_ready_go,
`endif
    //allowin                  
    input                          fs_allowin, 
    //brbus
    input  [`BR_BUS_WD       -1:0] br_bus, 
    input  [`BPU_TO_PS_BUS_WD-1:0] BPU_to_ps_bus,
    //to ds
    output [`PS_TO_FS_BUS_WD -1:0] ps_to_fs_bus,
    output                         ps_to_fs_valid,

    input                          br_flush,
    input                          flush, //flush=1时表明需要处理异常
    input      [31:0]              Exception_Addr, //flush=1时表明需要处理异常
    input      [31:0]              CP0_EPC_out, //CP0寄存器中,EPC的值
    input                          m1s_inst_eret,

    //CPU和ICache的交互信号如下
    output     [ 7:0]              inst_index,
    output     [19:0]              inst_tag,
    output     [ 3:0]              inst_offset,
    input                          icache_busy, //
    output reg [31:0]              prefs_pc,
    input                          ITLB_found,
    input      [19:0]              ITLB_pfn0,
    input      [ 2:0]              ITLB_c0,
    input                          ITLB_d0,
    input                          ITLB_v0,
    input      [19:0]              ITLB_pfn1,
    input      [ 2:0]              ITLB_c1,
    input                          ITLB_d1,
    input                          ITLB_v1,
    input                          TLB_Buffer_Flush,
    output reg                     inst_valid, 
    input                          m1s_refetch,
    input      [31:0]              m1s_pc,
    input                          m1s_is_ICacheInst,
    input      [11:4]              cache_index, //M1阶段传回 Cache指令使用的index
    output reg                     ICacheInst_delayed
);

wire         inst_valid_end;

`ifndef ILA_debug
wire         ps_ready_go;
`endif
wire         ps_allowin;

wire [31:12] ITLB_PFN; //实地址
wire         ADEL_ex;//处理取指令地址错例外ADEL
wire         ITLB_ex;//处理取指令地址错例外ADEL
wire         temp_ex;
wire         ps_ex;
wire [4:0]   ps_Exctype;
wire [4:0]   ITLB_Exctype;
wire         ITLB_Buffer_Stall;

//PC_reg
reg   [31:0] nextpc;
wire  [31:0] seq_pc;
wire  [31:0] right_flow_pc;
wire  [31:0] wrong_flow_pc;
reg          flush_delayed;
reg          refetch_delayed;
reg   [11:4] cache_index_delayed;

wire         br_taken;
wire  [31:0] br_target;
wire         br_BPU_valid;
wire         is_branch;
wire         br_BPU_right;
wire [ 31:0] br_es_pc;
// wire         br_stall;      //ID阶段检测到branch指令,由于load指令在EXE阶段,无法使用forward,必须暂停
wire         prefs_bdd; //跳转指令的下下条

wire [31:0]  BPU_target;
wire         BPU_valid;

/******************BPU_to_ps_bus Total: 33bits******************/
assign {BPU_target,BPU_valid} = BPU_to_ps_bus;


/******************Br Bus Total: 68bits******************/
assign {
        br_BPU_valid, //67:67
        is_branch,    //66:66
        br_taken,     //65:65
        br_BPU_right, //64:64
        br_target,    //63:32
        br_es_pc      //31:0
        } = br_bus; 

`ifdef OPEN_VA_PERF
    //计数使用，可以注释//
    reg [31:0] br_ds_pc_buffer;
    reg [31:0] branch_count;
    reg [31:0] right_count;
    always_latch @(br_es_pc) begin
        if(reset)begin
            branch_count = 0;
            right_count = 0;
        end
        if(is_branch)begin
            branch_count = branch_count + 1;
        end
        if(is_branch & br_BPU_right)begin
            right_count = right_count + 1;
        end
    end
    always @(posedge clk) begin
        br_ds_pc_buffer <= br_es_pc;
    end
`else

    // always @(br_es_pc) begin
    //     if(reset)begin
    //         branch_count = 0;
    //         right_count = 0;
    //     end

    //     if(is_branch)begin
    //     branch_count = branch_count + 1;
    //     end

    //     if(is_branch & br_BPU_right)begin
    //         right_count = right_count + 1;
    //     end
    // end
    // always @(posedge clk) begin
    //     br_ds_pc_buffer <= br_es_pc;
    // end

 `endif 

////////////////////

reg br_flush_r;
always @(posedge clk) begin
    if(reset)begin
        br_flush_r <= 1'b0;
    end
    else if((~icache_busy & ps_allowin) | flush)begin
        br_flush_r <= 1'b0;
    end
    else if(br_flush) begin
        br_flush_r <= 1'b1;
    end
end

wire final_br_flush;
assign final_br_flush = br_flush | br_flush_r;

assign ps_ready_go    = ~icache_busy & ~ITLB_Buffer_Stall;
assign ps_allowin     = flush ? 1'b1 : fs_allowin & ps_ready_go;
assign ps_to_fs_valid = ps_ready_go;
assign inst_valid_end = inst_valid & ~final_br_flush;
/******************ps_to_fs_bus Total: 39bits******************/
assign ps_to_fs_bus   = {
                          inst_valid_end, //38:38
                          prefs_pc,       //37:6
                          ps_ex,          //5:5
                          ps_Exctype      //4:0
                        };

assign seq_pc = prefs_pc + 4;
assign right_flow_pc = BPU_valid ? BPU_target : seq_pc;
assign wrong_flow_pc = br_taken ? br_target : br_es_pc + 8;

always @(*) begin //nextpc
    if(m1s_inst_eret)
        nextpc = CP0_EPC_out;
    else if(flush) begin
        if(m1s_refetch)
            nextpc = m1s_pc;
        else 
            nextpc = Exception_Addr; //例外地址
    end
    else if(is_branch & br_BPU_valid & ~br_BPU_right)begin
        nextpc = wrong_flow_pc;
    end
    else if(is_branch & ~br_BPU_valid & br_taken)begin
        nextpc = br_target;
    end
    else 
        nextpc = right_flow_pc;
end

always @(posedge clk) begin //prefs_pc
    if(reset)
        prefs_pc <= `RESET_PC;
    else if((~icache_busy & ps_allowin) | flush)
        prefs_pc <= nextpc;
end

ITLB_stage ITLB(
        .clk                  (clk                 ),
        .reset                (reset               ),
        .ITLB_found           (ITLB_found          ),
        .ITLB_VPN             (prefs_pc[31:12]     ), 
        .ITLB_PFN             (ITLB_PFN            ),
        .ITLB_pfn0            (ITLB_pfn0           ),
        .ITLB_c0              (ITLB_c0             ),
        .ITLB_d0              (ITLB_d0             ),
        .ITLB_v0              (ITLB_v0             ),
        .ITLB_pfn1            (ITLB_pfn1           ),
        .ITLB_c1              (ITLB_c1             ),
        .ITLB_d1              (ITLB_d1             ),
        .ITLB_v1              (ITLB_v1             ),
        .ITLB_Exctype         (ITLB_Exctype        ),
        .ITLB_ex              (ITLB_ex             ),
        .ITLB_Buffer_Stall    (ITLB_Buffer_Stall   ),
        .TLB_Buffer_Flush     (TLB_Buffer_Flush    )
);


assign ADEL_ex    = (prefs_pc[1:0] != 2'b00); 
assign temp_ex    = (ADEL_ex | ITLB_ex);
assign ps_ex      =  temp_ex & ~final_br_flush; //br_flush的情况下 即使发现例外也不应该报出例外
assign ps_Exctype =  ADEL_ex ? `AdEL         : //这个可以不管
                     ITLB_ex ?  ITLB_Exctype : 
                               `NO_EX;

/*******************CPU与ICache的交互信号赋值如下******************/
always @(posedge clk) begin
    if(reset) 
        flush_delayed <= 1'b0;
    else if(flush)
        flush_delayed <= 1'b1;
    else if(~icache_busy)
        flush_delayed <= 1'b0;
end

always @(posedge clk) begin
    if(reset)
        refetch_delayed <= 1'b0;
    else if(m1s_refetch)
        refetch_delayed <= 1'b1;
    else if(~icache_busy)
        refetch_delayed <= 1'b0;
end

always @(posedge clk) begin
    if(reset)
        ICacheInst_delayed <= 1'b0;
    else if(m1s_is_ICacheInst)
        ICacheInst_delayed <= 1'b1;
    else if(~icache_busy)
        ICacheInst_delayed <= 1'b0;
end

always @(posedge clk) begin
    if(reset)
        cache_index_delayed <= 8'b0;
    else if(m1s_is_ICacheInst)
        cache_index_delayed <= cache_index;
    else if(~icache_busy)
        cache_index_delayed <= 8'b0;
end
always @(*) begin
    if(flush_delayed & ~icache_busy & ~refetch_delayed)
        inst_valid = 1'b1;
    else if(temp_ex | ITLB_Buffer_Stall)
        inst_valid = 1'b0;
    else if(~icache_busy & ps_allowin & ~refetch_delayed) 
        inst_valid = 1'b1;
    else
        inst_valid = 1'b0;
end

assign inst_tag       = ITLB_PFN;
assign inst_index     = ICacheInst_delayed ? cache_index_delayed : prefs_pc[11:4];
assign inst_offset    = prefs_pc[3:0];
/*******************CPU与ICache的交互信号赋值如上******************/
endmodule
