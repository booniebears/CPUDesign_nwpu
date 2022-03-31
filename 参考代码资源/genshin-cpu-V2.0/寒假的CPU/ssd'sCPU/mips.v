module mips(Clk,Reset);

input Clk,Reset;

wire [31:0] IF_NextAddr,IF_Addr,
WriteData,WriteData_final,Alu_Y,Alu_X,
E_NUM_X,E_NUM_Y,ID_ext32_L2,ID_B,
ID_J,IF_PCAdd4,ID_PCAdd4,IF_Inst,ID_Qa,ID_Qb,ID_rs,ID_rt,ID_ext32,E_Alu_Out,ID_Inst,M_Dout,W_ext_Dout,E_res_hi,E_res_lo;
wire [31:0] E_Qa,E_Qb,M_Alu_Out,M_NUM_Y,W_Alu_Out,W_Dout,E_ext32,E_sa,ID_sa,M_res_hi,M_res_lo,W_res_hi,W_res_lo;
wire [4:0] W_WriteReg,M_WriteReg;
wire [4:0] E_WriteReg;
wire [4:0] ID_WriteReg;
wire [1:0] E_save_option;
wire [1:0] ID_save_option,M_save_option;
wire [2:0] E_FwdA,E_FwdB,ID_FwdB,ID_FwdA,ID_PCSrc,ID_load_option,E_load_option,M_load_option,W_load_option,ID_md_control,E_md_control,M_md_control,W_md_control;
wire [3:0] ID_ALUControl,E_ALUControl,BE;
wire Se,Z,E_RegDst,c_adventure,ID_RegDst,M_RegWrite,E_RegWrite,W_RegWrite,ID_RegWrite,E_ALUXSrc,E_ALUYSrc,M_RegDst,W_MemtoReg,ID_ALUXSrc,ID_ALUYSrc;
wire ID_MemtoReg,ID_MemWrite,ID_usigned;
wire E_MemtoReg,E_MemWrite,E_usigned,M_MemtoReg,M_MemWrite,ID_B_code,E_B_code,over,ID_md_signal,E_md_signal,M_md_signal,W_md_signal,
ID_start_mult,ID_start_div,E_start_mult,E_start_div;
wire [3:0] busy;
wire stall,stallstall,Cout,ID_mfhi,ID_mflo,ID_updatemd,E_updatemd;
wire stall2,stallstall2;
assign stall = stall2;
assign stallstall = stallstall2;
//���ȹص������е�ð�ռ��

//IF
//����������ѡ���stallָ�Ҳ���ǲ�֧��stall��
MUX4X32_addr mux4x32(IF_PCAdd4,ID_B,ID_J,ID_rs,ID_PCSrc,IF_NextAddr);
//PC PC(IF_NextAddr,Clk,Reset,IF_Addr,stall,stallstall,busy);
PC PC(ID_rs,ID_PCSrc,ID_B,IF_Inst,IF_NextAddr,Clk,Reset,IF_Addr,stall,stallstall,busy);
PCAdd4 PCAdd4(IF_Addr,IF_PCAdd4);
im_4k im_4k(IF_Addr,IF_Inst);

REG_IF_ID REG_IF_ID(IF_PCAdd4,IF_Inst,Clk,Reset,ID_PCAdd4,ID_Inst,stall,stallstall,busy);

//ID
CU CU(ID_start_mult,ID_start_div,ID_mfhi,ID_mflo,ID_Inst,ID_Inst[5:0],ID_Inst[16],ID_RegDst,Se,ID_RegWrite,ID_ALUXSrc,ID_ALUYSrc,ID_ALUControl,ID_md_control,ID_MemWrite,ID_PCSrc,ID_MemtoReg,ID_load_option,ID_save_option,ID_usigned,c_adventure,ID_md_signal,ID_updatemd);

MUX2X5 mux2x5(ID_Inst[15:11],ID_Inst[20:16],ID_RegDst,ID_WriteReg);//???��??rt????rd0
RegisterFile RegisterFile(ID_Inst[25:21],ID_Inst[20:16],ID_Inst[15:11],WriteData_final,W_WriteReg,W_RegWrite,Clk,Reset,ID_Qa,ID_Qb,ID_PCSrc,ID_PCAdd4);

MUX4X32_forward mux2x32_ID_X(ID_Qa,M_Alu_Out,E_res_hi,E_res_lo,ID_FwdA,ID_rs);
MUX4X32_forward mux2x32_ID_Y(ID_Qb,M_Alu_Out,E_res_hi,E_res_lo,ID_FwdB,ID_rt);

