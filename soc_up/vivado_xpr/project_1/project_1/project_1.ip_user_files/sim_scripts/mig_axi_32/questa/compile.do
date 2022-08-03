vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -sv \
"D:/vivado/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/vivado/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/vivado/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/mig_axi_32_mig_sim.v" \
"../../../../../xilinx_ip/mig_axi_32/mig_axi_32/user_design/rtl/mig_axi_32.v" \

vlog -work xil_defaultlib \
"glbl.v"

