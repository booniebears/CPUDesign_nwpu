module data_drive (
    input			wire						vga_clk,
    input			wire						rst_n,
    input			wire		[ 11:0 ]		addr_h,
    input			wire		[ 11:0 ]		addr_v,
    output			reg		    [ 11:0 ]		rgb_data
);

localparam	black  = 12'd0;

parameter	height = 240; // 图片高度
parameter	width  = 320; // 图片宽度

reg			[ 23:0 ]		rom_address				; 
wire		[ 23:0 ]		rom_data				; 

wire						flag_enable_out2			;
wire						flag_clear_rom_address		;
wire						flag_begin_h			    ;
wire						flag_begin_v			    ;


always @( posedge vga_clk or negedge rst_n) begin
    if(!rst_n)begin
        rgb_data = black;
    end
    else if ( flag_enable_out2 ) begin
        rgb_data = {rom_data[23:20],rom_data[15:12],rom_data[7:4]};
    end
    else begin
        rgb_data = black;
    end
end

//地址
always @( posedge vga_clk or negedge rst_n ) begin
    if ( !rst_n ) begin
        rom_address <= 0;
    end
    else if ( flag_clear_rom_address ) begin 
        rom_address <= 0;
    end
        else if ( flag_enable_out2 ) begin  
        rom_address <= rom_address + 1;
        end
    else begin  
        rom_address <= rom_address;
    end
end
assign flag_clear_rom_address = rom_address == height * width - 1;
assign flag_begin_h     = addr_h > ( ( 800 - width ) / 2 ) && addr_h < ( ( 800 - width ) / 2 ) + width + 1;
assign flag_begin_v     = addr_v > ( ( 600 - height )/2 ) && addr_v <( ( 600 - height )/2 ) + height + 1;
assign flag_enable_out2 = flag_begin_h && flag_begin_v;

//ROM
begin2 GUA(
.clka(vga_clk), 
.addra(rom_address), 
.douta(rom_data),
.ena  (1'b1) 
);

endmodule