if_c_adventure if_c_adventure(ID_rs,ID_rt,ID_ALUControl,ID_usigned,c_adventure);
FU FU(ID_mfhi,ID_mflo,E_md_signal,E_RegWrite,E_WriteReg,E_MemtoReg,M_RegWrite,M_WriteReg,M_MemtoReg,ID_Inst[25:21],ID_Inst[20:16],ID_FwdA,ID_FwdB,ID_Inst[31:26],ID_Inst[5:0],c_adventure,stall2,stallstall2);

EXT16T32 ext16t32(ID_Inst[15:0],Se,ID_ext32);
EXT5T32 ext5t32(ID_Inst[10:6],ID_sa);
SHIFTER32_L2 shifter(ID_ext32,ID_ext32_L2);
CLA_32 get_b_address(ID_PCAdd4,ID_ext32_L2,0,ID_B,Cout);

SHIFTER_COMBINATION get_j_address(ID_Inst[25:0],ID_PCAdd4,ID_J);//J???????????

REG_ID_EX REG_ID_EX(ID_start_mult,ID_start_div,ID_updatemd,ID_md_signal,ID_Inst[16],ID_sa,ID_RegDst,ID_RegWrite,ID_ALUXSrc,ID_ALUYSrc,ID_ALUControl,ID_md_control,ID_MemWrite,ID_MemtoReg,ID_WriteReg,ID_usigned,ID_Qa,ID_Qb,ID_ext32,ID_FwdA,ID_FwdB,ID_load_option,ID_save_option,Clk,Reset,
E_start_mult,E_start_div,E_updatemd,E_md_signal,E_B_code,E_sa,E_RegDst,E_RegWrite,E_ALUXSrc,E_ALUYSrc,E_ALUControl,E_md_control,E_MemWrite,E_MemtoReg,E_WriteReg,E_usigned,E_Qa,E_Qb,E_ext32,E_FwdA,E_FwdB,E_load_option,E_save_option,stall,stallstall,busy);

//EX
MUX5X32 mux3x32_ex_X(E_Qa,M_Alu_Out,WriteData_final,M_res_hi,M_res_lo,E_FwdA,E_NUM_X);
MUX2X32 choose_alu_x(E_NUM_X,E_sa,E_ALUXSrc,Alu_X);

MUX5X32 mux3x32_ex_Y(E_Qb,M_Alu_Out,WriteData_final,M_res_hi,M_res_lo,E_FwdB,E_NUM_Y);
MUX2X32 choose_alu_y(E_ext32,E_NUM_Y,E_ALUYSrc,Alu_Y);
ALU ALU(Alu_X,Alu_Y,E_ALUControl,E_usigned,E_Alu_Out,Z,over);
md md(Clk,E_NUM_X,E_NUM_Y,E_md_control,E_updatemd,E_start_mult,E_start_div,busy,E_res_hi,E_res_lo);

REG_EX_MEM REG_EX_MEM(E_md_control,E_md_signal,E_res_hi,E_res_lo,E_RegWrite,E_RegDst,E_MemWrite,E_MemtoReg,E_WriteReg,E_NUM_Y,E_Alu_Out,E_load_option,E_save_option,Clk,Reset,
M_md_control,M_md_signal,M_res_hi,M_res_lo,M_RegWrite,M_RegDst,M_MemWrite,M_MemtoReg,M_WriteReg,M_NUM_Y,M_Alu_Out,M_load_option,M_save_option,busy);

//MEM
save_to_BE save_to_BE(M_save_option,BE);
dm_4k dm_4k(M_Alu_Out,BE,M_NUM_Y,M_Dout,M_MemWrite,Clk);

REG_MEM_WB REG_MEM_WB(M_md_control,M_md_signal,M_res_hi,M_res_lo,M_RegWrite,M_MemtoReg,M_Alu_Out,M_Dout,M_WriteReg,M_load_option,Clk,Reset,
W_md_control,W_md_signal,W_res_hi,W_res_lo,W_RegWrite,W_MemtoReg,W_Alu_Out,W_Dout,W_WriteReg,W_load_option);

//WB
data_ext_load data_ext_load(W_Dout,W_Alu_Out,W_load_option,W_ext_Dout);
MUX2X32 mux2x322(W_Alu_Out,W_ext_Dout,W_MemtoReg,WriteData);
MUX2X32_md choose_md(WriteData,W_res_hi,W_res_lo,W_md_signal,W_md_control,WriteData_final);
endmodule

