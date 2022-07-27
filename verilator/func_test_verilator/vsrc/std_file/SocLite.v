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
  wire [3:0] my_cpu_cpu_ar_id; // @[SocLite.scala 82:24]
  wire [31:0] my_cpu_cpu_ar_addr; // @[SocLite.scala 82:24]
  wire [7:0] my_cpu_cpu_ar_len; // @[SocLite.scala 82:24]
  wire [2:0] my_cpu_cpu_ar_size; // @[SocLite.scala 82:24]
  wire [1:0] my_cpu_cpu_ar_burst; // @[SocLite.scala 82:24]
  wire my_cpu_cpu_ar_lock; // @[SocLite.scala 82:24]
  wire [3:0] my_cpu_cpu_ar_cache; // @[SocLite.scala 82:24]
  wire [2:0] my_cpu_cpu_ar_prot; // @[SocLite.scala 82:24]
  wire [3:0] my_cpu_cpu_ar_qos; // @[SocLite.scala 82:24]
  wire [3:0] my_cpu_cpu_r_id; // @[SocLite.scala 82:24]
  wire [31:0] my_cpu_cpu_r_data; // @[SocLite.scala 82:24]
  wire [1:0] my_cpu_cpu_r_resp; // @[SocLite.scala 82:24]
  wire  my_cpu_cpu_r_last; // @[SocLite.scala 82:24]
  wire [3:0] my_cpu_cpu_aw_id; // @[SocLite.scala 82:24]
  wire [31:0] my_cpu_cpu_aw_addr; // @[SocLite.scala 82:24]
  wire [7:0] my_cpu_cpu_aw_len; // @[SocLite.scala 82:24]
  wire [2:0] my_cpu_cpu_aw_size; // @[SocLite.scala 82:24]
  wire [1:0] my_cpu_cpu_aw_burst; // @[SocLite.scala 82:24]
  wire my_cpu_cpu_aw_lock; // @[SocLite.scala 82:24]
  wire [3:0] my_cpu_cpu_aw_cache; // @[SocLite.scala 82:24]
  wire [2:0] my_cpu_cpu_aw_prot; // @[SocLite.scala 82:24]
  wire [3:0] my_cpu_cpu_aw_qos; // @[SocLite.scala 82:24]
  wire [31:0] my_cpu_cpu_w_data; // @[SocLite.scala 82:24]
  wire [3:0] my_cpu_cpu_w_strb; // @[SocLite.scala 82:24]
  wire  my_cpu_cpu_w_last; // @[SocLite.scala 82:24]
  wire [3:0] my_cpu_cpu_b_id; // @[SocLite.scala 82:24]
  wire [1:0] my_cpu_cpu_b_resp; // @[SocLite.scala 82:24]
  wire  my_cpu_cpu_ar_valid; // @[SocLite.scala 82:24]
  wire  my_cpu_cpu_aw_valid; // @[SocLite.scala 82:24]
  wire  my_cpu_cpu_w_valid; // @[SocLite.scala 82:24]
  wire  my_cpu_cpu_ar_ready; // @[SocLite.scala 82:24]
  wire  my_cpu_cpu_aw_ready; // @[SocLite.scala 82:24]
  wire  my_cpu_cpu_w_ready; // @[SocLite.scala 82:24]
  wire  my_cpu_cpu_r_valid; // @[SocLite.scala 82:24]
  wire  my_cpu_cpu_b_valid; // @[SocLite.scala 82:24]
  wire  my_cpu_cpu_r_ready; // @[SocLite.scala 82:24]
  wire  my_cpu_cpu_b_ready; // @[SocLite.scala 82:24]
  wire [5:0] my_cpu_ext_int; // @[SocLite.scala 82:24]
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
  assign auto_out_aw_valid = my_cpu_cpu_aw_valid; // @[Nodes.scala 1207:84 SocLite.scala 91:20]
  assign auto_out_aw_bits_id = my_cpu_cpu_aw_id; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_aw_bits_addr = my_cpu_cpu_aw_addr; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_aw_bits_len = my_cpu_cpu_aw_len; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_aw_bits_size = my_cpu_cpu_aw_size; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_aw_bits_burst = my_cpu_cpu_aw_burst; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_aw_bits_lock = my_cpu_cpu_aw_lock; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_aw_bits_cache = my_cpu_cpu_aw_cache; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_aw_bits_prot = my_cpu_cpu_aw_prot; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_w_valid = my_cpu_cpu_w_valid; // @[Nodes.scala 1207:84 SocLite.scala 91:20]
  assign auto_out_w_bits_data = my_cpu_cpu_w_data; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_w_bits_strb = my_cpu_cpu_w_strb; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_w_bits_last = my_cpu_cpu_w_last; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_b_ready = my_cpu_cpu_b_ready; // @[Nodes.scala 1207:84 SocLite.scala 92:20]
  assign auto_out_ar_valid = my_cpu_cpu_ar_valid; // @[Nodes.scala 1207:84 SocLite.scala 91:20]
  assign auto_out_ar_bits_id = my_cpu_cpu_ar_id; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_ar_bits_addr = my_cpu_cpu_ar_addr; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_ar_bits_len = my_cpu_cpu_ar_len; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_ar_bits_size = my_cpu_cpu_ar_size; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_ar_bits_burst = my_cpu_cpu_ar_burst; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_ar_bits_lock = my_cpu_cpu_ar_lock; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_ar_bits_cache = my_cpu_cpu_ar_cache; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_ar_bits_prot = my_cpu_cpu_ar_prot; // @[Nodes.scala 1207:84 SocLite.scala 89:23]
  assign auto_out_r_ready = my_cpu_cpu_r_ready; // @[Nodes.scala 1207:84 SocLite.scala 92:20]
  assign debug_wb_pc = my_cpu_debug_wb_pc; // @[SocLite.scala 97:11]
  assign debug_wb_rf_wen = my_cpu_debug_wb_rf_wen; // @[SocLite.scala 97:11]
  assign debug_wb_rf_wnum = my_cpu_debug_wb_rf_wnum; // @[SocLite.scala 97:11]
  assign debug_wb_rf_wdata = my_cpu_debug_wb_rf_wdata; // @[SocLite.scala 97:11]
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
  assign my_cpu_ext_int = 6'h0; // @[SocLite.scala 94:23]
  assign my_cpu_aclk = clock; // @[SocLite.scala 95:40]
  assign my_cpu_aresetn = ~reset; // @[SocLite.scala 96:26]
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

