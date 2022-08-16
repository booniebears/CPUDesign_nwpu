module vga_top (
    input			wire						clk,
    input			wire						rst_n,
    output			wire						h_sync,
    output			wire						v_sync,
    output			wire		[ 3:0 ]			rgb_r,
    output			wire		[ 3:0 ]			rgb_g,
    output			wire		[ 3:0 ]			rgb_b
);
wire						    vga_clk;
wire		[ 11:0 ]		    addr_h              ;
wire		[ 11:0 ]		    addr_v              ;
wire		[ 11:0 ]			rgb_data			;

//模块例化
vga_display_pic vga_display_pic(
    .clk        (clk        ),
    .rst_n      (rst_n      ),
    .rgb_data   (rgb_data   ),
    .vga_clk    (vga_clk    ),
    .h_sync     (h_sync     ),
    .v_sync     (v_sync     ),
    .addr_h     (addr_h     ),
    .addr_v     (addr_v     ),
    .rgb_r      (rgb_r      ),
    .rgb_g      (rgb_g      ),
    .rgb_b      (rgb_b      ) 
);

//数据模块
data_drive u_data_drive(
.vga_clk        ( vga_clk   ),
.rst_n          ( rst_n     ),
.addr_h         ( addr_h    ),
.addr_v         ( addr_v    ),
.rgb_data       ( rgb_data  )
);

endmodule



