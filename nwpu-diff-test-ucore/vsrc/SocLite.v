module CPU(
  input         clock,
  input         reset,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output [3:0]  auto_out_aw_bits_id,
  output [31:0] auto_out_aw_bits_addr,
  output [7:0]  auto_out_aw_bits_len,
  output [2:0]  auto_out_aw_bits_size,
  output [1:0]  auto_out_aw_bits_burst,
  output        auto_out_aw_bits_lock,
  output [3:0]  auto_out_aw_bits_cache,
  output [2:0]  auto_out_aw_bits_prot,
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [31:0] auto_out_w_bits_data,
  output [3:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [3:0]  auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output [3:0]  auto_out_ar_bits_id,
  output [31:0] auto_out_ar_bits_addr,
  output [7:0]  auto_out_ar_bits_len,
  output [2:0]  auto_out_ar_bits_size,
  output [1:0]  auto_out_ar_bits_burst,
  output        auto_out_ar_bits_lock,
  output [3:0]  auto_out_ar_bits_cache,
  output [2:0]  auto_out_ar_bits_prot,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [3:0]  auto_out_r_bits_id,
  input  [31:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input         auto_out_r_bits_last,
  output [31:0] debug_wb_pc,
  output        debug_wb_rf_wen,
  output [4:0]  debug_wb_rf_wnum,
  output [31:0] debug_wb_rf_wdata
);
  wire [3:0] my_cpu_cpu_ar_id; // @[MyCPU.scala 55:24]
  wire [31:0] my_cpu_cpu_ar_addr; // @[MyCPU.scala 55:24]
  wire [7:0] my_cpu_cpu_ar_len; // @[MyCPU.scala 55:24]
  wire [2:0] my_cpu_cpu_ar_size; // @[MyCPU.scala 55:24]
  wire [1:0] my_cpu_cpu_ar_burst; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_ar_lock; // @[MyCPU.scala 55:24]
  wire [3:0] my_cpu_cpu_ar_cache; // @[MyCPU.scala 55:24]
  wire [2:0] my_cpu_cpu_ar_prot; // @[MyCPU.scala 55:24]
  wire [3:0] my_cpu_cpu_ar_qos; // @[MyCPU.scala 55:24]
  wire [3:0] my_cpu_cpu_r_id; // @[MyCPU.scala 55:24]
  wire [31:0] my_cpu_cpu_r_data; // @[MyCPU.scala 55:24]
  wire [1:0] my_cpu_cpu_r_resp; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_r_last; // @[MyCPU.scala 55:24]
  wire [3:0] my_cpu_cpu_aw_id; // @[MyCPU.scala 55:24]
  wire [31:0] my_cpu_cpu_aw_addr; // @[MyCPU.scala 55:24]
  wire [7:0] my_cpu_cpu_aw_len; // @[MyCPU.scala 55:24]
  wire [2:0] my_cpu_cpu_aw_size; // @[MyCPU.scala 55:24]
  wire [1:0] my_cpu_cpu_aw_burst; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_aw_lock; // @[MyCPU.scala 55:24]
  wire [3:0] my_cpu_cpu_aw_cache; // @[MyCPU.scala 55:24]
  wire [2:0] my_cpu_cpu_aw_prot; // @[MyCPU.scala 55:24]
  wire [3:0] my_cpu_cpu_aw_qos; // @[MyCPU.scala 55:24]
  wire [31:0] my_cpu_cpu_w_data; // @[MyCPU.scala 55:24]
  wire [3:0] my_cpu_cpu_w_strb; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_w_last; // @[MyCPU.scala 55:24]
  wire [3:0] my_cpu_cpu_b_id; // @[MyCPU.scala 55:24]
  wire [1:0] my_cpu_cpu_b_resp; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_ar_valid; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_aw_valid; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_w_valid; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_ar_ready; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_aw_ready; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_w_ready; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_r_valid; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_b_valid; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_r_ready; // @[MyCPU.scala 55:24]
  wire  my_cpu_cpu_b_ready; // @[MyCPU.scala 55:24]
  wire [5:0] my_cpu_ext_int; // @[MyCPU.scala 55:24]
 wire  my_cpu_aclk; // @[SocLite.scala 82:24]
  wire  my_cpu_aresetn; // @[SocLite.scala 82:24]
  wire [31:0] my_cpu_debug_wb_pc; // @[SocLite.scala 82:24]
  wire  my_cpu_debug_wb_rf_wen; // @[SocLite.scala 82:24]
  wire [3:0]  my_cpu_debug_wb_rf_wen_temp; // @[SocLite.scala 82:24]
  assign my_cpu_debug_wb_rf_wen=|my_cpu_debug_wb_rf_wen_temp;
  wire [4:0] my_cpu_debug_wb_rf_wnum; // @[SocLite.scala 82:24]
  wire [31:0] my_cpu_debug_wb_rf_wdata; // @[SocLite.scala 82:24]

  wire [3:0] my_cpu_cpu_w_id; // @[SocLite.scala 82:24]
  wire [3:0] arlentemp;
  wire [3:0] awlentemp;
  assign my_cpu_cpu_ar_len= {4'b0,arlentemp};
  assign my_cpu_cpu_aw_len= {4'b0,awlentemp};
  wire arlock_temp;
  wire awlock_temp;

mycpu_top my_cpu ( // @[SocLite.scala 82:24]
    .arid(my_cpu_cpu_ar_id),
    .araddr(my_cpu_cpu_ar_addr),
    .arlen(arlentemp),
    .arsize(my_cpu_cpu_ar_size),
    .arburst(my_cpu_cpu_ar_burst),
    .arlock({arlock_temp,my_cpu_cpu_ar_lock}),
    .arcache(my_cpu_cpu_ar_cache),
    .arprot(my_cpu_cpu_ar_prot),
    .rid(my_cpu_cpu_r_id),
    .rdata(my_cpu_cpu_r_data),
    .rresp(my_cpu_cpu_r_resp),
    .rlast(my_cpu_cpu_r_last),
    .awid(my_cpu_cpu_aw_id),
    .awaddr(my_cpu_cpu_aw_addr),
    .awlen(awlentemp),
    .awsize(my_cpu_cpu_aw_size),
    .awburst(my_cpu_cpu_aw_burst),
    .awlock({awlock_temp,my_cpu_cpu_aw_lock}),
    .awcache(my_cpu_cpu_aw_cache),
    .awprot(my_cpu_cpu_aw_prot),
    .wid(my_cpu_cpu_w_id),
    .wdata(my_cpu_cpu_w_data),
    .wstrb(my_cpu_cpu_w_strb),
    .wlast(my_cpu_cpu_w_last),
    .bid(my_cpu_cpu_b_id),
    .bresp(my_cpu_cpu_b_resp),
    .arvalid(my_cpu_cpu_ar_valid),
    .awvalid(my_cpu_cpu_aw_valid),
    .wvalid(my_cpu_cpu_w_valid),
    .arready(my_cpu_cpu_ar_ready),
    .awready(my_cpu_cpu_aw_ready),
    .wready(my_cpu_cpu_w_ready),
    .rvalid(my_cpu_cpu_r_valid),
    .bvalid(my_cpu_cpu_b_valid),
    .rready(my_cpu_cpu_r_ready),
    .bready(my_cpu_cpu_b_ready),
    .ext_int(my_cpu_ext_int),
    .aclk(my_cpu_aclk),
    .aresetn(my_cpu_aresetn),
    .debug_wb_pc(my_cpu_debug_wb_pc),
    .debug_wb_rf_wen(my_cpu_debug_wb_rf_wen_temp),
    .debug_wb_rf_wnum(my_cpu_debug_wb_rf_wnum),
    .debug_wb_rf_wdata(my_cpu_debug_wb_rf_wdata)
  );
  assign auto_out_aw_valid = my_cpu_cpu_aw_valid; // @[Nodes.scala 1207:84 MyCPU.scala 64:20]
  assign auto_out_aw_bits_id = my_cpu_cpu_aw_id; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_aw_bits_addr = my_cpu_cpu_aw_addr; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_aw_bits_len = my_cpu_cpu_aw_len; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_aw_bits_size = my_cpu_cpu_aw_size; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_aw_bits_burst = my_cpu_cpu_aw_burst; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_aw_bits_lock = my_cpu_cpu_aw_lock; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_aw_bits_cache = my_cpu_cpu_aw_cache; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_aw_bits_prot = my_cpu_cpu_aw_prot; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_w_valid = my_cpu_cpu_w_valid; // @[Nodes.scala 1207:84 MyCPU.scala 64:20]
  assign auto_out_w_bits_data = my_cpu_cpu_w_data; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_w_bits_strb = my_cpu_cpu_w_strb; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_w_bits_last = my_cpu_cpu_w_last; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_b_ready = my_cpu_cpu_b_ready; // @[Nodes.scala 1207:84 MyCPU.scala 65:20]
  assign auto_out_ar_valid = my_cpu_cpu_ar_valid; // @[Nodes.scala 1207:84 MyCPU.scala 64:20]
  assign auto_out_ar_bits_id = my_cpu_cpu_ar_id; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_ar_bits_addr = my_cpu_cpu_ar_addr; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_ar_bits_len = my_cpu_cpu_ar_len; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_ar_bits_size = my_cpu_cpu_ar_size; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_ar_bits_burst = my_cpu_cpu_ar_burst; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_ar_bits_lock = my_cpu_cpu_ar_lock; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_ar_bits_cache = my_cpu_cpu_ar_cache; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_ar_bits_prot = my_cpu_cpu_ar_prot; // @[Nodes.scala 1207:84 MyCPU.scala 62:23]
  assign auto_out_r_ready = my_cpu_cpu_r_ready; // @[Nodes.scala 1207:84 MyCPU.scala 65:20]
  assign debug_wb_pc = my_cpu_debug_wb_pc; // @[MyCPU.scala 70:11]
  assign debug_wb_rf_wen = my_cpu_debug_wb_rf_wen; // @[MyCPU.scala 70:11]
  assign debug_wb_rf_wnum = my_cpu_debug_wb_rf_wnum; // @[MyCPU.scala 70:11]
  assign debug_wb_rf_wdata = my_cpu_debug_wb_rf_wdata; // @[MyCPU.scala 70:11]
  assign my_cpu_cpu_r_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign my_cpu_cpu_r_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign my_cpu_cpu_r_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign my_cpu_cpu_r_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign my_cpu_cpu_b_id = auto_out_b_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign my_cpu_cpu_b_resp = auto_out_b_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign my_cpu_cpu_ar_ready = auto_out_ar_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign my_cpu_cpu_aw_ready = auto_out_aw_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign my_cpu_cpu_w_ready = auto_out_w_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign my_cpu_cpu_r_valid = auto_out_r_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign my_cpu_cpu_b_valid = auto_out_b_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign my_cpu_ext_int = 6'h0; // @[MyCPU.scala 67:23]
  assign my_cpu_aclk = clock; // @[MyCPU.scala 68:40]
  assign my_cpu_aresetn = ~reset; // @[MyCPU.scala 69:26]
endmodule
module QueueCompatibility(
  input        clock,
  input        reset,
  output       io_enq_ready,
  input        io_enq_valid,
  input  [1:0] io_enq_bits,
  input        io_deq_ready,
  output       io_deq_valid,
  output [1:0] io_deq_bits
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] ram [0:1]; // @[Decoupled.scala 218:16]
  wire [1:0] ram_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [1:0] ram_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_MPORT_en; // @[Decoupled.scala 218:16]
  reg  enq_ptr_value; // @[Counter.scala 60:40]
  reg  deq_ptr_value; // @[Counter.scala 60:40]
  reg  maybe_full; // @[Decoupled.scala 221:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 223:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 224:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 225:24]
  wire  _do_enq_T = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37]
  wire  _do_deq_T = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_9 = io_deq_ready ? 1'h0 : _do_enq_T; // @[Decoupled.scala 249:27 Decoupled.scala 249:36]
  wire  do_enq = empty ? _GEN_9 : _do_enq_T; // @[Decoupled.scala 246:18]
  wire  do_deq = empty ? 1'h0 : _do_deq_T; // @[Decoupled.scala 246:18 Decoupled.scala 248:14]
  assign ram_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_io_deq_bits_MPORT_data = ram[ram_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_MPORT_data = io_enq_bits;
  assign ram_MPORT_addr = enq_ptr_value;
  assign ram_MPORT_mask = 1'h1;
  assign ram_MPORT_en = empty ? _GEN_9 : _do_enq_T;
  assign io_enq_ready = ~full; // @[Decoupled.scala 241:19]
  assign io_deq_valid = io_enq_valid | ~empty; // @[Decoupled.scala 245:25 Decoupled.scala 245:40 Decoupled.scala 240:16]
  assign io_deq_bits = empty ? io_enq_bits : ram_io_deq_bits_MPORT_data; // @[Decoupled.scala 246:18 Decoupled.scala 247:19 Decoupled.scala 242:15]
  always @(posedge clock) begin
    if(ram_MPORT_en & ram_MPORT_mask) begin
      ram[ram_MPORT_addr] <= ram_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if (reset) begin // @[Counter.scala 60:40]
      enq_ptr_value <= 1'h0; // @[Counter.scala 60:40]
    end else if (do_enq) begin // @[Decoupled.scala 229:17]
      enq_ptr_value <= enq_ptr_value + 1'h1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Counter.scala 60:40]
      deq_ptr_value <= 1'h0; // @[Counter.scala 60:40]
    end else if (do_deq) begin // @[Decoupled.scala 233:17]
      deq_ptr_value <= deq_ptr_value + 1'h1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Decoupled.scala 221:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 221:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 236:28]
      if (empty) begin // @[Decoupled.scala 246:18]
        if (io_deq_ready) begin // @[Decoupled.scala 249:27]
          maybe_full <= 1'h0; // @[Decoupled.scala 249:36]
        end else begin
          maybe_full <= _do_enq_T;
        end
      end else begin
        maybe_full <= _do_enq_T;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram[initvar] = _RAND_0[1:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  enq_ptr_value = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  deq_ptr_value = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AXI4Xbar(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [31:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  input         auto_in_aw_bits_lock,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [31:0] auto_in_w_bits_data,
  input  [3:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [31:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_ar_bits_lock,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [31:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output        auto_in_r_bits_last,
  input         auto_out_1_aw_ready,
  output        auto_out_1_aw_valid,
  output [3:0]  auto_out_1_aw_bits_id,
  output [31:0] auto_out_1_aw_bits_addr,
  output [7:0]  auto_out_1_aw_bits_len,
  output [2:0]  auto_out_1_aw_bits_size,
  output [1:0]  auto_out_1_aw_bits_burst,
  output        auto_out_1_aw_bits_lock,
  output [3:0]  auto_out_1_aw_bits_cache,
  output [2:0]  auto_out_1_aw_bits_prot,
  input         auto_out_1_w_ready,
  output        auto_out_1_w_valid,
  output [31:0] auto_out_1_w_bits_data,
  output [3:0]  auto_out_1_w_bits_strb,
  output        auto_out_1_w_bits_last,
  output        auto_out_1_b_ready,
  input         auto_out_1_b_valid,
  input  [3:0]  auto_out_1_b_bits_id,
  input  [1:0]  auto_out_1_b_bits_resp,
  input         auto_out_1_ar_ready,
  output        auto_out_1_ar_valid,
  output [3:0]  auto_out_1_ar_bits_id,
  output [31:0] auto_out_1_ar_bits_addr,
  output [7:0]  auto_out_1_ar_bits_len,
  output [2:0]  auto_out_1_ar_bits_size,
  output [1:0]  auto_out_1_ar_bits_burst,
  output        auto_out_1_ar_bits_lock,
  output [3:0]  auto_out_1_ar_bits_cache,
  output [2:0]  auto_out_1_ar_bits_prot,
  output        auto_out_1_r_ready,
  input         auto_out_1_r_valid,
  input  [3:0]  auto_out_1_r_bits_id,
  input  [31:0] auto_out_1_r_bits_data,
  input  [1:0]  auto_out_1_r_bits_resp,
  input         auto_out_1_r_bits_last,
  input         auto_out_0_aw_ready,
  output        auto_out_0_aw_valid,
  output [3:0]  auto_out_0_aw_bits_id,
  output [31:0] auto_out_0_aw_bits_addr,
  output [7:0]  auto_out_0_aw_bits_len,
  output [2:0]  auto_out_0_aw_bits_size,
  output [1:0]  auto_out_0_aw_bits_burst,
  output        auto_out_0_aw_bits_lock,
  output [3:0]  auto_out_0_aw_bits_cache,
  output [2:0]  auto_out_0_aw_bits_prot,
  input         auto_out_0_w_ready,
  output        auto_out_0_w_valid,
  output [31:0] auto_out_0_w_bits_data,
  output [3:0]  auto_out_0_w_bits_strb,
  output        auto_out_0_w_bits_last,
  output        auto_out_0_b_ready,
  input         auto_out_0_b_valid,
  input  [3:0]  auto_out_0_b_bits_id,
  input  [1:0]  auto_out_0_b_bits_resp,
  input         auto_out_0_ar_ready,
  output        auto_out_0_ar_valid,
  output [3:0]  auto_out_0_ar_bits_id,
  output [31:0] auto_out_0_ar_bits_addr,
  output [7:0]  auto_out_0_ar_bits_len,
  output [2:0]  auto_out_0_ar_bits_size,
  output [1:0]  auto_out_0_ar_bits_burst,
  output        auto_out_0_ar_bits_lock,
  output [3:0]  auto_out_0_ar_bits_cache,
  output [2:0]  auto_out_0_ar_bits_prot,
  output        auto_out_0_r_ready,
  input         auto_out_0_r_valid,
  input  [3:0]  auto_out_0_r_bits_id,
  input  [31:0] auto_out_0_r_bits_data,
  input  [1:0]  auto_out_0_r_bits_resp,
  input         auto_out_0_r_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
`endif // RANDOMIZE_REG_INIT
  wire  awIn_0_clock; // @[Xbar.scala 62:47]
  wire  awIn_0_reset; // @[Xbar.scala 62:47]
  wire  awIn_0_io_enq_ready; // @[Xbar.scala 62:47]
  wire  awIn_0_io_enq_valid; // @[Xbar.scala 62:47]
  wire [1:0] awIn_0_io_enq_bits; // @[Xbar.scala 62:47]
  wire  awIn_0_io_deq_ready; // @[Xbar.scala 62:47]
  wire  awIn_0_io_deq_valid; // @[Xbar.scala 62:47]
  wire [1:0] awIn_0_io_deq_bits; // @[Xbar.scala 62:47]
  wire [32:0] _requestARIO_T_1 = {1'b0,$signed(auto_in_ar_bits_addr)}; // @[Parameters.scala 137:49]
  wire [32:0] _requestARIO_T_3 = $signed(_requestARIO_T_1) & 33'sh80000000; // @[Parameters.scala 137:52]
  wire  _requestARIO_T_4 = $signed(_requestARIO_T_3) == 33'sh0; // @[Parameters.scala 137:67]
  wire [31:0] _requestARIO_T_5 = auto_in_ar_bits_addr ^ 32'h80000000; // @[Parameters.scala 137:31]
  wire [32:0] _requestARIO_T_6 = {1'b0,$signed(_requestARIO_T_5)}; // @[Parameters.scala 137:49]
  wire [32:0] _requestARIO_T_8 = $signed(_requestARIO_T_6) & 33'sh90000000; // @[Parameters.scala 137:52]
  wire  _requestARIO_T_9 = $signed(_requestARIO_T_8) == 33'sh0; // @[Parameters.scala 137:67]
  wire  requestARIO_0_0 = _requestARIO_T_4 | _requestARIO_T_9; // @[Xbar.scala 59:97]
  wire [31:0] _requestARIO_T_11 = auto_in_ar_bits_addr ^ 32'h90000000; // @[Parameters.scala 137:31]
  wire [32:0] _requestARIO_T_12 = {1'b0,$signed(_requestARIO_T_11)}; // @[Parameters.scala 137:49]
  wire [32:0] _requestARIO_T_14 = $signed(_requestARIO_T_12) & 33'sh90000000; // @[Parameters.scala 137:52]
  wire  requestARIO_0_1 = $signed(_requestARIO_T_14) == 33'sh0; // @[Parameters.scala 137:67]
  wire [32:0] _requestAWIO_T_1 = {1'b0,$signed(auto_in_aw_bits_addr)}; // @[Parameters.scala 137:49]
  wire [32:0] _requestAWIO_T_3 = $signed(_requestAWIO_T_1) & 33'sh80000000; // @[Parameters.scala 137:52]
  wire  _requestAWIO_T_4 = $signed(_requestAWIO_T_3) == 33'sh0; // @[Parameters.scala 137:67]
  wire [31:0] _requestAWIO_T_5 = auto_in_aw_bits_addr ^ 32'h80000000; // @[Parameters.scala 137:31]
  wire [32:0] _requestAWIO_T_6 = {1'b0,$signed(_requestAWIO_T_5)}; // @[Parameters.scala 137:49]
  wire [32:0] _requestAWIO_T_8 = $signed(_requestAWIO_T_6) & 33'sh90000000; // @[Parameters.scala 137:52]
  wire  _requestAWIO_T_9 = $signed(_requestAWIO_T_8) == 33'sh0; // @[Parameters.scala 137:67]
  wire  requestAWIO_0_0 = _requestAWIO_T_4 | _requestAWIO_T_9; // @[Xbar.scala 59:97]
  wire [31:0] _requestAWIO_T_11 = auto_in_aw_bits_addr ^ 32'h90000000; // @[Parameters.scala 137:31]
  wire [32:0] _requestAWIO_T_12 = {1'b0,$signed(_requestAWIO_T_11)}; // @[Parameters.scala 137:49]
  wire [32:0] _requestAWIO_T_14 = $signed(_requestAWIO_T_12) & 33'sh90000000; // @[Parameters.scala 137:52]
  wire  requestAWIO_0_1 = $signed(_requestAWIO_T_14) == 33'sh0; // @[Parameters.scala 137:67]
  wire [1:0] _awIn_0_io_enq_bits_T = {requestAWIO_0_1,requestAWIO_0_0}; // @[Xbar.scala 71:75]
  wire  requestWIO_0_0 = awIn_0_io_deq_bits[0]; // @[Xbar.scala 72:73]
  wire  requestWIO_0_1 = awIn_0_io_deq_bits[1]; // @[Xbar.scala 72:73]
  reg  idle_2; // @[Xbar.scala 249:23]
  wire [1:0] readys_filter_lo = {auto_out_1_r_valid,auto_out_0_r_valid}; // @[Cat.scala 30:58]
  reg [1:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [1:0] readys_filter_hi = readys_filter_lo & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter = {readys_filter_hi,auto_out_1_r_valid,auto_out_0_r_valid}; // @[Cat.scala 30:58]
  wire [3:0] _GEN_80 = {{1'd0}, readys_filter[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_1 = readys_filter | _GEN_80; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_4 = {readys_mask, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_81 = {{1'd0}, _readys_unready_T_1[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready = _GEN_81 | _readys_unready_T_4; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_2 = readys_unready[3:2] & readys_unready[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire  readys_2_0 = readys_readys[0]; // @[Xbar.scala 255:69]
  wire  winner_2_0 = readys_2_0 & auto_out_0_r_valid; // @[Xbar.scala 257:63]
  reg  state_2_0; // @[Xbar.scala 268:24]
  wire  muxState_2_0 = idle_2 ? winner_2_0 : state_2_0; // @[Xbar.scala 269:23]
  wire [3:0] _T_54 = muxState_2_0 ? auto_out_0_r_bits_id : 4'h0; // @[Mux.scala 27:72]
  wire  readys_2_1 = readys_readys[1]; // @[Xbar.scala 255:69]
  wire  winner_2_1 = readys_2_1 & auto_out_1_r_valid; // @[Xbar.scala 257:63]
  reg  state_2_1; // @[Xbar.scala 268:24]
  wire  muxState_2_1 = idle_2 ? winner_2_1 : state_2_1; // @[Xbar.scala 269:23]
  wire [3:0] _T_55 = muxState_2_1 ? auto_out_1_r_bits_id : 4'h0; // @[Mux.scala 27:72]
  wire [3:0] in_0_r_bits_id = _T_54 | _T_55; // @[Mux.scala 27:72]
  reg  idle_3; // @[Xbar.scala 249:23]
  wire [1:0] readys_filter_lo_1 = {auto_out_1_b_valid,auto_out_0_b_valid}; // @[Cat.scala 30:58]
  reg [1:0] readys_mask_1; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T_1 = ~readys_mask_1; // @[Arbiter.scala 24:30]
  wire [1:0] readys_filter_hi_1 = readys_filter_lo_1 & _readys_filter_T_1; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter_1 = {readys_filter_hi_1,auto_out_1_b_valid,auto_out_0_b_valid}; // @[Cat.scala 30:58]
  wire [3:0] _GEN_82 = {{1'd0}, readys_filter_1[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_6 = readys_filter_1 | _GEN_82; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_9 = {readys_mask_1, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_83 = {{1'd0}, _readys_unready_T_6[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready_1 = _GEN_83 | _readys_unready_T_9; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_5 = readys_unready_1[3:2] & readys_unready_1[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys_1 = ~_readys_readys_T_5; // @[Arbiter.scala 26:18]
  wire  readys_3_0 = readys_readys_1[0]; // @[Xbar.scala 255:69]
  wire  winner_3_0 = readys_3_0 & auto_out_0_b_valid; // @[Xbar.scala 257:63]
  reg  state_3_0; // @[Xbar.scala 268:24]
  wire  muxState_3_0 = idle_3 ? winner_3_0 : state_3_0; // @[Xbar.scala 269:23]
  wire [3:0] _T_77 = muxState_3_0 ? auto_out_0_b_bits_id : 4'h0; // @[Mux.scala 27:72]
  wire  readys_3_1 = readys_readys_1[1]; // @[Xbar.scala 255:69]
  wire  winner_3_1 = readys_3_1 & auto_out_1_b_valid; // @[Xbar.scala 257:63]
  reg  state_3_1; // @[Xbar.scala 268:24]
  wire  muxState_3_1 = idle_3 ? winner_3_1 : state_3_1; // @[Xbar.scala 269:23]
  wire [3:0] _T_78 = muxState_3_1 ? auto_out_1_b_bits_id : 4'h0; // @[Mux.scala 27:72]
  wire [3:0] in_0_b_bits_id = _T_77 | _T_78; // @[Mux.scala 27:72]
  wire [15:0] arSel = 16'h1 << auto_in_ar_bits_id; // @[OneHot.scala 65:12]
  wire [15:0] awSel = 16'h1 << auto_in_aw_bits_id; // @[OneHot.scala 65:12]
  wire [15:0] rSel = 16'h1 << in_0_r_bits_id; // @[OneHot.scala 65:12]
  wire [15:0] bSel = 16'h1 << in_0_b_bits_id; // @[OneHot.scala 65:12]
  wire [1:0] _arTag_T = {requestARIO_0_1,requestARIO_0_0}; // @[Xbar.scala 100:45]
  wire  arTag = _arTag_T[1]; // @[CircuitMath.scala 30:8]
  wire  awTag = _awIn_0_io_enq_bits_T[1]; // @[CircuitMath.scala 30:8]
  wire  in_0_ar_ready = requestARIO_0_0 & auto_out_0_ar_ready | requestARIO_0_1 & auto_out_1_ar_ready; // @[Mux.scala 27:72]
  reg [2:0] arFIFOMap_15_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_15_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_15_portMatch = arFIFOMap_15_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_15_T_21 = arFIFOMap_15_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_15 = (arFIFOMap_15_count == 3'h0 | arFIFOMap_15_portMatch) & arFIFOMap_15_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_14_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_14_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_14_portMatch = arFIFOMap_14_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_14_T_21 = arFIFOMap_14_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_14 = (arFIFOMap_14_count == 3'h0 | arFIFOMap_14_portMatch) & arFIFOMap_14_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_13_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_13_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_13_portMatch = arFIFOMap_13_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_13_T_21 = arFIFOMap_13_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_13 = (arFIFOMap_13_count == 3'h0 | arFIFOMap_13_portMatch) & arFIFOMap_13_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_12_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_12_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_12_portMatch = arFIFOMap_12_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_12_T_21 = arFIFOMap_12_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_12 = (arFIFOMap_12_count == 3'h0 | arFIFOMap_12_portMatch) & arFIFOMap_12_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_11_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_11_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_11_portMatch = arFIFOMap_11_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_11_T_21 = arFIFOMap_11_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_11 = (arFIFOMap_11_count == 3'h0 | arFIFOMap_11_portMatch) & arFIFOMap_11_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_10_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_10_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_10_portMatch = arFIFOMap_10_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_10_T_21 = arFIFOMap_10_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_10 = (arFIFOMap_10_count == 3'h0 | arFIFOMap_10_portMatch) & arFIFOMap_10_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_9_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_9_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_9_portMatch = arFIFOMap_9_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_9_T_21 = arFIFOMap_9_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_9 = (arFIFOMap_9_count == 3'h0 | arFIFOMap_9_portMatch) & arFIFOMap_9_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_8_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_8_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_8_portMatch = arFIFOMap_8_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_8_T_21 = arFIFOMap_8_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_8 = (arFIFOMap_8_count == 3'h0 | arFIFOMap_8_portMatch) & arFIFOMap_8_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_7_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_7_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_7_portMatch = arFIFOMap_7_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_7_T_21 = arFIFOMap_7_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_7 = (arFIFOMap_7_count == 3'h0 | arFIFOMap_7_portMatch) & arFIFOMap_7_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_6_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_6_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_6_portMatch = arFIFOMap_6_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_6_T_21 = arFIFOMap_6_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_6 = (arFIFOMap_6_count == 3'h0 | arFIFOMap_6_portMatch) & arFIFOMap_6_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_5_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_5_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_5_portMatch = arFIFOMap_5_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_5_T_21 = arFIFOMap_5_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_5 = (arFIFOMap_5_count == 3'h0 | arFIFOMap_5_portMatch) & arFIFOMap_5_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_4_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_4_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_4_portMatch = arFIFOMap_4_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_4_T_21 = arFIFOMap_4_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_4 = (arFIFOMap_4_count == 3'h0 | arFIFOMap_4_portMatch) & arFIFOMap_4_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_3_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_3_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_3_portMatch = arFIFOMap_3_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_3_T_21 = arFIFOMap_3_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_3 = (arFIFOMap_3_count == 3'h0 | arFIFOMap_3_portMatch) & arFIFOMap_3_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_2_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_2_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_2_portMatch = arFIFOMap_2_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_2_T_21 = arFIFOMap_2_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_2 = (arFIFOMap_2_count == 3'h0 | arFIFOMap_2_portMatch) & arFIFOMap_2_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_1_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_1_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_1_portMatch = arFIFOMap_1_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_1_T_21 = arFIFOMap_1_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_1 = (arFIFOMap_1_count == 3'h0 | arFIFOMap_1_portMatch) & arFIFOMap_1_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] arFIFOMap_0_count; // @[Xbar.scala 111:34]
  reg  arFIFOMap_0_last; // @[Xbar.scala 112:29]
  wire  arFIFOMap_0_portMatch = arFIFOMap_0_last == arTag; // @[Xbar.scala 118:75]
  wire  _arFIFOMap_0_T_21 = arFIFOMap_0_count != 3'h7; // @[Xbar.scala 119:80]
  wire  arFIFOMap_0 = (arFIFOMap_0_count == 3'h0 | arFIFOMap_0_portMatch) & arFIFOMap_0_count != 3'h7; // @[Xbar.scala 119:48]
  wire  _GEN_33 = 4'h1 == auto_in_ar_bits_id ? arFIFOMap_1 : arFIFOMap_0; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_34 = 4'h2 == auto_in_ar_bits_id ? arFIFOMap_2 : _GEN_33; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_35 = 4'h3 == auto_in_ar_bits_id ? arFIFOMap_3 : _GEN_34; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_36 = 4'h4 == auto_in_ar_bits_id ? arFIFOMap_4 : _GEN_35; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_37 = 4'h5 == auto_in_ar_bits_id ? arFIFOMap_5 : _GEN_36; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_38 = 4'h6 == auto_in_ar_bits_id ? arFIFOMap_6 : _GEN_37; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_39 = 4'h7 == auto_in_ar_bits_id ? arFIFOMap_7 : _GEN_38; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_40 = 4'h8 == auto_in_ar_bits_id ? arFIFOMap_8 : _GEN_39; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_41 = 4'h9 == auto_in_ar_bits_id ? arFIFOMap_9 : _GEN_40; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_42 = 4'ha == auto_in_ar_bits_id ? arFIFOMap_10 : _GEN_41; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_43 = 4'hb == auto_in_ar_bits_id ? arFIFOMap_11 : _GEN_42; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_44 = 4'hc == auto_in_ar_bits_id ? arFIFOMap_12 : _GEN_43; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_45 = 4'hd == auto_in_ar_bits_id ? arFIFOMap_13 : _GEN_44; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_46 = 4'he == auto_in_ar_bits_id ? arFIFOMap_14 : _GEN_45; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  _GEN_47 = 4'hf == auto_in_ar_bits_id ? arFIFOMap_15 : _GEN_46; // @[Xbar.scala 136:45 Xbar.scala 136:45]
  wire  io_in_0_ar_ready = in_0_ar_ready & _GEN_47; // @[Xbar.scala 137:45]
  wire  _arFIFOMap_0_T_1 = io_in_0_ar_ready & auto_in_ar_valid; // @[Decoupled.scala 40:37]
  wire  _arFIFOMap_0_T_2 = arSel[0] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  anyValid = auto_out_0_r_valid | auto_out_1_r_valid; // @[Xbar.scala 253:36]
  wire  _in_0_r_valid_T_2 = state_2_0 & auto_out_0_r_valid | state_2_1 & auto_out_1_r_valid; // @[Mux.scala 27:72]
  wire  in_0_r_valid = idle_2 ? anyValid : _in_0_r_valid_T_2; // @[Xbar.scala 285:22]
  wire  _arFIFOMap_0_T_4 = auto_in_r_ready & in_0_r_valid; // @[Decoupled.scala 40:37]
  wire  in_0_r_bits_last = muxState_2_0 & auto_out_0_r_bits_last | muxState_2_1 & auto_out_1_r_bits_last; // @[Mux.scala 27:72]
  wire  _arFIFOMap_0_T_6 = rSel[0] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_84 = {{2'd0}, _arFIFOMap_0_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_0_count_T_1 = arFIFOMap_0_count + _GEN_84; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_85 = {{2'd0}, _arFIFOMap_0_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_0_count_T_3 = _arFIFOMap_0_count_T_1 - _GEN_85; // @[Xbar.scala 113:48]
  wire  in_0_aw_ready = requestAWIO_0_0 & auto_out_0_aw_ready | requestAWIO_0_1 & auto_out_1_aw_ready; // @[Mux.scala 27:72]
  reg  latched; // @[Xbar.scala 144:30]
  wire  _bundleIn_0_aw_ready_T = latched | awIn_0_io_enq_ready; // @[Xbar.scala 146:57]
  reg [2:0] awFIFOMap_15_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_15_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_15_portMatch = awFIFOMap_15_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_15_T_20 = awFIFOMap_15_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_15 = (awFIFOMap_15_count == 3'h0 | awFIFOMap_15_portMatch) & awFIFOMap_15_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_14_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_14_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_14_portMatch = awFIFOMap_14_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_14_T_20 = awFIFOMap_14_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_14 = (awFIFOMap_14_count == 3'h0 | awFIFOMap_14_portMatch) & awFIFOMap_14_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_13_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_13_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_13_portMatch = awFIFOMap_13_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_13_T_20 = awFIFOMap_13_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_13 = (awFIFOMap_13_count == 3'h0 | awFIFOMap_13_portMatch) & awFIFOMap_13_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_12_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_12_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_12_portMatch = awFIFOMap_12_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_12_T_20 = awFIFOMap_12_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_12 = (awFIFOMap_12_count == 3'h0 | awFIFOMap_12_portMatch) & awFIFOMap_12_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_11_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_11_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_11_portMatch = awFIFOMap_11_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_11_T_20 = awFIFOMap_11_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_11 = (awFIFOMap_11_count == 3'h0 | awFIFOMap_11_portMatch) & awFIFOMap_11_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_10_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_10_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_10_portMatch = awFIFOMap_10_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_10_T_20 = awFIFOMap_10_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_10 = (awFIFOMap_10_count == 3'h0 | awFIFOMap_10_portMatch) & awFIFOMap_10_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_9_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_9_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_9_portMatch = awFIFOMap_9_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_9_T_20 = awFIFOMap_9_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_9 = (awFIFOMap_9_count == 3'h0 | awFIFOMap_9_portMatch) & awFIFOMap_9_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_8_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_8_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_8_portMatch = awFIFOMap_8_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_8_T_20 = awFIFOMap_8_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_8 = (awFIFOMap_8_count == 3'h0 | awFIFOMap_8_portMatch) & awFIFOMap_8_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_7_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_7_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_7_portMatch = awFIFOMap_7_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_7_T_20 = awFIFOMap_7_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_7 = (awFIFOMap_7_count == 3'h0 | awFIFOMap_7_portMatch) & awFIFOMap_7_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_6_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_6_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_6_portMatch = awFIFOMap_6_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_6_T_20 = awFIFOMap_6_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_6 = (awFIFOMap_6_count == 3'h0 | awFIFOMap_6_portMatch) & awFIFOMap_6_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_5_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_5_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_5_portMatch = awFIFOMap_5_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_5_T_20 = awFIFOMap_5_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_5 = (awFIFOMap_5_count == 3'h0 | awFIFOMap_5_portMatch) & awFIFOMap_5_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_4_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_4_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_4_portMatch = awFIFOMap_4_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_4_T_20 = awFIFOMap_4_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_4 = (awFIFOMap_4_count == 3'h0 | awFIFOMap_4_portMatch) & awFIFOMap_4_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_3_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_3_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_3_portMatch = awFIFOMap_3_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_3_T_20 = awFIFOMap_3_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_3 = (awFIFOMap_3_count == 3'h0 | awFIFOMap_3_portMatch) & awFIFOMap_3_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_2_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_2_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_2_portMatch = awFIFOMap_2_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_2_T_20 = awFIFOMap_2_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_2 = (awFIFOMap_2_count == 3'h0 | awFIFOMap_2_portMatch) & awFIFOMap_2_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_1_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_1_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_1_portMatch = awFIFOMap_1_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_1_T_20 = awFIFOMap_1_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_1 = (awFIFOMap_1_count == 3'h0 | awFIFOMap_1_portMatch) & awFIFOMap_1_count != 3'h7; // @[Xbar.scala 119:48]
  reg [2:0] awFIFOMap_0_count; // @[Xbar.scala 111:34]
  reg  awFIFOMap_0_last; // @[Xbar.scala 112:29]
  wire  awFIFOMap_0_portMatch = awFIFOMap_0_last == awTag; // @[Xbar.scala 118:75]
  wire  _awFIFOMap_0_T_20 = awFIFOMap_0_count != 3'h7; // @[Xbar.scala 119:80]
  wire  awFIFOMap_0 = (awFIFOMap_0_count == 3'h0 | awFIFOMap_0_portMatch) & awFIFOMap_0_count != 3'h7; // @[Xbar.scala 119:48]
  wire  _GEN_49 = 4'h1 == auto_in_aw_bits_id ? awFIFOMap_1 : awFIFOMap_0; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_50 = 4'h2 == auto_in_aw_bits_id ? awFIFOMap_2 : _GEN_49; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_51 = 4'h3 == auto_in_aw_bits_id ? awFIFOMap_3 : _GEN_50; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_52 = 4'h4 == auto_in_aw_bits_id ? awFIFOMap_4 : _GEN_51; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_53 = 4'h5 == auto_in_aw_bits_id ? awFIFOMap_5 : _GEN_52; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_54 = 4'h6 == auto_in_aw_bits_id ? awFIFOMap_6 : _GEN_53; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_55 = 4'h7 == auto_in_aw_bits_id ? awFIFOMap_7 : _GEN_54; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_56 = 4'h8 == auto_in_aw_bits_id ? awFIFOMap_8 : _GEN_55; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_57 = 4'h9 == auto_in_aw_bits_id ? awFIFOMap_9 : _GEN_56; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_58 = 4'ha == auto_in_aw_bits_id ? awFIFOMap_10 : _GEN_57; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_59 = 4'hb == auto_in_aw_bits_id ? awFIFOMap_11 : _GEN_58; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_60 = 4'hc == auto_in_aw_bits_id ? awFIFOMap_12 : _GEN_59; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_61 = 4'hd == auto_in_aw_bits_id ? awFIFOMap_13 : _GEN_60; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_62 = 4'he == auto_in_aw_bits_id ? awFIFOMap_14 : _GEN_61; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  _GEN_63 = 4'hf == auto_in_aw_bits_id ? awFIFOMap_15 : _GEN_62; // @[Xbar.scala 145:82 Xbar.scala 145:82]
  wire  io_in_0_aw_ready = in_0_aw_ready & (latched | awIn_0_io_enq_ready) & _GEN_63; // @[Xbar.scala 146:82]
  wire  _awFIFOMap_0_T_1 = io_in_0_aw_ready & auto_in_aw_valid; // @[Decoupled.scala 40:37]
  wire  _awFIFOMap_0_T_2 = awSel[0] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  anyValid_1 = auto_out_0_b_valid | auto_out_1_b_valid; // @[Xbar.scala 253:36]
  wire  _in_0_b_valid_T_2 = state_3_0 & auto_out_0_b_valid | state_3_1 & auto_out_1_b_valid; // @[Mux.scala 27:72]
  wire  in_0_b_valid = idle_3 ? anyValid_1 : _in_0_b_valid_T_2; // @[Xbar.scala 285:22]
  wire  _awFIFOMap_0_T_4 = auto_in_b_ready & in_0_b_valid; // @[Decoupled.scala 40:37]
  wire  _awFIFOMap_0_T_5 = bSel[0] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_86 = {{2'd0}, _awFIFOMap_0_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_0_count_T_1 = awFIFOMap_0_count + _GEN_86; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_87 = {{2'd0}, _awFIFOMap_0_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_0_count_T_3 = _awFIFOMap_0_count_T_1 - _GEN_87; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_1_T_2 = arSel[1] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_1_T_6 = rSel[1] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_88 = {{2'd0}, _arFIFOMap_1_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_1_count_T_1 = arFIFOMap_1_count + _GEN_88; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_89 = {{2'd0}, _arFIFOMap_1_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_1_count_T_3 = _arFIFOMap_1_count_T_1 - _GEN_89; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_1_T_2 = awSel[1] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_1_T_5 = bSel[1] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_90 = {{2'd0}, _awFIFOMap_1_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_1_count_T_1 = awFIFOMap_1_count + _GEN_90; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_91 = {{2'd0}, _awFIFOMap_1_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_1_count_T_3 = _awFIFOMap_1_count_T_1 - _GEN_91; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_2_T_2 = arSel[2] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_2_T_6 = rSel[2] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_92 = {{2'd0}, _arFIFOMap_2_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_2_count_T_1 = arFIFOMap_2_count + _GEN_92; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_93 = {{2'd0}, _arFIFOMap_2_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_2_count_T_3 = _arFIFOMap_2_count_T_1 - _GEN_93; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_2_T_2 = awSel[2] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_2_T_5 = bSel[2] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_94 = {{2'd0}, _awFIFOMap_2_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_2_count_T_1 = awFIFOMap_2_count + _GEN_94; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_95 = {{2'd0}, _awFIFOMap_2_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_2_count_T_3 = _awFIFOMap_2_count_T_1 - _GEN_95; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_3_T_2 = arSel[3] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_3_T_6 = rSel[3] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_96 = {{2'd0}, _arFIFOMap_3_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_3_count_T_1 = arFIFOMap_3_count + _GEN_96; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_97 = {{2'd0}, _arFIFOMap_3_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_3_count_T_3 = _arFIFOMap_3_count_T_1 - _GEN_97; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_3_T_2 = awSel[3] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_3_T_5 = bSel[3] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_98 = {{2'd0}, _awFIFOMap_3_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_3_count_T_1 = awFIFOMap_3_count + _GEN_98; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_99 = {{2'd0}, _awFIFOMap_3_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_3_count_T_3 = _awFIFOMap_3_count_T_1 - _GEN_99; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_4_T_2 = arSel[4] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_4_T_6 = rSel[4] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_100 = {{2'd0}, _arFIFOMap_4_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_4_count_T_1 = arFIFOMap_4_count + _GEN_100; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_101 = {{2'd0}, _arFIFOMap_4_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_4_count_T_3 = _arFIFOMap_4_count_T_1 - _GEN_101; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_4_T_2 = awSel[4] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_4_T_5 = bSel[4] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_102 = {{2'd0}, _awFIFOMap_4_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_4_count_T_1 = awFIFOMap_4_count + _GEN_102; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_103 = {{2'd0}, _awFIFOMap_4_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_4_count_T_3 = _awFIFOMap_4_count_T_1 - _GEN_103; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_5_T_2 = arSel[5] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_5_T_6 = rSel[5] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_104 = {{2'd0}, _arFIFOMap_5_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_5_count_T_1 = arFIFOMap_5_count + _GEN_104; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_105 = {{2'd0}, _arFIFOMap_5_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_5_count_T_3 = _arFIFOMap_5_count_T_1 - _GEN_105; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_5_T_2 = awSel[5] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_5_T_5 = bSel[5] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_106 = {{2'd0}, _awFIFOMap_5_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_5_count_T_1 = awFIFOMap_5_count + _GEN_106; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_107 = {{2'd0}, _awFIFOMap_5_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_5_count_T_3 = _awFIFOMap_5_count_T_1 - _GEN_107; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_6_T_2 = arSel[6] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_6_T_6 = rSel[6] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_108 = {{2'd0}, _arFIFOMap_6_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_6_count_T_1 = arFIFOMap_6_count + _GEN_108; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_109 = {{2'd0}, _arFIFOMap_6_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_6_count_T_3 = _arFIFOMap_6_count_T_1 - _GEN_109; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_6_T_2 = awSel[6] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_6_T_5 = bSel[6] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_110 = {{2'd0}, _awFIFOMap_6_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_6_count_T_1 = awFIFOMap_6_count + _GEN_110; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_111 = {{2'd0}, _awFIFOMap_6_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_6_count_T_3 = _awFIFOMap_6_count_T_1 - _GEN_111; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_7_T_2 = arSel[7] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_7_T_6 = rSel[7] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_112 = {{2'd0}, _arFIFOMap_7_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_7_count_T_1 = arFIFOMap_7_count + _GEN_112; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_113 = {{2'd0}, _arFIFOMap_7_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_7_count_T_3 = _arFIFOMap_7_count_T_1 - _GEN_113; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_7_T_2 = awSel[7] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_7_T_5 = bSel[7] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_114 = {{2'd0}, _awFIFOMap_7_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_7_count_T_1 = awFIFOMap_7_count + _GEN_114; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_115 = {{2'd0}, _awFIFOMap_7_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_7_count_T_3 = _awFIFOMap_7_count_T_1 - _GEN_115; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_8_T_2 = arSel[8] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_8_T_6 = rSel[8] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_116 = {{2'd0}, _arFIFOMap_8_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_8_count_T_1 = arFIFOMap_8_count + _GEN_116; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_117 = {{2'd0}, _arFIFOMap_8_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_8_count_T_3 = _arFIFOMap_8_count_T_1 - _GEN_117; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_8_T_2 = awSel[8] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_8_T_5 = bSel[8] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_118 = {{2'd0}, _awFIFOMap_8_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_8_count_T_1 = awFIFOMap_8_count + _GEN_118; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_119 = {{2'd0}, _awFIFOMap_8_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_8_count_T_3 = _awFIFOMap_8_count_T_1 - _GEN_119; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_9_T_2 = arSel[9] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_9_T_6 = rSel[9] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_120 = {{2'd0}, _arFIFOMap_9_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_9_count_T_1 = arFIFOMap_9_count + _GEN_120; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_121 = {{2'd0}, _arFIFOMap_9_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_9_count_T_3 = _arFIFOMap_9_count_T_1 - _GEN_121; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_9_T_2 = awSel[9] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_9_T_5 = bSel[9] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_122 = {{2'd0}, _awFIFOMap_9_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_9_count_T_1 = awFIFOMap_9_count + _GEN_122; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_123 = {{2'd0}, _awFIFOMap_9_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_9_count_T_3 = _awFIFOMap_9_count_T_1 - _GEN_123; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_10_T_2 = arSel[10] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_10_T_6 = rSel[10] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_124 = {{2'd0}, _arFIFOMap_10_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_10_count_T_1 = arFIFOMap_10_count + _GEN_124; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_125 = {{2'd0}, _arFIFOMap_10_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_10_count_T_3 = _arFIFOMap_10_count_T_1 - _GEN_125; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_10_T_2 = awSel[10] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_10_T_5 = bSel[10] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_126 = {{2'd0}, _awFIFOMap_10_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_10_count_T_1 = awFIFOMap_10_count + _GEN_126; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_127 = {{2'd0}, _awFIFOMap_10_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_10_count_T_3 = _awFIFOMap_10_count_T_1 - _GEN_127; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_11_T_2 = arSel[11] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_11_T_6 = rSel[11] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_128 = {{2'd0}, _arFIFOMap_11_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_11_count_T_1 = arFIFOMap_11_count + _GEN_128; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_129 = {{2'd0}, _arFIFOMap_11_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_11_count_T_3 = _arFIFOMap_11_count_T_1 - _GEN_129; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_11_T_2 = awSel[11] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_11_T_5 = bSel[11] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_130 = {{2'd0}, _awFIFOMap_11_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_11_count_T_1 = awFIFOMap_11_count + _GEN_130; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_131 = {{2'd0}, _awFIFOMap_11_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_11_count_T_3 = _awFIFOMap_11_count_T_1 - _GEN_131; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_12_T_2 = arSel[12] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_12_T_6 = rSel[12] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_132 = {{2'd0}, _arFIFOMap_12_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_12_count_T_1 = arFIFOMap_12_count + _GEN_132; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_133 = {{2'd0}, _arFIFOMap_12_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_12_count_T_3 = _arFIFOMap_12_count_T_1 - _GEN_133; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_12_T_2 = awSel[12] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_12_T_5 = bSel[12] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_134 = {{2'd0}, _awFIFOMap_12_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_12_count_T_1 = awFIFOMap_12_count + _GEN_134; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_135 = {{2'd0}, _awFIFOMap_12_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_12_count_T_3 = _awFIFOMap_12_count_T_1 - _GEN_135; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_13_T_2 = arSel[13] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_13_T_6 = rSel[13] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_136 = {{2'd0}, _arFIFOMap_13_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_13_count_T_1 = arFIFOMap_13_count + _GEN_136; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_137 = {{2'd0}, _arFIFOMap_13_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_13_count_T_3 = _arFIFOMap_13_count_T_1 - _GEN_137; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_13_T_2 = awSel[13] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_13_T_5 = bSel[13] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_138 = {{2'd0}, _awFIFOMap_13_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_13_count_T_1 = awFIFOMap_13_count + _GEN_138; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_139 = {{2'd0}, _awFIFOMap_13_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_13_count_T_3 = _awFIFOMap_13_count_T_1 - _GEN_139; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_14_T_2 = arSel[14] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_14_T_6 = rSel[14] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_140 = {{2'd0}, _arFIFOMap_14_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_14_count_T_1 = arFIFOMap_14_count + _GEN_140; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_141 = {{2'd0}, _arFIFOMap_14_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_14_count_T_3 = _arFIFOMap_14_count_T_1 - _GEN_141; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_14_T_2 = awSel[14] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_14_T_5 = bSel[14] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_142 = {{2'd0}, _awFIFOMap_14_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_14_count_T_1 = awFIFOMap_14_count + _GEN_142; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_143 = {{2'd0}, _awFIFOMap_14_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_14_count_T_3 = _awFIFOMap_14_count_T_1 - _GEN_143; // @[Xbar.scala 113:48]
  wire  _arFIFOMap_15_T_2 = arSel[15] & _arFIFOMap_0_T_1; // @[Xbar.scala 126:25]
  wire  _arFIFOMap_15_T_6 = rSel[15] & _arFIFOMap_0_T_4 & in_0_r_bits_last; // @[Xbar.scala 127:45]
  wire [2:0] _GEN_144 = {{2'd0}, _arFIFOMap_15_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _arFIFOMap_15_count_T_1 = arFIFOMap_15_count + _GEN_144; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_145 = {{2'd0}, _arFIFOMap_15_T_6}; // @[Xbar.scala 113:48]
  wire [2:0] _arFIFOMap_15_count_T_3 = _arFIFOMap_15_count_T_1 - _GEN_145; // @[Xbar.scala 113:48]
  wire  _awFIFOMap_15_T_2 = awSel[15] & _awFIFOMap_0_T_1; // @[Xbar.scala 130:25]
  wire  _awFIFOMap_15_T_5 = bSel[15] & _awFIFOMap_0_T_4; // @[Xbar.scala 131:24]
  wire [2:0] _GEN_146 = {{2'd0}, _awFIFOMap_15_T_2}; // @[Xbar.scala 113:30]
  wire [2:0] _awFIFOMap_15_count_T_1 = awFIFOMap_15_count + _GEN_146; // @[Xbar.scala 113:30]
  wire [2:0] _GEN_147 = {{2'd0}, _awFIFOMap_15_T_5}; // @[Xbar.scala 113:48]
  wire [2:0] _awFIFOMap_15_count_T_3 = _awFIFOMap_15_count_T_1 - _GEN_147; // @[Xbar.scala 113:48]
  wire  in_0_ar_valid = auto_in_ar_valid & _GEN_47; // @[Xbar.scala 136:45]
  wire  in_0_aw_valid = auto_in_aw_valid & _bundleIn_0_aw_ready_T & _GEN_63; // @[Xbar.scala 145:82]
  wire  _T = awIn_0_io_enq_ready & awIn_0_io_enq_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_64 = _T | latched; // @[Xbar.scala 148:38 Xbar.scala 148:48 Xbar.scala 144:30]
  wire  _T_1 = in_0_aw_ready & in_0_aw_valid; // @[Decoupled.scala 40:37]
  wire  in_0_w_valid = auto_in_w_valid & awIn_0_io_deq_valid; // @[Xbar.scala 152:43]
  wire  in_0_w_ready = requestWIO_0_0 & auto_out_0_w_ready | requestWIO_0_1 & auto_out_1_w_ready; // @[Mux.scala 27:72]
  wire  portsAROI_filtered_0_valid = in_0_ar_valid & requestARIO_0_0; // @[Xbar.scala 229:40]
  wire  portsAROI_filtered_1_valid = in_0_ar_valid & requestARIO_0_1; // @[Xbar.scala 229:40]
  wire  portsAWOI_filtered_0_valid = in_0_aw_valid & requestAWIO_0_0; // @[Xbar.scala 229:40]
  wire  portsAWOI_filtered_1_valid = in_0_aw_valid & requestAWIO_0_1; // @[Xbar.scala 229:40]
  wire  _awOut_0_io_enq_bits_T_1 = ~portsAWOI_filtered_0_valid; // @[Xbar.scala 263:60]
  wire  _T_3 = ~portsAROI_filtered_0_valid; // @[Xbar.scala 263:60]
  wire  _awOut_1_io_enq_bits_T_1 = ~portsAWOI_filtered_1_valid; // @[Xbar.scala 263:60]
  wire  _T_16 = ~portsAROI_filtered_1_valid; // @[Xbar.scala 263:60]
  wire [1:0] _readys_mask_T = readys_readys & readys_filter_lo; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[1:0]; // @[package.scala 244:43]
  wire  _prefixOR_T_2 = winner_2_0 | winner_2_1; // @[Xbar.scala 262:50]
  wire  _GEN_75 = anyValid ? 1'h0 : idle_2; // @[Xbar.scala 273:21 Xbar.scala 273:28 Xbar.scala 249:23]
  wire  _GEN_76 = _arFIFOMap_0_T_4 | _GEN_75; // @[Xbar.scala 274:24 Xbar.scala 274:31]
  wire  allowed__0 = idle_2 ? readys_2_0 : state_2_0; // @[Xbar.scala 277:24]
  wire  allowed__1 = idle_2 ? readys_2_1 : state_2_1; // @[Xbar.scala 277:24]
  wire [1:0] _T_48 = muxState_2_0 ? auto_out_0_r_bits_resp : 2'h0; // @[Mux.scala 27:72]
  wire [1:0] _T_49 = muxState_2_1 ? auto_out_1_r_bits_resp : 2'h0; // @[Mux.scala 27:72]
  wire [31:0] _T_51 = muxState_2_0 ? auto_out_0_r_bits_data : 32'h0; // @[Mux.scala 27:72]
  wire [31:0] _T_52 = muxState_2_1 ? auto_out_1_r_bits_data : 32'h0; // @[Mux.scala 27:72]
  wire [1:0] _readys_mask_T_5 = readys_readys_1 & readys_filter_lo_1; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_6 = {_readys_mask_T_5, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_8 = _readys_mask_T_5 | _readys_mask_T_6[1:0]; // @[package.scala 244:43]
  wire  _prefixOR_T_3 = winner_3_0 | winner_3_1; // @[Xbar.scala 262:50]
  wire  _GEN_78 = anyValid_1 ? 1'h0 : idle_3; // @[Xbar.scala 273:21 Xbar.scala 273:28 Xbar.scala 249:23]
  wire  _GEN_79 = _awFIFOMap_0_T_4 | _GEN_78; // @[Xbar.scala 274:24 Xbar.scala 274:31]
  wire  allowed_1_0 = idle_3 ? readys_3_0 : state_3_0; // @[Xbar.scala 277:24]
  wire  allowed_1_1 = idle_3 ? readys_3_1 : state_3_1; // @[Xbar.scala 277:24]
  wire [1:0] _T_74 = muxState_3_0 ? auto_out_0_b_bits_resp : 2'h0; // @[Mux.scala 27:72]
  wire [1:0] _T_75 = muxState_3_1 ? auto_out_1_b_bits_resp : 2'h0; // @[Mux.scala 27:72]
  QueueCompatibility awIn_0 ( // @[Xbar.scala 62:47]
    .clock(awIn_0_clock),
    .reset(awIn_0_reset),
    .io_enq_ready(awIn_0_io_enq_ready),
    .io_enq_valid(awIn_0_io_enq_valid),
    .io_enq_bits(awIn_0_io_enq_bits),
    .io_deq_ready(awIn_0_io_deq_ready),
    .io_deq_valid(awIn_0_io_deq_valid),
    .io_deq_bits(awIn_0_io_deq_bits)
  );
  assign auto_in_aw_ready = in_0_aw_ready & (latched | awIn_0_io_enq_ready) & _GEN_63; // @[Xbar.scala 146:82]
  assign auto_in_w_ready = in_0_w_ready & awIn_0_io_deq_valid; // @[Xbar.scala 153:43]
  assign auto_in_b_valid = idle_3 ? anyValid_1 : _in_0_b_valid_T_2; // @[Xbar.scala 285:22]
  assign auto_in_b_bits_id = _T_77 | _T_78; // @[Mux.scala 27:72]
  assign auto_in_b_bits_resp = _T_74 | _T_75; // @[Mux.scala 27:72]
  assign auto_in_ar_ready = in_0_ar_ready & _GEN_47; // @[Xbar.scala 137:45]
  assign auto_in_r_valid = idle_2 ? anyValid : _in_0_r_valid_T_2; // @[Xbar.scala 285:22]
  assign auto_in_r_bits_id = _T_54 | _T_55; // @[Mux.scala 27:72]
  assign auto_in_r_bits_data = _T_51 | _T_52; // @[Mux.scala 27:72]
  assign auto_in_r_bits_resp = _T_48 | _T_49; // @[Mux.scala 27:72]
  assign auto_in_r_bits_last = muxState_2_0 & auto_out_0_r_bits_last | muxState_2_1 & auto_out_1_r_bits_last; // @[Mux.scala 27:72]
  assign auto_out_1_aw_valid = in_0_aw_valid & requestAWIO_0_1; // @[Xbar.scala 229:40]
  assign auto_out_1_aw_bits_id = auto_in_aw_bits_id; // @[Xbar.scala 86:47]
  assign auto_out_1_aw_bits_addr = auto_in_aw_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_aw_bits_len = auto_in_aw_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_aw_bits_size = auto_in_aw_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_aw_bits_burst = auto_in_aw_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_aw_bits_lock = auto_in_aw_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_aw_bits_cache = auto_in_aw_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_aw_bits_prot = auto_in_aw_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_w_valid = in_0_w_valid & requestWIO_0_1; // @[Xbar.scala 229:40]
  assign auto_out_1_w_bits_data = auto_in_w_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_w_bits_strb = auto_in_w_bits_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_w_bits_last = auto_in_w_bits_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_b_ready = auto_in_b_ready & allowed_1_1; // @[Xbar.scala 279:31]
  assign auto_out_1_ar_valid = in_0_ar_valid & requestARIO_0_1; // @[Xbar.scala 229:40]
  assign auto_out_1_ar_bits_id = auto_in_ar_bits_id; // @[Xbar.scala 87:47]
  assign auto_out_1_ar_bits_addr = auto_in_ar_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_ar_bits_len = auto_in_ar_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_ar_bits_size = auto_in_ar_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_ar_bits_burst = auto_in_ar_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_ar_bits_lock = auto_in_ar_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_ar_bits_cache = auto_in_ar_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_ar_bits_prot = auto_in_ar_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_1_r_ready = auto_in_r_ready & allowed__1; // @[Xbar.scala 279:31]
  assign auto_out_0_aw_valid = in_0_aw_valid & requestAWIO_0_0; // @[Xbar.scala 229:40]
  assign auto_out_0_aw_bits_id = auto_in_aw_bits_id; // @[Xbar.scala 86:47]
  assign auto_out_0_aw_bits_addr = auto_in_aw_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_aw_bits_len = auto_in_aw_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_aw_bits_size = auto_in_aw_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_aw_bits_burst = auto_in_aw_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_aw_bits_lock = auto_in_aw_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_aw_bits_cache = auto_in_aw_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_aw_bits_prot = auto_in_aw_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_w_valid = in_0_w_valid & requestWIO_0_0; // @[Xbar.scala 229:40]
  assign auto_out_0_w_bits_data = auto_in_w_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_w_bits_strb = auto_in_w_bits_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_w_bits_last = auto_in_w_bits_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_b_ready = auto_in_b_ready & allowed_1_0; // @[Xbar.scala 279:31]
  assign auto_out_0_ar_valid = in_0_ar_valid & requestARIO_0_0; // @[Xbar.scala 229:40]
  assign auto_out_0_ar_bits_id = auto_in_ar_bits_id; // @[Xbar.scala 87:47]
  assign auto_out_0_ar_bits_addr = auto_in_ar_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_ar_bits_len = auto_in_ar_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_ar_bits_size = auto_in_ar_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_ar_bits_burst = auto_in_ar_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_ar_bits_lock = auto_in_ar_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_ar_bits_cache = auto_in_ar_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_ar_bits_prot = auto_in_ar_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_r_ready = auto_in_r_ready & allowed__0; // @[Xbar.scala 279:31]
  assign awIn_0_clock = clock;
  assign awIn_0_reset = reset;
  assign awIn_0_io_enq_valid = auto_in_aw_valid & ~latched; // @[Xbar.scala 147:51]
  assign awIn_0_io_enq_bits = {requestAWIO_0_1,requestAWIO_0_0}; // @[Xbar.scala 71:75]
  assign awIn_0_io_deq_ready = auto_in_w_valid & auto_in_w_bits_last & in_0_w_ready; // @[Xbar.scala 154:74]
  always @(posedge clock) begin
    idle_2 <= reset | _GEN_76; // @[Xbar.scala 249:23 Xbar.scala 249:23]
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (idle_2 & |readys_filter_lo) begin // @[Arbiter.scala 27:32]
      readys_mask <= _readys_mask_T_3; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Xbar.scala 268:24]
      state_2_0 <= 1'h0; // @[Xbar.scala 268:24]
    end else if (idle_2) begin // @[Xbar.scala 269:23]
      state_2_0 <= winner_2_0;
    end
    if (reset) begin // @[Xbar.scala 268:24]
      state_2_1 <= 1'h0; // @[Xbar.scala 268:24]
    end else if (idle_2) begin // @[Xbar.scala 269:23]
      state_2_1 <= winner_2_1;
    end
    idle_3 <= reset | _GEN_79; // @[Xbar.scala 249:23 Xbar.scala 249:23]
    if (reset) begin // @[Arbiter.scala 23:23]
      readys_mask_1 <= 2'h3; // @[Arbiter.scala 23:23]
    end else if (idle_3 & |readys_filter_lo_1) begin // @[Arbiter.scala 27:32]
      readys_mask_1 <= _readys_mask_T_8; // @[Arbiter.scala 28:12]
    end
    if (reset) begin // @[Xbar.scala 268:24]
      state_3_0 <= 1'h0; // @[Xbar.scala 268:24]
    end else if (idle_3) begin // @[Xbar.scala 269:23]
      state_3_0 <= winner_3_0;
    end
    if (reset) begin // @[Xbar.scala 268:24]
      state_3_1 <= 1'h0; // @[Xbar.scala 268:24]
    end else if (idle_3) begin // @[Xbar.scala 269:23]
      state_3_1 <= winner_3_1;
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_15_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_15_count <= _arFIFOMap_15_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_15_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_15_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_14_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_14_count <= _arFIFOMap_14_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_14_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_14_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_13_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_13_count <= _arFIFOMap_13_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_13_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_13_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_12_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_12_count <= _arFIFOMap_12_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_12_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_12_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_11_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_11_count <= _arFIFOMap_11_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_11_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_11_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_10_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_10_count <= _arFIFOMap_10_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_10_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_10_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_9_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_9_count <= _arFIFOMap_9_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_9_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_9_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_8_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_8_count <= _arFIFOMap_8_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_8_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_8_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_7_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_7_count <= _arFIFOMap_7_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_7_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_7_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_6_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_6_count <= _arFIFOMap_6_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_6_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_6_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_5_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_5_count <= _arFIFOMap_5_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_5_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_5_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_4_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_4_count <= _arFIFOMap_4_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_4_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_4_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_3_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_3_count <= _arFIFOMap_3_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_3_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_3_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_2_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_2_count <= _arFIFOMap_2_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_2_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_2_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_1_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_1_count <= _arFIFOMap_1_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_1_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_1_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      arFIFOMap_0_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      arFIFOMap_0_count <= _arFIFOMap_0_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_arFIFOMap_0_T_2) begin // @[Xbar.scala 116:31]
      arFIFOMap_0_last <= arTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 144:30]
      latched <= 1'h0; // @[Xbar.scala 144:30]
    end else if (_T_1) begin // @[Xbar.scala 149:32]
      latched <= 1'h0; // @[Xbar.scala 149:42]
    end else begin
      latched <= _GEN_64;
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_15_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_15_count <= _awFIFOMap_15_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_15_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_15_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_14_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_14_count <= _awFIFOMap_14_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_14_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_14_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_13_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_13_count <= _awFIFOMap_13_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_13_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_13_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_12_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_12_count <= _awFIFOMap_12_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_12_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_12_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_11_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_11_count <= _awFIFOMap_11_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_11_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_11_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_10_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_10_count <= _awFIFOMap_10_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_10_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_10_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_9_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_9_count <= _awFIFOMap_9_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_9_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_9_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_8_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_8_count <= _awFIFOMap_8_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_8_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_8_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_7_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_7_count <= _awFIFOMap_7_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_7_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_7_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_6_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_6_count <= _awFIFOMap_6_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_6_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_6_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_5_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_5_count <= _awFIFOMap_5_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_5_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_5_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_4_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_4_count <= _awFIFOMap_4_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_4_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_4_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_3_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_3_count <= _awFIFOMap_3_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_3_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_3_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_2_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_2_count <= _awFIFOMap_2_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_2_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_2_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_1_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_1_count <= _awFIFOMap_1_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_1_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_1_last <= awTag; // @[Xbar.scala 116:38]
    end
    if (reset) begin // @[Xbar.scala 111:34]
      awFIFOMap_0_count <= 3'h0; // @[Xbar.scala 111:34]
    end else begin
      awFIFOMap_0_count <= _awFIFOMap_0_count_T_3; // @[Xbar.scala 113:21]
    end
    if (_awFIFOMap_0_T_2) begin // @[Xbar.scala 116:31]
      awFIFOMap_0_last <= awTag; // @[Xbar.scala 116:38]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_0_T_6 | arFIFOMap_0_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_0_T_6 | arFIFOMap_0_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_0_T_2 | _arFIFOMap_0_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_0_T_2 | _arFIFOMap_0_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_0_T_5 | awFIFOMap_0_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_0_T_5 | awFIFOMap_0_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_0_T_2 | _awFIFOMap_0_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_0_T_2 | _awFIFOMap_0_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_1_T_6 | arFIFOMap_1_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_1_T_6 | arFIFOMap_1_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_1_T_2 | _arFIFOMap_1_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_1_T_2 | _arFIFOMap_1_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_1_T_5 | awFIFOMap_1_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_1_T_5 | awFIFOMap_1_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_1_T_2 | _awFIFOMap_1_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_1_T_2 | _awFIFOMap_1_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_2_T_6 | arFIFOMap_2_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_2_T_6 | arFIFOMap_2_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_2_T_2 | _arFIFOMap_2_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_2_T_2 | _arFIFOMap_2_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_2_T_5 | awFIFOMap_2_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_2_T_5 | awFIFOMap_2_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_2_T_2 | _awFIFOMap_2_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_2_T_2 | _awFIFOMap_2_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_3_T_6 | arFIFOMap_3_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_3_T_6 | arFIFOMap_3_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_3_T_2 | _arFIFOMap_3_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_3_T_2 | _arFIFOMap_3_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_3_T_5 | awFIFOMap_3_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_3_T_5 | awFIFOMap_3_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_3_T_2 | _awFIFOMap_3_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_3_T_2 | _awFIFOMap_3_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_4_T_6 | arFIFOMap_4_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_4_T_6 | arFIFOMap_4_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_4_T_2 | _arFIFOMap_4_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_4_T_2 | _arFIFOMap_4_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_4_T_5 | awFIFOMap_4_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_4_T_5 | awFIFOMap_4_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_4_T_2 | _awFIFOMap_4_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_4_T_2 | _awFIFOMap_4_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_5_T_6 | arFIFOMap_5_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_5_T_6 | arFIFOMap_5_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_5_T_2 | _arFIFOMap_5_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_5_T_2 | _arFIFOMap_5_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_5_T_5 | awFIFOMap_5_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_5_T_5 | awFIFOMap_5_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_5_T_2 | _awFIFOMap_5_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_5_T_2 | _awFIFOMap_5_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_6_T_6 | arFIFOMap_6_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_6_T_6 | arFIFOMap_6_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_6_T_2 | _arFIFOMap_6_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_6_T_2 | _arFIFOMap_6_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_6_T_5 | awFIFOMap_6_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_6_T_5 | awFIFOMap_6_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_6_T_2 | _awFIFOMap_6_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_6_T_2 | _awFIFOMap_6_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_7_T_6 | arFIFOMap_7_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_7_T_6 | arFIFOMap_7_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_7_T_2 | _arFIFOMap_7_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_7_T_2 | _arFIFOMap_7_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_7_T_5 | awFIFOMap_7_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_7_T_5 | awFIFOMap_7_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_7_T_2 | _awFIFOMap_7_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_7_T_2 | _awFIFOMap_7_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_8_T_6 | arFIFOMap_8_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_8_T_6 | arFIFOMap_8_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_8_T_2 | _arFIFOMap_8_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_8_T_2 | _arFIFOMap_8_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_8_T_5 | awFIFOMap_8_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_8_T_5 | awFIFOMap_8_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_8_T_2 | _awFIFOMap_8_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_8_T_2 | _awFIFOMap_8_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_9_T_6 | arFIFOMap_9_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_9_T_6 | arFIFOMap_9_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_9_T_2 | _arFIFOMap_9_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_9_T_2 | _arFIFOMap_9_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_9_T_5 | awFIFOMap_9_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_9_T_5 | awFIFOMap_9_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_9_T_2 | _awFIFOMap_9_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_9_T_2 | _awFIFOMap_9_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_10_T_6 | arFIFOMap_10_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_10_T_6 | arFIFOMap_10_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_10_T_2 | _arFIFOMap_10_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_10_T_2 | _arFIFOMap_10_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_10_T_5 | awFIFOMap_10_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_10_T_5 | awFIFOMap_10_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_10_T_2 | _awFIFOMap_10_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_10_T_2 | _awFIFOMap_10_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_11_T_6 | arFIFOMap_11_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_11_T_6 | arFIFOMap_11_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_11_T_2 | _arFIFOMap_11_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_11_T_2 | _arFIFOMap_11_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_11_T_5 | awFIFOMap_11_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_11_T_5 | awFIFOMap_11_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_11_T_2 | _awFIFOMap_11_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_11_T_2 | _awFIFOMap_11_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_12_T_6 | arFIFOMap_12_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_12_T_6 | arFIFOMap_12_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_12_T_2 | _arFIFOMap_12_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_12_T_2 | _arFIFOMap_12_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_12_T_5 | awFIFOMap_12_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_12_T_5 | awFIFOMap_12_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_12_T_2 | _awFIFOMap_12_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_12_T_2 | _awFIFOMap_12_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_13_T_6 | arFIFOMap_13_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_13_T_6 | arFIFOMap_13_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_13_T_2 | _arFIFOMap_13_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_13_T_2 | _arFIFOMap_13_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_13_T_5 | awFIFOMap_13_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_13_T_5 | awFIFOMap_13_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_13_T_2 | _awFIFOMap_13_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_13_T_2 | _awFIFOMap_13_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_14_T_6 | arFIFOMap_14_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_14_T_6 | arFIFOMap_14_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_14_T_2 | _arFIFOMap_14_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_14_T_2 | _arFIFOMap_14_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_14_T_5 | awFIFOMap_14_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_14_T_5 | awFIFOMap_14_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_14_T_2 | _awFIFOMap_14_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_14_T_2 | _awFIFOMap_14_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_15_T_6 | arFIFOMap_15_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_15_T_6 | arFIFOMap_15_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_arFIFOMap_15_T_2 | _arFIFOMap_15_T_21 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_arFIFOMap_15_T_2 | _arFIFOMap_15_T_21 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_15_T_5 | awFIFOMap_15_count != 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:114 assert (!resp_fire || count =/= UInt(0))\n"); // @[Xbar.scala 114:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_15_T_5 | awFIFOMap_15_count != 3'h0 | reset)) begin
          $fatal; // @[Xbar.scala 114:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~_awFIFOMap_15_T_2 | _awFIFOMap_15_T_20 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:115 assert (!req_fire  || count =/= UInt(flight))\n"
            ); // @[Xbar.scala 115:22]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~_awFIFOMap_15_T_2 | _awFIFOMap_15_T_20 | reset)) begin
          $fatal; // @[Xbar.scala 115:22]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(_awOut_0_io_enq_bits_T_1 | portsAWOI_filtered_0_valid | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:265 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 265:12]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(_awOut_0_io_enq_bits_T_1 | portsAWOI_filtered_0_valid | reset)) begin
          $fatal; // @[Xbar.scala 265:12]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(_T_3 | portsAROI_filtered_0_valid | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:265 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 265:12]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(_T_3 | portsAROI_filtered_0_valid | reset)) begin
          $fatal; // @[Xbar.scala 265:12]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(_awOut_1_io_enq_bits_T_1 | portsAWOI_filtered_1_valid | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:265 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 265:12]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(_awOut_1_io_enq_bits_T_1 | portsAWOI_filtered_1_valid | reset)) begin
          $fatal; // @[Xbar.scala 265:12]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(_T_16 | portsAROI_filtered_1_valid | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:265 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 265:12]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(_T_16 | portsAROI_filtered_1_valid | reset)) begin
          $fatal; // @[Xbar.scala 265:12]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~winner_2_0 | ~winner_2_1 | reset)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at Xbar.scala:263 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"
            ); // @[Xbar.scala 263:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~winner_2_0 | ~winner_2_1 | reset)) begin
          $fatal; // @[Xbar.scala 263:11]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~anyValid | _prefixOR_T_2 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:265 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 265:12]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~anyValid | _prefixOR_T_2 | reset)) begin
          $fatal; // @[Xbar.scala 265:12]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~winner_3_0 | ~winner_3_1 | reset)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at Xbar.scala:263 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"
            ); // @[Xbar.scala 263:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~winner_3_0 | ~winner_3_1 | reset)) begin
          $fatal; // @[Xbar.scala 263:11]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~(~anyValid_1 | _prefixOR_T_3 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:265 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 265:12]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~anyValid_1 | _prefixOR_T_3 | reset)) begin
          $fatal; // @[Xbar.scala 265:12]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  idle_2 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  readys_mask = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  state_2_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_2_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  idle_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  readys_mask_1 = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  state_3_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state_3_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  arFIFOMap_15_count = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  arFIFOMap_15_last = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  arFIFOMap_14_count = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  arFIFOMap_14_last = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  arFIFOMap_13_count = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  arFIFOMap_13_last = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  arFIFOMap_12_count = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  arFIFOMap_12_last = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  arFIFOMap_11_count = _RAND_16[2:0];
  _RAND_17 = {1{`RANDOM}};
  arFIFOMap_11_last = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  arFIFOMap_10_count = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  arFIFOMap_10_last = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  arFIFOMap_9_count = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  arFIFOMap_9_last = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  arFIFOMap_8_count = _RAND_22[2:0];
  _RAND_23 = {1{`RANDOM}};
  arFIFOMap_8_last = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  arFIFOMap_7_count = _RAND_24[2:0];
  _RAND_25 = {1{`RANDOM}};
  arFIFOMap_7_last = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  arFIFOMap_6_count = _RAND_26[2:0];
  _RAND_27 = {1{`RANDOM}};
  arFIFOMap_6_last = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  arFIFOMap_5_count = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  arFIFOMap_5_last = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  arFIFOMap_4_count = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  arFIFOMap_4_last = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  arFIFOMap_3_count = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  arFIFOMap_3_last = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  arFIFOMap_2_count = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  arFIFOMap_2_last = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  arFIFOMap_1_count = _RAND_36[2:0];
  _RAND_37 = {1{`RANDOM}};
  arFIFOMap_1_last = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  arFIFOMap_0_count = _RAND_38[2:0];
  _RAND_39 = {1{`RANDOM}};
  arFIFOMap_0_last = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  latched = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  awFIFOMap_15_count = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  awFIFOMap_15_last = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  awFIFOMap_14_count = _RAND_43[2:0];
  _RAND_44 = {1{`RANDOM}};
  awFIFOMap_14_last = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  awFIFOMap_13_count = _RAND_45[2:0];
  _RAND_46 = {1{`RANDOM}};
  awFIFOMap_13_last = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  awFIFOMap_12_count = _RAND_47[2:0];
  _RAND_48 = {1{`RANDOM}};
  awFIFOMap_12_last = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  awFIFOMap_11_count = _RAND_49[2:0];
  _RAND_50 = {1{`RANDOM}};
  awFIFOMap_11_last = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  awFIFOMap_10_count = _RAND_51[2:0];
  _RAND_52 = {1{`RANDOM}};
  awFIFOMap_10_last = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  awFIFOMap_9_count = _RAND_53[2:0];
  _RAND_54 = {1{`RANDOM}};
  awFIFOMap_9_last = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  awFIFOMap_8_count = _RAND_55[2:0];
  _RAND_56 = {1{`RANDOM}};
  awFIFOMap_8_last = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  awFIFOMap_7_count = _RAND_57[2:0];
  _RAND_58 = {1{`RANDOM}};
  awFIFOMap_7_last = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  awFIFOMap_6_count = _RAND_59[2:0];
  _RAND_60 = {1{`RANDOM}};
  awFIFOMap_6_last = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  awFIFOMap_5_count = _RAND_61[2:0];
  _RAND_62 = {1{`RANDOM}};
  awFIFOMap_5_last = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  awFIFOMap_4_count = _RAND_63[2:0];
  _RAND_64 = {1{`RANDOM}};
  awFIFOMap_4_last = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  awFIFOMap_3_count = _RAND_65[2:0];
  _RAND_66 = {1{`RANDOM}};
  awFIFOMap_3_last = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  awFIFOMap_2_count = _RAND_67[2:0];
  _RAND_68 = {1{`RANDOM}};
  awFIFOMap_2_last = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  awFIFOMap_1_count = _RAND_69[2:0];
  _RAND_70 = {1{`RANDOM}};
  awFIFOMap_1_last = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  awFIFOMap_0_count = _RAND_71[2:0];
  _RAND_72 = {1{`RANDOM}};
  awFIFOMap_0_last = _RAND_72[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SimSRAM(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [31:0] auto_in_aw_bits_addr,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [31:0] auto_in_w_bits_data,
  input  [3:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [31:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [31:0] auto_in_r_bits_data,
  output        auto_in_r_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
`endif // RANDOMIZE_REG_INIT
  wire  mem_clk; // @[SimSRAM.scala 32:21]
  wire  mem_en; // @[SimSRAM.scala 32:21]
  wire [31:0] mem_rIdx; // @[SimSRAM.scala 32:21]
  wire [31:0] mem_rdata; // @[SimSRAM.scala 32:21]
  wire [31:0] mem_wIdx; // @[SimSRAM.scala 32:21]
  wire [31:0] mem_wdata; // @[SimSRAM.scala 32:21]
  wire [31:0] mem_wmask; // @[SimSRAM.scala 32:21]
  wire  mem_wen; // @[SimSRAM.scala 32:21]
  wire [7:0] fullMask_lo_lo = auto_in_w_bits_strb[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] fullMask_lo_hi = auto_in_w_bits_strb[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] fullMask_hi_lo = auto_in_w_bits_strb[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] fullMask_hi_hi = auto_in_w_bits_strb[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [15:0] fullMask_lo = {fullMask_lo_hi,fullMask_lo_lo}; // @[Cat.scala 30:58]
  wire [15:0] fullMask_hi = {fullMask_hi_hi,fullMask_hi_lo}; // @[Cat.scala 30:58]
  reg [7:0] value; // @[Counter.scala 60:40]
  reg [7:0] value_1; // @[Counter.scala 60:40]
  reg  r_busy; // @[SimSRAM.scala 134:20]
  wire  in_ar_ready = auto_in_r_ready | ~r_busy; // @[SimSRAM.scala 81:29]
  wire  _T = in_ar_ready & auto_in_ar_valid; // @[Decoupled.scala 40:37]
  reg [7:0] r; // @[Reg.scala 27:20]
  wire [7:0] _GEN_0 = _T ? auto_in_ar_bits_len : r; // @[Reg.scala 28:19 Reg.scala 28:23 Reg.scala 27:20]
  reg [1:0] r_1; // @[Reg.scala 27:20]
  wire [1:0] _GEN_1 = _T ? auto_in_ar_bits_burst : r_1; // @[Reg.scala 28:19 Reg.scala 28:23 Reg.scala 27:20]
  wire [31:0] _WIRE_2 = {{24'd0}, auto_in_ar_bits_len}; // @[SimSRAM.scala 59:63 SimSRAM.scala 59:63]
  wire [38:0] _GEN_22 = {{7'd0}, _WIRE_2}; // @[SimSRAM.scala 59:94]
  wire [38:0] _T_4 = _GEN_22 << auto_in_ar_bits_size; // @[SimSRAM.scala 59:94]
  wire [38:0] _T_5 = ~_T_4; // @[SimSRAM.scala 59:38]
  wire [38:0] _GEN_23 = {{7'd0}, auto_in_ar_bits_addr}; // @[SimSRAM.scala 59:36]
  wire [38:0] _T_6 = _GEN_23 & _T_5; // @[SimSRAM.scala 59:36]
  reg [38:0] raddr_r; // @[Reg.scala 27:20]
  wire [38:0] _GEN_2 = _T ? _T_6 : raddr_r; // @[Reg.scala 28:19 Reg.scala 28:23 Reg.scala 27:20]
  wire  in_r_bits_last = value == _GEN_0; // @[SimSRAM.scala 61:32]
  wire [7:0] _value_T_1 = value_1 + 8'h1; // @[Counter.scala 76:24]
  wire [7:0] _GEN_3 = _GEN_1 == 2'h2 & value_1 == _GEN_0 ? 8'h0 : _value_T_1; // @[SimSRAM.scala 64:75 SimSRAM.scala 64:91 Counter.scala 76:15]
  reg  ren_REG; // @[SimSRAM.scala 83:17]
  reg  bundleIn_0_r_valid_r; // @[SimSRAM.scala 134:20]
  wire  _ren_T_1 = auto_in_r_ready & bundleIn_0_r_valid_r; // @[Decoupled.scala 40:37]
  wire  ren = ren_REG | _ren_T_1 & ~in_r_bits_last; // @[SimSRAM.scala 83:46]
  wire [7:0] _GEN_4 = ren ? _GEN_3 : value_1; // @[SimSRAM.scala 62:16 Counter.scala 60:40]
  wire [7:0] _value_T_3 = value + 8'h1; // @[Counter.scala 76:24]
  wire [31:0] _value_T_4 = auto_in_ar_bits_addr >> auto_in_ar_bits_size; // @[SimSRAM.scala 71:41]
  wire [31:0] _value_T_5 = _value_T_4 & _WIRE_2; // @[SimSRAM.scala 71:61]
  wire  _T_14 = auto_in_ar_bits_len != 8'h0 & auto_in_ar_bits_burst == 2'h2; // @[SimSRAM.scala 72:36]
  wire  _T_18 = auto_in_ar_bits_len == 8'h7; // @[SimSRAM.scala 74:26]
  wire  _T_19 = auto_in_ar_bits_len == 8'h1 | auto_in_ar_bits_len == 8'h3 | _T_18; // @[SimSRAM.scala 73:65]
  wire  _T_21 = _T_19 | auto_in_ar_bits_len == 8'hf; // @[SimSRAM.scala 74:34]
  wire [31:0] _GEN_7 = _T ? _value_T_5 : {{24'd0}, _GEN_4}; // @[SimSRAM.scala 70:25 SimSRAM.scala 71:21]
  wire  _r_busy_T_2 = _ren_T_1 & in_r_bits_last; // @[SimSRAM.scala 80:56]
  wire  _GEN_8 = _r_busy_T_2 ? 1'h0 : r_busy; // @[SimSRAM.scala 136:19 SimSRAM.scala 136:23 SimSRAM.scala 134:20]
  wire  _GEN_9 = _T | _GEN_8; // @[SimSRAM.scala 137:20 SimSRAM.scala 137:24]
  wire  _bundleIn_0_r_valid_T_2 = ren & (_T | r_busy); // @[SimSRAM.scala 84:35]
  wire  _GEN_10 = _ren_T_1 ? 1'h0 : bundleIn_0_r_valid_r; // @[SimSRAM.scala 136:19 SimSRAM.scala 136:23 SimSRAM.scala 134:20]
  wire  _GEN_11 = _bundleIn_0_r_valid_T_2 | _GEN_10; // @[SimSRAM.scala 137:20 SimSRAM.scala 137:24]
  reg [7:0] value_2; // @[Counter.scala 60:40]
  reg  w_busy; // @[SimSRAM.scala 134:20]
  wire  in_aw_ready = ~w_busy; // @[SimSRAM.scala 99:18]
  wire  _waddr_T = in_aw_ready & auto_in_aw_valid; // @[Decoupled.scala 40:37]
  reg [31:0] waddr_r; // @[Reg.scala 27:20]
  wire [31:0] _GEN_12 = _waddr_T ? auto_in_aw_bits_addr : waddr_r; // @[Reg.scala 28:19 Reg.scala 28:23 Reg.scala 27:20]
  wire  in_w_ready = auto_in_aw_valid | w_busy; // @[SimSRAM.scala 100:30]
  wire  _T_25 = in_w_ready & auto_in_w_valid; // @[Decoupled.scala 40:37]
  wire [7:0] _value_T_7 = value_2 + 8'h1; // @[Counter.scala 76:24]
  reg  bundleIn_0_b_valid_r; // @[SimSRAM.scala 134:20]
  wire  _w_busy_T_1 = auto_in_b_ready & bundleIn_0_b_valid_r; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _w_busy_T_1 ? 1'h0 : w_busy; // @[SimSRAM.scala 136:19 SimSRAM.scala 136:23 SimSRAM.scala 134:20]
  wire  _GEN_16 = _waddr_T | _GEN_15; // @[SimSRAM.scala 137:20 SimSRAM.scala 137:24]
  wire  _bundleIn_0_b_valid_T_1 = _T_25 & auto_in_w_bits_last; // @[SimSRAM.scala 102:43]
  wire  _GEN_17 = _w_busy_T_1 ? 1'h0 : bundleIn_0_b_valid_r; // @[SimSRAM.scala 136:19 SimSRAM.scala 136:23 SimSRAM.scala 134:20]
  wire  _GEN_18 = _bundleIn_0_b_valid_T_1 | _GEN_17; // @[SimSRAM.scala 137:20 SimSRAM.scala 137:24]
  reg [3:0] bundleIn_0_b_bits_id_r; // @[Reg.scala 15:16]
  reg [3:0] bundleIn_0_r_bits_id_r; // @[Reg.scala 15:16]
  wire [31:0] _wIdx_T = _GEN_12 & 32'h3ffffff; // @[SimSRAM.scala 25:36]
  wire [29:0] _GEN_25 = {{22'd0}, value_2}; // @[SimSRAM.scala 28:29]
  wire [29:0] wIdx = _wIdx_T[31:2] + _GEN_25; // @[SimSRAM.scala 28:29]
  wire [38:0] _rIdx_T = _GEN_2 & 39'h3ffffff; // @[SimSRAM.scala 25:36]
  wire [36:0] _GEN_26 = {{29'd0}, value_1}; // @[SimSRAM.scala 29:29]
  wire [36:0] rIdx = _rIdx_T[38:2] + _GEN_26; // @[SimSRAM.scala 29:29]
  wire  _wen_T_1 = wIdx < 30'h1000000; // @[SimSRAM.scala 26:34]
  reg [31:0] bundleIn_0_r_bits_data_r; // @[Reg.scala 15:16]
  RAMHelper mem ( // @[SimSRAM.scala 32:21]
    .clk(mem_clk),
    .en(mem_en),
    .rIdx(mem_rIdx),
    .rdata(mem_rdata),
    .wIdx(mem_wIdx),
    .wdata(mem_wdata),
    .wmask(mem_wmask),
    .wen(mem_wen)
  );
  assign auto_in_aw_ready = ~w_busy; // @[SimSRAM.scala 99:18]
  assign auto_in_w_ready = auto_in_aw_valid | w_busy; // @[SimSRAM.scala 100:30]
  assign auto_in_b_valid = bundleIn_0_b_valid_r; // @[Nodes.scala 1210:84 SimSRAM.scala 102:14]
  assign auto_in_b_bits_id = bundleIn_0_b_bits_id_r; // @[Nodes.scala 1210:84 SimSRAM.scala 104:18]
  assign auto_in_ar_ready = auto_in_r_ready | ~r_busy; // @[SimSRAM.scala 81:29]
  assign auto_in_r_valid = bundleIn_0_r_valid_r; // @[Nodes.scala 1210:84 SimSRAM.scala 84:14]
  assign auto_in_r_bits_id = bundleIn_0_r_bits_id_r; // @[Nodes.scala 1210:84 SimSRAM.scala 106:18]
  assign auto_in_r_bits_data = bundleIn_0_r_bits_data_r; // @[Nodes.scala 1210:84 SimSRAM.scala 41:20]
  assign auto_in_r_bits_last = value == _GEN_0; // @[SimSRAM.scala 61:32]
  assign mem_clk = clock; // @[SimSRAM.scala 33:16]
  assign mem_en = 1'h1;
  assign mem_rIdx = rIdx[31:0]; // @[SimSRAM.scala 34:17]
  assign mem_wIdx = {{2'd0}, wIdx}; // @[SimSRAM.scala 28:29]
  assign mem_wdata = auto_in_w_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign mem_wmask = {fullMask_hi,fullMask_lo}; // @[Cat.scala 30:58]
  assign mem_wen = _T_25 & _wen_T_1; // @[SimSRAM.scala 30:27]
  always @(posedge clock) begin
    if (reset) begin // @[Counter.scala 60:40]
      value <= 8'h0; // @[Counter.scala 60:40]
    end else if (_ren_T_1) begin // @[SimSRAM.scala 66:24]
      if (in_r_bits_last) begin // @[SimSRAM.scala 68:29]
        value <= 8'h0; // @[SimSRAM.scala 68:39]
      end else begin
        value <= _value_T_3; // @[Counter.scala 76:15]
      end
    end
    if (reset) begin // @[Counter.scala 60:40]
      value_1 <= 8'h0; // @[Counter.scala 60:40]
    end else begin
      value_1 <= _GEN_7[7:0];
    end
    if (reset) begin // @[SimSRAM.scala 134:20]
      r_busy <= 1'h0; // @[SimSRAM.scala 134:20]
    end else begin
      r_busy <= _GEN_9;
    end
    if (reset) begin // @[Reg.scala 27:20]
      r <= 8'h0; // @[Reg.scala 27:20]
    end else if (_T) begin // @[Reg.scala 28:19]
      r <= auto_in_ar_bits_len; // @[Reg.scala 28:23]
    end
    if (reset) begin // @[Reg.scala 27:20]
      r_1 <= 2'h0; // @[Reg.scala 27:20]
    end else if (_T) begin // @[Reg.scala 28:19]
      r_1 <= auto_in_ar_bits_burst; // @[Reg.scala 28:23]
    end
    if (reset) begin // @[Reg.scala 27:20]
      raddr_r <= 39'h0; // @[Reg.scala 27:20]
    end else if (_T) begin // @[Reg.scala 28:19]
      raddr_r <= _T_6; // @[Reg.scala 28:23]
    end
    if (reset) begin // @[SimSRAM.scala 83:17]
      ren_REG <= 1'h0; // @[SimSRAM.scala 83:17]
    end else begin
      ren_REG <= _T; // @[SimSRAM.scala 83:17]
    end
    if (reset) begin // @[SimSRAM.scala 134:20]
      bundleIn_0_r_valid_r <= 1'h0; // @[SimSRAM.scala 134:20]
    end else begin
      bundleIn_0_r_valid_r <= _GEN_11;
    end
    if (reset) begin // @[Counter.scala 60:40]
      value_2 <= 8'h0; // @[Counter.scala 60:40]
    end else if (_T_25) begin // @[SimSRAM.scala 91:24]
      if (auto_in_w_bits_last) begin // @[SimSRAM.scala 93:29]
        value_2 <= 8'h0; // @[SimSRAM.scala 93:39]
      end else begin
        value_2 <= _value_T_7; // @[Counter.scala 76:15]
      end
    end
    if (reset) begin // @[SimSRAM.scala 134:20]
      w_busy <= 1'h0; // @[SimSRAM.scala 134:20]
    end else begin
      w_busy <= _GEN_16;
    end
    if (reset) begin // @[Reg.scala 27:20]
      waddr_r <= 32'h0; // @[Reg.scala 27:20]
    end else if (_waddr_T) begin // @[Reg.scala 28:19]
      waddr_r <= auto_in_aw_bits_addr; // @[Reg.scala 28:23]
    end
    if (reset) begin // @[SimSRAM.scala 134:20]
      bundleIn_0_b_valid_r <= 1'h0; // @[SimSRAM.scala 134:20]
    end else begin
      bundleIn_0_b_valid_r <= _GEN_18;
    end
    if (_waddr_T) begin // @[Reg.scala 16:19]
      bundleIn_0_b_bits_id_r <= auto_in_aw_bits_id; // @[Reg.scala 16:23]
    end
    if (_T) begin // @[Reg.scala 16:19]
      bundleIn_0_r_bits_id_r <= auto_in_ar_bits_id; // @[Reg.scala 16:23]
    end
    if (ren) begin // @[Reg.scala 16:19]
      bundleIn_0_r_bits_data_r <= (raddr_r[31:0] == 32'h1fe40005) ? 32'h00002000 : mem_rdata; // @[Reg.scala 16:23]
      // bundleIn_0_r_bits_data_r <= mem_rdata; // @[Reg.scala 16:23]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T & _T_14 & ~(_T_21 | reset)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at SimSRAM.scala:73 assert(in.ar.bits.len === 1.U || in.ar.bits.len === 3.U ||\n"); // @[SimSRAM.scala 73:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T & _T_14 & ~(_T_21 | reset)) begin
          $fatal; // @[SimSRAM.scala 73:15]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
  /*****************模拟串口输出*********************/
  // always @(posedge clock) begin
  //   if (mem_wen == 1'b1 && mem_wmask == 32'h000000ff  )begin
  //     uart_write_helper(mem_wdata[7:0]);
  //   end
  // end
UARTHelper uart_helper(clock,~reset,{24'b0,mem_wdata[7:0]},(mem_wen == 1'b1 && mem_wmask == 32'h000000ff && waddr_r[31:0]== 32'h1fe40000 ));
/*****************end*********************/
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  value = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  value_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  r_busy = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  r = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  r_1 = _RAND_4[1:0];
  _RAND_5 = {2{`RANDOM}};
  raddr_r = _RAND_5[38:0];
  _RAND_6 = {1{`RANDOM}};
  ren_REG = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  bundleIn_0_r_valid_r = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  value_2 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  w_busy = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  waddr_r = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  bundleIn_0_b_valid_r = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  bundleIn_0_b_bits_id_r = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  bundleIn_0_r_bits_id_r = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  bundleIn_0_r_bits_data_r = _RAND_14[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ConfregWrapper(
  input         clock,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [31:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  input         auto_in_aw_bits_lock,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [31:0] auto_in_w_bits_data,
  input  [3:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [31:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_ar_bits_lock,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [31:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output        auto_in_r_bits_last
);
  wire  u_confreg_aclk; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_timer_clk; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_aresetn; // @[ConfregWrapper.scala 84:27]
  wire [15:0] u_confreg_led; // @[ConfregWrapper.scala 84:27]
  wire [1:0] u_confreg_led_rg0; // @[ConfregWrapper.scala 84:27]
  wire [1:0] u_confreg_led_rg1; // @[ConfregWrapper.scala 84:27]
  wire [7:0] u_confreg_num_csn; // @[ConfregWrapper.scala 84:27]
  wire [6:0] u_confreg_num_a_g; // @[ConfregWrapper.scala 84:27]
  wire [7:0] u_confreg_switch; // @[ConfregWrapper.scala 84:27]
  wire [3:0] u_confreg_btn_key_col; // @[ConfregWrapper.scala 84:27]
  wire [3:0] u_confreg_btn_key_row; // @[ConfregWrapper.scala 84:27]
  wire [1:0] u_confreg_btn_step; // @[ConfregWrapper.scala 84:27]
  wire [4:0] u_confreg_ram_random_mask; // @[ConfregWrapper.scala 84:27]
  wire [3:0] u_confreg_arid; // @[ConfregWrapper.scala 84:27]
  wire [31:0] u_confreg_araddr; // @[ConfregWrapper.scala 84:27]
  wire [7:0] u_confreg_arlen; // @[ConfregWrapper.scala 84:27]
  wire [2:0] u_confreg_arsize; // @[ConfregWrapper.scala 84:27]
  wire [1:0] u_confreg_arburst; // @[ConfregWrapper.scala 84:27]
  wire [1:0] u_confreg_arlock; // @[ConfregWrapper.scala 84:27]
  wire [3:0] u_confreg_arcache; // @[ConfregWrapper.scala 84:27]
  wire [2:0] u_confreg_arprot; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_arvalid; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_arready; // @[ConfregWrapper.scala 84:27]
  wire [3:0] u_confreg_awid; // @[ConfregWrapper.scala 84:27]
  wire [31:0] u_confreg_awaddr; // @[ConfregWrapper.scala 84:27]
  wire [7:0] u_confreg_awlen; // @[ConfregWrapper.scala 84:27]
  wire [2:0] u_confreg_awsize; // @[ConfregWrapper.scala 84:27]
  wire [1:0] u_confreg_awburst; // @[ConfregWrapper.scala 84:27]
  wire [1:0] u_confreg_awlock; // @[ConfregWrapper.scala 84:27]
  wire [3:0] u_confreg_awcache; // @[ConfregWrapper.scala 84:27]
  wire [2:0] u_confreg_awprot; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_awvalid; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_awready; // @[ConfregWrapper.scala 84:27]
  wire [3:0] u_confreg_rid; // @[ConfregWrapper.scala 84:27]
  wire [31:0] u_confreg_rdata; // @[ConfregWrapper.scala 84:27]
  wire [1:0] u_confreg_rresp; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_rlast; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_rvalid; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_rready; // @[ConfregWrapper.scala 84:27]
  wire [3:0] u_confreg_wid; // @[ConfregWrapper.scala 84:27]
  wire [31:0] u_confreg_wdata; // @[ConfregWrapper.scala 84:27]
  wire [3:0] u_confreg_wstrb; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_wlast; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_wvalid; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_wready; // @[ConfregWrapper.scala 84:27]
  wire [3:0] u_confreg_bid; // @[ConfregWrapper.scala 84:27]
  wire [1:0] u_confreg_bresp; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_bvalid; // @[ConfregWrapper.scala 84:27]
  wire  u_confreg_bready; // @[ConfregWrapper.scala 84:27]
  confreg #(.SIMULATION(1'b1)) u_confreg ( // @[ConfregWrapper.scala 84:27]
    .aclk(u_confreg_aclk),
    .timer_clk(u_confreg_timer_clk),
    .aresetn(u_confreg_aresetn),
    .led(u_confreg_led),
    .led_rg0(u_confreg_led_rg0),
    .led_rg1(u_confreg_led_rg1),
    .num_csn(u_confreg_num_csn),
    .num_a_g(u_confreg_num_a_g),
    .switch(u_confreg_switch),
    .btn_key_col(u_confreg_btn_key_col),
    .btn_key_row(u_confreg_btn_key_row),
    .btn_step(u_confreg_btn_step),
    .ram_random_mask(u_confreg_ram_random_mask),
    .arid(u_confreg_arid),
    .araddr(u_confreg_araddr),
    .arlen(u_confreg_arlen),
    .arsize(u_confreg_arsize),
    .arburst(u_confreg_arburst),
    .arlock(u_confreg_arlock),
    .arcache(u_confreg_arcache),
    .arprot(u_confreg_arprot),
    .arvalid(u_confreg_arvalid),
    .arready(u_confreg_arready),
    .awid(u_confreg_awid),
    .awaddr(u_confreg_awaddr),
    .awlen(u_confreg_awlen),
    .awsize(u_confreg_awsize),
    .awburst(u_confreg_awburst),
    .awlock(u_confreg_awlock),
    .awcache(u_confreg_awcache),
    .awprot(u_confreg_awprot),
    .awvalid(u_confreg_awvalid),
    .awready(u_confreg_awready),
    .rid(u_confreg_rid),
    .rdata(u_confreg_rdata),
    .rresp(u_confreg_rresp),
    .rlast(u_confreg_rlast),
    .rvalid(u_confreg_rvalid),
    .rready(u_confreg_rready),
    .wid(u_confreg_wid),
    .wdata(u_confreg_wdata),
    .wstrb(u_confreg_wstrb),
    .wlast(u_confreg_wlast),
    .wvalid(u_confreg_wvalid),
    .wready(u_confreg_wready),
    .bid(u_confreg_bid),
    .bresp(u_confreg_bresp),
    .bvalid(u_confreg_bvalid),
    .bready(u_confreg_bready)
  );
  assign auto_in_aw_ready = u_confreg_awready; // @[Nodes.scala 1210:84 ConfregWrapper.scala 104:19]
  assign auto_in_w_ready = u_confreg_wready; // @[Nodes.scala 1210:84 ConfregWrapper.scala 104:19]
  assign auto_in_b_valid = u_confreg_bvalid; // @[Nodes.scala 1210:84 ConfregWrapper.scala 104:19]
  assign auto_in_b_bits_id = u_confreg_bid; // @[Nodes.scala 1210:84 ConfregWrapper.scala 94:19]
  assign auto_in_b_bits_resp = u_confreg_bresp; // @[Nodes.scala 1210:84 ConfregWrapper.scala 94:19]
  assign auto_in_ar_ready = u_confreg_arready; // @[Nodes.scala 1210:84 ConfregWrapper.scala 104:19]
  assign auto_in_r_valid = u_confreg_rvalid; // @[Nodes.scala 1210:84 ConfregWrapper.scala 104:19]
  assign auto_in_r_bits_id = u_confreg_rid; // @[Nodes.scala 1210:84 ConfregWrapper.scala 94:19]
  assign auto_in_r_bits_data = u_confreg_rdata; // @[Nodes.scala 1210:84 ConfregWrapper.scala 94:19]
  assign auto_in_r_bits_resp = u_confreg_rresp; // @[Nodes.scala 1210:84 ConfregWrapper.scala 94:19]
  assign auto_in_r_bits_last = u_confreg_rlast; // @[Nodes.scala 1210:84 ConfregWrapper.scala 94:19]
  assign u_confreg_aclk = clock; // @[ConfregWrapper.scala 110:43]
  assign u_confreg_timer_clk = 1'h0;
  assign u_confreg_aresetn = 1'h0;
  assign u_confreg_switch = 8'hff; // @[ConfregWrapper.scala 111:25]
  assign u_confreg_btn_key_row = 4'h0; // @[ConfregWrapper.scala 112:30]
  assign u_confreg_btn_step = 2'h3; // @[ConfregWrapper.scala 113:27]
  assign u_confreg_arid = auto_in_ar_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_araddr = auto_in_ar_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_arlen = auto_in_ar_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_arsize = auto_in_ar_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_arburst = auto_in_ar_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_arlock = {{1'd0}, auto_in_ar_bits_lock}; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_arcache = auto_in_ar_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_arprot = auto_in_ar_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_arvalid = auto_in_ar_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_awid = auto_in_aw_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_awaddr = auto_in_aw_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_awlen = auto_in_aw_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_awsize = auto_in_aw_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_awburst = auto_in_aw_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_awlock = {{1'd0}, auto_in_aw_bits_lock}; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_awcache = auto_in_aw_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_awprot = auto_in_aw_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_awvalid = auto_in_aw_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_rready = auto_in_r_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_wid = 4'h0;
  assign u_confreg_wdata = auto_in_w_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_wstrb = auto_in_w_bits_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_wlast = auto_in_w_bits_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_wvalid = auto_in_w_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign u_confreg_bready = auto_in_b_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
endmodule
module Queue(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [3:0]  io_enq_bits_id,
  input  [31:0] io_enq_bits_addr,
  input  [7:0]  io_enq_bits_len,
  input  [2:0]  io_enq_bits_size,
  input  [1:0]  io_enq_bits_burst,
  input         io_enq_bits_lock,
  input  [3:0]  io_enq_bits_cache,
  input  [2:0]  io_enq_bits_prot,
  input         io_deq_ready,
  output        io_deq_valid,
  output [3:0]  io_deq_bits_id,
  output [31:0] io_deq_bits_addr,
  output [7:0]  io_deq_bits_len,
  output [2:0]  io_deq_bits_size,
  output [1:0]  io_deq_bits_burst,
  output        io_deq_bits_lock,
  output [3:0]  io_deq_bits_cache,
  output [2:0]  io_deq_bits_prot
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] ram_id [0:1]; // @[Decoupled.scala 218:16]
  wire [3:0] ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_id_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [3:0] ram_id_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_id_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_id_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_id_MPORT_en; // @[Decoupled.scala 218:16]
  reg [31:0] ram_addr [0:1]; // @[Decoupled.scala 218:16]
  wire [31:0] ram_addr_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_addr_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [31:0] ram_addr_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_addr_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_addr_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_addr_MPORT_en; // @[Decoupled.scala 218:16]
  reg [7:0] ram_len [0:1]; // @[Decoupled.scala 218:16]
  wire [7:0] ram_len_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_len_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [7:0] ram_len_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_len_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_len_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_len_MPORT_en; // @[Decoupled.scala 218:16]
  reg [2:0] ram_size [0:1]; // @[Decoupled.scala 218:16]
  wire [2:0] ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [2:0] ram_size_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_size_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_size_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_size_MPORT_en; // @[Decoupled.scala 218:16]
  reg [1:0] ram_burst [0:1]; // @[Decoupled.scala 218:16]
  wire [1:0] ram_burst_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_burst_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [1:0] ram_burst_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_burst_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_burst_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_burst_MPORT_en; // @[Decoupled.scala 218:16]
  reg  ram_lock [0:1]; // @[Decoupled.scala 218:16]
  wire  ram_lock_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_lock_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_lock_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_lock_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_lock_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_lock_MPORT_en; // @[Decoupled.scala 218:16]
  reg [3:0] ram_cache [0:1]; // @[Decoupled.scala 218:16]
  wire [3:0] ram_cache_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_cache_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [3:0] ram_cache_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_cache_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_cache_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_cache_MPORT_en; // @[Decoupled.scala 218:16]
  reg [2:0] ram_prot [0:1]; // @[Decoupled.scala 218:16]
  wire [2:0] ram_prot_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_prot_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [2:0] ram_prot_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_prot_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_prot_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_prot_MPORT_en; // @[Decoupled.scala 218:16]
  reg  value; // @[Counter.scala 60:40]
  reg  value_1; // @[Counter.scala 60:40]
  reg  maybe_full; // @[Decoupled.scala 221:27]
  wire  ptr_match = value == value_1; // @[Decoupled.scala 223:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 224:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 225:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37]
  assign ram_id_io_deq_bits_MPORT_addr = value_1;
  assign ram_id_io_deq_bits_MPORT_data = ram_id[ram_id_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_id_MPORT_data = io_enq_bits_id;
  assign ram_id_MPORT_addr = value;
  assign ram_id_MPORT_mask = 1'h1;
  assign ram_id_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_addr_io_deq_bits_MPORT_addr = value_1;
  assign ram_addr_io_deq_bits_MPORT_data = ram_addr[ram_addr_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_addr_MPORT_data = io_enq_bits_addr;
  assign ram_addr_MPORT_addr = value;
  assign ram_addr_MPORT_mask = 1'h1;
  assign ram_addr_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_len_io_deq_bits_MPORT_addr = value_1;
  assign ram_len_io_deq_bits_MPORT_data = ram_len[ram_len_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_len_MPORT_data = io_enq_bits_len;
  assign ram_len_MPORT_addr = value;
  assign ram_len_MPORT_mask = 1'h1;
  assign ram_len_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_size_io_deq_bits_MPORT_addr = value_1;
  assign ram_size_io_deq_bits_MPORT_data = ram_size[ram_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_size_MPORT_data = io_enq_bits_size;
  assign ram_size_MPORT_addr = value;
  assign ram_size_MPORT_mask = 1'h1;
  assign ram_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_burst_io_deq_bits_MPORT_addr = value_1;
  assign ram_burst_io_deq_bits_MPORT_data = ram_burst[ram_burst_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_burst_MPORT_data = io_enq_bits_burst;
  assign ram_burst_MPORT_addr = value;
  assign ram_burst_MPORT_mask = 1'h1;
  assign ram_burst_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_lock_io_deq_bits_MPORT_addr = value_1;
  assign ram_lock_io_deq_bits_MPORT_data = ram_lock[ram_lock_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_lock_MPORT_data = io_enq_bits_lock;
  assign ram_lock_MPORT_addr = value;
  assign ram_lock_MPORT_mask = 1'h1;
  assign ram_lock_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_cache_io_deq_bits_MPORT_addr = value_1;
  assign ram_cache_io_deq_bits_MPORT_data = ram_cache[ram_cache_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_cache_MPORT_data = io_enq_bits_cache;
  assign ram_cache_MPORT_addr = value;
  assign ram_cache_MPORT_mask = 1'h1;
  assign ram_cache_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_prot_io_deq_bits_MPORT_addr = value_1;
  assign ram_prot_io_deq_bits_MPORT_data = ram_prot[ram_prot_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_prot_MPORT_data = io_enq_bits_prot;
  assign ram_prot_MPORT_addr = value;
  assign ram_prot_MPORT_mask = 1'h1;
  assign ram_prot_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 241:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 240:19]
  assign io_deq_bits_id = ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_addr = ram_addr_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_len = ram_len_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_size = ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_burst = ram_burst_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_lock = ram_lock_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_cache = ram_cache_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_prot = ram_prot_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  always @(posedge clock) begin
    if(ram_id_MPORT_en & ram_id_MPORT_mask) begin
      ram_id[ram_id_MPORT_addr] <= ram_id_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_addr_MPORT_en & ram_addr_MPORT_mask) begin
      ram_addr[ram_addr_MPORT_addr] <= ram_addr_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_len_MPORT_en & ram_len_MPORT_mask) begin
      ram_len[ram_len_MPORT_addr] <= ram_len_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_size_MPORT_en & ram_size_MPORT_mask) begin
      ram_size[ram_size_MPORT_addr] <= ram_size_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_burst_MPORT_en & ram_burst_MPORT_mask) begin
      ram_burst[ram_burst_MPORT_addr] <= ram_burst_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_lock_MPORT_en & ram_lock_MPORT_mask) begin
      ram_lock[ram_lock_MPORT_addr] <= ram_lock_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_cache_MPORT_en & ram_cache_MPORT_mask) begin
      ram_cache[ram_cache_MPORT_addr] <= ram_cache_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_prot_MPORT_en & ram_prot_MPORT_mask) begin
      ram_prot[ram_prot_MPORT_addr] <= ram_prot_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if (reset) begin // @[Counter.scala 60:40]
      value <= 1'h0; // @[Counter.scala 60:40]
    end else if (do_enq) begin // @[Decoupled.scala 229:17]
      value <= value + 1'h1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Counter.scala 60:40]
      value_1 <= 1'h0; // @[Counter.scala 60:40]
    end else if (do_deq) begin // @[Decoupled.scala 233:17]
      value_1 <= value_1 + 1'h1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Decoupled.scala 221:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 221:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 236:28]
      maybe_full <= do_enq; // @[Decoupled.scala 237:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_addr[initvar] = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_len[initvar] = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_size[initvar] = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_burst[initvar] = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_lock[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_cache[initvar] = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_prot[initvar] = _RAND_7[2:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  value = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  value_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  maybe_full = _RAND_10[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Queue_1(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [31:0] io_enq_bits_data,
  input  [3:0]  io_enq_bits_strb,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [31:0] io_deq_bits_data,
  output [3:0]  io_deq_bits_strb,
  output        io_deq_bits_last
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] ram_data [0:1]; // @[Decoupled.scala 218:16]
  wire [31:0] ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_data_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [31:0] ram_data_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_data_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_data_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_data_MPORT_en; // @[Decoupled.scala 218:16]
  reg [3:0] ram_strb [0:1]; // @[Decoupled.scala 218:16]
  wire [3:0] ram_strb_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_strb_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [3:0] ram_strb_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_strb_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_strb_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_strb_MPORT_en; // @[Decoupled.scala 218:16]
  reg  ram_last [0:1]; // @[Decoupled.scala 218:16]
  wire  ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_last_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_last_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_last_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_last_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_last_MPORT_en; // @[Decoupled.scala 218:16]
  reg  value; // @[Counter.scala 60:40]
  reg  value_1; // @[Counter.scala 60:40]
  reg  maybe_full; // @[Decoupled.scala 221:27]
  wire  ptr_match = value == value_1; // @[Decoupled.scala 223:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 224:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 225:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37]
  assign ram_data_io_deq_bits_MPORT_addr = value_1;
  assign ram_data_io_deq_bits_MPORT_data = ram_data[ram_data_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_data_MPORT_data = io_enq_bits_data;
  assign ram_data_MPORT_addr = value;
  assign ram_data_MPORT_mask = 1'h1;
  assign ram_data_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_strb_io_deq_bits_MPORT_addr = value_1;
  assign ram_strb_io_deq_bits_MPORT_data = ram_strb[ram_strb_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_strb_MPORT_data = io_enq_bits_strb;
  assign ram_strb_MPORT_addr = value;
  assign ram_strb_MPORT_mask = 1'h1;
  assign ram_strb_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_last_io_deq_bits_MPORT_addr = value_1;
  assign ram_last_io_deq_bits_MPORT_data = ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_last_MPORT_data = io_enq_bits_last;
  assign ram_last_MPORT_addr = value;
  assign ram_last_MPORT_mask = 1'h1;
  assign ram_last_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 241:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 240:19]
  assign io_deq_bits_data = ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_strb = ram_strb_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_last = ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  always @(posedge clock) begin
    if(ram_data_MPORT_en & ram_data_MPORT_mask) begin
      ram_data[ram_data_MPORT_addr] <= ram_data_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_strb_MPORT_en & ram_strb_MPORT_mask) begin
      ram_strb[ram_strb_MPORT_addr] <= ram_strb_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_last_MPORT_en & ram_last_MPORT_mask) begin
      ram_last[ram_last_MPORT_addr] <= ram_last_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if (reset) begin // @[Counter.scala 60:40]
      value <= 1'h0; // @[Counter.scala 60:40]
    end else if (do_enq) begin // @[Decoupled.scala 229:17]
      value <= value + 1'h1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Counter.scala 60:40]
      value_1 <= 1'h0; // @[Counter.scala 60:40]
    end else if (do_deq) begin // @[Decoupled.scala 233:17]
      value_1 <= value_1 + 1'h1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Decoupled.scala 221:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 221:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 236:28]
      maybe_full <= do_enq; // @[Decoupled.scala 237:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_data[initvar] = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_strb[initvar] = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_last[initvar] = _RAND_2[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  value = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  value_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  maybe_full = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Queue_2(
  input        clock,
  input        reset,
  output       io_enq_ready,
  input        io_enq_valid,
  input  [3:0] io_enq_bits_id,
  input  [1:0] io_enq_bits_resp,
  input        io_deq_ready,
  output       io_deq_valid,
  output [3:0] io_deq_bits_id,
  output [1:0] io_deq_bits_resp
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] ram_id [0:1]; // @[Decoupled.scala 218:16]
  wire [3:0] ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_id_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [3:0] ram_id_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_id_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_id_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_id_MPORT_en; // @[Decoupled.scala 218:16]
  reg [1:0] ram_resp [0:1]; // @[Decoupled.scala 218:16]
  wire [1:0] ram_resp_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_resp_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [1:0] ram_resp_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_resp_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_resp_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_resp_MPORT_en; // @[Decoupled.scala 218:16]
  reg  value; // @[Counter.scala 60:40]
  reg  value_1; // @[Counter.scala 60:40]
  reg  maybe_full; // @[Decoupled.scala 221:27]
  wire  ptr_match = value == value_1; // @[Decoupled.scala 223:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 224:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 225:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37]
  assign ram_id_io_deq_bits_MPORT_addr = value_1;
  assign ram_id_io_deq_bits_MPORT_data = ram_id[ram_id_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_id_MPORT_data = io_enq_bits_id;
  assign ram_id_MPORT_addr = value;
  assign ram_id_MPORT_mask = 1'h1;
  assign ram_id_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_resp_io_deq_bits_MPORT_addr = value_1;
  assign ram_resp_io_deq_bits_MPORT_data = ram_resp[ram_resp_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_resp_MPORT_data = io_enq_bits_resp;
  assign ram_resp_MPORT_addr = value;
  assign ram_resp_MPORT_mask = 1'h1;
  assign ram_resp_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 241:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 240:19]
  assign io_deq_bits_id = ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_resp = ram_resp_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  always @(posedge clock) begin
    if(ram_id_MPORT_en & ram_id_MPORT_mask) begin
      ram_id[ram_id_MPORT_addr] <= ram_id_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_resp_MPORT_en & ram_resp_MPORT_mask) begin
      ram_resp[ram_resp_MPORT_addr] <= ram_resp_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if (reset) begin // @[Counter.scala 60:40]
      value <= 1'h0; // @[Counter.scala 60:40]
    end else if (do_enq) begin // @[Decoupled.scala 229:17]
      value <= value + 1'h1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Counter.scala 60:40]
      value_1 <= 1'h0; // @[Counter.scala 60:40]
    end else if (do_deq) begin // @[Decoupled.scala 233:17]
      value_1 <= value_1 + 1'h1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Decoupled.scala 221:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 221:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 236:28]
      maybe_full <= do_enq; // @[Decoupled.scala 237:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_resp[initvar] = _RAND_1[1:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  value = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  value_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  maybe_full = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Queue_4(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [3:0]  io_enq_bits_id,
  input  [31:0] io_enq_bits_data,
  input  [1:0]  io_enq_bits_resp,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [3:0]  io_deq_bits_id,
  output [31:0] io_deq_bits_data,
  output [1:0]  io_deq_bits_resp,
  output        io_deq_bits_last
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] ram_id [0:1]; // @[Decoupled.scala 218:16]
  wire [3:0] ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_id_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [3:0] ram_id_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_id_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_id_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_id_MPORT_en; // @[Decoupled.scala 218:16]
  reg [31:0] ram_data [0:1]; // @[Decoupled.scala 218:16]
  wire [31:0] ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_data_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [31:0] ram_data_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_data_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_data_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_data_MPORT_en; // @[Decoupled.scala 218:16]
  reg [1:0] ram_resp [0:1]; // @[Decoupled.scala 218:16]
  wire [1:0] ram_resp_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_resp_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [1:0] ram_resp_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_resp_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_resp_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_resp_MPORT_en; // @[Decoupled.scala 218:16]
  reg  ram_last [0:1]; // @[Decoupled.scala 218:16]
  wire  ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_last_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_last_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_last_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_last_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_last_MPORT_en; // @[Decoupled.scala 218:16]
  reg  value; // @[Counter.scala 60:40]
  reg  value_1; // @[Counter.scala 60:40]
  reg  maybe_full; // @[Decoupled.scala 221:27]
  wire  ptr_match = value == value_1; // @[Decoupled.scala 223:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 224:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 225:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37]
  assign ram_id_io_deq_bits_MPORT_addr = value_1;
  assign ram_id_io_deq_bits_MPORT_data = ram_id[ram_id_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_id_MPORT_data = io_enq_bits_id;
  assign ram_id_MPORT_addr = value;
  assign ram_id_MPORT_mask = 1'h1;
  assign ram_id_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_io_deq_bits_MPORT_addr = value_1;
  assign ram_data_io_deq_bits_MPORT_data = ram_data[ram_data_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_data_MPORT_data = io_enq_bits_data;
  assign ram_data_MPORT_addr = value;
  assign ram_data_MPORT_mask = 1'h1;
  assign ram_data_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_resp_io_deq_bits_MPORT_addr = value_1;
  assign ram_resp_io_deq_bits_MPORT_data = ram_resp[ram_resp_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_resp_MPORT_data = io_enq_bits_resp;
  assign ram_resp_MPORT_addr = value;
  assign ram_resp_MPORT_mask = 1'h1;
  assign ram_resp_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_last_io_deq_bits_MPORT_addr = value_1;
  assign ram_last_io_deq_bits_MPORT_data = ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_last_MPORT_data = io_enq_bits_last;
  assign ram_last_MPORT_addr = value;
  assign ram_last_MPORT_mask = 1'h1;
  assign ram_last_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 241:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 240:19]
  assign io_deq_bits_id = ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_data = ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_resp = ram_resp_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_last = ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  always @(posedge clock) begin
    if(ram_id_MPORT_en & ram_id_MPORT_mask) begin
      ram_id[ram_id_MPORT_addr] <= ram_id_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_data_MPORT_en & ram_data_MPORT_mask) begin
      ram_data[ram_data_MPORT_addr] <= ram_data_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_resp_MPORT_en & ram_resp_MPORT_mask) begin
      ram_resp[ram_resp_MPORT_addr] <= ram_resp_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_last_MPORT_en & ram_last_MPORT_mask) begin
      ram_last[ram_last_MPORT_addr] <= ram_last_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if (reset) begin // @[Counter.scala 60:40]
      value <= 1'h0; // @[Counter.scala 60:40]
    end else if (do_enq) begin // @[Decoupled.scala 229:17]
      value <= value + 1'h1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Counter.scala 60:40]
      value_1 <= 1'h0; // @[Counter.scala 60:40]
    end else if (do_deq) begin // @[Decoupled.scala 233:17]
      value_1 <= value_1 + 1'h1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Decoupled.scala 221:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 221:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 236:28]
      maybe_full <= do_enq; // @[Decoupled.scala 237:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_data[initvar] = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_resp[initvar] = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_last[initvar] = _RAND_3[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  value = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  value_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  maybe_full = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AXI4Buffer(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [31:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  input         auto_in_aw_bits_lock,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [31:0] auto_in_w_bits_data,
  input  [3:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [31:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_ar_bits_lock,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [31:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output        auto_in_r_bits_last,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output [3:0]  auto_out_aw_bits_id,
  output [31:0] auto_out_aw_bits_addr,
  output [7:0]  auto_out_aw_bits_len,
  output [2:0]  auto_out_aw_bits_size,
  output [1:0]  auto_out_aw_bits_burst,
  output        auto_out_aw_bits_lock,
  output [3:0]  auto_out_aw_bits_cache,
  output [2:0]  auto_out_aw_bits_prot,
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [31:0] auto_out_w_bits_data,
  output [3:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [3:0]  auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output [3:0]  auto_out_ar_bits_id,
  output [31:0] auto_out_ar_bits_addr,
  output [7:0]  auto_out_ar_bits_len,
  output [2:0]  auto_out_ar_bits_size,
  output [1:0]  auto_out_ar_bits_burst,
  output        auto_out_ar_bits_lock,
  output [3:0]  auto_out_ar_bits_cache,
  output [2:0]  auto_out_ar_bits_prot,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [3:0]  auto_out_r_bits_id,
  input  [31:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input         auto_out_r_bits_last
);
  wire  bundleOut_0_aw_deq_clock; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_aw_deq_reset; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_aw_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_aw_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] bundleOut_0_aw_deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [31:0] bundleOut_0_aw_deq_io_enq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] bundleOut_0_aw_deq_io_enq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] bundleOut_0_aw_deq_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] bundleOut_0_aw_deq_io_enq_bits_burst; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_aw_deq_io_enq_bits_lock; // @[Decoupled.scala 296:21]
  wire [3:0] bundleOut_0_aw_deq_io_enq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] bundleOut_0_aw_deq_io_enq_bits_prot; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_aw_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_aw_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] bundleOut_0_aw_deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [31:0] bundleOut_0_aw_deq_io_deq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] bundleOut_0_aw_deq_io_deq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] bundleOut_0_aw_deq_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] bundleOut_0_aw_deq_io_deq_bits_burst; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_aw_deq_io_deq_bits_lock; // @[Decoupled.scala 296:21]
  wire [3:0] bundleOut_0_aw_deq_io_deq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] bundleOut_0_aw_deq_io_deq_bits_prot; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_w_deq_clock; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_w_deq_reset; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_w_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_w_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [31:0] bundleOut_0_w_deq_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire [3:0] bundleOut_0_w_deq_io_enq_bits_strb; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_w_deq_io_enq_bits_last; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_w_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_w_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [31:0] bundleOut_0_w_deq_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire [3:0] bundleOut_0_w_deq_io_deq_bits_strb; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_w_deq_io_deq_bits_last; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_b_deq_clock; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_b_deq_reset; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_b_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_b_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] bundleIn_0_b_deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [1:0] bundleIn_0_b_deq_io_enq_bits_resp; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_b_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_b_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] bundleIn_0_b_deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [1:0] bundleIn_0_b_deq_io_deq_bits_resp; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_ar_deq_clock; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_ar_deq_reset; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_ar_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_ar_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] bundleOut_0_ar_deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [31:0] bundleOut_0_ar_deq_io_enq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] bundleOut_0_ar_deq_io_enq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] bundleOut_0_ar_deq_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] bundleOut_0_ar_deq_io_enq_bits_burst; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_ar_deq_io_enq_bits_lock; // @[Decoupled.scala 296:21]
  wire [3:0] bundleOut_0_ar_deq_io_enq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] bundleOut_0_ar_deq_io_enq_bits_prot; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_ar_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_ar_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] bundleOut_0_ar_deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [31:0] bundleOut_0_ar_deq_io_deq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] bundleOut_0_ar_deq_io_deq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] bundleOut_0_ar_deq_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] bundleOut_0_ar_deq_io_deq_bits_burst; // @[Decoupled.scala 296:21]
  wire  bundleOut_0_ar_deq_io_deq_bits_lock; // @[Decoupled.scala 296:21]
  wire [3:0] bundleOut_0_ar_deq_io_deq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] bundleOut_0_ar_deq_io_deq_bits_prot; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_r_deq_clock; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_r_deq_reset; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_r_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_r_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] bundleIn_0_r_deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [31:0] bundleIn_0_r_deq_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire [1:0] bundleIn_0_r_deq_io_enq_bits_resp; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_r_deq_io_enq_bits_last; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_r_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_r_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] bundleIn_0_r_deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [31:0] bundleIn_0_r_deq_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire [1:0] bundleIn_0_r_deq_io_deq_bits_resp; // @[Decoupled.scala 296:21]
  wire  bundleIn_0_r_deq_io_deq_bits_last; // @[Decoupled.scala 296:21]
  Queue bundleOut_0_aw_deq ( // @[Decoupled.scala 296:21]
    .clock(bundleOut_0_aw_deq_clock),
    .reset(bundleOut_0_aw_deq_reset),
    .io_enq_ready(bundleOut_0_aw_deq_io_enq_ready),
    .io_enq_valid(bundleOut_0_aw_deq_io_enq_valid),
    .io_enq_bits_id(bundleOut_0_aw_deq_io_enq_bits_id),
    .io_enq_bits_addr(bundleOut_0_aw_deq_io_enq_bits_addr),
    .io_enq_bits_len(bundleOut_0_aw_deq_io_enq_bits_len),
    .io_enq_bits_size(bundleOut_0_aw_deq_io_enq_bits_size),
    .io_enq_bits_burst(bundleOut_0_aw_deq_io_enq_bits_burst),
    .io_enq_bits_lock(bundleOut_0_aw_deq_io_enq_bits_lock),
    .io_enq_bits_cache(bundleOut_0_aw_deq_io_enq_bits_cache),
    .io_enq_bits_prot(bundleOut_0_aw_deq_io_enq_bits_prot),
    .io_deq_ready(bundleOut_0_aw_deq_io_deq_ready),
    .io_deq_valid(bundleOut_0_aw_deq_io_deq_valid),
    .io_deq_bits_id(bundleOut_0_aw_deq_io_deq_bits_id),
    .io_deq_bits_addr(bundleOut_0_aw_deq_io_deq_bits_addr),
    .io_deq_bits_len(bundleOut_0_aw_deq_io_deq_bits_len),
    .io_deq_bits_size(bundleOut_0_aw_deq_io_deq_bits_size),
    .io_deq_bits_burst(bundleOut_0_aw_deq_io_deq_bits_burst),
    .io_deq_bits_lock(bundleOut_0_aw_deq_io_deq_bits_lock),
    .io_deq_bits_cache(bundleOut_0_aw_deq_io_deq_bits_cache),
    .io_deq_bits_prot(bundleOut_0_aw_deq_io_deq_bits_prot)
  );
  Queue_1 bundleOut_0_w_deq ( // @[Decoupled.scala 296:21]
    .clock(bundleOut_0_w_deq_clock),
    .reset(bundleOut_0_w_deq_reset),
    .io_enq_ready(bundleOut_0_w_deq_io_enq_ready),
    .io_enq_valid(bundleOut_0_w_deq_io_enq_valid),
    .io_enq_bits_data(bundleOut_0_w_deq_io_enq_bits_data),
    .io_enq_bits_strb(bundleOut_0_w_deq_io_enq_bits_strb),
    .io_enq_bits_last(bundleOut_0_w_deq_io_enq_bits_last),
    .io_deq_ready(bundleOut_0_w_deq_io_deq_ready),
    .io_deq_valid(bundleOut_0_w_deq_io_deq_valid),
    .io_deq_bits_data(bundleOut_0_w_deq_io_deq_bits_data),
    .io_deq_bits_strb(bundleOut_0_w_deq_io_deq_bits_strb),
    .io_deq_bits_last(bundleOut_0_w_deq_io_deq_bits_last)
  );
  Queue_2 bundleIn_0_b_deq ( // @[Decoupled.scala 296:21]
    .clock(bundleIn_0_b_deq_clock),
    .reset(bundleIn_0_b_deq_reset),
    .io_enq_ready(bundleIn_0_b_deq_io_enq_ready),
    .io_enq_valid(bundleIn_0_b_deq_io_enq_valid),
    .io_enq_bits_id(bundleIn_0_b_deq_io_enq_bits_id),
    .io_enq_bits_resp(bundleIn_0_b_deq_io_enq_bits_resp),
    .io_deq_ready(bundleIn_0_b_deq_io_deq_ready),
    .io_deq_valid(bundleIn_0_b_deq_io_deq_valid),
    .io_deq_bits_id(bundleIn_0_b_deq_io_deq_bits_id),
    .io_deq_bits_resp(bundleIn_0_b_deq_io_deq_bits_resp)
  );
  Queue bundleOut_0_ar_deq ( // @[Decoupled.scala 296:21]
    .clock(bundleOut_0_ar_deq_clock),
    .reset(bundleOut_0_ar_deq_reset),
    .io_enq_ready(bundleOut_0_ar_deq_io_enq_ready),
    .io_enq_valid(bundleOut_0_ar_deq_io_enq_valid),
    .io_enq_bits_id(bundleOut_0_ar_deq_io_enq_bits_id),
    .io_enq_bits_addr(bundleOut_0_ar_deq_io_enq_bits_addr),
    .io_enq_bits_len(bundleOut_0_ar_deq_io_enq_bits_len),
    .io_enq_bits_size(bundleOut_0_ar_deq_io_enq_bits_size),
    .io_enq_bits_burst(bundleOut_0_ar_deq_io_enq_bits_burst),
    .io_enq_bits_lock(bundleOut_0_ar_deq_io_enq_bits_lock),
    .io_enq_bits_cache(bundleOut_0_ar_deq_io_enq_bits_cache),
    .io_enq_bits_prot(bundleOut_0_ar_deq_io_enq_bits_prot),
    .io_deq_ready(bundleOut_0_ar_deq_io_deq_ready),
    .io_deq_valid(bundleOut_0_ar_deq_io_deq_valid),
    .io_deq_bits_id(bundleOut_0_ar_deq_io_deq_bits_id),
    .io_deq_bits_addr(bundleOut_0_ar_deq_io_deq_bits_addr),
    .io_deq_bits_len(bundleOut_0_ar_deq_io_deq_bits_len),
    .io_deq_bits_size(bundleOut_0_ar_deq_io_deq_bits_size),
    .io_deq_bits_burst(bundleOut_0_ar_deq_io_deq_bits_burst),
    .io_deq_bits_lock(bundleOut_0_ar_deq_io_deq_bits_lock),
    .io_deq_bits_cache(bundleOut_0_ar_deq_io_deq_bits_cache),
    .io_deq_bits_prot(bundleOut_0_ar_deq_io_deq_bits_prot)
  );
  Queue_4 bundleIn_0_r_deq ( // @[Decoupled.scala 296:21]
    .clock(bundleIn_0_r_deq_clock),
    .reset(bundleIn_0_r_deq_reset),
    .io_enq_ready(bundleIn_0_r_deq_io_enq_ready),
    .io_enq_valid(bundleIn_0_r_deq_io_enq_valid),
    .io_enq_bits_id(bundleIn_0_r_deq_io_enq_bits_id),
    .io_enq_bits_data(bundleIn_0_r_deq_io_enq_bits_data),
    .io_enq_bits_resp(bundleIn_0_r_deq_io_enq_bits_resp),
    .io_enq_bits_last(bundleIn_0_r_deq_io_enq_bits_last),
    .io_deq_ready(bundleIn_0_r_deq_io_deq_ready),
    .io_deq_valid(bundleIn_0_r_deq_io_deq_valid),
    .io_deq_bits_id(bundleIn_0_r_deq_io_deq_bits_id),
    .io_deq_bits_data(bundleIn_0_r_deq_io_deq_bits_data),
    .io_deq_bits_resp(bundleIn_0_r_deq_io_deq_bits_resp),
    .io_deq_bits_last(bundleIn_0_r_deq_io_deq_bits_last)
  );
  assign auto_in_aw_ready = bundleOut_0_aw_deq_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 299:17]
  assign auto_in_w_ready = bundleOut_0_w_deq_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 299:17]
  assign auto_in_b_valid = bundleIn_0_b_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_in_b_bits_id = bundleIn_0_b_deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_b_bits_resp = bundleIn_0_b_deq_io_deq_bits_resp; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_ar_ready = bundleOut_0_ar_deq_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 299:17]
  assign auto_in_r_valid = bundleIn_0_r_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_in_r_bits_id = bundleIn_0_r_deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_r_bits_data = bundleIn_0_r_deq_io_deq_bits_data; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_r_bits_resp = bundleIn_0_r_deq_io_deq_bits_resp; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_r_bits_last = bundleIn_0_r_deq_io_deq_bits_last; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_valid = bundleOut_0_aw_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_out_aw_bits_id = bundleOut_0_aw_deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_addr = bundleOut_0_aw_deq_io_deq_bits_addr; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_len = bundleOut_0_aw_deq_io_deq_bits_len; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_size = bundleOut_0_aw_deq_io_deq_bits_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_burst = bundleOut_0_aw_deq_io_deq_bits_burst; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_lock = bundleOut_0_aw_deq_io_deq_bits_lock; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_cache = bundleOut_0_aw_deq_io_deq_bits_cache; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_prot = bundleOut_0_aw_deq_io_deq_bits_prot; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_valid = bundleOut_0_w_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_out_w_bits_data = bundleOut_0_w_deq_io_deq_bits_data; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_bits_strb = bundleOut_0_w_deq_io_deq_bits_strb; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_bits_last = bundleOut_0_w_deq_io_deq_bits_last; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_b_ready = bundleIn_0_b_deq_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 299:17]
  assign auto_out_ar_valid = bundleOut_0_ar_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_out_ar_bits_id = bundleOut_0_ar_deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_addr = bundleOut_0_ar_deq_io_deq_bits_addr; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_len = bundleOut_0_ar_deq_io_deq_bits_len; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_size = bundleOut_0_ar_deq_io_deq_bits_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_burst = bundleOut_0_ar_deq_io_deq_bits_burst; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_lock = bundleOut_0_ar_deq_io_deq_bits_lock; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_cache = bundleOut_0_ar_deq_io_deq_bits_cache; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_prot = bundleOut_0_ar_deq_io_deq_bits_prot; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_r_ready = bundleIn_0_r_deq_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 299:17]
  assign bundleOut_0_aw_deq_clock = clock;
  assign bundleOut_0_aw_deq_reset = reset;
  assign bundleOut_0_aw_deq_io_enq_valid = auto_in_aw_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_deq_io_enq_bits_id = auto_in_aw_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_deq_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_deq_io_enq_bits_len = auto_in_aw_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_deq_io_enq_bits_size = auto_in_aw_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_deq_io_enq_bits_burst = auto_in_aw_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_deq_io_enq_bits_lock = auto_in_aw_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_deq_io_enq_bits_cache = auto_in_aw_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_deq_io_enq_bits_prot = auto_in_aw_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_deq_io_deq_ready = auto_out_aw_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_w_deq_clock = clock;
  assign bundleOut_0_w_deq_reset = reset;
  assign bundleOut_0_w_deq_io_enq_valid = auto_in_w_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_deq_io_enq_bits_data = auto_in_w_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_deq_io_enq_bits_strb = auto_in_w_bits_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_deq_io_enq_bits_last = auto_in_w_bits_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_deq_io_deq_ready = auto_out_w_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_deq_clock = clock;
  assign bundleIn_0_b_deq_reset = reset;
  assign bundleIn_0_b_deq_io_enq_valid = auto_out_b_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_deq_io_enq_bits_id = auto_out_b_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_deq_io_enq_bits_resp = auto_out_b_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_deq_io_deq_ready = auto_in_b_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_deq_clock = clock;
  assign bundleOut_0_ar_deq_reset = reset;
  assign bundleOut_0_ar_deq_io_enq_valid = auto_in_ar_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_deq_io_enq_bits_id = auto_in_ar_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_deq_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_deq_io_enq_bits_len = auto_in_ar_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_deq_io_enq_bits_size = auto_in_ar_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_deq_io_enq_bits_burst = auto_in_ar_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_deq_io_enq_bits_lock = auto_in_ar_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_deq_io_enq_bits_cache = auto_in_ar_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_deq_io_enq_bits_prot = auto_in_ar_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_deq_io_deq_ready = auto_out_ar_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_deq_clock = clock;
  assign bundleIn_0_r_deq_reset = reset;
  assign bundleIn_0_r_deq_io_enq_valid = auto_out_r_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_deq_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_deq_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_deq_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_deq_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_deq_io_deq_ready = auto_in_r_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
endmodule
module SocLite(
  input         clock,
  input         reset,
  output [31:0] debug_wb_pc,
  output        debug_wb_rf_wen,
  output [4:0]  debug_wb_rf_wnum,
  output [31:0] debug_wb_rf_wdata
);
  wire  axi_cpu_clock; // @[SocLite.scala 12:27]
  wire  axi_cpu_reset; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_aw_ready; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_aw_valid; // @[SocLite.scala 12:27]
  wire [3:0] axi_cpu_auto_out_aw_bits_id; // @[SocLite.scala 12:27]
  wire [31:0] axi_cpu_auto_out_aw_bits_addr; // @[SocLite.scala 12:27]
  wire [7:0] axi_cpu_auto_out_aw_bits_len; // @[SocLite.scala 12:27]
  wire [2:0] axi_cpu_auto_out_aw_bits_size; // @[SocLite.scala 12:27]
  wire [1:0] axi_cpu_auto_out_aw_bits_burst; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_aw_bits_lock; // @[SocLite.scala 12:27]
  wire [3:0] axi_cpu_auto_out_aw_bits_cache; // @[SocLite.scala 12:27]
  wire [2:0] axi_cpu_auto_out_aw_bits_prot; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_w_ready; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_w_valid; // @[SocLite.scala 12:27]
  wire [31:0] axi_cpu_auto_out_w_bits_data; // @[SocLite.scala 12:27]
  wire [3:0] axi_cpu_auto_out_w_bits_strb; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_w_bits_last; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_b_ready; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_b_valid; // @[SocLite.scala 12:27]
  wire [3:0] axi_cpu_auto_out_b_bits_id; // @[SocLite.scala 12:27]
  wire [1:0] axi_cpu_auto_out_b_bits_resp; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_ar_ready; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_ar_valid; // @[SocLite.scala 12:27]
  wire [3:0] axi_cpu_auto_out_ar_bits_id; // @[SocLite.scala 12:27]
  wire [31:0] axi_cpu_auto_out_ar_bits_addr; // @[SocLite.scala 12:27]
  wire [7:0] axi_cpu_auto_out_ar_bits_len; // @[SocLite.scala 12:27]
  wire [2:0] axi_cpu_auto_out_ar_bits_size; // @[SocLite.scala 12:27]
  wire [1:0] axi_cpu_auto_out_ar_bits_burst; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_ar_bits_lock; // @[SocLite.scala 12:27]
  wire [3:0] axi_cpu_auto_out_ar_bits_cache; // @[SocLite.scala 12:27]
  wire [2:0] axi_cpu_auto_out_ar_bits_prot; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_r_ready; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_r_valid; // @[SocLite.scala 12:27]
  wire [3:0] axi_cpu_auto_out_r_bits_id; // @[SocLite.scala 12:27]
  wire [31:0] axi_cpu_auto_out_r_bits_data; // @[SocLite.scala 12:27]
  wire [1:0] axi_cpu_auto_out_r_bits_resp; // @[SocLite.scala 12:27]
  wire  axi_cpu_auto_out_r_bits_last; // @[SocLite.scala 12:27]
  wire [31:0] axi_cpu_debug_wb_pc; // @[SocLite.scala 12:27]
  wire  axi_cpu_debug_wb_rf_wen; // @[SocLite.scala 12:27]
  wire [4:0] axi_cpu_debug_wb_rf_wnum; // @[SocLite.scala 12:27]
  wire [31:0] axi_cpu_debug_wb_rf_wdata; // @[SocLite.scala 12:27]
  wire  axi4xbar_clock; // @[Xbar.scala 218:30]
  wire  axi4xbar_reset; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_aw_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_aw_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_in_aw_bits_id; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_in_aw_bits_addr; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_in_aw_bits_len; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_in_aw_bits_size; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_in_aw_bits_burst; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_aw_bits_lock; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_in_aw_bits_cache; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_in_aw_bits_prot; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_w_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_w_valid; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_in_w_bits_data; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_in_w_bits_strb; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_w_bits_last; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_b_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_b_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_in_b_bits_id; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_in_b_bits_resp; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_ar_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_ar_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_in_ar_bits_id; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_in_ar_bits_addr; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_in_ar_bits_len; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_in_ar_bits_size; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_in_ar_bits_burst; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_ar_bits_lock; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_in_ar_bits_cache; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_in_ar_bits_prot; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_r_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_r_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_in_r_bits_id; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_in_r_bits_data; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_in_r_bits_resp; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_r_bits_last; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_aw_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_aw_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_1_aw_bits_id; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_out_1_aw_bits_addr; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_out_1_aw_bits_len; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_out_1_aw_bits_size; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_1_aw_bits_burst; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_aw_bits_lock; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_1_aw_bits_cache; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_out_1_aw_bits_prot; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_w_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_w_valid; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_out_1_w_bits_data; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_1_w_bits_strb; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_w_bits_last; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_b_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_b_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_1_b_bits_id; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_1_b_bits_resp; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_ar_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_ar_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_1_ar_bits_id; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_out_1_ar_bits_addr; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_out_1_ar_bits_len; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_out_1_ar_bits_size; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_1_ar_bits_burst; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_ar_bits_lock; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_1_ar_bits_cache; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_out_1_ar_bits_prot; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_r_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_r_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_1_r_bits_id; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_out_1_r_bits_data; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_1_r_bits_resp; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_1_r_bits_last; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_aw_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_aw_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_0_aw_bits_id; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_out_0_aw_bits_addr; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_out_0_aw_bits_len; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_out_0_aw_bits_size; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_0_aw_bits_burst; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_aw_bits_lock; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_0_aw_bits_cache; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_out_0_aw_bits_prot; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_w_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_w_valid; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_out_0_w_bits_data; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_0_w_bits_strb; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_w_bits_last; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_b_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_b_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_0_b_bits_id; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_0_b_bits_resp; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_ar_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_ar_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_0_ar_bits_id; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_out_0_ar_bits_addr; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_out_0_ar_bits_len; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_out_0_ar_bits_size; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_0_ar_bits_burst; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_ar_bits_lock; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_0_ar_bits_cache; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_out_0_ar_bits_prot; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_r_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_r_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_0_r_bits_id; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_out_0_r_bits_data; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_0_r_bits_resp; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_r_bits_last; // @[Xbar.scala 218:30]
  wire  axi_ram_clock; // @[SocLite.scala 17:27]
  wire  axi_ram_reset; // @[SocLite.scala 17:27]
  wire  axi_ram_auto_in_aw_ready; // @[SocLite.scala 17:27]
  wire  axi_ram_auto_in_aw_valid; // @[SocLite.scala 17:27]
  wire [3:0] axi_ram_auto_in_aw_bits_id; // @[SocLite.scala 17:27]
  wire [31:0] axi_ram_auto_in_aw_bits_addr; // @[SocLite.scala 17:27]
  wire  axi_ram_auto_in_w_ready; // @[SocLite.scala 17:27]
  wire  axi_ram_auto_in_w_valid; // @[SocLite.scala 17:27]
  wire [31:0] axi_ram_auto_in_w_bits_data; // @[SocLite.scala 17:27]
  wire [3:0] axi_ram_auto_in_w_bits_strb; // @[SocLite.scala 17:27]
  wire  axi_ram_auto_in_w_bits_last; // @[SocLite.scala 17:27]
  wire  axi_ram_auto_in_b_ready; // @[SocLite.scala 17:27]
  wire  axi_ram_auto_in_b_valid; // @[SocLite.scala 17:27]
  wire [3:0] axi_ram_auto_in_b_bits_id; // @[SocLite.scala 17:27]
  wire  axi_ram_auto_in_ar_ready; // @[SocLite.scala 17:27]
  wire  axi_ram_auto_in_ar_valid; // @[SocLite.scala 17:27]
  wire [3:0] axi_ram_auto_in_ar_bits_id; // @[SocLite.scala 17:27]
  wire [31:0] axi_ram_auto_in_ar_bits_addr; // @[SocLite.scala 17:27]
  wire [7:0] axi_ram_auto_in_ar_bits_len; // @[SocLite.scala 17:27]
  wire [2:0] axi_ram_auto_in_ar_bits_size; // @[SocLite.scala 17:27]
  wire [1:0] axi_ram_auto_in_ar_bits_burst; // @[SocLite.scala 17:27]
  wire  axi_ram_auto_in_r_ready; // @[SocLite.scala 17:27]
  wire  axi_ram_auto_in_r_valid; // @[SocLite.scala 17:27]
  wire [3:0] axi_ram_auto_in_r_bits_id; // @[SocLite.scala 17:27]
  wire [31:0] axi_ram_auto_in_r_bits_data; // @[SocLite.scala 17:27]
  wire  axi_ram_auto_in_r_bits_last; // @[SocLite.scala 17:27]
  wire  confreg_wrapper_clock; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_aw_ready; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_aw_valid; // @[SocLite.scala 18:35]
  wire [3:0] confreg_wrapper_auto_in_aw_bits_id; // @[SocLite.scala 18:35]
  wire [31:0] confreg_wrapper_auto_in_aw_bits_addr; // @[SocLite.scala 18:35]
  wire [7:0] confreg_wrapper_auto_in_aw_bits_len; // @[SocLite.scala 18:35]
  wire [2:0] confreg_wrapper_auto_in_aw_bits_size; // @[SocLite.scala 18:35]
  wire [1:0] confreg_wrapper_auto_in_aw_bits_burst; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_aw_bits_lock; // @[SocLite.scala 18:35]
  wire [3:0] confreg_wrapper_auto_in_aw_bits_cache; // @[SocLite.scala 18:35]
  wire [2:0] confreg_wrapper_auto_in_aw_bits_prot; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_w_ready; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_w_valid; // @[SocLite.scala 18:35]
  wire [31:0] confreg_wrapper_auto_in_w_bits_data; // @[SocLite.scala 18:35]
  wire [3:0] confreg_wrapper_auto_in_w_bits_strb; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_w_bits_last; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_b_ready; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_b_valid; // @[SocLite.scala 18:35]
  wire [3:0] confreg_wrapper_auto_in_b_bits_id; // @[SocLite.scala 18:35]
  wire [1:0] confreg_wrapper_auto_in_b_bits_resp; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_ar_ready; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_ar_valid; // @[SocLite.scala 18:35]
  wire [3:0] confreg_wrapper_auto_in_ar_bits_id; // @[SocLite.scala 18:35]
  wire [31:0] confreg_wrapper_auto_in_ar_bits_addr; // @[SocLite.scala 18:35]
  wire [7:0] confreg_wrapper_auto_in_ar_bits_len; // @[SocLite.scala 18:35]
  wire [2:0] confreg_wrapper_auto_in_ar_bits_size; // @[SocLite.scala 18:35]
  wire [1:0] confreg_wrapper_auto_in_ar_bits_burst; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_ar_bits_lock; // @[SocLite.scala 18:35]
  wire [3:0] confreg_wrapper_auto_in_ar_bits_cache; // @[SocLite.scala 18:35]
  wire [2:0] confreg_wrapper_auto_in_ar_bits_prot; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_r_ready; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_r_valid; // @[SocLite.scala 18:35]
  wire [3:0] confreg_wrapper_auto_in_r_bits_id; // @[SocLite.scala 18:35]
  wire [31:0] confreg_wrapper_auto_in_r_bits_data; // @[SocLite.scala 18:35]
  wire [1:0] confreg_wrapper_auto_in_r_bits_resp; // @[SocLite.scala 18:35]
  wire  confreg_wrapper_auto_in_r_bits_last; // @[SocLite.scala 18:35]
  wire  axi4buf_clock; // @[Buffer.scala 58:29]
  wire  axi4buf_reset; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_aw_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_aw_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_in_aw_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_auto_in_aw_bits_addr; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_auto_in_aw_bits_len; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_auto_in_aw_bits_size; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_auto_in_aw_bits_burst; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_aw_bits_lock; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_in_aw_bits_cache; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_auto_in_aw_bits_prot; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_w_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_w_valid; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_auto_in_w_bits_data; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_in_w_bits_strb; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_w_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_b_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_b_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_in_b_bits_id; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_auto_in_b_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_ar_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_ar_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_in_ar_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_auto_in_ar_bits_addr; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_auto_in_ar_bits_len; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_auto_in_ar_bits_size; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_auto_in_ar_bits_burst; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_ar_bits_lock; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_in_ar_bits_cache; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_auto_in_ar_bits_prot; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_r_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_r_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_in_r_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_auto_in_r_bits_data; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_auto_in_r_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_r_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_aw_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_aw_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_out_aw_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_auto_out_aw_bits_addr; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_auto_out_aw_bits_len; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_auto_out_aw_bits_size; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_auto_out_aw_bits_burst; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_aw_bits_lock; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_out_aw_bits_cache; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_auto_out_aw_bits_prot; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_w_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_w_valid; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_auto_out_w_bits_data; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_out_w_bits_strb; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_w_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_b_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_b_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_out_b_bits_id; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_auto_out_b_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_ar_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_ar_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_out_ar_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_auto_out_ar_bits_addr; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_auto_out_ar_bits_len; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_auto_out_ar_bits_size; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_auto_out_ar_bits_burst; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_ar_bits_lock; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_out_ar_bits_cache; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_auto_out_ar_bits_prot; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_r_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_r_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_out_r_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_auto_out_r_bits_data; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_auto_out_r_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_r_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_1_clock; // @[Buffer.scala 58:29]
  wire  axi4buf_1_reset; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_aw_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_aw_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_in_aw_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_1_auto_in_aw_bits_addr; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_1_auto_in_aw_bits_len; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_1_auto_in_aw_bits_size; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_1_auto_in_aw_bits_burst; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_aw_bits_lock; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_in_aw_bits_cache; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_1_auto_in_aw_bits_prot; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_w_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_w_valid; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_1_auto_in_w_bits_data; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_in_w_bits_strb; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_w_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_b_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_b_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_in_b_bits_id; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_1_auto_in_b_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_ar_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_ar_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_in_ar_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_1_auto_in_ar_bits_addr; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_1_auto_in_ar_bits_len; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_1_auto_in_ar_bits_size; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_1_auto_in_ar_bits_burst; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_ar_bits_lock; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_in_ar_bits_cache; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_1_auto_in_ar_bits_prot; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_r_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_r_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_in_r_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_1_auto_in_r_bits_data; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_1_auto_in_r_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_in_r_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_aw_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_aw_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_out_aw_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_1_auto_out_aw_bits_addr; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_1_auto_out_aw_bits_len; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_1_auto_out_aw_bits_size; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_1_auto_out_aw_bits_burst; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_aw_bits_lock; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_out_aw_bits_cache; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_1_auto_out_aw_bits_prot; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_w_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_w_valid; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_1_auto_out_w_bits_data; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_out_w_bits_strb; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_w_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_b_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_b_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_out_b_bits_id; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_1_auto_out_b_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_ar_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_ar_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_out_ar_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_1_auto_out_ar_bits_addr; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_1_auto_out_ar_bits_len; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_1_auto_out_ar_bits_size; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_1_auto_out_ar_bits_burst; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_ar_bits_lock; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_out_ar_bits_cache; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_1_auto_out_ar_bits_prot; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_r_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_r_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_1_auto_out_r_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_1_auto_out_r_bits_data; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_1_auto_out_r_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_1_auto_out_r_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_2_clock; // @[Buffer.scala 58:29]
  wire  axi4buf_2_reset; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_aw_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_aw_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_in_aw_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_2_auto_in_aw_bits_addr; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_2_auto_in_aw_bits_len; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_2_auto_in_aw_bits_size; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_2_auto_in_aw_bits_burst; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_aw_bits_lock; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_in_aw_bits_cache; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_2_auto_in_aw_bits_prot; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_w_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_w_valid; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_2_auto_in_w_bits_data; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_in_w_bits_strb; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_w_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_b_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_b_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_in_b_bits_id; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_2_auto_in_b_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_ar_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_ar_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_in_ar_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_2_auto_in_ar_bits_addr; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_2_auto_in_ar_bits_len; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_2_auto_in_ar_bits_size; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_2_auto_in_ar_bits_burst; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_ar_bits_lock; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_in_ar_bits_cache; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_2_auto_in_ar_bits_prot; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_r_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_r_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_in_r_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_2_auto_in_r_bits_data; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_2_auto_in_r_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_in_r_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_aw_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_aw_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_out_aw_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_2_auto_out_aw_bits_addr; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_2_auto_out_aw_bits_len; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_2_auto_out_aw_bits_size; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_2_auto_out_aw_bits_burst; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_aw_bits_lock; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_out_aw_bits_cache; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_2_auto_out_aw_bits_prot; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_w_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_w_valid; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_2_auto_out_w_bits_data; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_out_w_bits_strb; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_w_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_b_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_b_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_out_b_bits_id; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_2_auto_out_b_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_ar_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_ar_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_out_ar_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_2_auto_out_ar_bits_addr; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_2_auto_out_ar_bits_len; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_2_auto_out_ar_bits_size; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_2_auto_out_ar_bits_burst; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_ar_bits_lock; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_out_ar_bits_cache; // @[Buffer.scala 58:29]
  wire [2:0] axi4buf_2_auto_out_ar_bits_prot; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_r_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_r_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_2_auto_out_r_bits_id; // @[Buffer.scala 58:29]
  wire [31:0] axi4buf_2_auto_out_r_bits_data; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_2_auto_out_r_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_2_auto_out_r_bits_last; // @[Buffer.scala 58:29]
  CPU axi_cpu ( // @[SocLite.scala 12:27]
    .clock(axi_cpu_clock),
    .reset(axi_cpu_reset),
    .auto_out_aw_ready(axi_cpu_auto_out_aw_ready),
    .auto_out_aw_valid(axi_cpu_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi_cpu_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi_cpu_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi_cpu_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi_cpu_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi_cpu_auto_out_aw_bits_burst),
    .auto_out_aw_bits_lock(axi_cpu_auto_out_aw_bits_lock),
    .auto_out_aw_bits_cache(axi_cpu_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(axi_cpu_auto_out_aw_bits_prot),
    .auto_out_w_ready(axi_cpu_auto_out_w_ready),
    .auto_out_w_valid(axi_cpu_auto_out_w_valid),
    .auto_out_w_bits_data(axi_cpu_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi_cpu_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi_cpu_auto_out_w_bits_last),
    .auto_out_b_ready(axi_cpu_auto_out_b_ready),
    .auto_out_b_valid(axi_cpu_auto_out_b_valid),
    .auto_out_b_bits_id(axi_cpu_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi_cpu_auto_out_b_bits_resp),
    .auto_out_ar_ready(axi_cpu_auto_out_ar_ready),
    .auto_out_ar_valid(axi_cpu_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi_cpu_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi_cpu_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi_cpu_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi_cpu_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi_cpu_auto_out_ar_bits_burst),
    .auto_out_ar_bits_lock(axi_cpu_auto_out_ar_bits_lock),
    .auto_out_ar_bits_cache(axi_cpu_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(axi_cpu_auto_out_ar_bits_prot),
    .auto_out_r_ready(axi_cpu_auto_out_r_ready),
    .auto_out_r_valid(axi_cpu_auto_out_r_valid),
    .auto_out_r_bits_id(axi_cpu_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi_cpu_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi_cpu_auto_out_r_bits_resp),
    .auto_out_r_bits_last(axi_cpu_auto_out_r_bits_last),
    .debug_wb_pc(axi_cpu_debug_wb_pc),
    .debug_wb_rf_wen(axi_cpu_debug_wb_rf_wen),
    .debug_wb_rf_wnum(axi_cpu_debug_wb_rf_wnum),
    .debug_wb_rf_wdata(axi_cpu_debug_wb_rf_wdata)
  );
  AXI4Xbar axi4xbar ( // @[Xbar.scala 218:30]
    .clock(axi4xbar_clock),
    .reset(axi4xbar_reset),
    .auto_in_aw_ready(axi4xbar_auto_in_aw_ready),
    .auto_in_aw_valid(axi4xbar_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4xbar_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4xbar_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4xbar_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4xbar_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4xbar_auto_in_aw_bits_burst),
    .auto_in_aw_bits_lock(axi4xbar_auto_in_aw_bits_lock),
    .auto_in_aw_bits_cache(axi4xbar_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4xbar_auto_in_aw_bits_prot),
    .auto_in_w_ready(axi4xbar_auto_in_w_ready),
    .auto_in_w_valid(axi4xbar_auto_in_w_valid),
    .auto_in_w_bits_data(axi4xbar_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4xbar_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4xbar_auto_in_w_bits_last),
    .auto_in_b_ready(axi4xbar_auto_in_b_ready),
    .auto_in_b_valid(axi4xbar_auto_in_b_valid),
    .auto_in_b_bits_id(axi4xbar_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4xbar_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4xbar_auto_in_ar_ready),
    .auto_in_ar_valid(axi4xbar_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4xbar_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4xbar_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4xbar_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4xbar_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4xbar_auto_in_ar_bits_burst),
    .auto_in_ar_bits_lock(axi4xbar_auto_in_ar_bits_lock),
    .auto_in_ar_bits_cache(axi4xbar_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4xbar_auto_in_ar_bits_prot),
    .auto_in_r_ready(axi4xbar_auto_in_r_ready),
    .auto_in_r_valid(axi4xbar_auto_in_r_valid),
    .auto_in_r_bits_id(axi4xbar_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4xbar_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4xbar_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4xbar_auto_in_r_bits_last),
    .auto_out_1_aw_ready(axi4xbar_auto_out_1_aw_ready),
    .auto_out_1_aw_valid(axi4xbar_auto_out_1_aw_valid),
    .auto_out_1_aw_bits_id(axi4xbar_auto_out_1_aw_bits_id),
    .auto_out_1_aw_bits_addr(axi4xbar_auto_out_1_aw_bits_addr),
    .auto_out_1_aw_bits_len(axi4xbar_auto_out_1_aw_bits_len),
    .auto_out_1_aw_bits_size(axi4xbar_auto_out_1_aw_bits_size),
    .auto_out_1_aw_bits_burst(axi4xbar_auto_out_1_aw_bits_burst),
    .auto_out_1_aw_bits_lock(axi4xbar_auto_out_1_aw_bits_lock),
    .auto_out_1_aw_bits_cache(axi4xbar_auto_out_1_aw_bits_cache),
    .auto_out_1_aw_bits_prot(axi4xbar_auto_out_1_aw_bits_prot),
    .auto_out_1_w_ready(axi4xbar_auto_out_1_w_ready),
    .auto_out_1_w_valid(axi4xbar_auto_out_1_w_valid),
    .auto_out_1_w_bits_data(axi4xbar_auto_out_1_w_bits_data),
    .auto_out_1_w_bits_strb(axi4xbar_auto_out_1_w_bits_strb),
    .auto_out_1_w_bits_last(axi4xbar_auto_out_1_w_bits_last),
    .auto_out_1_b_ready(axi4xbar_auto_out_1_b_ready),
    .auto_out_1_b_valid(axi4xbar_auto_out_1_b_valid),
    .auto_out_1_b_bits_id(axi4xbar_auto_out_1_b_bits_id),
    .auto_out_1_b_bits_resp(axi4xbar_auto_out_1_b_bits_resp),
    .auto_out_1_ar_ready(axi4xbar_auto_out_1_ar_ready),
    .auto_out_1_ar_valid(axi4xbar_auto_out_1_ar_valid),
    .auto_out_1_ar_bits_id(axi4xbar_auto_out_1_ar_bits_id),
    .auto_out_1_ar_bits_addr(axi4xbar_auto_out_1_ar_bits_addr),
    .auto_out_1_ar_bits_len(axi4xbar_auto_out_1_ar_bits_len),
    .auto_out_1_ar_bits_size(axi4xbar_auto_out_1_ar_bits_size),
    .auto_out_1_ar_bits_burst(axi4xbar_auto_out_1_ar_bits_burst),
    .auto_out_1_ar_bits_lock(axi4xbar_auto_out_1_ar_bits_lock),
    .auto_out_1_ar_bits_cache(axi4xbar_auto_out_1_ar_bits_cache),
    .auto_out_1_ar_bits_prot(axi4xbar_auto_out_1_ar_bits_prot),
    .auto_out_1_r_ready(axi4xbar_auto_out_1_r_ready),
    .auto_out_1_r_valid(axi4xbar_auto_out_1_r_valid),
    .auto_out_1_r_bits_id(axi4xbar_auto_out_1_r_bits_id),
    .auto_out_1_r_bits_data(axi4xbar_auto_out_1_r_bits_data),
    .auto_out_1_r_bits_resp(axi4xbar_auto_out_1_r_bits_resp),
    .auto_out_1_r_bits_last(axi4xbar_auto_out_1_r_bits_last),
    .auto_out_0_aw_ready(axi4xbar_auto_out_0_aw_ready),
    .auto_out_0_aw_valid(axi4xbar_auto_out_0_aw_valid),
    .auto_out_0_aw_bits_id(axi4xbar_auto_out_0_aw_bits_id),
    .auto_out_0_aw_bits_addr(axi4xbar_auto_out_0_aw_bits_addr),
    .auto_out_0_aw_bits_len(axi4xbar_auto_out_0_aw_bits_len),
    .auto_out_0_aw_bits_size(axi4xbar_auto_out_0_aw_bits_size),
    .auto_out_0_aw_bits_burst(axi4xbar_auto_out_0_aw_bits_burst),
    .auto_out_0_aw_bits_lock(axi4xbar_auto_out_0_aw_bits_lock),
    .auto_out_0_aw_bits_cache(axi4xbar_auto_out_0_aw_bits_cache),
    .auto_out_0_aw_bits_prot(axi4xbar_auto_out_0_aw_bits_prot),
    .auto_out_0_w_ready(axi4xbar_auto_out_0_w_ready),
    .auto_out_0_w_valid(axi4xbar_auto_out_0_w_valid),
    .auto_out_0_w_bits_data(axi4xbar_auto_out_0_w_bits_data),
    .auto_out_0_w_bits_strb(axi4xbar_auto_out_0_w_bits_strb),
    .auto_out_0_w_bits_last(axi4xbar_auto_out_0_w_bits_last),
    .auto_out_0_b_ready(axi4xbar_auto_out_0_b_ready),
    .auto_out_0_b_valid(axi4xbar_auto_out_0_b_valid),
    .auto_out_0_b_bits_id(axi4xbar_auto_out_0_b_bits_id),
    .auto_out_0_b_bits_resp(axi4xbar_auto_out_0_b_bits_resp),
    .auto_out_0_ar_ready(axi4xbar_auto_out_0_ar_ready),
    .auto_out_0_ar_valid(axi4xbar_auto_out_0_ar_valid),
    .auto_out_0_ar_bits_id(axi4xbar_auto_out_0_ar_bits_id),
    .auto_out_0_ar_bits_addr(axi4xbar_auto_out_0_ar_bits_addr),
    .auto_out_0_ar_bits_len(axi4xbar_auto_out_0_ar_bits_len),
    .auto_out_0_ar_bits_size(axi4xbar_auto_out_0_ar_bits_size),
    .auto_out_0_ar_bits_burst(axi4xbar_auto_out_0_ar_bits_burst),
    .auto_out_0_ar_bits_lock(axi4xbar_auto_out_0_ar_bits_lock),
    .auto_out_0_ar_bits_cache(axi4xbar_auto_out_0_ar_bits_cache),
    .auto_out_0_ar_bits_prot(axi4xbar_auto_out_0_ar_bits_prot),
    .auto_out_0_r_ready(axi4xbar_auto_out_0_r_ready),
    .auto_out_0_r_valid(axi4xbar_auto_out_0_r_valid),
    .auto_out_0_r_bits_id(axi4xbar_auto_out_0_r_bits_id),
    .auto_out_0_r_bits_data(axi4xbar_auto_out_0_r_bits_data),
    .auto_out_0_r_bits_resp(axi4xbar_auto_out_0_r_bits_resp),
    .auto_out_0_r_bits_last(axi4xbar_auto_out_0_r_bits_last)
  );
  SimSRAM axi_ram ( // @[SocLite.scala 17:27]
    .clock(axi_ram_clock),
    .reset(axi_ram_reset),
    .auto_in_aw_ready(axi_ram_auto_in_aw_ready),
    .auto_in_aw_valid(axi_ram_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi_ram_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi_ram_auto_in_aw_bits_addr),
    .auto_in_w_ready(axi_ram_auto_in_w_ready),
    .auto_in_w_valid(axi_ram_auto_in_w_valid),
    .auto_in_w_bits_data(axi_ram_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi_ram_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi_ram_auto_in_w_bits_last),
    .auto_in_b_ready(axi_ram_auto_in_b_ready),
    .auto_in_b_valid(axi_ram_auto_in_b_valid),
    .auto_in_b_bits_id(axi_ram_auto_in_b_bits_id),
    .auto_in_ar_ready(axi_ram_auto_in_ar_ready),
    .auto_in_ar_valid(axi_ram_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi_ram_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi_ram_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi_ram_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi_ram_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi_ram_auto_in_ar_bits_burst),
    .auto_in_r_ready(axi_ram_auto_in_r_ready),
    .auto_in_r_valid(axi_ram_auto_in_r_valid),
    .auto_in_r_bits_id(axi_ram_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi_ram_auto_in_r_bits_data),
    .auto_in_r_bits_last(axi_ram_auto_in_r_bits_last)
  );
  ConfregWrapper confreg_wrapper ( // @[SocLite.scala 18:35]
    .clock(confreg_wrapper_clock),
    .auto_in_aw_ready(confreg_wrapper_auto_in_aw_ready),
    .auto_in_aw_valid(confreg_wrapper_auto_in_aw_valid),
    .auto_in_aw_bits_id(confreg_wrapper_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(confreg_wrapper_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(confreg_wrapper_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(confreg_wrapper_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(confreg_wrapper_auto_in_aw_bits_burst),
    .auto_in_aw_bits_lock(confreg_wrapper_auto_in_aw_bits_lock),
    .auto_in_aw_bits_cache(confreg_wrapper_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(confreg_wrapper_auto_in_aw_bits_prot),
    .auto_in_w_ready(confreg_wrapper_auto_in_w_ready),
    .auto_in_w_valid(confreg_wrapper_auto_in_w_valid),
    .auto_in_w_bits_data(confreg_wrapper_auto_in_w_bits_data),
    .auto_in_w_bits_strb(confreg_wrapper_auto_in_w_bits_strb),
    .auto_in_w_bits_last(confreg_wrapper_auto_in_w_bits_last),
    .auto_in_b_ready(confreg_wrapper_auto_in_b_ready),
    .auto_in_b_valid(confreg_wrapper_auto_in_b_valid),
    .auto_in_b_bits_id(confreg_wrapper_auto_in_b_bits_id),
    .auto_in_b_bits_resp(confreg_wrapper_auto_in_b_bits_resp),
    .auto_in_ar_ready(confreg_wrapper_auto_in_ar_ready),
    .auto_in_ar_valid(confreg_wrapper_auto_in_ar_valid),
    .auto_in_ar_bits_id(confreg_wrapper_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(confreg_wrapper_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(confreg_wrapper_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(confreg_wrapper_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(confreg_wrapper_auto_in_ar_bits_burst),
    .auto_in_ar_bits_lock(confreg_wrapper_auto_in_ar_bits_lock),
    .auto_in_ar_bits_cache(confreg_wrapper_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(confreg_wrapper_auto_in_ar_bits_prot),
    .auto_in_r_ready(confreg_wrapper_auto_in_r_ready),
    .auto_in_r_valid(confreg_wrapper_auto_in_r_valid),
    .auto_in_r_bits_id(confreg_wrapper_auto_in_r_bits_id),
    .auto_in_r_bits_data(confreg_wrapper_auto_in_r_bits_data),
    .auto_in_r_bits_resp(confreg_wrapper_auto_in_r_bits_resp),
    .auto_in_r_bits_last(confreg_wrapper_auto_in_r_bits_last)
  );
  AXI4Buffer axi4buf ( // @[Buffer.scala 58:29]
    .clock(axi4buf_clock),
    .reset(axi4buf_reset),
    .auto_in_aw_ready(axi4buf_auto_in_aw_ready),
    .auto_in_aw_valid(axi4buf_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4buf_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4buf_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4buf_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4buf_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4buf_auto_in_aw_bits_burst),
    .auto_in_aw_bits_lock(axi4buf_auto_in_aw_bits_lock),
    .auto_in_aw_bits_cache(axi4buf_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4buf_auto_in_aw_bits_prot),
    .auto_in_w_ready(axi4buf_auto_in_w_ready),
    .auto_in_w_valid(axi4buf_auto_in_w_valid),
    .auto_in_w_bits_data(axi4buf_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4buf_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4buf_auto_in_w_bits_last),
    .auto_in_b_ready(axi4buf_auto_in_b_ready),
    .auto_in_b_valid(axi4buf_auto_in_b_valid),
    .auto_in_b_bits_id(axi4buf_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4buf_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4buf_auto_in_ar_ready),
    .auto_in_ar_valid(axi4buf_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4buf_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4buf_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4buf_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4buf_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4buf_auto_in_ar_bits_burst),
    .auto_in_ar_bits_lock(axi4buf_auto_in_ar_bits_lock),
    .auto_in_ar_bits_cache(axi4buf_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4buf_auto_in_ar_bits_prot),
    .auto_in_r_ready(axi4buf_auto_in_r_ready),
    .auto_in_r_valid(axi4buf_auto_in_r_valid),
    .auto_in_r_bits_id(axi4buf_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4buf_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4buf_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4buf_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4buf_auto_out_aw_ready),
    .auto_out_aw_valid(axi4buf_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4buf_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4buf_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4buf_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4buf_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi4buf_auto_out_aw_bits_burst),
    .auto_out_aw_bits_lock(axi4buf_auto_out_aw_bits_lock),
    .auto_out_aw_bits_cache(axi4buf_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(axi4buf_auto_out_aw_bits_prot),
    .auto_out_w_ready(axi4buf_auto_out_w_ready),
    .auto_out_w_valid(axi4buf_auto_out_w_valid),
    .auto_out_w_bits_data(axi4buf_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4buf_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4buf_auto_out_w_bits_last),
    .auto_out_b_ready(axi4buf_auto_out_b_ready),
    .auto_out_b_valid(axi4buf_auto_out_b_valid),
    .auto_out_b_bits_id(axi4buf_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4buf_auto_out_b_bits_resp),
    .auto_out_ar_ready(axi4buf_auto_out_ar_ready),
    .auto_out_ar_valid(axi4buf_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4buf_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4buf_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4buf_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4buf_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi4buf_auto_out_ar_bits_burst),
    .auto_out_ar_bits_lock(axi4buf_auto_out_ar_bits_lock),
    .auto_out_ar_bits_cache(axi4buf_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(axi4buf_auto_out_ar_bits_prot),
    .auto_out_r_ready(axi4buf_auto_out_r_ready),
    .auto_out_r_valid(axi4buf_auto_out_r_valid),
    .auto_out_r_bits_id(axi4buf_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4buf_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4buf_auto_out_r_bits_resp),
    .auto_out_r_bits_last(axi4buf_auto_out_r_bits_last)
  );
  AXI4Buffer axi4buf_1 ( // @[Buffer.scala 58:29]
    .clock(axi4buf_1_clock),
    .reset(axi4buf_1_reset),
    .auto_in_aw_ready(axi4buf_1_auto_in_aw_ready),
    .auto_in_aw_valid(axi4buf_1_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4buf_1_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4buf_1_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4buf_1_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4buf_1_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4buf_1_auto_in_aw_bits_burst),
    .auto_in_aw_bits_lock(axi4buf_1_auto_in_aw_bits_lock),
    .auto_in_aw_bits_cache(axi4buf_1_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4buf_1_auto_in_aw_bits_prot),
    .auto_in_w_ready(axi4buf_1_auto_in_w_ready),
    .auto_in_w_valid(axi4buf_1_auto_in_w_valid),
    .auto_in_w_bits_data(axi4buf_1_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4buf_1_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4buf_1_auto_in_w_bits_last),
    .auto_in_b_ready(axi4buf_1_auto_in_b_ready),
    .auto_in_b_valid(axi4buf_1_auto_in_b_valid),
    .auto_in_b_bits_id(axi4buf_1_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4buf_1_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4buf_1_auto_in_ar_ready),
    .auto_in_ar_valid(axi4buf_1_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4buf_1_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4buf_1_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4buf_1_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4buf_1_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4buf_1_auto_in_ar_bits_burst),
    .auto_in_ar_bits_lock(axi4buf_1_auto_in_ar_bits_lock),
    .auto_in_ar_bits_cache(axi4buf_1_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4buf_1_auto_in_ar_bits_prot),
    .auto_in_r_ready(axi4buf_1_auto_in_r_ready),
    .auto_in_r_valid(axi4buf_1_auto_in_r_valid),
    .auto_in_r_bits_id(axi4buf_1_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4buf_1_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4buf_1_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4buf_1_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4buf_1_auto_out_aw_ready),
    .auto_out_aw_valid(axi4buf_1_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4buf_1_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4buf_1_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4buf_1_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4buf_1_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi4buf_1_auto_out_aw_bits_burst),
    .auto_out_aw_bits_lock(axi4buf_1_auto_out_aw_bits_lock),
    .auto_out_aw_bits_cache(axi4buf_1_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(axi4buf_1_auto_out_aw_bits_prot),
    .auto_out_w_ready(axi4buf_1_auto_out_w_ready),
    .auto_out_w_valid(axi4buf_1_auto_out_w_valid),
    .auto_out_w_bits_data(axi4buf_1_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4buf_1_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4buf_1_auto_out_w_bits_last),
    .auto_out_b_ready(axi4buf_1_auto_out_b_ready),
    .auto_out_b_valid(axi4buf_1_auto_out_b_valid),
    .auto_out_b_bits_id(axi4buf_1_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4buf_1_auto_out_b_bits_resp),
    .auto_out_ar_ready(axi4buf_1_auto_out_ar_ready),
    .auto_out_ar_valid(axi4buf_1_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4buf_1_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4buf_1_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4buf_1_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4buf_1_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi4buf_1_auto_out_ar_bits_burst),
    .auto_out_ar_bits_lock(axi4buf_1_auto_out_ar_bits_lock),
    .auto_out_ar_bits_cache(axi4buf_1_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(axi4buf_1_auto_out_ar_bits_prot),
    .auto_out_r_ready(axi4buf_1_auto_out_r_ready),
    .auto_out_r_valid(axi4buf_1_auto_out_r_valid),
    .auto_out_r_bits_id(axi4buf_1_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4buf_1_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4buf_1_auto_out_r_bits_resp),
    .auto_out_r_bits_last(axi4buf_1_auto_out_r_bits_last)
  );
  AXI4Buffer axi4buf_2 ( // @[Buffer.scala 58:29]
    .clock(axi4buf_2_clock),
    .reset(axi4buf_2_reset),
    .auto_in_aw_ready(axi4buf_2_auto_in_aw_ready),
    .auto_in_aw_valid(axi4buf_2_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4buf_2_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4buf_2_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4buf_2_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4buf_2_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4buf_2_auto_in_aw_bits_burst),
    .auto_in_aw_bits_lock(axi4buf_2_auto_in_aw_bits_lock),
    .auto_in_aw_bits_cache(axi4buf_2_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4buf_2_auto_in_aw_bits_prot),
    .auto_in_w_ready(axi4buf_2_auto_in_w_ready),
    .auto_in_w_valid(axi4buf_2_auto_in_w_valid),
    .auto_in_w_bits_data(axi4buf_2_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4buf_2_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4buf_2_auto_in_w_bits_last),
    .auto_in_b_ready(axi4buf_2_auto_in_b_ready),
    .auto_in_b_valid(axi4buf_2_auto_in_b_valid),
    .auto_in_b_bits_id(axi4buf_2_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4buf_2_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4buf_2_auto_in_ar_ready),
    .auto_in_ar_valid(axi4buf_2_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4buf_2_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4buf_2_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4buf_2_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4buf_2_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4buf_2_auto_in_ar_bits_burst),
    .auto_in_ar_bits_lock(axi4buf_2_auto_in_ar_bits_lock),
    .auto_in_ar_bits_cache(axi4buf_2_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4buf_2_auto_in_ar_bits_prot),
    .auto_in_r_ready(axi4buf_2_auto_in_r_ready),
    .auto_in_r_valid(axi4buf_2_auto_in_r_valid),
    .auto_in_r_bits_id(axi4buf_2_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4buf_2_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4buf_2_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4buf_2_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4buf_2_auto_out_aw_ready),
    .auto_out_aw_valid(axi4buf_2_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4buf_2_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4buf_2_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4buf_2_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4buf_2_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi4buf_2_auto_out_aw_bits_burst),
    .auto_out_aw_bits_lock(axi4buf_2_auto_out_aw_bits_lock),
    .auto_out_aw_bits_cache(axi4buf_2_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(axi4buf_2_auto_out_aw_bits_prot),
    .auto_out_w_ready(axi4buf_2_auto_out_w_ready),
    .auto_out_w_valid(axi4buf_2_auto_out_w_valid),
    .auto_out_w_bits_data(axi4buf_2_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4buf_2_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4buf_2_auto_out_w_bits_last),
    .auto_out_b_ready(axi4buf_2_auto_out_b_ready),
    .auto_out_b_valid(axi4buf_2_auto_out_b_valid),
    .auto_out_b_bits_id(axi4buf_2_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4buf_2_auto_out_b_bits_resp),
    .auto_out_ar_ready(axi4buf_2_auto_out_ar_ready),
    .auto_out_ar_valid(axi4buf_2_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4buf_2_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4buf_2_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4buf_2_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4buf_2_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi4buf_2_auto_out_ar_bits_burst),
    .auto_out_ar_bits_lock(axi4buf_2_auto_out_ar_bits_lock),
    .auto_out_ar_bits_cache(axi4buf_2_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(axi4buf_2_auto_out_ar_bits_prot),
    .auto_out_r_ready(axi4buf_2_auto_out_r_ready),
    .auto_out_r_valid(axi4buf_2_auto_out_r_valid),
    .auto_out_r_bits_id(axi4buf_2_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4buf_2_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4buf_2_auto_out_r_bits_resp),
    .auto_out_r_bits_last(axi4buf_2_auto_out_r_bits_last)
  );
  assign debug_wb_pc = axi_cpu_debug_wb_pc; // @[SocLite.scala 26:11]
  assign debug_wb_rf_wen = axi_cpu_debug_wb_rf_wen; // @[SocLite.scala 26:11]
  assign debug_wb_rf_wnum = axi_cpu_debug_wb_rf_wnum; // @[SocLite.scala 26:11]
  assign debug_wb_rf_wdata = axi_cpu_debug_wb_rf_wdata; // @[SocLite.scala 26:11]
  assign axi_cpu_clock = clock;
  assign axi_cpu_reset = reset;
  assign axi_cpu_auto_out_aw_ready = axi4buf_auto_in_aw_ready; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_w_ready = axi4buf_auto_in_w_ready; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_b_valid = axi4buf_auto_in_b_valid; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_b_bits_id = axi4buf_auto_in_b_bits_id; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_b_bits_resp = axi4buf_auto_in_b_bits_resp; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_ar_ready = axi4buf_auto_in_ar_ready; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_r_valid = axi4buf_auto_in_r_valid; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_r_bits_id = axi4buf_auto_in_r_bits_id; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_r_bits_data = axi4buf_auto_in_r_bits_data; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_r_bits_resp = axi4buf_auto_in_r_bits_resp; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_r_bits_last = axi4buf_auto_in_r_bits_last; // @[LazyModule.scala 298:16]
  assign axi4xbar_clock = clock;
  assign axi4xbar_reset = reset;
  assign axi4xbar_auto_in_aw_valid = axi4buf_auto_out_aw_valid; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_aw_bits_id = axi4buf_auto_out_aw_bits_id; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_aw_bits_addr = axi4buf_auto_out_aw_bits_addr; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_aw_bits_len = axi4buf_auto_out_aw_bits_len; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_aw_bits_size = axi4buf_auto_out_aw_bits_size; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_aw_bits_burst = axi4buf_auto_out_aw_bits_burst; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_aw_bits_lock = axi4buf_auto_out_aw_bits_lock; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_aw_bits_cache = axi4buf_auto_out_aw_bits_cache; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_aw_bits_prot = axi4buf_auto_out_aw_bits_prot; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_w_valid = axi4buf_auto_out_w_valid; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_w_bits_data = axi4buf_auto_out_w_bits_data; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_w_bits_strb = axi4buf_auto_out_w_bits_strb; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_w_bits_last = axi4buf_auto_out_w_bits_last; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_b_ready = axi4buf_auto_out_b_ready; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_ar_valid = axi4buf_auto_out_ar_valid; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_ar_bits_id = axi4buf_auto_out_ar_bits_id; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_ar_bits_addr = axi4buf_auto_out_ar_bits_addr; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_ar_bits_len = axi4buf_auto_out_ar_bits_len; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_ar_bits_size = axi4buf_auto_out_ar_bits_size; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_ar_bits_burst = axi4buf_auto_out_ar_bits_burst; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_ar_bits_lock = axi4buf_auto_out_ar_bits_lock; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_ar_bits_cache = axi4buf_auto_out_ar_bits_cache; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_ar_bits_prot = axi4buf_auto_out_ar_bits_prot; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_in_r_ready = axi4buf_auto_out_r_ready; // @[LazyModule.scala 296:16]
  assign axi4xbar_auto_out_1_aw_ready = axi4buf_2_auto_in_aw_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_w_ready = axi4buf_2_auto_in_w_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_b_valid = axi4buf_2_auto_in_b_valid; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_b_bits_id = axi4buf_2_auto_in_b_bits_id; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_b_bits_resp = axi4buf_2_auto_in_b_bits_resp; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_ar_ready = axi4buf_2_auto_in_ar_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_r_valid = axi4buf_2_auto_in_r_valid; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_r_bits_id = axi4buf_2_auto_in_r_bits_id; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_r_bits_data = axi4buf_2_auto_in_r_bits_data; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_r_bits_resp = axi4buf_2_auto_in_r_bits_resp; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_r_bits_last = axi4buf_2_auto_in_r_bits_last; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_aw_ready = axi4buf_1_auto_in_aw_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_w_ready = axi4buf_1_auto_in_w_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_b_valid = axi4buf_1_auto_in_b_valid; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_b_bits_id = axi4buf_1_auto_in_b_bits_id; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_b_bits_resp = axi4buf_1_auto_in_b_bits_resp; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_ar_ready = axi4buf_1_auto_in_ar_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_r_valid = axi4buf_1_auto_in_r_valid; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_r_bits_id = axi4buf_1_auto_in_r_bits_id; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_r_bits_data = axi4buf_1_auto_in_r_bits_data; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_r_bits_resp = axi4buf_1_auto_in_r_bits_resp; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_r_bits_last = axi4buf_1_auto_in_r_bits_last; // @[LazyModule.scala 298:16]
  assign axi_ram_clock = clock;
  assign axi_ram_reset = reset;
  assign axi_ram_auto_in_aw_valid = axi4buf_1_auto_out_aw_valid; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_aw_bits_id = axi4buf_1_auto_out_aw_bits_id; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_aw_bits_addr = axi4buf_1_auto_out_aw_bits_addr; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_w_valid = axi4buf_1_auto_out_w_valid; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_w_bits_data = axi4buf_1_auto_out_w_bits_data; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_w_bits_strb = axi4buf_1_auto_out_w_bits_strb; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_w_bits_last = axi4buf_1_auto_out_w_bits_last; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_b_ready = axi4buf_1_auto_out_b_ready; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_ar_valid = axi4buf_1_auto_out_ar_valid; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_ar_bits_id = axi4buf_1_auto_out_ar_bits_id; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_ar_bits_addr = axi4buf_1_auto_out_ar_bits_addr; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_ar_bits_len = axi4buf_1_auto_out_ar_bits_len; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_ar_bits_size = axi4buf_1_auto_out_ar_bits_size; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_ar_bits_burst = axi4buf_1_auto_out_ar_bits_burst; // @[LazyModule.scala 296:16]
  assign axi_ram_auto_in_r_ready = axi4buf_1_auto_out_r_ready; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_clock = clock;
  assign confreg_wrapper_auto_in_aw_valid = axi4buf_2_auto_out_aw_valid; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_aw_bits_id = axi4buf_2_auto_out_aw_bits_id; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_aw_bits_addr = axi4buf_2_auto_out_aw_bits_addr; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_aw_bits_len = axi4buf_2_auto_out_aw_bits_len; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_aw_bits_size = axi4buf_2_auto_out_aw_bits_size; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_aw_bits_burst = axi4buf_2_auto_out_aw_bits_burst; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_aw_bits_lock = axi4buf_2_auto_out_aw_bits_lock; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_aw_bits_cache = axi4buf_2_auto_out_aw_bits_cache; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_aw_bits_prot = axi4buf_2_auto_out_aw_bits_prot; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_w_valid = axi4buf_2_auto_out_w_valid; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_w_bits_data = axi4buf_2_auto_out_w_bits_data; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_w_bits_strb = axi4buf_2_auto_out_w_bits_strb; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_w_bits_last = axi4buf_2_auto_out_w_bits_last; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_b_ready = axi4buf_2_auto_out_b_ready; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_ar_valid = axi4buf_2_auto_out_ar_valid; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_ar_bits_id = axi4buf_2_auto_out_ar_bits_id; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_ar_bits_addr = axi4buf_2_auto_out_ar_bits_addr; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_ar_bits_len = axi4buf_2_auto_out_ar_bits_len; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_ar_bits_size = axi4buf_2_auto_out_ar_bits_size; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_ar_bits_burst = axi4buf_2_auto_out_ar_bits_burst; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_ar_bits_lock = axi4buf_2_auto_out_ar_bits_lock; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_ar_bits_cache = axi4buf_2_auto_out_ar_bits_cache; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_ar_bits_prot = axi4buf_2_auto_out_ar_bits_prot; // @[LazyModule.scala 296:16]
  assign confreg_wrapper_auto_in_r_ready = axi4buf_2_auto_out_r_ready; // @[LazyModule.scala 296:16]
  assign axi4buf_clock = clock;
  assign axi4buf_reset = reset;
  assign axi4buf_auto_in_aw_valid = axi_cpu_auto_out_aw_valid; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_aw_bits_id = axi_cpu_auto_out_aw_bits_id; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_aw_bits_addr = axi_cpu_auto_out_aw_bits_addr; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_aw_bits_len = axi_cpu_auto_out_aw_bits_len; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_aw_bits_size = axi_cpu_auto_out_aw_bits_size; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_aw_bits_burst = axi_cpu_auto_out_aw_bits_burst; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_aw_bits_lock = axi_cpu_auto_out_aw_bits_lock; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_aw_bits_cache = axi_cpu_auto_out_aw_bits_cache; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_aw_bits_prot = axi_cpu_auto_out_aw_bits_prot; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_w_valid = axi_cpu_auto_out_w_valid; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_w_bits_data = axi_cpu_auto_out_w_bits_data; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_w_bits_strb = axi_cpu_auto_out_w_bits_strb; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_w_bits_last = axi_cpu_auto_out_w_bits_last; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_b_ready = axi_cpu_auto_out_b_ready; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_ar_valid = axi_cpu_auto_out_ar_valid; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_ar_bits_id = axi_cpu_auto_out_ar_bits_id; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_ar_bits_addr = axi_cpu_auto_out_ar_bits_addr; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_ar_bits_len = axi_cpu_auto_out_ar_bits_len; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_ar_bits_size = axi_cpu_auto_out_ar_bits_size; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_ar_bits_burst = axi_cpu_auto_out_ar_bits_burst; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_ar_bits_lock = axi_cpu_auto_out_ar_bits_lock; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_ar_bits_cache = axi_cpu_auto_out_ar_bits_cache; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_ar_bits_prot = axi_cpu_auto_out_ar_bits_prot; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_in_r_ready = axi_cpu_auto_out_r_ready; // @[LazyModule.scala 298:16]
  assign axi4buf_auto_out_aw_ready = axi4xbar_auto_in_aw_ready; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_out_w_ready = axi4xbar_auto_in_w_ready; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_out_b_valid = axi4xbar_auto_in_b_valid; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_out_b_bits_id = axi4xbar_auto_in_b_bits_id; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_out_b_bits_resp = axi4xbar_auto_in_b_bits_resp; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_out_ar_ready = axi4xbar_auto_in_ar_ready; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_out_r_valid = axi4xbar_auto_in_r_valid; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_out_r_bits_id = axi4xbar_auto_in_r_bits_id; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_out_r_bits_data = axi4xbar_auto_in_r_bits_data; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_out_r_bits_resp = axi4xbar_auto_in_r_bits_resp; // @[LazyModule.scala 296:16]
  assign axi4buf_auto_out_r_bits_last = axi4xbar_auto_in_r_bits_last; // @[LazyModule.scala 296:16]
  assign axi4buf_1_clock = clock;
  assign axi4buf_1_reset = reset;
  assign axi4buf_1_auto_in_aw_valid = axi4xbar_auto_out_0_aw_valid; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_aw_bits_id = axi4xbar_auto_out_0_aw_bits_id; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_aw_bits_addr = axi4xbar_auto_out_0_aw_bits_addr; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_aw_bits_len = axi4xbar_auto_out_0_aw_bits_len; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_aw_bits_size = axi4xbar_auto_out_0_aw_bits_size; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_aw_bits_burst = axi4xbar_auto_out_0_aw_bits_burst; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_aw_bits_lock = axi4xbar_auto_out_0_aw_bits_lock; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_aw_bits_cache = axi4xbar_auto_out_0_aw_bits_cache; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_aw_bits_prot = axi4xbar_auto_out_0_aw_bits_prot; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_w_valid = axi4xbar_auto_out_0_w_valid; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_w_bits_data = axi4xbar_auto_out_0_w_bits_data; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_w_bits_strb = axi4xbar_auto_out_0_w_bits_strb; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_w_bits_last = axi4xbar_auto_out_0_w_bits_last; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_b_ready = axi4xbar_auto_out_0_b_ready; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_ar_valid = axi4xbar_auto_out_0_ar_valid; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_ar_bits_id = axi4xbar_auto_out_0_ar_bits_id; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_ar_bits_addr = axi4xbar_auto_out_0_ar_bits_addr; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_ar_bits_len = axi4xbar_auto_out_0_ar_bits_len; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_ar_bits_size = axi4xbar_auto_out_0_ar_bits_size; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_ar_bits_burst = axi4xbar_auto_out_0_ar_bits_burst; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_ar_bits_lock = axi4xbar_auto_out_0_ar_bits_lock; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_ar_bits_cache = axi4xbar_auto_out_0_ar_bits_cache; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_ar_bits_prot = axi4xbar_auto_out_0_ar_bits_prot; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_in_r_ready = axi4xbar_auto_out_0_r_ready; // @[LazyModule.scala 298:16]
  assign axi4buf_1_auto_out_aw_ready = axi_ram_auto_in_aw_ready; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_w_ready = axi_ram_auto_in_w_ready; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_b_valid = axi_ram_auto_in_b_valid; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_b_bits_id = axi_ram_auto_in_b_bits_id; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_b_bits_resp = 2'h0; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_ar_ready = axi_ram_auto_in_ar_ready; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_r_valid = axi_ram_auto_in_r_valid; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_r_bits_id = axi_ram_auto_in_r_bits_id; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_r_bits_data = axi_ram_auto_in_r_bits_data; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_r_bits_resp = 2'h0; // @[LazyModule.scala 296:16]
  assign axi4buf_1_auto_out_r_bits_last = axi_ram_auto_in_r_bits_last; // @[LazyModule.scala 296:16]
  assign axi4buf_2_clock = clock;
  assign axi4buf_2_reset = reset;
  assign axi4buf_2_auto_in_aw_valid = axi4xbar_auto_out_1_aw_valid; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_aw_bits_id = axi4xbar_auto_out_1_aw_bits_id; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_aw_bits_addr = axi4xbar_auto_out_1_aw_bits_addr; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_aw_bits_len = axi4xbar_auto_out_1_aw_bits_len; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_aw_bits_size = axi4xbar_auto_out_1_aw_bits_size; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_aw_bits_burst = axi4xbar_auto_out_1_aw_bits_burst; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_aw_bits_lock = axi4xbar_auto_out_1_aw_bits_lock; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_aw_bits_cache = axi4xbar_auto_out_1_aw_bits_cache; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_aw_bits_prot = axi4xbar_auto_out_1_aw_bits_prot; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_w_valid = axi4xbar_auto_out_1_w_valid; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_w_bits_data = axi4xbar_auto_out_1_w_bits_data; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_w_bits_strb = axi4xbar_auto_out_1_w_bits_strb; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_w_bits_last = axi4xbar_auto_out_1_w_bits_last; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_b_ready = axi4xbar_auto_out_1_b_ready; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_ar_valid = axi4xbar_auto_out_1_ar_valid; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_ar_bits_id = axi4xbar_auto_out_1_ar_bits_id; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_ar_bits_addr = axi4xbar_auto_out_1_ar_bits_addr; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_ar_bits_len = axi4xbar_auto_out_1_ar_bits_len; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_ar_bits_size = axi4xbar_auto_out_1_ar_bits_size; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_ar_bits_burst = axi4xbar_auto_out_1_ar_bits_burst; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_ar_bits_lock = axi4xbar_auto_out_1_ar_bits_lock; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_ar_bits_cache = axi4xbar_auto_out_1_ar_bits_cache; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_ar_bits_prot = axi4xbar_auto_out_1_ar_bits_prot; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_in_r_ready = axi4xbar_auto_out_1_r_ready; // @[LazyModule.scala 298:16]
  assign axi4buf_2_auto_out_aw_ready = confreg_wrapper_auto_in_aw_ready; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_w_ready = confreg_wrapper_auto_in_w_ready; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_b_valid = confreg_wrapper_auto_in_b_valid; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_b_bits_id = confreg_wrapper_auto_in_b_bits_id; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_b_bits_resp = confreg_wrapper_auto_in_b_bits_resp; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_ar_ready = confreg_wrapper_auto_in_ar_ready; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_r_valid = confreg_wrapper_auto_in_r_valid; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_r_bits_id = confreg_wrapper_auto_in_r_bits_id; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_r_bits_data = confreg_wrapper_auto_in_r_bits_data; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_r_bits_resp = confreg_wrapper_auto_in_r_bits_resp; // @[LazyModule.scala 296:16]
  assign axi4buf_2_auto_out_r_bits_last = confreg_wrapper_auto_in_r_bits_last; // @[LazyModule.scala 296:16]
endmodule