module SimAXIRAM(
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
  wire  mem_clk; // @[SocLite.scala 324:21]
  wire  mem_en; // @[SocLite.scala 324:21]
  wire [31:0] mem_rIdx; // @[SocLite.scala 324:21]
  wire [31:0] mem_rdata; // @[SocLite.scala 324:21]
  wire [31:0] mem_wIdx; // @[SocLite.scala 324:21]
  wire [31:0] mem_wdata; // @[SocLite.scala 324:21]
  wire [31:0] mem_wmask; // @[SocLite.scala 324:21]
  wire  mem_wen; // @[SocLite.scala 324:21]
  wire [7:0] lo_lo = auto_in_w_bits_strb[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] lo_hi = auto_in_w_bits_strb[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] hi_lo = auto_in_w_bits_strb[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] hi_hi = auto_in_w_bits_strb[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [15:0] lo = {lo_hi,lo_lo}; // @[Cat.scala 30:58]
  wire [15:0] hi = {hi_hi,hi_lo}; // @[Cat.scala 30:58]
  reg [7:0] value; // @[Counter.scala 60:40]
  reg [7:0] value_1; // @[Counter.scala 60:40]
  reg  r_busy; // @[SocLite.scala 219:20]
  wire  in_ar_ready = auto_in_r_ready | ~r_busy; // @[SocLite.scala 269:29]
  wire  _T_8 = in_ar_ready & auto_in_ar_valid; // @[Decoupled.scala 40:37]
  reg [7:0] r; // @[Reg.scala 27:20]
  wire [7:0] _GEN_0 = _T_8 ? auto_in_ar_bits_len : r; // @[Reg.scala 28:19 Reg.scala 28:23 Reg.scala 27:20]
  reg [1:0] r_1; // @[Reg.scala 27:20]
  wire [1:0] _GEN_1 = _T_8 ? auto_in_ar_bits_burst : r_1; // @[Reg.scala 28:19 Reg.scala 28:23 Reg.scala 27:20]
  wire [31:0] _WIRE_2 = {{24'd0}, auto_in_ar_bits_len}; // @[SocLite.scala 247:63 SocLite.scala 247:63]
  wire [38:0] _GEN_22 = {{7'd0}, _WIRE_2}; // @[SocLite.scala 247:94]
  wire [38:0] _T_12 = _GEN_22 << auto_in_ar_bits_size; // @[SocLite.scala 247:94]
  wire [38:0] _T_13 = ~_T_12; // @[SocLite.scala 247:38]
  wire [38:0] _GEN_23 = {{7'd0}, auto_in_ar_bits_addr}; // @[SocLite.scala 247:36]
  wire [38:0] _T_14 = _GEN_23 & _T_13; // @[SocLite.scala 247:36]
  reg [38:0] r_2; // @[Reg.scala 27:20]
  wire [38:0] _GEN_2 = _T_8 ? _T_14 : r_2; // @[Reg.scala 28:19 Reg.scala 28:23 Reg.scala 27:20]
  wire  in_r_bits_last = value == _GEN_0; // @[SocLite.scala 249:32]
  wire [7:0] _value_T_1 = value_1 + 8'h1; // @[Counter.scala 76:24]
  wire [7:0] _GEN_3 = _GEN_1 == 2'h2 & value_1 == _GEN_0 ? 8'h0 : _value_T_1; // @[SocLite.scala 252:75 SocLite.scala 252:91 Counter.scala 76:15]
  reg  REG; // @[SocLite.scala 271:17]
  reg  REG_1; // @[SocLite.scala 219:20]
  wire  _T_42 = auto_in_r_ready & REG_1; // @[Decoupled.scala 40:37]
  wire  ren = REG | _T_42 & ~in_r_bits_last; // @[SocLite.scala 271:46]
  wire [7:0] _GEN_4 = ren ? _GEN_3 : value_1; // @[SocLite.scala 250:16 Counter.scala 60:40]
  wire [7:0] _value_T_3 = value + 8'h1; // @[Counter.scala 76:24]
  wire [31:0] _value_T_4 = auto_in_ar_bits_addr >> auto_in_ar_bits_size; // @[SocLite.scala 259:41]
  wire [31:0] _value_T_5 = _value_T_4 & _WIRE_2; // @[SocLite.scala 259:61]
  wire  _T_25 = auto_in_ar_bits_len != 8'h0 & auto_in_ar_bits_burst == 2'h2; // @[SocLite.scala 260:36]
  wire  _T_29 = auto_in_ar_bits_len == 8'h7; // @[SocLite.scala 262:26]
  wire  _T_30 = auto_in_ar_bits_len == 8'h1 | auto_in_ar_bits_len == 8'h3 | _T_29; // @[SocLite.scala 261:65]
  wire  _T_32 = _T_30 | auto_in_ar_bits_len == 8'hf; // @[SocLite.scala 262:34]
  wire [31:0] _GEN_7 = _T_8 ? _value_T_5 : {{24'd0}, _GEN_4}; // @[SocLite.scala 258:25 SocLite.scala 259:21]
  wire  _T_38 = _T_42 & in_r_bits_last; // @[SocLite.scala 268:56]
  wire  _GEN_8 = _T_38 ? 1'h0 : r_busy; // @[SocLite.scala 221:19 SocLite.scala 221:23 SocLite.scala 219:20]
  wire  _GEN_9 = _T_8 | _GEN_8; // @[SocLite.scala 222:20 SocLite.scala 222:24]
  wire  _T_48 = ren & (_T_8 | r_busy); // @[SocLite.scala 272:35]
  wire  _GEN_10 = _T_42 ? 1'h0 : REG_1; // @[SocLite.scala 221:19 SocLite.scala 221:23 SocLite.scala 219:20]
  wire  _GEN_11 = _T_48 | _GEN_10; // @[SocLite.scala 222:20 SocLite.scala 222:24]
  reg [7:0] value_2; // @[Counter.scala 60:40]
  reg  w_busy; // @[SocLite.scala 219:20]
  wire  in_aw_ready = ~w_busy; // @[SocLite.scala 287:18]
  wire  _T_50 = in_aw_ready & auto_in_aw_valid; // @[Decoupled.scala 40:37]
  reg [31:0] r_3; // @[Reg.scala 27:20]
  wire [31:0] _GEN_12 = _T_50 ? auto_in_aw_bits_addr : r_3; // @[Reg.scala 28:19 Reg.scala 28:23 Reg.scala 27:20]
  wire  in_w_ready = auto_in_aw_valid | w_busy; // @[SocLite.scala 288:30]
  wire _T_52;
  wire _T_71;
  wire [29:0] _GEN_25; 

  assign _T_52 = in_w_ready & auto_in_w_valid; // @[Decoupled.scala 40:37]
  wire [7:0] _value_T_7 = value_2 + 8'h1; // @[Counter.scala 76:24]
  reg  REG_2; // @[SocLite.scala 219:20]
  wire  _T_54 = auto_in_b_ready & REG_2; // @[Decoupled.scala 40:37]
  wire  _GEN_15 = _T_54 ? 1'h0 : w_busy; // @[SocLite.scala 221:19 SocLite.scala 221:23 SocLite.scala 219:20]
  wire  _GEN_16 = _T_50 | _GEN_15; // @[SocLite.scala 222:20 SocLite.scala 222:24]
  wire  _T_58 = _T_52 & auto_in_w_bits_last; // @[SocLite.scala 290:43]
  wire  _GEN_17 = _T_54 ? 1'h0 : REG_2; // @[SocLite.scala 221:19 SocLite.scala 221:23 SocLite.scala 219:20]
  wire  _GEN_18 = _T_58 | _GEN_17; // @[SocLite.scala 222:20 SocLite.scala 222:24]
  reg [3:0] r_4; // @[Reg.scala 15:16]
  reg [3:0] r_6; // @[Reg.scala 15:16]
  wire [31:0] _T_64 = _GEN_12 & 32'hfffff; // @[SocLite.scala 317:36]
  assign _GEN_25 = {{22'd0}, value_2}; // @[SocLite.scala 320:29]
  wire [29:0] wIdx = _T_64[31:2] + _GEN_25; // @[SocLite.scala 320:29]
  wire [38:0] _T_67 = _GEN_2 & 39'hfffff; // @[SocLite.scala 317:36]
  wire [36:0] _GEN_26 = {{29'd0}, value_1}; // @[SocLite.scala 321:29]
  wire [36:0] rIdx = _T_67[38:2] + _GEN_26; // @[SocLite.scala 321:29]
  assign _T_71 = wIdx < 30'h40000; // @[SocLite.scala 318:34]
  reg [31:0] r_8; // @[Reg.scala 15:16]

  RAMHelper mem ( // @[SocLite.scala 324:21]
    .clk(mem_clk),
    .en(mem_en),
    .rIdx(mem_rIdx),
    .rdata(mem_rdata),
    .wIdx(mem_wIdx),
    .wdata(mem_wdata),
    .wmask(mem_wmask),
    .wen(mem_wen)
  );
  assign auto_in_aw_ready = ~w_busy; // @[SocLite.scala 287:18]
  assign auto_in_w_ready = auto_in_aw_valid | w_busy; // @[SocLite.scala 288:30]
  assign auto_in_b_valid = REG_2; // @[Nodes.scala 1210:84 SocLite.scala 290:14]
  assign auto_in_b_bits_id = r_4; // @[Nodes.scala 1210:84 SocLite.scala 292:18]
  assign auto_in_ar_ready = auto_in_r_ready | ~r_busy; // @[SocLite.scala 269:29]
  assign auto_in_r_valid = REG_1; // @[Nodes.scala 1210:84 SocLite.scala 272:14]
  assign auto_in_r_bits_id = r_6; // @[Nodes.scala 1210:84 SocLite.scala 294:18]
  assign auto_in_r_bits_data = r_8; // @[Nodes.scala 1210:84 SocLite.scala 333:20]
  assign auto_in_r_bits_last = value == _GEN_0; // @[SocLite.scala 249:32]
  assign mem_clk = clock; // @[SocLite.scala 325:16]
  assign mem_en = 1'h1;
  assign mem_rIdx = rIdx[31:0]; // @[SocLite.scala 326:17]
  assign mem_wIdx = {{2'd0}, wIdx}; // @[SocLite.scala 320:29]
  assign mem_wdata = auto_in_w_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign mem_wmask = {hi,lo}; // @[Cat.scala 30:58]
  assign mem_wen = _T_52 & _T_71; // @[SocLite.scala 322:27]
  always @(posedge clock) begin
    if (reset) begin // @[Counter.scala 60:40]
      value <= 8'h0; // @[Counter.scala 60:40]
    end else if (_T_42) begin // @[SocLite.scala 254:24]
      if (in_r_bits_last) begin // @[SocLite.scala 256:29]
        value <= 8'h0; // @[SocLite.scala 256:39]
      end else begin
        value <= _value_T_3; // @[Counter.scala 76:15]
      end
    end
    if (reset) begin // @[Counter.scala 60:40]
      value_1 <= 8'h0; // @[Counter.scala 60:40]
    end else begin
      value_1 <= _GEN_7[7:0];
    end
    if (reset) begin // @[SocLite.scala 219:20]
      r_busy <= 1'h0; // @[SocLite.scala 219:20]
    end else begin
      r_busy <= _GEN_9;
    end
    if (reset) begin // @[Reg.scala 27:20]
      r <= 8'h0; // @[Reg.scala 27:20]
    end else if (_T_8) begin // @[Reg.scala 28:19]
      r <= auto_in_ar_bits_len; // @[Reg.scala 28:23]
    end
    if (reset) begin // @[Reg.scala 27:20]
      r_1 <= 2'h0; // @[Reg.scala 27:20]
    end else if (_T_8) begin // @[Reg.scala 28:19]
      r_1 <= auto_in_ar_bits_burst; // @[Reg.scala 28:23]
    end
    if (reset) begin // @[Reg.scala 27:20]
      r_2 <= 39'h0; // @[Reg.scala 27:20]
    end else if (_T_8) begin // @[Reg.scala 28:19]
      r_2 <= _T_14; // @[Reg.scala 28:23]
    end
    if (reset) begin // @[SocLite.scala 271:17]
      REG <= 1'h0; // @[SocLite.scala 271:17]
    end else begin
      REG <= _T_8; // @[SocLite.scala 271:17]
    end
    if (reset) begin // @[SocLite.scala 219:20]
      REG_1 <= 1'h0; // @[SocLite.scala 219:20]
    end else begin
      REG_1 <= _GEN_11;
    end
    if (reset) begin // @[Counter.scala 60:40]
      value_2 <= 8'h0; // @[Counter.scala 60:40]
    end else if (_T_52) begin // @[SocLite.scala 279:24]
      if (auto_in_w_bits_last) begin // @[SocLite.scala 281:29]
        value_2 <= 8'h0; // @[SocLite.scala 281:39]
      end else begin
        value_2 <= _value_T_7; // @[Counter.scala 76:15]
      end
    end
    if (reset) begin // @[SocLite.scala 219:20]
      w_busy <= 1'h0; // @[SocLite.scala 219:20]
    end else begin
      w_busy <= _GEN_16;
    end
    if (reset) begin // @[Reg.scala 27:20]
      r_3 <= 32'h0; // @[Reg.scala 27:20]
    end else if (_T_50) begin // @[Reg.scala 28:19]
      r_3 <= auto_in_aw_bits_addr; // @[Reg.scala 28:23]
    end
    if (reset) begin // @[SocLite.scala 219:20]
      REG_2 <= 1'h0; // @[SocLite.scala 219:20]
    end else begin
      REG_2 <= _GEN_18;
    end
    if (_T_50) begin // @[Reg.scala 16:19]
      r_4 <= auto_in_aw_bits_id; // @[Reg.scala 16:23]
    end
    if (_T_8) begin // @[Reg.scala 16:19]
      r_6 <= auto_in_ar_bits_id; // @[Reg.scala 16:23]
    end
    if (ren) begin // @[Reg.scala 16:19]
      r_8 <= mem_rdata; // @[Reg.scala 16:23]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_8 & _T_25 & ~(_T_32 | reset)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at SocLite.scala:261 assert(in.ar.bits.len === 1.U || in.ar.bits.len === 3.U ||\n"); // @[SocLite.scala 261:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_8 & _T_25 & ~(_T_32 | reset)) begin
          $fatal; // @[SocLite.scala 261:15]
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
  r_2 = _RAND_5[38:0];
  _RAND_6 = {1{`RANDOM}};
  REG = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  REG_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  value_2 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  w_busy = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  r_3 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  REG_2 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  r_4 = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  r_6 = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  r_8 = _RAND_14[31:0];
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
  input         aresetn,
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
  wire  u_confreg_aclk; // @[SocLite.scala 175:27]
  wire  u_confreg_timer_clk; // @[SocLite.scala 175:27]
  wire  u_confreg_aresetn; // @[SocLite.scala 175:27]
  wire [15:0] u_confreg_led; // @[SocLite.scala 175:27]
  wire [1:0] u_confreg_led_rg0; // @[SocLite.scala 175:27]
  wire [1:0] u_confreg_led_rg1; // @[SocLite.scala 175:27]
  wire [7:0] u_confreg_num_csn; // @[SocLite.scala 175:27]
  wire [6:0] u_confreg_num_a_g; // @[SocLite.scala 175:27]
  wire [7:0] u_confreg_switch; // @[SocLite.scala 175:27]
  wire [3:0] u_confreg_btn_key_col; // @[SocLite.scala 175:27]
  wire [3:0] u_confreg_btn_key_row; // @[SocLite.scala 175:27]
  wire [1:0] u_confreg_btn_step; // @[SocLite.scala 175:27]
  wire [4:0] u_confreg_ram_random_mask; // @[SocLite.scala 175:27]
  wire [3:0] u_confreg_arid; // @[SocLite.scala 175:27]
  wire [31:0] u_confreg_araddr; // @[SocLite.scala 175:27]
  wire [7:0] u_confreg_arlen; // @[SocLite.scala 175:27]
  wire [2:0] u_confreg_arsize; // @[SocLite.scala 175:27]
  wire [1:0] u_confreg_arburst; // @[SocLite.scala 175:27]
  wire [1:0] u_confreg_arlock; // @[SocLite.scala 175:27]
  wire [3:0] u_confreg_arcache; // @[SocLite.scala 175:27]
  wire [2:0] u_confreg_arprot; // @[SocLite.scala 175:27]
  wire  u_confreg_arvalid; // @[SocLite.scala 175:27]
  wire  u_confreg_arready; // @[SocLite.scala 175:27]
  wire [3:0] u_confreg_awid; // @[SocLite.scala 175:27]
  wire [31:0] u_confreg_awaddr; // @[SocLite.scala 175:27]
  wire [7:0] u_confreg_awlen; // @[SocLite.scala 175:27]
  wire [2:0] u_confreg_awsize; // @[SocLite.scala 175:27]
  wire [1:0] u_confreg_awburst; // @[SocLite.scala 175:27]
  wire [1:0] u_confreg_awlock; // @[SocLite.scala 175:27]
  wire [3:0] u_confreg_awcache; // @[SocLite.scala 175:27]
  wire [2:0] u_confreg_awprot; // @[SocLite.scala 175:27]
  wire  u_confreg_awvalid; // @[SocLite.scala 175:27]
  wire  u_confreg_awready; // @[SocLite.scala 175:27]
  wire [3:0] u_confreg_rid; // @[SocLite.scala 175:27]
  wire [31:0] u_confreg_rdata; // @[SocLite.scala 175:27]
  wire [1:0] u_confreg_rresp; // @[SocLite.scala 175:27]
  wire  u_confreg_rlast; // @[SocLite.scala 175:27]
  wire  u_confreg_rvalid; // @[SocLite.scala 175:27]
  wire  u_confreg_rready; // @[SocLite.scala 175:27]
  wire [3:0] u_confreg_wid; // @[SocLite.scala 175:27]
  wire [31:0] u_confreg_wdata; // @[SocLite.scala 175:27]
  wire [3:0] u_confreg_wstrb; // @[SocLite.scala 175:27]
  wire  u_confreg_wlast; // @[SocLite.scala 175:27]
  wire  u_confreg_wvalid; // @[SocLite.scala 175:27]
  wire  u_confreg_wready; // @[SocLite.scala 175:27]
  wire [3:0] u_confreg_bid; // @[SocLite.scala 175:27]
  wire [1:0] u_confreg_bresp; // @[SocLite.scala 175:27]
  wire  u_confreg_bvalid; // @[SocLite.scala 175:27]
  wire  u_confreg_bready; // @[SocLite.scala 175:27]
  confreg #(.SIMULATION(1'b1)) u_confreg ( // @[SocLite.scala 175:27]
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
  assign auto_in_aw_ready = u_confreg_awready; // @[Nodes.scala 1210:84 SocLite.scala 195:19]
  assign auto_in_w_ready = u_confreg_wready; // @[Nodes.scala 1210:84 SocLite.scala 195:19]
  assign auto_in_b_valid = u_confreg_bvalid; // @[Nodes.scala 1210:84 SocLite.scala 195:19]
  assign auto_in_b_bits_id = u_confreg_bid; // @[Nodes.scala 1210:84 SocLite.scala 185:19]
  assign auto_in_b_bits_resp = u_confreg_bresp; // @[Nodes.scala 1210:84 SocLite.scala 185:19]
  assign auto_in_ar_ready = u_confreg_arready; // @[Nodes.scala 1210:84 SocLite.scala 195:19]
  assign auto_in_r_valid = u_confreg_rvalid; // @[Nodes.scala 1210:84 SocLite.scala 195:19]
  assign auto_in_r_bits_id = u_confreg_rid; // @[Nodes.scala 1210:84 SocLite.scala 185:19]
  assign auto_in_r_bits_data = u_confreg_rdata; // @[Nodes.scala 1210:84 SocLite.scala 185:19]
  assign auto_in_r_bits_resp = u_confreg_rresp; // @[Nodes.scala 1210:84 SocLite.scala 185:19]
  assign auto_in_r_bits_last = u_confreg_rlast; // @[Nodes.scala 1210:84 SocLite.scala 185:19]
  assign u_confreg_aclk = clock; // @[SocLite.scala 201:43]
  assign u_confreg_timer_clk = 1'h0;
  assign u_confreg_aresetn = ~aresetn;
  assign u_confreg_switch = 8'hff; // @[SocLite.scala 202:25]
  assign u_confreg_btn_key_row = 4'h0; // @[SocLite.scala 203:30]
  assign u_confreg_btn_step = 2'h3; // @[SocLite.scala 204:27]
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
module SocLite(
  input         clock,
  input         reset,
  output [31:0] debug_wb_pc,
  output        debug_wb_rf_wen,
  output [4:0]  debug_wb_rf_wnum,
  output [31:0] debug_wb_rf_wdata
);
  wire  axi_cpu_clock; // @[SocLite.scala 344:27]
  wire  axi_cpu_reset; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_aw_ready; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_aw_valid; // @[SocLite.scala 344:27]
  wire [3:0] axi_cpu_auto_out_aw_bits_id; // @[SocLite.scala 344:27]
  wire [31:0] axi_cpu_auto_out_aw_bits_addr; // @[SocLite.scala 344:27]
  wire [7:0] axi_cpu_auto_out_aw_bits_len; // @[SocLite.scala 344:27]
  wire [2:0] axi_cpu_auto_out_aw_bits_size; // @[SocLite.scala 344:27]
  wire [1:0] axi_cpu_auto_out_aw_bits_burst; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_aw_bits_lock; // @[SocLite.scala 344:27]
  wire [3:0] axi_cpu_auto_out_aw_bits_cache; // @[SocLite.scala 344:27]
  wire [2:0] axi_cpu_auto_out_aw_bits_prot; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_w_ready; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_w_valid; // @[SocLite.scala 344:27]
  wire [31:0] axi_cpu_auto_out_w_bits_data; // @[SocLite.scala 344:27]
  wire [3:0] axi_cpu_auto_out_w_bits_strb; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_w_bits_last; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_b_ready; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_b_valid; // @[SocLite.scala 344:27]
  wire [3:0] axi_cpu_auto_out_b_bits_id; // @[SocLite.scala 344:27]
  wire [1:0] axi_cpu_auto_out_b_bits_resp; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_ar_ready; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_ar_valid; // @[SocLite.scala 344:27]
  wire [3:0] axi_cpu_auto_out_ar_bits_id; // @[SocLite.scala 344:27]
  wire [31:0] axi_cpu_auto_out_ar_bits_addr; // @[SocLite.scala 344:27]
  wire [7:0] axi_cpu_auto_out_ar_bits_len; // @[SocLite.scala 344:27]
  wire [2:0] axi_cpu_auto_out_ar_bits_size; // @[SocLite.scala 344:27]
  wire [1:0] axi_cpu_auto_out_ar_bits_burst; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_ar_bits_lock; // @[SocLite.scala 344:27]
  wire [3:0] axi_cpu_auto_out_ar_bits_cache; // @[SocLite.scala 344:27]
  wire [2:0] axi_cpu_auto_out_ar_bits_prot; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_r_ready; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_r_valid; // @[SocLite.scala 344:27]
  wire [3:0] axi_cpu_auto_out_r_bits_id; // @[SocLite.scala 344:27]
  wire [31:0] axi_cpu_auto_out_r_bits_data; // @[SocLite.scala 344:27]
  wire [1:0] axi_cpu_auto_out_r_bits_resp; // @[SocLite.scala 344:27]
  wire  axi_cpu_auto_out_r_bits_last; // @[SocLite.scala 344:27]
  wire [31:0] axi_cpu_debug_wb_pc; // @[SocLite.scala 344:27]
  wire  axi_cpu_debug_wb_rf_wen; // @[SocLite.scala 344:27]
  wire [4:0] axi_cpu_debug_wb_rf_wnum; // @[SocLite.scala 344:27]
  wire [31:0] axi_cpu_debug_wb_rf_wdata; // @[SocLite.scala 344:27]
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
  wire  axi4xbar_auto_out_0_w_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_w_valid; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_out_0_w_bits_data; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_0_w_bits_strb; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_w_bits_last; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_b_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_b_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_0_b_bits_id; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_ar_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_ar_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_0_ar_bits_id; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_out_0_ar_bits_addr; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_out_0_ar_bits_len; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_out_0_ar_bits_size; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_0_ar_bits_burst; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_r_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_r_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_0_r_bits_id; // @[Xbar.scala 218:30]
  wire [31:0] axi4xbar_auto_out_0_r_bits_data; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_0_r_bits_last; // @[Xbar.scala 218:30]
  wire  axi_ram_clock; // @[SocLite.scala 348:27]
  wire  axi_ram_reset; // @[SocLite.scala 348:27]
  wire  axi_ram_auto_in_aw_ready; // @[SocLite.scala 348:27]
  wire  axi_ram_auto_in_aw_valid; // @[SocLite.scala 348:27]
  wire [3:0] axi_ram_auto_in_aw_bits_id; // @[SocLite.scala 348:27]
  wire [31:0] axi_ram_auto_in_aw_bits_addr; // @[SocLite.scala 348:27]
  wire  axi_ram_auto_in_w_ready; // @[SocLite.scala 348:27]
  wire  axi_ram_auto_in_w_valid; // @[SocLite.scala 348:27]
  wire [31:0] axi_ram_auto_in_w_bits_data; // @[SocLite.scala 348:27]
  wire [3:0] axi_ram_auto_in_w_bits_strb; // @[SocLite.scala 348:27]
  wire  axi_ram_auto_in_w_bits_last; // @[SocLite.scala 348:27]
  wire  axi_ram_auto_in_b_ready; // @[SocLite.scala 348:27]
  wire  axi_ram_auto_in_b_valid; // @[SocLite.scala 348:27]
  wire [3:0] axi_ram_auto_in_b_bits_id; // @[SocLite.scala 348:27]
  wire  axi_ram_auto_in_ar_ready; // @[SocLite.scala 348:27]
  wire  axi_ram_auto_in_ar_valid; // @[SocLite.scala 348:27]
  wire [3:0] axi_ram_auto_in_ar_bits_id; // @[SocLite.scala 348:27]
  wire [31:0] axi_ram_auto_in_ar_bits_addr; // @[SocLite.scala 348:27]
  wire [7:0] axi_ram_auto_in_ar_bits_len; // @[SocLite.scala 348:27]
  wire [2:0] axi_ram_auto_in_ar_bits_size; // @[SocLite.scala 348:27]
  wire [1:0] axi_ram_auto_in_ar_bits_burst; // @[SocLite.scala 348:27]
  wire  axi_ram_auto_in_r_ready; // @[SocLite.scala 348:27]
  wire  axi_ram_auto_in_r_valid; // @[SocLite.scala 348:27]
  wire [3:0] axi_ram_auto_in_r_bits_id; // @[SocLite.scala 348:27]
  wire [31:0] axi_ram_auto_in_r_bits_data; // @[SocLite.scala 348:27]
  wire  axi_ram_auto_in_r_bits_last; // @[SocLite.scala 348:27]
  wire  confreg_wrapper_clock; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_aresetn; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_aw_ready; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_aw_valid; // @[SocLite.scala 350:35]
  wire [3:0] confreg_wrapper_auto_in_aw_bits_id; // @[SocLite.scala 350:35]
  wire [31:0] confreg_wrapper_auto_in_aw_bits_addr; // @[SocLite.scala 350:35]
  wire [7:0] confreg_wrapper_auto_in_aw_bits_len; // @[SocLite.scala 350:35]
  wire [2:0] confreg_wrapper_auto_in_aw_bits_size; // @[SocLite.scala 350:35]
  wire [1:0] confreg_wrapper_auto_in_aw_bits_burst; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_aw_bits_lock; // @[SocLite.scala 350:35]
  wire [3:0] confreg_wrapper_auto_in_aw_bits_cache; // @[SocLite.scala 350:35]
  wire [2:0] confreg_wrapper_auto_in_aw_bits_prot; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_w_ready; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_w_valid; // @[SocLite.scala 350:35]
  wire [31:0] confreg_wrapper_auto_in_w_bits_data; // @[SocLite.scala 350:35]
  wire [3:0] confreg_wrapper_auto_in_w_bits_strb; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_w_bits_last; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_b_ready; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_b_valid; // @[SocLite.scala 350:35]
  wire [3:0] confreg_wrapper_auto_in_b_bits_id; // @[SocLite.scala 350:35]
  wire [1:0] confreg_wrapper_auto_in_b_bits_resp; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_ar_ready; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_ar_valid; // @[SocLite.scala 350:35]
  wire [3:0] confreg_wrapper_auto_in_ar_bits_id; // @[SocLite.scala 350:35]
  wire [31:0] confreg_wrapper_auto_in_ar_bits_addr; // @[SocLite.scala 350:35]
  wire [7:0] confreg_wrapper_auto_in_ar_bits_len; // @[SocLite.scala 350:35]
  wire [2:0] confreg_wrapper_auto_in_ar_bits_size; // @[SocLite.scala 350:35]
  wire [1:0] confreg_wrapper_auto_in_ar_bits_burst; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_ar_bits_lock; // @[SocLite.scala 350:35]
  wire [3:0] confreg_wrapper_auto_in_ar_bits_cache; // @[SocLite.scala 350:35]
  wire [2:0] confreg_wrapper_auto_in_ar_bits_prot; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_r_ready; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_r_valid; // @[SocLite.scala 350:35]
  wire [3:0] confreg_wrapper_auto_in_r_bits_id; // @[SocLite.scala 350:35]
  wire [31:0] confreg_wrapper_auto_in_r_bits_data; // @[SocLite.scala 350:35]
  wire [1:0] confreg_wrapper_auto_in_r_bits_resp; // @[SocLite.scala 350:35]
  wire  confreg_wrapper_auto_in_r_bits_last; // @[SocLite.scala 350:35]
  CPU axi_cpu ( // @[SocLite.scala 344:27]
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
  axi_xbar axi4xbar ( // @[Xbar.scala 218:30]
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
    .auto_out_0_w_ready(axi4xbar_auto_out_0_w_ready),
    .auto_out_0_w_valid(axi4xbar_auto_out_0_w_valid),
    .auto_out_0_w_bits_data(axi4xbar_auto_out_0_w_bits_data),
    .auto_out_0_w_bits_strb(axi4xbar_auto_out_0_w_bits_strb),
    .auto_out_0_w_bits_last(axi4xbar_auto_out_0_w_bits_last),
    .auto_out_0_b_ready(axi4xbar_auto_out_0_b_ready),
    .auto_out_0_b_valid(axi4xbar_auto_out_0_b_valid),
    .auto_out_0_b_bits_id(axi4xbar_auto_out_0_b_bits_id),
    .auto_out_0_ar_ready(axi4xbar_auto_out_0_ar_ready),
    .auto_out_0_ar_valid(axi4xbar_auto_out_0_ar_valid),
    .auto_out_0_ar_bits_id(axi4xbar_auto_out_0_ar_bits_id),
    .auto_out_0_ar_bits_addr(axi4xbar_auto_out_0_ar_bits_addr),
    .auto_out_0_ar_bits_len(axi4xbar_auto_out_0_ar_bits_len),
    .auto_out_0_ar_bits_size(axi4xbar_auto_out_0_ar_bits_size),
    .auto_out_0_ar_bits_burst(axi4xbar_auto_out_0_ar_bits_burst),
    .auto_out_0_r_ready(axi4xbar_auto_out_0_r_ready),
    .auto_out_0_r_valid(axi4xbar_auto_out_0_r_valid),
    .auto_out_0_r_bits_id(axi4xbar_auto_out_0_r_bits_id),
    .auto_out_0_r_bits_data(axi4xbar_auto_out_0_r_bits_data),
    .auto_out_0_r_bits_last(axi4xbar_auto_out_0_r_bits_last)
  );
  SimAXIRAM axi_ram ( // @[SocLite.scala 348:27]
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
  ConfregWrapper confreg_wrapper ( // @[SocLite.scala 350:35]
    .clock(confreg_wrapper_clock),
    .aresetn(confreg_wrapper_aresetn),
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
  assign debug_wb_pc = axi_cpu_debug_wb_pc; // @[SocLite.scala 358:11]
  assign debug_wb_rf_wen = axi_cpu_debug_wb_rf_wen; // @[SocLite.scala 358:11]
  assign debug_wb_rf_wnum = axi_cpu_debug_wb_rf_wnum; // @[SocLite.scala 358:11]
  assign debug_wb_rf_wdata = axi_cpu_debug_wb_rf_wdata; // @[SocLite.scala 358:11]
  assign axi_cpu_clock = clock;
  assign axi_cpu_reset = reset;
  assign axi_cpu_auto_out_aw_ready = axi4xbar_auto_in_aw_ready; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_w_ready = axi4xbar_auto_in_w_ready; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_b_valid = axi4xbar_auto_in_b_valid; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_b_bits_id = axi4xbar_auto_in_b_bits_id; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_b_bits_resp = axi4xbar_auto_in_b_bits_resp; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_ar_ready = axi4xbar_auto_in_ar_ready; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_r_valid = axi4xbar_auto_in_r_valid; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_r_bits_id = axi4xbar_auto_in_r_bits_id; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_r_bits_data = axi4xbar_auto_in_r_bits_data; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_r_bits_resp = axi4xbar_auto_in_r_bits_resp; // @[LazyModule.scala 298:16]
  assign axi_cpu_auto_out_r_bits_last = axi4xbar_auto_in_r_bits_last; // @[LazyModule.scala 298:16]
  assign axi4xbar_clock = clock;
  assign axi4xbar_reset = reset;
  assign axi4xbar_auto_in_aw_valid = axi_cpu_auto_out_aw_valid; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_aw_bits_id = axi_cpu_auto_out_aw_bits_id; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_aw_bits_addr = axi_cpu_auto_out_aw_bits_addr; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_aw_bits_len = axi_cpu_auto_out_aw_bits_len; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_aw_bits_size = axi_cpu_auto_out_aw_bits_size; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_aw_bits_burst = axi_cpu_auto_out_aw_bits_burst; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_aw_bits_lock = axi_cpu_auto_out_aw_bits_lock; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_aw_bits_cache = axi_cpu_auto_out_aw_bits_cache; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_aw_bits_prot = axi_cpu_auto_out_aw_bits_prot; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_w_valid = axi_cpu_auto_out_w_valid; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_w_bits_data = axi_cpu_auto_out_w_bits_data; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_w_bits_strb = axi_cpu_auto_out_w_bits_strb; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_w_bits_last = axi_cpu_auto_out_w_bits_last; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_b_ready = axi_cpu_auto_out_b_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_ar_valid = axi_cpu_auto_out_ar_valid; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_ar_bits_id = axi_cpu_auto_out_ar_bits_id; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_ar_bits_addr = axi_cpu_auto_out_ar_bits_addr; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_ar_bits_len = axi_cpu_auto_out_ar_bits_len; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_ar_bits_size = axi_cpu_auto_out_ar_bits_size; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_ar_bits_burst = axi_cpu_auto_out_ar_bits_burst; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_ar_bits_lock = axi_cpu_auto_out_ar_bits_lock; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_ar_bits_cache = axi_cpu_auto_out_ar_bits_cache; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_ar_bits_prot = axi_cpu_auto_out_ar_bits_prot; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_in_r_ready = axi_cpu_auto_out_r_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_aw_ready = confreg_wrapper_auto_in_aw_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_w_ready = confreg_wrapper_auto_in_w_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_b_valid = confreg_wrapper_auto_in_b_valid; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_b_bits_id = confreg_wrapper_auto_in_b_bits_id; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_b_bits_resp = confreg_wrapper_auto_in_b_bits_resp; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_ar_ready = confreg_wrapper_auto_in_ar_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_r_valid = confreg_wrapper_auto_in_r_valid; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_r_bits_id = confreg_wrapper_auto_in_r_bits_id; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_r_bits_data = confreg_wrapper_auto_in_r_bits_data; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_r_bits_resp = confreg_wrapper_auto_in_r_bits_resp; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_1_r_bits_last = confreg_wrapper_auto_in_r_bits_last; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_aw_ready = axi_ram_auto_in_aw_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_w_ready = axi_ram_auto_in_w_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_b_valid = axi_ram_auto_in_b_valid; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_b_bits_id = axi_ram_auto_in_b_bits_id; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_ar_ready = axi_ram_auto_in_ar_ready; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_r_valid = axi_ram_auto_in_r_valid; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_r_bits_id = axi_ram_auto_in_r_bits_id; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_r_bits_data = axi_ram_auto_in_r_bits_data; // @[LazyModule.scala 298:16]
  assign axi4xbar_auto_out_0_r_bits_last = axi_ram_auto_in_r_bits_last; // @[LazyModule.scala 298:16]
  assign axi_ram_clock = clock;
  assign axi_ram_reset = reset;
  assign axi_ram_auto_in_aw_valid = axi4xbar_auto_out_0_aw_valid; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_aw_bits_id = axi4xbar_auto_out_0_aw_bits_id; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_aw_bits_addr = axi4xbar_auto_out_0_aw_bits_addr; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_w_valid = axi4xbar_auto_out_0_w_valid; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_w_bits_data = axi4xbar_auto_out_0_w_bits_data; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_w_bits_strb = axi4xbar_auto_out_0_w_bits_strb; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_w_bits_last = axi4xbar_auto_out_0_w_bits_last; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_b_ready = axi4xbar_auto_out_0_b_ready; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_ar_valid = axi4xbar_auto_out_0_ar_valid; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_ar_bits_id = axi4xbar_auto_out_0_ar_bits_id; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_ar_bits_addr = axi4xbar_auto_out_0_ar_bits_addr; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_ar_bits_len = axi4xbar_auto_out_0_ar_bits_len; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_ar_bits_size = axi4xbar_auto_out_0_ar_bits_size; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_ar_bits_burst = axi4xbar_auto_out_0_ar_bits_burst; // @[LazyModule.scala 298:16]
  assign axi_ram_auto_in_r_ready = axi4xbar_auto_out_0_r_ready; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_clock = clock;
  assign confreg_wrapper_aresetn = reset;
  assign confreg_wrapper_auto_in_aw_valid = axi4xbar_auto_out_1_aw_valid; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_aw_bits_id = axi4xbar_auto_out_1_aw_bits_id; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_aw_bits_addr = axi4xbar_auto_out_1_aw_bits_addr; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_aw_bits_len = axi4xbar_auto_out_1_aw_bits_len; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_aw_bits_size = axi4xbar_auto_out_1_aw_bits_size; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_aw_bits_burst = axi4xbar_auto_out_1_aw_bits_burst; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_aw_bits_lock = axi4xbar_auto_out_1_aw_bits_lock; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_aw_bits_cache = axi4xbar_auto_out_1_aw_bits_cache; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_aw_bits_prot = axi4xbar_auto_out_1_aw_bits_prot; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_w_valid = axi4xbar_auto_out_1_w_valid; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_w_bits_data = axi4xbar_auto_out_1_w_bits_data; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_w_bits_strb = axi4xbar_auto_out_1_w_bits_strb; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_w_bits_last = axi4xbar_auto_out_1_w_bits_last; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_b_ready = axi4xbar_auto_out_1_b_ready; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_ar_valid = axi4xbar_auto_out_1_ar_valid; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_ar_bits_id = axi4xbar_auto_out_1_ar_bits_id; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_ar_bits_addr = axi4xbar_auto_out_1_ar_bits_addr; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_ar_bits_len = axi4xbar_auto_out_1_ar_bits_len; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_ar_bits_size = axi4xbar_auto_out_1_ar_bits_size; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_ar_bits_burst = axi4xbar_auto_out_1_ar_bits_burst; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_ar_bits_lock = axi4xbar_auto_out_1_ar_bits_lock; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_ar_bits_cache = axi4xbar_auto_out_1_ar_bits_cache; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_ar_bits_prot = axi4xbar_auto_out_1_ar_bits_prot; // @[LazyModule.scala 298:16]
  assign confreg_wrapper_auto_in_r_ready = axi4xbar_auto_out_1_r_ready; // @[LazyModule.scala 298:16]
endmodule
