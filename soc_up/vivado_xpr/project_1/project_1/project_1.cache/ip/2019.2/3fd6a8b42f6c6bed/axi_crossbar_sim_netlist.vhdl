-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Aug  1 11:46:31 2022
-- Host        : LAPTOP-S513OG68 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_crossbar_sim_netlist.vhdl
-- Design      : axi_crossbar
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_addr_arbiter_0 is
  port (
    aa_sa_awvalid : out STD_LOGIC;
    aa_mi_awtarget_hot : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].w_issuing_cnt_reg[2]\ : out STD_LOGIC;
    p_31_in : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[2]_0\ : out STD_LOGIC;
    ss_aa_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aa_wm_awgrant_enc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \m_ready_d_reg[0]\ : out STD_LOGIC;
    \sa_wm_awvalid__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_valid_i_reg_0\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[0]\ : out STD_LOGIC;
    \any_prio6_out__0\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_mesg_i_reg[65]_0\ : out STD_LOGIC_VECTOR ( 56 downto 0 );
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_master_slots[0].w_issuing_cnt_reg[1]\ : in STD_LOGIC;
    \any_prio129_out__0\ : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[1]_0\ : in STD_LOGIC;
    st_aa_awvalid_qual : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \valid_qual_i3__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.grant_hot_reg[2]_0\ : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]_1\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_aa_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ready_d_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aresetn_d : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_addr_arbiter_0 : entity is "axi_crossbar_v2_1_21_addr_arbiter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_addr_arbiter_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_addr_arbiter_0 is
  signal \^aa_mi_awtarget_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aa_sa_awvalid\ : STD_LOGIC;
  signal \^aa_wm_awgrant_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^any_prio6_out__0\ : STD_LOGIC;
  signal found_prio : STD_LOGIC;
  signal \gen_arbiter.any_grant_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_reg_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[2]_i_11_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[2]_i_5_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[0]_i_3_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_mesg_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_mesg_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_valid_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.one_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_arbiter.qual_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[2]_i_1_n_0\ : STD_LOGIC;
  signal grant_hot : STD_LOGIC;
  signal grant_hot0 : STD_LOGIC;
  signal \grant_hot1__2\ : STD_LOGIC;
  signal m_mesg_mux : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal next_hot : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal next_hot321_out : STD_LOGIC;
  signal p_0_in25_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal \^p_31_in\ : STD_LOGIC;
  signal \p_32_out__0\ : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal \prio_stall__0\ : STD_LOGIC;
  signal \^ss_aa_awready\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_arbiter.any_grant_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_arbiter.grant_hot[1]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_arbiter.grant_hot[2]_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[0]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[31]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[3]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[44]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[2]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[2]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axi_awvalid[0]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_4\ : label is "soft_lutpair14";
begin
  aa_mi_awtarget_hot(0) <= \^aa_mi_awtarget_hot\(0);
  aa_sa_awvalid <= \^aa_sa_awvalid\;
  aa_wm_awgrant_enc(1 downto 0) <= \^aa_wm_awgrant_enc\(1 downto 0);
  \any_prio6_out__0\ <= \^any_prio6_out__0\;
  p_31_in <= \^p_31_in\;
  ss_aa_awready(2 downto 0) <= \^ss_aa_awready\(2 downto 0);
\FSM_onehot_state[3]_i_4__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^aa_mi_awtarget_hot\(0),
      I1 => \^aa_sa_awvalid\,
      I2 => m_ready_d(0),
      O => \sa_wm_awvalid__0\(0)
    );
\gen_arbiter.any_grant_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CECC"
    )
        port map (
      I0 => grant_hot0,
      I1 => \gen_arbiter.any_grant_reg_n_0\,
      I2 => \^aa_sa_awvalid\,
      I3 => \grant_hot1__2\,
      I4 => \gen_arbiter.grant_hot_reg[1]_0\,
      O => \gen_arbiter.any_grant_i_1_n_0\
    );
\gen_arbiter.any_grant_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.any_grant_i_1_n_0\,
      Q => \gen_arbiter.any_grant_reg_n_0\,
      R => '0'
    );
\gen_arbiter.grant_hot[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002E22"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      I1 => grant_hot,
      I2 => found_prio,
      I3 => \gen_arbiter.one_hot\(0),
      I4 => \gen_arbiter.grant_hot_reg[1]_0\,
      O => \gen_arbiter.grant_hot[0]_i_1_n_0\
    );
\gen_arbiter.grant_hot[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444474444444444"
    )
        port map (
      I0 => \^ss_aa_awready\(2),
      I1 => \any_prio129_out__0\,
      I2 => \^ss_aa_awready\(1),
      I3 => p_0_in25_in,
      I4 => m_ready_d_0(0),
      I5 => s_axi_awvalid(1),
      O => found_prio
    );
\gen_arbiter.grant_hot[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000E0000000000"
    )
        port map (
      I0 => next_hot321_out,
      I1 => p_5_in,
      I2 => \^ss_aa_awready\(0),
      I3 => \gen_arbiter.qual_reg_reg_n_0_[0]\,
      I4 => m_ready_d_1(0),
      I5 => s_axi_awvalid(0),
      O => \gen_arbiter.one_hot\(0)
    );
\gen_arbiter.grant_hot[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      I1 => grant_hot,
      I2 => next_hot(1),
      I3 => \gen_arbiter.grant_hot_reg[1]_0\,
      O => \gen_arbiter.grant_hot[1]_i_1_n_0\
    );
\gen_arbiter.grant_hot[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => s_axi_awvalid(1),
      I1 => m_ready_d_0(0),
      I2 => p_0_in25_in,
      I3 => \^ss_aa_awready\(1),
      I4 => \any_prio129_out__0\,
      O => next_hot(1)
    );
\gen_arbiter.grant_hot[2]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^ss_aa_awready\(1),
      I1 => p_0_in25_in,
      I2 => m_ready_d_0(0),
      I3 => s_axi_awvalid(1),
      O => \^any_prio6_out__0\
    );
\gen_arbiter.grant_hot[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^ss_aa_awready\(1),
      I1 => p_0_in25_in,
      I2 => m_ready_d_0(0),
      I3 => s_axi_awvalid(1),
      O => \gen_arbiter.grant_hot[2]_i_11_n_0\
    );
\gen_arbiter.grant_hot[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000022F0"
    )
        port map (
      I0 => \any_prio129_out__0\,
      I1 => \^ss_aa_awready\(2),
      I2 => \gen_arbiter.grant_hot_reg_n_0_[2]\,
      I3 => grant_hot,
      I4 => \gen_arbiter.grant_hot_reg[1]_0\,
      O => \gen_arbiter.grant_hot[2]_i_1__0_n_0\
    );
\gen_arbiter.grant_hot[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00AA008000"
    )
        port map (
      I0 => \gen_arbiter.grant_hot[2]_i_5_n_0\,
      I1 => st_aa_awvalid_qual(0),
      I2 => next_hot(0),
      I3 => \valid_qual_i3__0\(0),
      I4 => \gen_arbiter.grant_hot_reg[2]_0\,
      I5 => \gen_arbiter.grant_hot_reg[2]_1\,
      O => grant_hot
    );
\gen_arbiter.grant_hot[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000AAA000008A8"
    )
        port map (
      I0 => \gen_arbiter.last_rr_hot[0]_i_3_n_0\,
      I1 => \^any_prio6_out__0\,
      I2 => \any_prio129_out__0\,
      I3 => \^ss_aa_awready\(2),
      I4 => \gen_arbiter.grant_hot[2]_i_11_n_0\,
      I5 => \gen_arbiter.one_hot\(0),
      O => \gen_arbiter.grant_hot[2]_i_5_n_0\
    );
\gen_arbiter.grant_hot[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA2A0000AA2A"
    )
        port map (
      I0 => \gen_arbiter.one_hot\(0),
      I1 => ss_aa_awvalid(0),
      I2 => p_0_in25_in,
      I3 => \^ss_aa_awready\(1),
      I4 => \any_prio129_out__0\,
      I5 => \^ss_aa_awready\(2),
      O => next_hot(0)
    );
\gen_arbiter.grant_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[0]_i_1_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      R => '0'
    );
\gen_arbiter.grant_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[1]_i_1_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      R => '0'
    );
\gen_arbiter.grant_hot_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[2]_i_1__0_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[2]\,
      R => '0'
    );
\gen_arbiter.last_rr_hot[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => \gen_arbiter.one_hot\(0),
      I1 => \prio_stall__0\,
      I2 => found_prio,
      I3 => \gen_arbiter.last_rr_hot[0]_i_3_n_0\,
      I4 => grant_hot0,
      I5 => next_hot321_out,
      O => \gen_arbiter.last_rr_hot[0]_i_1_n_0\
    );
\gen_arbiter.last_rr_hot[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => s_axi_awvalid(1),
      I1 => m_ready_d_0(0),
      I2 => p_0_in25_in,
      I3 => \^ss_aa_awready\(1),
      I4 => \^ss_aa_awready\(2),
      I5 => \any_prio129_out__0\,
      O => \prio_stall__0\
    );
\gen_arbiter.last_rr_hot[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.last_rr_hot[0]_i_3_n_0\
    );
\gen_arbiter.last_rr_hot[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFF00000000"
    )
        port map (
      I0 => \grant_hot1__2\,
      I1 => \gen_arbiter.any_grant_reg_n_0\,
      I2 => \^aa_sa_awvalid\,
      I3 => found_prio,
      I4 => grant_hot0,
      I5 => p_5_in,
      O => \gen_arbiter.last_rr_hot[2]_i_1_n_0\
    );
\gen_arbiter.last_rr_hot[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003FFF2AEA2AEA"
    )
        port map (
      I0 => \gen_arbiter.one_hot\(0),
      I1 => ss_aa_awvalid(0),
      I2 => p_0_in25_in,
      I3 => \^ss_aa_awready\(1),
      I4 => \^ss_aa_awready\(2),
      I5 => \any_prio129_out__0\,
      O => \grant_hot1__2\
    );
\gen_arbiter.last_rr_hot[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EA00EA00EA00"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg[2]_1\,
      I1 => next_hot(1),
      I2 => st_aa_awvalid_qual(1),
      I3 => \valid_qual_i3__0\(0),
      I4 => next_hot(0),
      I5 => st_aa_awvalid_qual(0),
      O => grant_hot0
    );
\gen_arbiter.last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.last_rr_hot[0]_i_1_n_0\,
      Q => next_hot321_out,
      R => reset
    );
\gen_arbiter.last_rr_hot_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.last_rr_hot[2]_i_1_n_0\,
      Q => p_5_in,
      S => reset
    );
\gen_arbiter.m_grant_enc_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_hot(1),
      I1 => grant_hot,
      I2 => \^aa_wm_awgrant_enc\(0),
      O => \gen_arbiter.m_grant_enc_i[0]_i_1_n_0\
    );
\gen_arbiter.m_grant_enc_i[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \any_prio129_out__0\,
      I1 => \^ss_aa_awready\(2),
      I2 => grant_hot,
      I3 => \^aa_wm_awgrant_enc\(1),
      O => \gen_arbiter.m_grant_enc_i[1]_i_1__0_n_0\
    );
\gen_arbiter.m_grant_enc_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_grant_enc_i[0]_i_1_n_0\,
      Q => \^aa_wm_awgrant_enc\(0),
      R => reset
    );
\gen_arbiter.m_grant_enc_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_grant_enc_i[1]_i_1__0_n_0\,
      Q => \^aa_wm_awgrant_enc\(1),
      R => reset
    );
\gen_arbiter.m_mesg_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awid(4),
      I1 => s_axi_awid(0),
      I2 => s_axi_awid(2),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(0)
    );
\gen_arbiter.m_mesg_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(70),
      I1 => s_axi_awaddr(6),
      I2 => s_axi_awaddr(38),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(10)
    );
\gen_arbiter.m_mesg_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(71),
      I1 => s_axi_awaddr(7),
      I2 => s_axi_awaddr(39),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(11)
    );
\gen_arbiter.m_mesg_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(72),
      I1 => s_axi_awaddr(8),
      I2 => s_axi_awaddr(40),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(12)
    );
\gen_arbiter.m_mesg_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(73),
      I1 => s_axi_awaddr(9),
      I2 => s_axi_awaddr(41),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(13)
    );
\gen_arbiter.m_mesg_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(74),
      I1 => s_axi_awaddr(10),
      I2 => s_axi_awaddr(42),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(14)
    );
\gen_arbiter.m_mesg_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(75),
      I1 => s_axi_awaddr(11),
      I2 => s_axi_awaddr(43),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(15)
    );
\gen_arbiter.m_mesg_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(76),
      I1 => s_axi_awaddr(12),
      I2 => s_axi_awaddr(44),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(16)
    );
\gen_arbiter.m_mesg_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(77),
      I1 => s_axi_awaddr(13),
      I2 => s_axi_awaddr(45),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(17)
    );
\gen_arbiter.m_mesg_i[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(78),
      I1 => s_axi_awaddr(14),
      I2 => s_axi_awaddr(46),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(18)
    );
\gen_arbiter.m_mesg_i[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(79),
      I1 => s_axi_awaddr(15),
      I2 => s_axi_awaddr(47),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(19)
    );
\gen_arbiter.m_mesg_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awid(5),
      I1 => s_axi_awid(1),
      I2 => s_axi_awid(3),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(1)
    );
\gen_arbiter.m_mesg_i[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(80),
      I1 => s_axi_awaddr(16),
      I2 => s_axi_awaddr(48),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(20)
    );
\gen_arbiter.m_mesg_i[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(81),
      I1 => s_axi_awaddr(17),
      I2 => s_axi_awaddr(49),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(21)
    );
\gen_arbiter.m_mesg_i[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(82),
      I1 => s_axi_awaddr(18),
      I2 => s_axi_awaddr(50),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(22)
    );
\gen_arbiter.m_mesg_i[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(83),
      I1 => s_axi_awaddr(19),
      I2 => s_axi_awaddr(51),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(23)
    );
\gen_arbiter.m_mesg_i[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(84),
      I1 => s_axi_awaddr(20),
      I2 => s_axi_awaddr(52),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(24)
    );
\gen_arbiter.m_mesg_i[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(85),
      I1 => s_axi_awaddr(21),
      I2 => s_axi_awaddr(53),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(25)
    );
\gen_arbiter.m_mesg_i[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(86),
      I1 => s_axi_awaddr(22),
      I2 => s_axi_awaddr(54),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(26)
    );
\gen_arbiter.m_mesg_i[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(87),
      I1 => s_axi_awaddr(23),
      I2 => s_axi_awaddr(55),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(27)
    );
\gen_arbiter.m_mesg_i[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(88),
      I1 => s_axi_awaddr(24),
      I2 => s_axi_awaddr(56),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(28)
    );
\gen_arbiter.m_mesg_i[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(89),
      I1 => s_axi_awaddr(25),
      I2 => s_axi_awaddr(57),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(29)
    );
\gen_arbiter.m_mesg_i[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^aa_wm_awgrant_enc\(0),
      I1 => \^aa_wm_awgrant_enc\(1),
      O => \gen_arbiter.m_mesg_i[2]_i_1_n_0\
    );
\gen_arbiter.m_mesg_i[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(90),
      I1 => s_axi_awaddr(26),
      I2 => s_axi_awaddr(58),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(30)
    );
\gen_arbiter.m_mesg_i[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(91),
      I1 => s_axi_awaddr(27),
      I2 => s_axi_awaddr(59),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(31)
    );
\gen_arbiter.m_mesg_i[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(92),
      I1 => s_axi_awaddr(28),
      I2 => s_axi_awaddr(60),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(32)
    );
\gen_arbiter.m_mesg_i[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(93),
      I1 => s_axi_awaddr(29),
      I2 => s_axi_awaddr(61),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(33)
    );
\gen_arbiter.m_mesg_i[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(94),
      I1 => s_axi_awaddr(30),
      I2 => s_axi_awaddr(62),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(34)
    );
\gen_arbiter.m_mesg_i[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(95),
      I1 => s_axi_awaddr(31),
      I2 => s_axi_awaddr(63),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(35)
    );
\gen_arbiter.m_mesg_i[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlen(8),
      I1 => s_axi_awlen(0),
      I2 => s_axi_awlen(4),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(36)
    );
\gen_arbiter.m_mesg_i[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlen(9),
      I1 => s_axi_awlen(1),
      I2 => s_axi_awlen(5),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(37)
    );
\gen_arbiter.m_mesg_i[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlen(10),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awlen(6),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(38)
    );
\gen_arbiter.m_mesg_i[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlen(11),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awlen(7),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(39)
    );
\gen_arbiter.m_mesg_i[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      O => p_2_in
    );
\gen_arbiter.m_mesg_i[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^aa_wm_awgrant_enc\(1),
      I1 => \^aa_wm_awgrant_enc\(0),
      O => \gen_arbiter.m_mesg_i[3]_i_3_n_0\
    );
\gen_arbiter.m_mesg_i[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awsize(6),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(3),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(44)
    );
\gen_arbiter.m_mesg_i[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awsize(7),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(4),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(45)
    );
\gen_arbiter.m_mesg_i[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awsize(8),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(5),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(46)
    );
\gen_arbiter.m_mesg_i[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awlock(2),
      I1 => s_axi_awlock(0),
      I2 => s_axi_awlock(1),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(47)
    );
\gen_arbiter.m_mesg_i[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awprot(6),
      I1 => s_axi_awprot(0),
      I2 => s_axi_awprot(3),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(49)
    );
\gen_arbiter.m_mesg_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(64),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_awaddr(32),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(4)
    );
\gen_arbiter.m_mesg_i[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awprot(7),
      I1 => s_axi_awprot(1),
      I2 => s_axi_awprot(4),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(50)
    );
\gen_arbiter.m_mesg_i[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awprot(8),
      I1 => s_axi_awprot(2),
      I2 => s_axi_awprot(5),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(51)
    );
\gen_arbiter.m_mesg_i[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awburst(4),
      I1 => s_axi_awburst(0),
      I2 => s_axi_awburst(2),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(56)
    );
\gen_arbiter.m_mesg_i[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awburst(5),
      I1 => s_axi_awburst(1),
      I2 => s_axi_awburst(3),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(57)
    );
\gen_arbiter.m_mesg_i[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awcache(8),
      I1 => s_axi_awcache(0),
      I2 => s_axi_awcache(4),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(58)
    );
\gen_arbiter.m_mesg_i[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awcache(9),
      I1 => s_axi_awcache(1),
      I2 => s_axi_awcache(5),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(59)
    );
\gen_arbiter.m_mesg_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(65),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_awaddr(33),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(5)
    );
\gen_arbiter.m_mesg_i[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awcache(10),
      I1 => s_axi_awcache(2),
      I2 => s_axi_awcache(6),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(60)
    );
\gen_arbiter.m_mesg_i[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awcache(11),
      I1 => s_axi_awcache(3),
      I2 => s_axi_awcache(7),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(61)
    );
\gen_arbiter.m_mesg_i[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awqos(8),
      I1 => s_axi_awqos(0),
      I2 => s_axi_awqos(4),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(62)
    );
\gen_arbiter.m_mesg_i[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awqos(9),
      I1 => s_axi_awqos(1),
      I2 => s_axi_awqos(5),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(63)
    );
\gen_arbiter.m_mesg_i[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awqos(10),
      I1 => s_axi_awqos(2),
      I2 => s_axi_awqos(6),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(64)
    );
\gen_arbiter.m_mesg_i[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awqos(11),
      I1 => s_axi_awqos(3),
      I2 => s_axi_awqos(7),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(65)
    );
\gen_arbiter.m_mesg_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(66),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_awaddr(34),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(6)
    );
\gen_arbiter.m_mesg_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(67),
      I1 => s_axi_awaddr(3),
      I2 => s_axi_awaddr(35),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(7)
    );
\gen_arbiter.m_mesg_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(68),
      I1 => s_axi_awaddr(4),
      I2 => s_axi_awaddr(36),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(8)
    );
\gen_arbiter.m_mesg_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_awaddr(69),
      I1 => s_axi_awaddr(5),
      I2 => s_axi_awaddr(37),
      I3 => \^aa_wm_awgrant_enc\(0),
      I4 => \^aa_wm_awgrant_enc\(1),
      O => m_mesg_mux(9)
    );
\gen_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(0),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(0),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(10),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(10),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(11),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(11),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(12),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(12),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(13),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(13),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(14),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(14),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(15),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(15),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(16),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(16),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(17),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(17),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(18),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(18),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(19),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(19),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(1),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(1),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(20),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(20),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(21),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(21),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(22),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(22),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(23),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(23),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(24),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(24),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(25),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(25),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(26),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(26),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(27),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(27),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(28),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(28),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(29),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(29),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => \gen_arbiter.m_mesg_i[2]_i_1_n_0\,
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(2),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(30),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(30),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(31),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(31),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(32),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(32),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(33),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(33),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(34),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(34),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(35),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(35),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(36),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(36),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(37),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(37),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(38),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(38),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(39),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(39),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => \gen_arbiter.m_mesg_i[3]_i_3_n_0\,
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(3),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(44),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(40),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(45),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(41),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(46),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(42),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(47),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(43),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(49),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(44),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(4),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(4),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(50),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(45),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(51),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(46),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(56),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(47),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(57),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(48),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(58),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(49),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(59),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(50),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(5),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(5),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(60),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(51),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(61),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(52),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(62),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(53),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(63),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(54),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(64),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(55),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(65),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(56),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(6),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(6),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(7),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(7),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(8),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(8),
      R => reset
    );
\gen_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(9),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(9),
      R => reset
    );
\gen_arbiter.m_target_hot_i[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFDF00"
    )
        port map (
      I0 => \any_prio129_out__0\,
      I1 => \^ss_aa_awready\(2),
      I2 => next_hot(1),
      I3 => grant_hot,
      I4 => \^aa_mi_awtarget_hot\(0),
      O => \gen_arbiter.m_target_hot_i[0]_i_1__0_n_0\
    );
\gen_arbiter.m_target_hot_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_target_hot_i[0]_i_1__0_n_0\,
      Q => \^aa_mi_awtarget_hot\(0),
      R => reset
    );
\gen_arbiter.m_valid_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"035F035FFFFF0000"
    )
        port map (
      I0 => m_axi_awready(0),
      I1 => m_ready_d(0),
      I2 => \^aa_mi_awtarget_hot\(0),
      I3 => m_ready_d(1),
      I4 => \gen_arbiter.any_grant_reg_n_0\,
      I5 => \^aa_sa_awvalid\,
      O => \gen_arbiter.m_valid_i_i_1_n_0\
    );
\gen_arbiter.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_valid_i_i_1_n_0\,
      Q => \^aa_sa_awvalid\,
      R => reset
    );
\gen_arbiter.qual_reg[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w_issuing_cnt(0),
      I1 => w_issuing_cnt(1),
      O => \gen_master_slots[0].w_issuing_cnt_reg[0]\
    );
\gen_arbiter.qual_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \gen_arbiter.qual_reg_reg_n_0_[0]\,
      R => reset
    );
\gen_arbiter.qual_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => p_0_in25_in,
      R => reset
    );
\gen_arbiter.qual_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => \gen_arbiter.qual_reg_reg[2]_0\(0),
      R => reset
    );
\gen_arbiter.s_ready_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      I1 => aresetn_d,
      I2 => \^aa_sa_awvalid\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[0]_i_1_n_0\
    );
\gen_arbiter.s_ready_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      I1 => aresetn_d,
      I2 => \^aa_sa_awvalid\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[1]_i_1_n_0\
    );
\gen_arbiter.s_ready_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[2]\,
      I1 => aresetn_d,
      I2 => \^aa_sa_awvalid\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[2]_i_1_n_0\
    );
\gen_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[0]_i_1_n_0\,
      Q => \^ss_aa_awready\(0),
      R => '0'
    );
\gen_arbiter.s_ready_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[1]_i_1_n_0\,
      Q => \^ss_aa_awready\(1),
      R => '0'
    );
\gen_arbiter.s_ready_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[2]_i_1_n_0\,
      Q => \^ss_aa_awready\(2),
      R => '0'
    );
\gen_master_slots[0].w_issuing_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CF0F03CC3F0F0C2"
    )
        port map (
      I0 => w_issuing_cnt(2),
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(1),
      I3 => \gen_master_slots[0].w_issuing_cnt_reg[1]\,
      I4 => \^p_31_in\,
      I5 => \p_32_out__0\,
      O => \gen_master_slots[0].w_issuing_cnt_reg[2]\
    );
\gen_master_slots[0].w_issuing_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAA6AA9AAAAA8"
    )
        port map (
      I0 => w_issuing_cnt(2),
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(1),
      I3 => \gen_master_slots[0].w_issuing_cnt_reg[1]\,
      I4 => \^p_31_in\,
      I5 => \p_32_out__0\,
      O => \gen_master_slots[0].w_issuing_cnt_reg[2]_0\
    );
\gen_master_slots[0].w_issuing_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_ready_d(1),
      I1 => m_axi_awready(0),
      I2 => \^aa_mi_awtarget_hot\(0),
      I3 => \^aa_sa_awvalid\,
      O => \^p_31_in\
    );
\gen_master_slots[0].w_issuing_cnt[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => \^aa_mi_awtarget_hot\(0),
      I2 => m_axi_awready(0),
      I3 => m_ready_d(1),
      I4 => \gen_master_slots[0].w_issuing_cnt_reg[1]\,
      O => \p_32_out__0\
    );
\gen_rep[0].fifoaddr[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => \^aa_mi_awtarget_hot\(0),
      O => \gen_arbiter.m_valid_i_reg_0\
    );
\m_axi_awvalid[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^aa_mi_awtarget_hot\(0),
      I1 => \^aa_sa_awvalid\,
      I2 => m_ready_d(1),
      O => m_axi_awvalid(0)
    );
\storage_data1[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => Q(1),
      I1 => m_ready_d(0),
      I2 => \^aa_sa_awvalid\,
      I3 => \^aa_mi_awtarget_hot\(0),
      O => \FSM_onehot_state_reg[3]\
    );
\storage_data1[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => m_ready_d(0),
      I1 => \^aa_sa_awvalid\,
      I2 => \^aa_mi_awtarget_hot\(0),
      I3 => Q(0),
      O => \m_ready_d_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp is
  port (
    \chosen_reg[0]_0\ : out STD_LOGIC;
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp is
  signal \chosen[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \^chosen_reg[0]_0\ : STD_LOGIC;
  signal \last_rr_hot[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \last_rr_hot[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \chosen[0]_i_1__0\ : label is "soft_lutpair86";
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute SOFT_HLUTNM of \last_rr_hot[0]_i_1__4\ : label is "soft_lutpair86";
begin
  \chosen_reg[0]_0\ <= \^chosen_reg[0]_0\;
\chosen[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEFF00"
    )
        port map (
      I0 => \last_rr_hot_reg_n_0_[0]\,
      I1 => p_2_in,
      I2 => s_axi_bready(0),
      I3 => \^chosen_reg[0]_0\,
      I4 => \m_rvalid_qual__0\(0),
      O => \chosen[0]_i_1__0_n_0\
    );
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[0]_i_1__0_n_0\,
      Q => \^chosen_reg[0]_0\,
      R => reset
    );
\last_rr_hot[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD000"
    )
        port map (
      I0 => \^chosen_reg[0]_0\,
      I1 => s_axi_bready(0),
      I2 => \m_rvalid_qual__0\(0),
      I3 => p_2_in,
      I4 => \last_rr_hot_reg_n_0_[0]\,
      O => \last_rr_hot[0]_i_1__4_n_0\
    );
\last_rr_hot[1]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F00"
    )
        port map (
      I0 => \^chosen_reg[0]_0\,
      I1 => s_axi_bready(0),
      I2 => \m_rvalid_qual__0\(0),
      I3 => p_2_in,
      O => \last_rr_hot[1]_i_1__4_n_0\
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[0]_i_1__4_n_0\,
      Q => \last_rr_hot_reg_n_0_[0]\,
      R => reset
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[1]_i_1__4_n_0\,
      Q => p_2_in,
      S => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_10 is
  port (
    \chosen_reg[0]_0\ : out STD_LOGIC;
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_10 : entity is "axi_crossbar_v2_1_21_arbiter_resp";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_10 is
  signal \chosen[0]_i_1_n_0\ : STD_LOGIC;
  signal \^chosen_reg[0]_0\ : STD_LOGIC;
  signal \last_rr_hot[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \last_rr_hot[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \chosen[0]_i_1\ : label is "soft_lutpair77";
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute SOFT_HLUTNM of \last_rr_hot[0]_i_1__2\ : label is "soft_lutpair77";
begin
  \chosen_reg[0]_0\ <= \^chosen_reg[0]_0\;
\chosen[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEFF00"
    )
        port map (
      I0 => \last_rr_hot_reg_n_0_[0]\,
      I1 => p_2_in,
      I2 => s_axi_bready(0),
      I3 => \^chosen_reg[0]_0\,
      I4 => \m_rvalid_qual__0\(0),
      O => \chosen[0]_i_1_n_0\
    );
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[0]_i_1_n_0\,
      Q => \^chosen_reg[0]_0\,
      R => reset
    );
\last_rr_hot[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD000"
    )
        port map (
      I0 => \^chosen_reg[0]_0\,
      I1 => s_axi_bready(0),
      I2 => \m_rvalid_qual__0\(0),
      I3 => p_2_in,
      I4 => \last_rr_hot_reg_n_0_[0]\,
      O => \last_rr_hot[0]_i_1__2_n_0\
    );
\last_rr_hot[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F00"
    )
        port map (
      I0 => \^chosen_reg[0]_0\,
      I1 => s_axi_bready(0),
      I2 => \m_rvalid_qual__0\(0),
      I3 => p_2_in,
      O => \last_rr_hot[1]_i_1__2_n_0\
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[0]_i_1__2_n_0\,
      Q => \last_rr_hot_reg_n_0_[0]\,
      R => reset
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[1]_i_1__2_n_0\,
      Q => p_2_in,
      S => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_11 is
  port (
    \chosen_reg[0]_0\ : out STD_LOGIC;
    st_aa_arvalid_qual : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_multi_thread.accept_cnt\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_11 : entity is "axi_crossbar_v2_1_21_arbiter_resp";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_11 is
  signal \chosen[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \^chosen_reg[0]_0\ : STD_LOGIC;
  signal \last_rr_hot[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \last_rr_hot[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \chosen[0]_i_1__1\ : label is "soft_lutpair76";
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute SOFT_HLUTNM of \last_rr_hot[0]_i_1__1\ : label is "soft_lutpair76";
begin
  \chosen_reg[0]_0\ <= \^chosen_reg[0]_0\;
\chosen[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEF0FEF0"
    )
        port map (
      I0 => \last_rr_hot_reg_n_0_[0]\,
      I1 => p_2_in,
      I2 => \^chosen_reg[0]_0\,
      I3 => \m_rvalid_qual__1\(0),
      I4 => s_axi_rready(0),
      O => \chosen[0]_i_1__1_n_0\
    );
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[0]_i_1__1_n_0\,
      Q => \^chosen_reg[0]_0\,
      R => reset
    );
\gen_arbiter.last_rr_hot[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDDDDDDDDDDDDDD"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(1),
      I1 => \gen_multi_thread.accept_cnt\(0),
      I2 => s_axi_rlast(0),
      I3 => \m_rvalid_qual__1\(0),
      I4 => \^chosen_reg[0]_0\,
      I5 => s_axi_rready(0),
      O => st_aa_arvalid_qual(0)
    );
\last_rr_hot[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB000"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => \^chosen_reg[0]_0\,
      I2 => p_2_in,
      I3 => \m_rvalid_qual__1\(0),
      I4 => \last_rr_hot_reg_n_0_[0]\,
      O => \last_rr_hot[0]_i_1__1_n_0\
    );
\last_rr_hot[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F00"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => \^chosen_reg[0]_0\,
      I2 => \m_rvalid_qual__1\(0),
      I3 => p_2_in,
      O => \last_rr_hot[1]_i_1__1_n_0\
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[0]_i_1__1_n_0\,
      Q => \last_rr_hot_reg_n_0_[0]\,
      R => reset
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[1]_i_1__1_n_0\,
      Q => p_2_in,
      S => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_14 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[0]_0\ : out STD_LOGIC;
    \chosen_reg[1]_0\ : out STD_LOGIC;
    \valid_qual_i3__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.accept_cnt\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[1]_0\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_14 : entity is "axi_crossbar_v2_1_21_arbiter_resp";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_14;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_14 is
  signal access_done : STD_LOGIC;
  signal \chosen[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \chosen[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \^chosen_reg[0]_0\ : STD_LOGIC;
  signal \^chosen_reg[1]_0\ : STD_LOGIC;
  signal \last_rr_hot[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \last_rr_hot[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal need_arbitration : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \chosen[1]_i_2__0\ : label is "soft_lutpair70";
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[0]_i_2__0\ : label is "soft_lutpair70";
begin
  \chosen_reg[0]_0\ <= \^chosen_reg[0]_0\;
  \chosen_reg[1]_0\ <= \^chosen_reg[1]_0\;
\chosen[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F020FFFFF0200000"
    )
        port map (
      I0 => \last_rr_hot_reg_n_0_[0]\,
      I1 => \chosen_reg[0]_1\(0),
      I2 => \m_rvalid_qual__0\(0),
      I3 => p_2_in,
      I4 => need_arbitration,
      I5 => \^chosen_reg[0]_0\,
      O => \chosen[0]_i_1__0_n_0\
    );
\chosen[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F040FFFFF0400000"
    )
        port map (
      I0 => \m_rvalid_qual__0\(0),
      I1 => p_2_in,
      I2 => \chosen_reg[0]_1\(0),
      I3 => \last_rr_hot_reg_n_0_[0]\,
      I4 => need_arbitration,
      I5 => \^chosen_reg[1]_0\,
      O => \chosen[1]_i_1__0_n_0\
    );
\chosen[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8CBF8C"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => \m_rvalid_qual__0\(0),
      I2 => \^chosen_reg[0]_0\,
      I3 => \chosen_reg[0]_1\(0),
      I4 => \^chosen_reg[1]_0\,
      O => need_arbitration
    );
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[0]_i_1__0_n_0\,
      Q => \^chosen_reg[0]_0\,
      R => reset
    );
\chosen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[1]_i_1__0_n_0\,
      Q => \^chosen_reg[1]_0\,
      R => reset
    );
\gen_arbiter.qual_reg[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA2FFFFFFFF"
    )
        port map (
      I0 => \valid_qual_i3__0\(0),
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => \gen_multi_thread.accept_cnt\(0),
      I3 => access_done,
      I4 => m_ready_d(0),
      I5 => s_axi_awvalid(0),
      O => D(0)
    );
\gen_arbiter.qual_reg[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \^chosen_reg[1]_0\,
      I1 => \chosen_reg[0]_1\(0),
      I2 => \^chosen_reg[0]_0\,
      I3 => \m_rvalid_qual__0\(0),
      I4 => s_axi_bready(0),
      O => access_done
    );
\last_rr_hot[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222AAAAF222F222"
    )
        port map (
      I0 => \last_rr_hot_reg_n_0_[0]\,
      I1 => \chosen_reg[0]_1\(0),
      I2 => \m_rvalid_qual__0\(0),
      I3 => p_2_in,
      I4 => s_axi_bready(0),
      I5 => \last_rr_hot_reg[1]_0\,
      O => \last_rr_hot[0]_i_1__0_n_0\
    );
\last_rr_hot[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF008F888F88"
    )
        port map (
      I0 => \last_rr_hot_reg_n_0_[0]\,
      I1 => \chosen_reg[0]_1\(0),
      I2 => \m_rvalid_qual__0\(0),
      I3 => p_2_in,
      I4 => s_axi_bready(0),
      I5 => \last_rr_hot_reg[1]_0\,
      O => \last_rr_hot[1]_i_1__0_n_0\
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[0]_i_1__0_n_0\,
      Q => \last_rr_hot_reg_n_0_[0]\,
      R => reset
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[1]_i_1__0_n_0\,
      Q => p_2_in,
      S => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_15 is
  port (
    chosen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    st_aa_arvalid_qual : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.grant_hot[2]_i_2\ : in STD_LOGIC;
    \gen_arbiter.grant_hot[2]_i_2_0\ : in STD_LOGIC;
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[1]_0\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_15 : entity is "axi_crossbar_v2_1_21_arbiter_resp";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_15;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_15 is
  signal \^chosen\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \chosen[0]_i_1_n_0\ : STD_LOGIC;
  signal \chosen[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.resp_select\ : STD_LOGIC;
  signal \last_rr_hot[0]_i_1_n_0\ : STD_LOGIC;
  signal \last_rr_hot[1]_i_1_n_0\ : STD_LOGIC;
  signal \last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal need_arbitration : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \chosen[1]_i_2\ : label is "soft_lutpair68";
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \gen_arbiter.grant_hot[2]_i_10\ : label is "soft_lutpair68";
begin
  chosen(1 downto 0) <= \^chosen\(1 downto 0);
\chosen[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F020FFFFF0200000"
    )
        port map (
      I0 => \last_rr_hot_reg_n_0_[0]\,
      I1 => \m_rvalid_qual__1\(1),
      I2 => \m_rvalid_qual__1\(0),
      I3 => p_2_in,
      I4 => need_arbitration,
      I5 => \^chosen\(0),
      O => \chosen[0]_i_1_n_0\
    );
\chosen[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F020FFFFF0200000"
    )
        port map (
      I0 => p_2_in,
      I1 => \m_rvalid_qual__1\(0),
      I2 => \m_rvalid_qual__1\(1),
      I3 => \last_rr_hot_reg_n_0_[0]\,
      I4 => need_arbitration,
      I5 => \^chosen\(1),
      O => \chosen[1]_i_1_n_0\
    );
\chosen[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFA0272"
    )
        port map (
      I0 => \m_rvalid_qual__1\(0),
      I1 => \^chosen\(0),
      I2 => \m_rvalid_qual__1\(1),
      I3 => \^chosen\(1),
      I4 => s_axi_rready(0),
      O => need_arbitration
    );
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[0]_i_1_n_0\,
      Q => \^chosen\(0),
      R => reset
    );
\chosen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[1]_i_1_n_0\,
      Q => \^chosen\(1),
      R => reset
    );
\gen_arbiter.grant_hot[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^chosen\(1),
      I1 => \m_rvalid_qual__1\(1),
      O => \gen_multi_thread.resp_select\
    );
\gen_arbiter.grant_hot[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFDDDDDDDDDDDDD"
    )
        port map (
      I0 => \gen_arbiter.grant_hot[2]_i_2\,
      I1 => \gen_arbiter.grant_hot[2]_i_2_0\,
      I2 => s_axi_rlast(0),
      I3 => \gen_multi_thread.resp_select\,
      I4 => \last_rr_hot_reg[1]_0\,
      I5 => s_axi_rready(0),
      O => st_aa_arvalid_qual(0)
    );
\last_rr_hot[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222F222AAAAF222"
    )
        port map (
      I0 => \last_rr_hot_reg_n_0_[0]\,
      I1 => \m_rvalid_qual__1\(1),
      I2 => \m_rvalid_qual__1\(0),
      I3 => p_2_in,
      I4 => \last_rr_hot_reg[1]_0\,
      I5 => s_axi_rready(0),
      O => \last_rr_hot[0]_i_1_n_0\
    );
\last_rr_hot[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F88FF008F88"
    )
        port map (
      I0 => \last_rr_hot_reg_n_0_[0]\,
      I1 => \m_rvalid_qual__1\(1),
      I2 => \m_rvalid_qual__1\(0),
      I3 => p_2_in,
      I4 => \last_rr_hot_reg[1]_0\,
      I5 => s_axi_rready(0),
      O => \last_rr_hot[1]_i_1_n_0\
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[0]_i_1_n_0\,
      Q => \last_rr_hot_reg_n_0_[0]\,
      R => reset
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[1]_i_1_n_0\,
      Q => p_2_in,
      S => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_7 is
  port (
    \chosen_reg[0]_0\ : out STD_LOGIC;
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \m_rvalid_qual__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_7 : entity is "axi_crossbar_v2_1_21_arbiter_resp";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_7 is
  signal \chosen[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \^chosen_reg[0]_0\ : STD_LOGIC;
  signal \last_rr_hot[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \last_rr_hot[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \chosen[0]_i_1__2\ : label is "soft_lutpair85";
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute SOFT_HLUTNM of \last_rr_hot[0]_i_1__3\ : label is "soft_lutpair85";
begin
  \chosen_reg[0]_0\ <= \^chosen_reg[0]_0\;
\chosen[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEF0FEF0"
    )
        port map (
      I0 => \last_rr_hot_reg_n_0_[0]\,
      I1 => p_2_in,
      I2 => \^chosen_reg[0]_0\,
      I3 => \m_rvalid_qual__1\(0),
      I4 => s_axi_rready(0),
      O => \chosen[0]_i_1__2_n_0\
    );
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[0]_i_1__2_n_0\,
      Q => \^chosen_reg[0]_0\,
      R => reset
    );
\last_rr_hot[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB000"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => \^chosen_reg[0]_0\,
      I2 => p_2_in,
      I3 => \m_rvalid_qual__1\(0),
      I4 => \last_rr_hot_reg_n_0_[0]\,
      O => \last_rr_hot[0]_i_1__3_n_0\
    );
\last_rr_hot[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F00"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => \^chosen_reg[0]_0\,
      I2 => \m_rvalid_qual__1\(0),
      I3 => p_2_in,
      O => \last_rr_hot[1]_i_1__3_n_0\
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[0]_i_1__3_n_0\,
      Q => \last_rr_hot_reg_n_0_[0]\,
      R => reset
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[1]_i_1__3_n_0\,
      Q => p_2_in,
      S => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter is
  port (
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_ready_d_reg[1]_0\ : out STD_LOGIC;
    ss_wr_awvalid_0 : out STD_LOGIC;
    ss_wr_awready_0 : in STD_LOGIC;
    ss_aa_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter is
  signal \^m_ready_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \s_axi_awready[0]_INST_0\ : label is "soft_lutpair72";
begin
  m_ready_d(1 downto 0) <= \^m_ready_d\(1 downto 0);
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d\(1),
      O => ss_wr_awvalid_0
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0008000C0000"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready_0,
      I3 => \^m_ready_d\(1),
      I4 => \^m_ready_d\(0),
      I5 => ss_aa_awready(0),
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CC80"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready_0,
      I3 => \^m_ready_d\(1),
      I4 => \^m_ready_d\(0),
      I5 => ss_aa_awready(0),
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => \^m_ready_d\(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d\(1),
      R => '0'
    );
\s_axi_awready[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => ss_wr_awready_0,
      I1 => \^m_ready_d\(1),
      I2 => \^m_ready_d\(0),
      I3 => ss_aa_awready(0),
      O => s_axi_awready(0)
    );
\storage_data1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^m_ready_d\(1),
      I1 => s_axi_awvalid(0),
      I2 => Q(0),
      O => \m_ready_d_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_2 is
  port (
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_ready_d_reg[1]_0\ : out STD_LOGIC;
    ss_wr_awvalid_1 : out STD_LOGIC;
    ss_aa_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awready_1 : in STD_LOGIC;
    ss_aa_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_2 : entity is "axi_crossbar_v2_1_21_splitter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_2 is
  signal \^m_ready_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[2]_i_4\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \s_axi_awready[1]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \storage_data1[0]_i_2__0\ : label is "soft_lutpair81";
begin
  m_ready_d(1 downto 0) <= \^m_ready_d\(1 downto 0);
\FSM_onehot_state[3]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d\(1),
      O => ss_wr_awvalid_1
    );
\gen_arbiter.last_rr_hot[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d\(0),
      O => ss_aa_awvalid(0)
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0008000C0000"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready_1,
      I3 => \^m_ready_d\(1),
      I4 => \^m_ready_d\(0),
      I5 => ss_aa_awready(0),
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CC80"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready_1,
      I3 => \^m_ready_d\(1),
      I4 => \^m_ready_d\(0),
      I5 => ss_aa_awready(0),
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => \^m_ready_d\(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d\(1),
      R => '0'
    );
\s_axi_awready[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => ss_wr_awready_1,
      I1 => \^m_ready_d\(1),
      I2 => \^m_ready_d\(0),
      I3 => ss_aa_awready(0),
      O => s_axi_awready(0)
    );
\storage_data1[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^m_ready_d\(1),
      I1 => s_axi_awvalid(0),
      I2 => Q(0),
      O => \m_ready_d_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_4 is
  port (
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_ready_d_reg[1]_0\ : out STD_LOGIC;
    ss_wr_awvalid_2 : out STD_LOGIC;
    \any_prio129_out__0\ : out STD_LOGIC;
    ss_wr_awready_2 : in STD_LOGIC;
    ss_aa_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_target_hot_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_4 : entity is "axi_crossbar_v2_1_21_splitter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_4 is
  signal \^m_ready_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \gen_arbiter.grant_hot[2]_i_2__0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \s_axi_awready[2]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \storage_data1[0]_i_2__1\ : label is "soft_lutpair89";
begin
  m_ready_d(1 downto 0) <= \^m_ready_d\(1 downto 0);
\FSM_onehot_state[3]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d\(1),
      O => ss_wr_awvalid_2
    );
\gen_arbiter.grant_hot[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^m_ready_d\(0),
      I1 => s_axi_awvalid(0),
      I2 => \gen_arbiter.m_target_hot_i_reg[0]\(0),
      O => \any_prio129_out__0\
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0008000C0000"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready_2,
      I3 => \^m_ready_d\(1),
      I4 => \^m_ready_d\(0),
      I5 => ss_aa_awready(0),
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CC80"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready_2,
      I3 => \^m_ready_d\(1),
      I4 => \^m_ready_d\(0),
      I5 => ss_aa_awready(0),
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => \^m_ready_d\(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d\(1),
      R => '0'
    );
\s_axi_awready[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => ss_wr_awready_2,
      I1 => \^m_ready_d\(1),
      I2 => \^m_ready_d\(0),
      I3 => ss_aa_awready(0),
      O => s_axi_awready(0)
    );
\storage_data1[0]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^m_ready_d\(1),
      I1 => s_axi_awvalid(0),
      I2 => Q(0),
      O => \m_ready_d_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_6 is
  port (
    m_axi_awready_0_sp_1 : out STD_LOGIC;
    m_ready_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_awtarget_hot : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_6 : entity is "axi_crossbar_v2_1_21_splitter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_6 is
  signal m_axi_awready_0_sn_1 : STD_LOGIC;
  signal \^m_ready_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
begin
  m_axi_awready_0_sp_1 <= m_axi_awready_0_sn_1;
  m_ready_d(1 downto 0) <= \^m_ready_d\(1 downto 0);
\gen_arbiter.grant_hot[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCA00000FFFFFFFF"
    )
        port map (
      I0 => m_axi_awready(0),
      I1 => \^m_ready_d\(0),
      I2 => aa_mi_awtarget_hot(0),
      I3 => \^m_ready_d\(1),
      I4 => aa_sa_awvalid,
      I5 => aresetn_d,
      O => m_axi_awready_0_sn_1
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000C08CC00"
    )
        port map (
      I0 => aa_sa_awvalid,
      I1 => aresetn_d,
      I2 => m_axi_awready(0),
      I3 => \^m_ready_d\(0),
      I4 => aa_mi_awtarget_hot(0),
      I5 => \^m_ready_d\(1),
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => aresetn_d,
      I1 => \^m_ready_d\(0),
      I2 => aa_mi_awtarget_hot(0),
      I3 => \^m_ready_d\(1),
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => \^m_ready_d\(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl is
  port (
    push : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_wr_awready_2 : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    m_select_enc : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    \storage_data1_reg[0]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl is
  signal \^m_aready__1\ : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal storage_data2 : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
  \m_aready__1\ <= \^m_aready__1\;
  push <= \^push\;
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => '0',
      Q => storage_data2,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008F000000880000"
    )
        port map (
      I0 => Q(0),
      I1 => ss_wr_awready_2,
      I2 => \^m_aready__1\,
      I3 => m_ready_d(0),
      I4 => s_axi_awvalid(0),
      I5 => Q(1),
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => m_avalid,
      I2 => s_axi_wlast(0),
      I3 => m_axi_wid(0),
      I4 => \storage_data1_reg[0]\,
      I5 => m_select_enc,
      O => \^m_aready__1\
    );
\storage_data1[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F8B8F88808880"
    )
        port map (
      I0 => storage_data2,
      I1 => Q(0),
      I2 => \storage_data1_reg[0]_0\,
      I3 => \^m_aready__1\,
      I4 => \storage_data1_reg[0]_1\,
      I5 => m_select_enc,
      O => \FSM_onehot_state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_13 is
  port (
    push : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_wr_awready_0 : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_aready1__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    m_select_enc : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_13 : entity is "axi_data_fifo_v2_1_19_ndeep_srl";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_13 is
  signal \^m_aready__1\ : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal storage_data2 : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
  \m_aready__1\ <= \^m_aready__1\;
  push <= \^push\;
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => '0',
      Q => storage_data2,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008F000000880000"
    )
        port map (
      I0 => Q(0),
      I1 => ss_wr_awready_0,
      I2 => \^m_aready__1\,
      I3 => m_ready_d(0),
      I4 => s_axi_awvalid(0),
      I5 => Q(1),
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => m_avalid,
      I2 => s_axi_wlast(0),
      I3 => \m_aready1__0\(0),
      O => \^m_aready__1\
    );
\storage_data1[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F8B8F88808880"
    )
        port map (
      I0 => storage_data2,
      I1 => Q(0),
      I2 => \storage_data1_reg[0]\,
      I3 => \^m_aready__1\,
      I4 => \storage_data1_reg[0]_0\,
      I5 => m_select_enc,
      O => \FSM_onehot_state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_18 is
  port (
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    push : in STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \m_aready__1\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    \storage_data1_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_18 : entity is "axi_data_fifo_v2_1_19_ndeep_srl";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_18;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_18 is
  signal \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\ : STD_LOGIC;
  signal \storage_data1[0]_i_2__2_n_0\ : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => A(1 downto 0),
      CE => push,
      CLK => aclk,
      D => aa_wm_awgrant_enc(0),
      Q => \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\storage_data1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFABAFAAA0A8A0"
    )
        port map (
      I0 => \storage_data1[0]_i_2__2_n_0\,
      I1 => Q(0),
      I2 => \storage_data1_reg[0]\,
      I3 => \m_aready__1\,
      I4 => \storage_data1_reg[0]_0\,
      I5 => \storage_data1_reg[0]_1\,
      O => \FSM_onehot_state_reg[0]\
    );
\storage_data1[0]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_primitive_shifter.gen_srls[0].srl_inst_n_0\,
      I1 => Q(0),
      I2 => aa_wm_awgrant_enc(0),
      O => \storage_data1[0]_i_2__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_19 is
  port (
    push : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    aa_mi_awtarget_hot : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_avalid : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC;
    m_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_axi_wvalid[0]_INST_0_i_1\ : in STD_LOGIC;
    \storage_data1_reg[1]_0\ : in STD_LOGIC;
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2_0\ : in STD_LOGIC;
    m_select_enc_1 : in STD_LOGIC;
    m_avalid_2 : in STD_LOGIC;
    \m_axi_wvalid[0]_INST_0_i_1_0\ : in STD_LOGIC;
    \storage_data1_reg[1]_1\ : in STD_LOGIC;
    \storage_data1_reg[1]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_19 : entity is "axi_data_fifo_v2_1_19_ndeep_srl";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_19;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_19 is
  signal \gen_primitive_shifter.gen_srls[0].srl_inst_i_3_n_0\ : STD_LOGIC;
  signal \^m_aready__1\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \storage_data1[1]_i_2_n_0\ : STD_LOGIC;
  signal \^storage_data1_reg[1]\ : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
  \m_aready__1\ <= \^m_aready__1\;
  push <= \^push\;
  \storage_data1_reg[1]\ <= \^storage_data1_reg[1]\;
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => A(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => aa_wm_awgrant_enc(0),
      Q => p_2_out,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0000000A000000"
    )
        port map (
      I0 => Q(0),
      I1 => \^m_aready__1\,
      I2 => m_ready_d(0),
      I3 => aa_sa_awvalid,
      I4 => aa_mi_awtarget_hot(0),
      I5 => Q(1),
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00800000"
    )
        port map (
      I0 => \gen_primitive_shifter.gen_srls[0].srl_inst_i_3_n_0\,
      I1 => s_axi_wvalid(1),
      I2 => m_avalid,
      I3 => m_select_enc_0,
      I4 => m_axi_wid(0),
      I5 => \^storage_data1_reg[1]\,
      O => \^m_aready__1\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2C232000000000"
    )
        port map (
      I0 => s_axi_wlast(2),
      I1 => \m_axi_wvalid[0]_INST_0_i_1\,
      I2 => \storage_data1_reg[1]_0\,
      I3 => s_axi_wlast(0),
      I4 => s_axi_wlast(1),
      I5 => \gen_primitive_shifter.gen_srls[0].srl_inst_i_2_0\,
      O => \gen_primitive_shifter.gen_srls[0].srl_inst_i_3_n_0\
    );
\m_axi_wvalid[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => \storage_data1_reg[1]_0\,
      I1 => \m_axi_wvalid[0]_INST_0_i_1\,
      I2 => m_select_enc_1,
      I3 => m_avalid_2,
      I4 => s_axi_wvalid(0),
      I5 => \m_axi_wvalid[0]_INST_0_i_1_0\,
      O => \^storage_data1_reg[1]\
    );
\storage_data1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFABAFAAA0A8A0"
    )
        port map (
      I0 => \storage_data1[1]_i_2_n_0\,
      I1 => Q(0),
      I2 => \storage_data1_reg[1]_1\,
      I3 => \^m_aready__1\,
      I4 => \storage_data1_reg[1]_2\,
      I5 => \storage_data1_reg[1]_0\,
      O => \FSM_onehot_state_reg[0]\
    );
\storage_data1[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_out,
      I1 => Q(0),
      I2 => aa_wm_awgrant_enc(0),
      O => \storage_data1[1]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_9 is
  port (
    push : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_wr_awready_1 : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    \storage_data1_reg[0]_1\ : in STD_LOGIC;
    \storage_data1_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_9 : entity is "axi_data_fifo_v2_1_19_ndeep_srl";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_9 is
  signal \^m_aready__1\ : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal storage_data2 : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
  \m_aready__1\ <= \^m_aready__1\;
  push <= \^push\;
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => '0',
      Q => storage_data2,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008F000000880000"
    )
        port map (
      I0 => Q(0),
      I1 => ss_wr_awready_1,
      I2 => \^m_aready__1\,
      I3 => m_ready_d(0),
      I4 => s_axi_awvalid(0),
      I5 => Q(1),
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => m_avalid,
      I2 => s_axi_wlast(0),
      I3 => m_axi_wid(0),
      I4 => \storage_data1_reg[0]\,
      I5 => \storage_data1_reg[0]_0\,
      O => \^m_aready__1\
    );
\storage_data1[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F8B8F88808880"
    )
        port map (
      I0 => storage_data2,
      I1 => Q(0),
      I2 => \storage_data1_reg[0]_1\,
      I3 => \^m_aready__1\,
      I4 => \storage_data1_reg[0]_2\,
      I5 => \storage_data1_reg[0]_0\,
      O => \FSM_onehot_state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \aresetn_d_reg[1]_1\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\ is
  signal \^aresetn_d_reg[1]_0\ : STD_LOGIC;
  signal \m_valid_i_i_1__0_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mi_bready_1 : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal \s_ready_i_i_1__4_n_0\ : STD_LOGIC;
begin
  \aresetn_d_reg[1]_0\ <= \^aresetn_d_reg[1]_0\;
  m_valid_i_reg_0(0) <= \^m_valid_i_reg_0\(0);
  p_0_in <= \^p_0_in\;
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg[1]_1\,
      Q => \^aresetn_d_reg[1]_0\,
      R => '0'
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => chosen_0(0),
      I1 => \^m_valid_i_reg_0\(0),
      I2 => s_axi_bready(0),
      I3 => mi_bready_1,
      O => \m_valid_i_i_1__0_n_0\
    );
\m_valid_i_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aresetn_d_reg[1]_0\,
      O => \^p_0_in\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_1__0_n_0\,
      Q => \^m_valid_i_reg_0\(0),
      R => \^p_0_in\
    );
\s_ready_i_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5FF"
    )
        port map (
      I0 => \^m_valid_i_reg_0\(0),
      I1 => s_axi_bready(0),
      I2 => chosen_0(0),
      I3 => \^aresetn_d_reg[1]_0\,
      O => \s_ready_i_i_1__4_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__4_n_0\,
      Q => mi_bready_1,
      R => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_16\ is
  port (
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : out STD_LOGIC;
    \chosen_reg[0]\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[2]\ : out STD_LOGIC;
    \gen_multi_thread.accept_cnt_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \valid_qual_i3__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \access_done__0\ : out STD_LOGIC;
    \access_done__1\ : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_rvalid_qual__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__0_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    \m_rvalid_qual__0_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_31_in : in STD_LOGIC;
    \gen_multi_thread.accept_cnt_8\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.accept_cnt_9\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ready_d_10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.qual_reg_reg[2]\ : in STD_LOGIC;
    chosen_11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    chosen_12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_13 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_bresp[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_16\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_16\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_16\ is
  signal \^access_done__0\ : STD_LOGIC;
  signal \^access_done__1\ : STD_LOGIC;
  signal \aresetn_d_reg_n_0_[0]\ : STD_LOGIC;
  signal bready_carry : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^chosen_reg[0]\ : STD_LOGIC;
  signal \gen_arbiter.qual_reg[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_payload_i[3]_i_1_n_0\ : STD_LOGIC;
  signal m_valid_i_i_2_n_0 : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_ready_i_i_2_n_0 : STD_LOGIC;
  signal s_ready_i_i_4_n_0 : STD_LOGIC;
  signal s_ready_i_i_6_n_0 : STD_LOGIC;
  signal st_mr_bid : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal st_mr_bvalid : STD_LOGIC_VECTOR ( 0 to 0 );
  signal st_tmp_bid_target : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^valid_qual_i3__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[1]_i_2__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[2]_i_3__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[2]_i_5__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_2__2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_2__3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_2__4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_bid[0]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_bid[1]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_bresp[0]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_bvalid[1]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_bvalid[2]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of s_ready_i_i_4 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of s_ready_i_i_6 : label is "soft_lutpair19";
begin
  \access_done__0\ <= \^access_done__0\;
  \access_done__1\ <= \^access_done__1\;
  \chosen_reg[0]\ <= \^chosen_reg[0]\;
  m_axi_bready(0) <= \^m_axi_bready\(0);
  p_1_in <= \^p_1_in\;
  s_axi_bid(3 downto 0) <= \^s_axi_bid\(3 downto 0);
  s_axi_bresp(3 downto 0) <= \^s_axi_bresp\(3 downto 0);
  s_axi_bvalid(1 downto 0) <= \^s_axi_bvalid\(1 downto 0);
  \valid_qual_i3__0\(0) <= \^valid_qual_i3__0\(0);
\aresetn_d[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      I1 => aresetn,
      O => \aresetn_d_reg[0]_0\
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \aresetn_d_reg_n_0_[0]\,
      R => '0'
    );
\gen_arbiter.qual_reg[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA2FFFFFFFF"
    )
        port map (
      I0 => \^valid_qual_i3__0\(0),
      I1 => \gen_multi_thread.accept_cnt_8\(1),
      I2 => \gen_multi_thread.accept_cnt_8\(0),
      I3 => \^access_done__0\,
      I4 => m_ready_d(0),
      I5 => s_axi_awvalid(0),
      O => \gen_multi_thread.accept_cnt_reg[1]\(0)
    );
\gen_arbiter.qual_reg[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => st_mr_bvalid(0),
      I1 => st_mr_bid(2),
      I2 => st_mr_bid(3),
      I3 => chosen_11(0),
      I4 => s_axi_bready(1),
      O => \^access_done__0\
    );
\gen_arbiter.qual_reg[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA2FFFFFFFF"
    )
        port map (
      I0 => \^valid_qual_i3__0\(0),
      I1 => \gen_multi_thread.accept_cnt_9\(1),
      I2 => \gen_multi_thread.accept_cnt_9\(0),
      I3 => \^access_done__1\,
      I4 => m_ready_d_10(0),
      I5 => s_axi_awvalid(1),
      O => \gen_multi_thread.accept_cnt_reg[1]\(1)
    );
\gen_arbiter.qual_reg[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFDFDFDFDFDDD"
    )
        port map (
      I0 => w_issuing_cnt(2),
      I1 => \gen_arbiter.qual_reg_reg[2]\,
      I2 => st_mr_bvalid(0),
      I3 => s_ready_i_i_6_n_0,
      I4 => \gen_arbiter.qual_reg[2]_i_5__0_n_0\,
      I5 => s_ready_i_i_4_n_0,
      O => \^valid_qual_i3__0\(0)
    );
\gen_arbiter.qual_reg[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => st_mr_bvalid(0),
      I1 => st_mr_bid(2),
      I2 => st_mr_bid(3),
      I3 => chosen_12(0),
      I4 => s_axi_bready(2),
      O => \^access_done__1\
    );
\gen_arbiter.qual_reg[2]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => s_axi_bready(1),
      I1 => st_mr_bvalid(0),
      I2 => st_mr_bid(2),
      I3 => st_mr_bid(3),
      I4 => chosen_11(0),
      O => \gen_arbiter.qual_reg[2]_i_5__0_n_0\
    );
\gen_master_slots[0].w_issuing_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33CCCC32"
    )
        port map (
      I0 => w_issuing_cnt(2),
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(1),
      I3 => \^chosen_reg[0]\,
      I4 => p_31_in,
      O => \gen_master_slots[0].w_issuing_cnt_reg[2]\
    );
\last_rr_hot[1]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => st_mr_bvalid(0),
      I1 => st_mr_bid(2),
      I2 => st_mr_bid(3),
      O => \m_rvalid_qual__0\(0)
    );
\last_rr_hot[1]_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => st_mr_bvalid(0),
      I1 => st_mr_bid(2),
      I2 => st_mr_bid(3),
      O => \m_rvalid_qual__0_1\(0)
    );
\last_rr_hot[1]_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => st_mr_bvalid(0),
      I1 => st_mr_bid(2),
      I2 => st_mr_bid(3),
      O => \m_rvalid_qual__0_2\(0)
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => st_mr_bvalid(0),
      O => \m_payload_i[3]_i_1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1_n_0\,
      D => \m_payload_i_reg[5]_0\(0),
      Q => \^s_axi_bresp\(2),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1_n_0\,
      D => \m_payload_i_reg[5]_0\(1),
      Q => \^s_axi_bresp\(3),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1_n_0\,
      D => \m_payload_i_reg[5]_0\(2),
      Q => \^s_axi_bid\(2),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1_n_0\,
      D => \m_payload_i_reg[5]_0\(3),
      Q => \^s_axi_bid\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1_n_0\,
      D => \m_payload_i_reg[5]_0\(4),
      Q => st_mr_bid(2),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[3]_i_1_n_0\,
      D => \m_payload_i_reg[5]_0\(5),
      Q => st_mr_bid(3),
      R => '0'
    );
m_valid_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_axi_bready\(0),
      I2 => bready_carry(4),
      O => m_valid_i_i_2_n_0
    );
m_valid_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEAAAAAA"
    )
        port map (
      I0 => s_ready_i_i_6_n_0,
      I1 => s_axi_bready(1),
      I2 => st_mr_bid(3),
      I3 => st_mr_bid(2),
      I4 => \^s_axi_bvalid\(0),
      I5 => s_ready_i_i_4_n_0,
      O => bready_carry(4)
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_i_2_n_0,
      Q => st_mr_bvalid(0),
      R => p_0_in
    );
\s_axi_bid[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_bid\(2),
      I1 => \s_axi_bresp[1]\(0),
      I2 => chosen_13(1),
      O => \^s_axi_bid\(0)
    );
\s_axi_bid[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_bid\(3),
      I1 => \s_axi_bresp[1]\(0),
      I2 => chosen_13(1),
      O => \^s_axi_bid\(1)
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^s_axi_bresp\(2),
      I1 => \s_axi_bresp[1]\(0),
      I2 => chosen_13(1),
      O => \^s_axi_bresp\(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^s_axi_bresp\(3),
      I1 => \s_axi_bresp[1]\(0),
      I2 => chosen_13(1),
      O => \^s_axi_bresp\(1)
    );
\s_axi_bvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF820082008200"
    )
        port map (
      I0 => st_mr_bvalid(0),
      I1 => st_mr_bid(2),
      I2 => st_mr_bid(3),
      I3 => chosen_13(0),
      I4 => \s_axi_bresp[1]\(0),
      I5 => chosen_13(1),
      O => m_valid_i_reg_0
    );
\s_axi_bvalid[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => chosen_11(0),
      I1 => st_mr_bid(3),
      I2 => st_mr_bid(2),
      I3 => st_mr_bvalid(0),
      O => \^s_axi_bvalid\(0)
    );
\s_axi_bvalid[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => chosen_12(0),
      I1 => st_mr_bid(3),
      I2 => st_mr_bid(2),
      I3 => st_mr_bvalid(0),
      O => \^s_axi_bvalid\(1)
    );
\s_ready_i_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      O => \^p_1_in\
    );
s_ready_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FF"
    )
        port map (
      I0 => \^chosen_reg[0]\,
      I1 => m_axi_bvalid(0),
      I2 => st_mr_bvalid(0),
      I3 => s_ready_i_reg_0,
      O => s_ready_i_i_2_n_0
    );
s_ready_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001555FFFFFFFF"
    )
        port map (
      I0 => s_ready_i_i_4_n_0,
      I1 => chosen_11(0),
      I2 => st_tmp_bid_target(2),
      I3 => s_axi_bready(1),
      I4 => s_ready_i_i_6_n_0,
      I5 => st_mr_bvalid(0),
      O => \^chosen_reg[0]\
    );
s_ready_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80080000"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => chosen_13(0),
      I2 => st_mr_bid(3),
      I3 => st_mr_bid(2),
      I4 => st_mr_bvalid(0),
      O => s_ready_i_i_4_n_0
    );
s_ready_i_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => st_mr_bid(3),
      I1 => st_mr_bid(2),
      O => st_tmp_bid_target(2)
    );
s_ready_i_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => s_axi_bready(2),
      I1 => st_mr_bvalid(0),
      I2 => st_mr_bid(2),
      I3 => st_mr_bid(3),
      I4 => chosen_12(0),
      O => s_ready_i_i_6_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_i_2_n_0,
      Q => \^m_axi_bready\(0),
      R => \^p_1_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 16 downto 0 );
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    chosen : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rresp[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_rdata[31]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\ is
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal mi_rready_1 : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_valid_i_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \s_axi_rdata[10]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \s_axi_rdata[11]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \s_axi_rdata[12]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \s_axi_rdata[14]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \s_axi_rdata[15]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \s_axi_rdata[22]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \s_axi_rdata[23]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \s_axi_rdata[25]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \s_axi_rdata[26]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \s_axi_rdata[27]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \s_axi_rdata[28]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \s_axi_rdata[30]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \s_axi_rdata[4]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \s_axi_rdata[9]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \s_axi_rresp[0]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of s_ready_i_i_1 : label is "soft_lutpair58";
begin
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
m_valid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5DDD"
    )
        port map (
      I0 => mi_rready_1,
      I1 => \^m_valid_i_reg_0\,
      I2 => s_axi_rready(0),
      I3 => chosen(0),
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => p_0_in
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(4),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(5),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(6),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(7),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(8),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(9),
      O => s_axi_rdata(9)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(10),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(11),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(12),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(13),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(14),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(0),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(15),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(16),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(1),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(2),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rdata[31]\(3),
      O => s_axi_rdata(3)
    );
\s_axi_rresp[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rresp[1]\(0),
      O => s_axi_rresp(0)
    );
\s_axi_rresp[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => \s_axi_rresp[1]\(1),
      O => s_axi_rresp(1)
    );
s_ready_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD5"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => s_axi_rready(0),
      I2 => chosen(0),
      I3 => mi_rready_1,
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => mi_rready_1,
      R => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_17\ is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 46 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[2]\ : out STD_LOGIC;
    \r_cmd_pop_0__1\ : out STD_LOGIC;
    s_axi_rready_1_sp_1 : out STD_LOGIC;
    \chosen_reg[0]\ : out STD_LOGIC;
    s_axi_rready_2_sp_1 : out STD_LOGIC;
    \chosen_reg[0]_0\ : out STD_LOGIC;
    grant_hot : out STD_LOGIC;
    grant_hot0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_multi_thread.any_pop__1\ : out STD_LOGIC;
    \m_rvalid_qual__1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__1_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \m_rvalid_qual__1_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen : in STD_LOGIC_VECTOR ( 1 downto 0 );
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_multi_thread.accept_cnt\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.accept_cnt_reg[1]\ : in STD_LOGIC;
    \gen_multi_thread.accept_cnt_4\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.accept_cnt_reg[1]_0\ : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]\ : in STD_LOGIC;
    st_aa_arvalid_qual : in STD_LOGIC_VECTOR ( 1 downto 0 );
    next_hot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_multi_thread.accept_cnt_5\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_arbiter.qual_reg_reg[2]\ : in STD_LOGIC;
    chosen_6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_17\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_17\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_17\ is
  signal \addr_arbiter_ar/valid_qual_i3__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^chosen_reg[0]\ : STD_LOGIC;
  signal \^chosen_reg[0]_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[2]_i_8_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[2]_i_9_n_0\ : STD_LOGIC;
  signal \gen_arbiter.qual_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \^gen_multi_thread.any_pop__1\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_multi_thread.any_pop__1\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_read.si_transactor_ar/gen_multi_thread.any_pop__1\ : STD_LOGIC;
  signal \m_payload_i[36]_i_4_n_0\ : STD_LOGIC;
  signal \m_payload_i[36]_i_6_n_0\ : STD_LOGIC;
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in_0 : STD_LOGIC;
  signal \^r_cmd_pop_0__1\ : STD_LOGIC;
  signal rready_carry : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 46 downto 0 );
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_rlast\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_rready_1_sn_1 : STD_LOGIC;
  signal s_axi_rready_2_sn_1 : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal st_mr_rid : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal st_mr_rvalid : STD_LOGIC_VECTOR ( 0 to 0 );
  signal st_tmp_rid_target : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[2]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_2__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_2__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_6\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[37]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_axi_rdata[13]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi_rdata[19]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_axi_rdata[20]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_axi_rdata[21]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_axi_rdata[24]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_axi_rdata[29]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_axi_rdata[5]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_axi_rdata[8]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi_rid[0]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s_axi_rid[1]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s_axi_rlast[0]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_axi_rvalid[1]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rvalid[2]_INST_0\ : label is "soft_lutpair26";
begin
  \chosen_reg[0]\ <= \^chosen_reg[0]\;
  \chosen_reg[0]_0\ <= \^chosen_reg[0]_0\;
  \gen_multi_thread.any_pop__1\ <= \^gen_multi_thread.any_pop__1\;
  m_valid_i_reg_0(0) <= \^m_valid_i_reg_0\(0);
  \r_cmd_pop_0__1\ <= \^r_cmd_pop_0__1\;
  s_axi_rdata(46 downto 0) <= \^s_axi_rdata\(46 downto 0);
  s_axi_rid(3 downto 0) <= \^s_axi_rid\(3 downto 0);
  s_axi_rlast(1 downto 0) <= \^s_axi_rlast\(1 downto 0);
  s_axi_rready_1_sp_1 <= s_axi_rready_1_sn_1;
  s_axi_rready_2_sp_1 <= s_axi_rready_2_sn_1;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\gen_arbiter.grant_hot[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00AA008000"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg[2]\,
      I1 => st_aa_arvalid_qual(0),
      I2 => next_hot(0),
      I3 => \addr_arbiter_ar/valid_qual_i3__0\(0),
      I4 => \gen_arbiter.grant_hot[2]_i_8_n_0\,
      I5 => \gen_arbiter.grant_hot[2]_i_9_n_0\,
      O => grant_hot
    );
\gen_arbiter.grant_hot[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FFFF00000000"
    )
        port map (
      I0 => s_axi_rready(1),
      I1 => \^chosen_reg[0]\,
      I2 => \^s_axi_rlast\(1),
      I3 => \gen_multi_thread.accept_cnt\(0),
      I4 => \gen_multi_thread.accept_cnt\(1),
      I5 => next_hot(1),
      O => \gen_arbiter.grant_hot[2]_i_8_n_0\
    );
\gen_arbiter.grant_hot[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FFFF00000000"
    )
        port map (
      I0 => s_axi_rready(2),
      I1 => \^chosen_reg[0]_0\,
      I2 => \^s_axi_rlast\(1),
      I3 => \gen_multi_thread.accept_cnt_4\(0),
      I4 => \gen_multi_thread.accept_cnt_4\(1),
      I5 => next_hot(2),
      O => \gen_arbiter.grant_hot[2]_i_9_n_0\
    );
\gen_arbiter.last_rr_hot[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EA00EA00EA00"
    )
        port map (
      I0 => \gen_arbiter.grant_hot[2]_i_9_n_0\,
      I1 => next_hot(1),
      I2 => st_aa_arvalid_qual(1),
      I3 => \addr_arbiter_ar/valid_qual_i3__0\(0),
      I4 => next_hot(0),
      I5 => st_aa_arvalid_qual(0),
      O => grant_hot0
    );
\gen_arbiter.qual_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA2FFFF"
    )
        port map (
      I0 => \addr_arbiter_ar/valid_qual_i3__0\(0),
      I1 => \gen_multi_thread.accept_cnt_5\(1),
      I2 => \gen_multi_thread.accept_cnt_5\(0),
      I3 => \^gen_multi_thread.any_pop__1\,
      I4 => s_axi_arvalid(0),
      O => D(0)
    );
\gen_arbiter.qual_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => \^m_valid_i_reg_0\(0),
      I2 => chosen(0),
      I3 => chosen(1),
      I4 => \m_rvalid_qual__1_3\(0),
      I5 => \^s_axi_rlast\(1),
      O => \^gen_multi_thread.any_pop__1\
    );
\gen_arbiter.qual_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA2FFFF"
    )
        port map (
      I0 => \addr_arbiter_ar/valid_qual_i3__0\(0),
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => \gen_multi_thread.accept_cnt\(0),
      I3 => \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_multi_thread.any_pop__1\,
      I4 => s_axi_arvalid(1),
      O => D(1)
    );
\gen_arbiter.qual_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => s_axi_rready(1),
      I1 => chosen_6(0),
      I2 => st_mr_rid(3),
      I3 => st_mr_rid(2),
      I4 => st_mr_rvalid(0),
      I5 => \^s_axi_rlast\(1),
      O => \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_multi_thread.any_pop__1\
    );
\gen_arbiter.qual_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA2FFFF"
    )
        port map (
      I0 => \addr_arbiter_ar/valid_qual_i3__0\(0),
      I1 => \gen_multi_thread.accept_cnt_4\(1),
      I2 => \gen_multi_thread.accept_cnt_4\(0),
      I3 => \gen_slave_slots[2].gen_si_read.si_transactor_ar/gen_multi_thread.any_pop__1\,
      I4 => s_axi_arvalid(2),
      O => D(2)
    );
\gen_arbiter.qual_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAAAAAAAAAA"
    )
        port map (
      I0 => \gen_arbiter.qual_reg_reg[2]\,
      I1 => \m_payload_i[36]_i_4_n_0\,
      I2 => \gen_arbiter.qual_reg[2]_i_5_n_0\,
      I3 => \m_payload_i[36]_i_6_n_0\,
      I4 => \^s_axi_rlast\(1),
      I5 => st_mr_rvalid(0),
      O => \addr_arbiter_ar/valid_qual_i3__0\(0)
    );
\gen_arbiter.qual_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => s_axi_rready(2),
      I1 => chosen_7(0),
      I2 => st_mr_rid(3),
      I3 => st_mr_rid(2),
      I4 => st_mr_rvalid(0),
      I5 => \^s_axi_rlast\(1),
      O => \gen_slave_slots[2].gen_si_read.si_transactor_ar/gen_multi_thread.any_pop__1\
    );
\gen_arbiter.qual_reg[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80080000"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => chosen(0),
      I2 => st_mr_rid(3),
      I3 => st_mr_rid(2),
      I4 => st_mr_rvalid(0),
      O => \gen_arbiter.qual_reg[2]_i_5_n_0\
    );
\gen_master_slots[0].r_issuing_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC3332CC"
    )
        port map (
      I0 => r_issuing_cnt(2),
      I1 => r_issuing_cnt(0),
      I2 => r_issuing_cnt(1),
      I3 => \^r_cmd_pop_0__1\,
      I4 => \gen_master_slots[0].r_issuing_cnt_reg[0]\,
      O => \gen_master_slots[0].r_issuing_cnt_reg[2]\
    );
\gen_master_slots[0].r_issuing_cnt[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => st_mr_rvalid(0),
      I1 => \^s_axi_rlast\(1),
      I2 => \m_payload_i[36]_i_6_n_0\,
      I3 => \gen_arbiter.qual_reg[2]_i_5_n_0\,
      I4 => \m_payload_i[36]_i_4_n_0\,
      O => \^r_cmd_pop_0__1\
    );
\gen_multi_thread.accept_cnt[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807FFF00FF007F00"
    )
        port map (
      I0 => s_axi_rready(1),
      I1 => \^chosen_reg[0]\,
      I2 => \^s_axi_rlast\(1),
      I3 => \gen_multi_thread.accept_cnt\(1),
      I4 => \gen_multi_thread.accept_cnt\(0),
      I5 => \gen_multi_thread.accept_cnt_reg[1]\,
      O => s_axi_rready_1_sn_1
    );
\gen_multi_thread.accept_cnt[1]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807FFF00FF007F00"
    )
        port map (
      I0 => s_axi_rready(2),
      I1 => \^chosen_reg[0]_0\,
      I2 => \^s_axi_rlast\(1),
      I3 => \gen_multi_thread.accept_cnt_4\(1),
      I4 => \gen_multi_thread.accept_cnt_4\(0),
      I5 => \gen_multi_thread.accept_cnt_reg[1]_0\,
      O => s_axi_rready_2_sn_1
    );
\last_rr_hot[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => st_mr_rvalid(0),
      I1 => st_mr_rid(2),
      I2 => st_mr_rid(3),
      O => \m_rvalid_qual__1\(0)
    );
\last_rr_hot[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => st_mr_rvalid(0),
      I1 => st_mr_rid(2),
      I2 => st_mr_rid(3),
      O => \m_rvalid_qual__1_0\(0)
    );
\last_rr_hot[1]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => st_mr_rvalid(0),
      I1 => st_mr_rid(2),
      I2 => st_mr_rid(3),
      O => \^m_valid_i_reg_0\(0)
    );
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => skid_buffer(0)
    );
\m_payload_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => skid_buffer(10)
    );
\m_payload_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => skid_buffer(11)
    );
\m_payload_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => skid_buffer(12)
    );
\m_payload_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => skid_buffer(13)
    );
\m_payload_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => skid_buffer(14)
    );
\m_payload_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => skid_buffer(15)
    );
\m_payload_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => skid_buffer(16)
    );
\m_payload_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => skid_buffer(17)
    );
\m_payload_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => skid_buffer(18)
    );
\m_payload_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => skid_buffer(19)
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => skid_buffer(1)
    );
\m_payload_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => skid_buffer(20)
    );
\m_payload_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => skid_buffer(21)
    );
\m_payload_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => skid_buffer(22)
    );
\m_payload_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => skid_buffer(23)
    );
\m_payload_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => skid_buffer(24)
    );
\m_payload_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => skid_buffer(25)
    );
\m_payload_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => skid_buffer(26)
    );
\m_payload_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => skid_buffer(27)
    );
\m_payload_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => skid_buffer(28)
    );
\m_payload_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => skid_buffer(29)
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => skid_buffer(2)
    );
\m_payload_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => skid_buffer(30)
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => skid_buffer(31)
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => skid_buffer(32)
    );
\m_payload_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => skid_buffer(33)
    );
\m_payload_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rlast(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\m_payload_i[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rready_carry(4),
      I1 => st_mr_rvalid(0),
      O => p_1_in_0
    );
\m_payload_i[36]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => skid_buffer(36)
    );
\m_payload_i[36]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => \m_payload_i[36]_i_4_n_0\,
      I1 => s_axi_rready(0),
      I2 => chosen(0),
      I3 => st_tmp_rid_target(0),
      I4 => st_mr_rvalid(0),
      I5 => \m_payload_i[36]_i_6_n_0\,
      O => rready_carry(4)
    );
\m_payload_i[36]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => chosen_6(0),
      I1 => s_axi_rready(1),
      I2 => st_mr_rid(3),
      I3 => st_mr_rid(2),
      I4 => st_mr_rvalid(0),
      O => \m_payload_i[36]_i_4_n_0\
    );
\m_payload_i[36]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => st_mr_rid(3),
      I1 => st_mr_rid(2),
      O => st_tmp_rid_target(0)
    );
\m_payload_i[36]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => chosen_7(0),
      I1 => s_axi_rready(2),
      I2 => st_mr_rid(3),
      I3 => st_mr_rid(2),
      I4 => st_mr_rvalid(0),
      O => \m_payload_i[36]_i_6_n_0\
    );
\m_payload_i[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[37]\,
      O => skid_buffer(37)
    );
\m_payload_i[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[38]\,
      O => skid_buffer(38)
    );
\m_payload_i[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => skid_buffer(3)
    );
\m_payload_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => skid_buffer(4)
    );
\m_payload_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => skid_buffer(5)
    );
\m_payload_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => skid_buffer(6)
    );
\m_payload_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => skid_buffer(7)
    );
\m_payload_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => skid_buffer(8)
    );
\m_payload_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => skid_buffer(9)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(0),
      Q => \^s_axi_rdata\(15),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(10),
      Q => \^s_axi_rdata\(25),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(11),
      Q => \^s_axi_rdata\(26),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(12),
      Q => \^s_axi_rdata\(27),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(13),
      Q => \^s_axi_rdata\(28),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(14),
      Q => \^s_axi_rdata\(29),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(15),
      Q => \^s_axi_rdata\(30),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(16),
      Q => \^s_axi_rdata\(31),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(17),
      Q => \^s_axi_rdata\(32),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(18),
      Q => \^s_axi_rdata\(33),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(19),
      Q => \^s_axi_rdata\(34),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(1),
      Q => \^s_axi_rdata\(16),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(20),
      Q => \^s_axi_rdata\(35),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(21),
      Q => \^s_axi_rdata\(36),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(22),
      Q => \^s_axi_rdata\(37),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(23),
      Q => \^s_axi_rdata\(38),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(24),
      Q => \^s_axi_rdata\(39),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(25),
      Q => \^s_axi_rdata\(40),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(26),
      Q => \^s_axi_rdata\(41),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(27),
      Q => \^s_axi_rdata\(42),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(28),
      Q => \^s_axi_rdata\(43),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(29),
      Q => \^s_axi_rdata\(44),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(2),
      Q => \^s_axi_rdata\(17),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(30),
      Q => \^s_axi_rdata\(45),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(31),
      Q => \^s_axi_rdata\(46),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(32),
      Q => s_axi_rresp(0),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(33),
      Q => s_axi_rresp(1),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(34),
      Q => \^s_axi_rlast\(1),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(35),
      Q => \^s_axi_rid\(2),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(36),
      Q => \^s_axi_rid\(3),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(37),
      Q => st_mr_rid(2),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(38),
      Q => st_mr_rid(3),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(3),
      Q => \^s_axi_rdata\(18),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(4),
      Q => \^s_axi_rdata\(19),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(5),
      Q => \^s_axi_rdata\(20),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(6),
      Q => \^s_axi_rdata\(21),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(7),
      Q => \^s_axi_rdata\(22),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(8),
      Q => \^s_axi_rdata\(23),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(9),
      Q => \^s_axi_rdata\(24),
      R => '0'
    );
\m_valid_i_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => rready_carry(4),
      I1 => st_mr_rvalid(0),
      I2 => \^s_ready_i_reg_0\,
      I3 => m_axi_rvalid(0),
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => st_mr_rvalid(0),
      R => p_0_in
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(15),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(0)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(28),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(6)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(31),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(7)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(32),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(8)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(33),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(9)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(34),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(10)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(16),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(35),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(11)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(36),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(12)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(39),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(13)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(44),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(14)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(20),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(2)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(21),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(3)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(22),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(4)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rdata\(23),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rdata\(5)
    );
\s_axi_rid[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rid\(2),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rid\(0)
    );
\s_axi_rid[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rid\(3),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rid\(1)
    );
\s_axi_rlast[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^s_axi_rlast\(1),
      I1 => \m_rvalid_qual__1_3\(0),
      I2 => chosen(1),
      O => \^s_axi_rlast\(0)
    );
\s_axi_rvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF820082008200"
    )
        port map (
      I0 => st_mr_rvalid(0),
      I1 => st_mr_rid(2),
      I2 => st_mr_rid(3),
      I3 => chosen(0),
      I4 => \m_rvalid_qual__1_3\(0),
      I5 => chosen(1),
      O => m_valid_i_reg_1
    );
\s_axi_rvalid[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => chosen_6(0),
      I1 => st_mr_rid(3),
      I2 => st_mr_rid(2),
      I3 => st_mr_rvalid(0),
      O => \^chosen_reg[0]\
    );
\s_axi_rvalid[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => chosen_7(0),
      I1 => st_mr_rid(3),
      I2 => st_mr_rid(2),
      I3 => st_mr_rvalid(0),
      O => \^chosen_reg[0]_0\
    );
\s_ready_i_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFBB"
    )
        port map (
      I0 => rready_carry(4),
      I1 => st_mr_rvalid(0),
      I2 => m_axi_rvalid(0),
      I3 => \^s_ready_i_reg_0\,
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => p_1_in
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rlast(0),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(2),
      Q => \skid_buffer_reg_n_0_[37]\,
      R => '0'
    );
\skid_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(3),
      Q => \skid_buffer_reg_n_0_[38]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generic_baseblocks_v2_1_0_mux_enc__parameterized2\ is
  port (
    D : out STD_LOGIC_VECTOR ( 54 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_arbiter.m_mesg_i_reg[65]\ : in STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[65]_0\ : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generic_baseblocks_v2_1_0_mux_enc__parameterized2\ : entity is "generic_baseblocks_v2_1_0_mux_enc";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generic_baseblocks_v2_1_0_mux_enc__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generic_baseblocks_v2_1_0_mux_enc__parameterized2\ is
begin
\gen_arbiter.m_mesg_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arid(0),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arid(2),
      I4 => s_axi_arid(4),
      O => D(0)
    );
\gen_arbiter.m_mesg_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(38),
      I4 => s_axi_araddr(70),
      O => D(8)
    );
\gen_arbiter.m_mesg_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(39),
      I4 => s_axi_araddr(71),
      O => D(9)
    );
\gen_arbiter.m_mesg_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(40),
      I4 => s_axi_araddr(72),
      O => D(10)
    );
\gen_arbiter.m_mesg_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(41),
      I4 => s_axi_araddr(73),
      O => D(11)
    );
\gen_arbiter.m_mesg_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(42),
      I4 => s_axi_araddr(74),
      O => D(12)
    );
\gen_arbiter.m_mesg_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(43),
      I4 => s_axi_araddr(75),
      O => D(13)
    );
\gen_arbiter.m_mesg_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(44),
      I4 => s_axi_araddr(76),
      O => D(14)
    );
\gen_arbiter.m_mesg_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(45),
      I4 => s_axi_araddr(77),
      O => D(15)
    );
\gen_arbiter.m_mesg_i[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(46),
      I4 => s_axi_araddr(78),
      O => D(16)
    );
\gen_arbiter.m_mesg_i[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(47),
      I4 => s_axi_araddr(79),
      O => D(17)
    );
\gen_arbiter.m_mesg_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arid(1),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arid(3),
      I4 => s_axi_arid(5),
      O => D(1)
    );
\gen_arbiter.m_mesg_i[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(16),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(48),
      I4 => s_axi_araddr(80),
      O => D(18)
    );
\gen_arbiter.m_mesg_i[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(17),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(49),
      I4 => s_axi_araddr(81),
      O => D(19)
    );
\gen_arbiter.m_mesg_i[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(18),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(50),
      I4 => s_axi_araddr(82),
      O => D(20)
    );
\gen_arbiter.m_mesg_i[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(19),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(51),
      I4 => s_axi_araddr(83),
      O => D(21)
    );
\gen_arbiter.m_mesg_i[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(20),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(52),
      I4 => s_axi_araddr(84),
      O => D(22)
    );
\gen_arbiter.m_mesg_i[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(21),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(53),
      I4 => s_axi_araddr(85),
      O => D(23)
    );
\gen_arbiter.m_mesg_i[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(22),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(54),
      I4 => s_axi_araddr(86),
      O => D(24)
    );
\gen_arbiter.m_mesg_i[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(23),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(55),
      I4 => s_axi_araddr(87),
      O => D(25)
    );
\gen_arbiter.m_mesg_i[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(24),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(56),
      I4 => s_axi_araddr(88),
      O => D(26)
    );
\gen_arbiter.m_mesg_i[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(25),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(57),
      I4 => s_axi_araddr(89),
      O => D(27)
    );
\gen_arbiter.m_mesg_i[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(26),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(58),
      I4 => s_axi_araddr(90),
      O => D(28)
    );
\gen_arbiter.m_mesg_i[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(27),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(59),
      I4 => s_axi_araddr(91),
      O => D(29)
    );
\gen_arbiter.m_mesg_i[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(28),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(60),
      I4 => s_axi_araddr(92),
      O => D(30)
    );
\gen_arbiter.m_mesg_i[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(29),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(61),
      I4 => s_axi_araddr(93),
      O => D(31)
    );
\gen_arbiter.m_mesg_i[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(30),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(62),
      I4 => s_axi_araddr(94),
      O => D(32)
    );
\gen_arbiter.m_mesg_i[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(31),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(63),
      I4 => s_axi_araddr(95),
      O => D(33)
    );
\gen_arbiter.m_mesg_i[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arlen(4),
      I4 => s_axi_arlen(8),
      O => D(34)
    );
\gen_arbiter.m_mesg_i[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arlen(5),
      I4 => s_axi_arlen(9),
      O => D(35)
    );
\gen_arbiter.m_mesg_i[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arlen(6),
      I4 => s_axi_arlen(10),
      O => D(36)
    );
\gen_arbiter.m_mesg_i[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arlen(7),
      I4 => s_axi_arlen(11),
      O => D(37)
    );
\gen_arbiter.m_mesg_i[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arsize(3),
      I4 => s_axi_arsize(6),
      O => D(38)
    );
\gen_arbiter.m_mesg_i[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arsize(4),
      I4 => s_axi_arsize(7),
      O => D(39)
    );
\gen_arbiter.m_mesg_i[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arsize(5),
      I4 => s_axi_arsize(8),
      O => D(40)
    );
\gen_arbiter.m_mesg_i[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arlock(0),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arlock(1),
      I4 => s_axi_arlock(2),
      O => D(41)
    );
\gen_arbiter.m_mesg_i[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arprot(0),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arprot(3),
      I4 => s_axi_arprot(6),
      O => D(42)
    );
\gen_arbiter.m_mesg_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(32),
      I4 => s_axi_araddr(64),
      O => D(2)
    );
\gen_arbiter.m_mesg_i[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arprot(1),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arprot(4),
      I4 => s_axi_arprot(7),
      O => D(43)
    );
\gen_arbiter.m_mesg_i[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arprot(2),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arprot(5),
      I4 => s_axi_arprot(8),
      O => D(44)
    );
\gen_arbiter.m_mesg_i[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arburst(2),
      I4 => s_axi_arburst(4),
      O => D(45)
    );
\gen_arbiter.m_mesg_i[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arburst(3),
      I4 => s_axi_arburst(5),
      O => D(46)
    );
\gen_arbiter.m_mesg_i[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arcache(0),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arcache(4),
      I4 => s_axi_arcache(8),
      O => D(47)
    );
\gen_arbiter.m_mesg_i[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arcache(1),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arcache(5),
      I4 => s_axi_arcache(9),
      O => D(48)
    );
\gen_arbiter.m_mesg_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(33),
      I4 => s_axi_araddr(65),
      O => D(3)
    );
\gen_arbiter.m_mesg_i[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arcache(2),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arcache(6),
      I4 => s_axi_arcache(10),
      O => D(49)
    );
\gen_arbiter.m_mesg_i[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arcache(3),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arcache(7),
      I4 => s_axi_arcache(11),
      O => D(50)
    );
\gen_arbiter.m_mesg_i[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arqos(0),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arqos(4),
      I4 => s_axi_arqos(8),
      O => D(51)
    );
\gen_arbiter.m_mesg_i[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arqos(1),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arqos(5),
      I4 => s_axi_arqos(9),
      O => D(52)
    );
\gen_arbiter.m_mesg_i[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arqos(2),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arqos(6),
      I4 => s_axi_arqos(10),
      O => D(53)
    );
\gen_arbiter.m_mesg_i[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_arqos(3),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_arqos(7),
      I4 => s_axi_arqos(11),
      O => D(54)
    );
\gen_arbiter.m_mesg_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(34),
      I4 => s_axi_araddr(66),
      O => D(4)
    );
\gen_arbiter.m_mesg_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(35),
      I4 => s_axi_araddr(67),
      O => D(5)
    );
\gen_arbiter.m_mesg_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(36),
      I4 => s_axi_araddr(68),
      O => D(6)
    );
\gen_arbiter.m_mesg_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \gen_arbiter.m_mesg_i_reg[65]\,
      I2 => \gen_arbiter.m_mesg_i_reg[65]_0\,
      I3 => s_axi_araddr(37),
      I4 => s_axi_araddr(69),
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_addr_arbiter is
  port (
    reset : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[2]\ : out STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[0]_0\ : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[2]_0\ : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[1]\ : out STD_LOGIC;
    \gen_arbiter.m_valid_i_reg_0\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[1]_0\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[2]_0\ : out STD_LOGIC;
    next_hot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_arbiter.s_ready_i_reg[0]_0\ : out STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[65]_0\ : out STD_LOGIC_VECTOR ( 56 downto 0 );
    aclk : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_cmd_pop_0__1\ : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    grant_hot0 : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    grant_hot : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_addr_arbiter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_addr_arbiter is
  signal aa_mi_artarget_hot : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aa_mi_arvalid : STD_LOGIC;
  signal \any_prio129_out__0\ : STD_LOGIC;
  signal found_prio : STD_LOGIC;
  signal \gen_arbiter.any_grant_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_reg_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_arbiter.m_mesg_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_mesg_i[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_target_hot_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_arbiter.m_target_hot_i_reg[0]_0\ : STD_LOGIC;
  signal \gen_arbiter.m_valid_i_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.one_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_arbiter.qual_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \^gen_arbiter.s_ready_i_reg[0]_0\ : STD_LOGIC;
  signal \^gen_arbiter.s_ready_i_reg[1]_0\ : STD_LOGIC;
  signal \^gen_arbiter.s_ready_i_reg[2]_0\ : STD_LOGIC;
  signal \grant_hot1__2\ : STD_LOGIC;
  signal m_mesg_mux : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal \^next_hot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_hot321_out : STD_LOGIC;
  signal p_0_in25_in : STD_LOGIC;
  signal p_0_in27_in : STD_LOGIC;
  signal \p_25_out__0\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal \prio_stall__0\ : STD_LOGIC;
  signal \^reset\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.grant_hot[1]_i_2__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_arbiter.grant_hot[2]_i_4__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_arbiter.grant_hot[2]_i_5__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[0]_i_3__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[2]_i_4__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[2]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[3]_i_2__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_arbiter.m_target_hot_i[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[0]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_arbiter.s_ready_i[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axi_arvalid[0]_INST_0\ : label is "soft_lutpair5";
begin
  \gen_arbiter.m_target_hot_i_reg[0]_0\ <= \^gen_arbiter.m_target_hot_i_reg[0]_0\;
  \gen_arbiter.s_ready_i_reg[0]_0\ <= \^gen_arbiter.s_ready_i_reg[0]_0\;
  \gen_arbiter.s_ready_i_reg[1]_0\ <= \^gen_arbiter.s_ready_i_reg[1]_0\;
  \gen_arbiter.s_ready_i_reg[2]_0\ <= \^gen_arbiter.s_ready_i_reg[2]_0\;
  next_hot(2 downto 0) <= \^next_hot\(2 downto 0);
  reset <= \^reset\;
\gen_arbiter.any_grant_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A0A8A0A0"
    )
        port map (
      I0 => aresetn_d,
      I1 => \grant_hot1__2\,
      I2 => \gen_arbiter.any_grant_reg_n_0\,
      I3 => aa_mi_arvalid,
      I4 => grant_hot0,
      I5 => \^gen_arbiter.m_target_hot_i_reg[0]_0\,
      O => \gen_arbiter.any_grant_i_1__0_n_0\
    );
\gen_arbiter.any_grant_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.any_grant_i_1__0_n_0\,
      Q => \gen_arbiter.any_grant_reg_n_0\,
      R => '0'
    );
\gen_arbiter.grant_hot[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002E220000"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      I1 => grant_hot,
      I2 => found_prio,
      I3 => \gen_arbiter.one_hot\(0),
      I4 => aresetn_d,
      I5 => \^gen_arbiter.m_target_hot_i_reg[0]_0\,
      O => \gen_arbiter.grant_hot[0]_i_1__0_n_0\
    );
\gen_arbiter.grant_hot[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"407F404040404040"
    )
        port map (
      I0 => \^gen_arbiter.s_ready_i_reg[2]_0\,
      I1 => s_axi_arvalid(2),
      I2 => p_0_in27_in,
      I3 => \^gen_arbiter.s_ready_i_reg[1]_0\,
      I4 => p_0_in25_in,
      I5 => s_axi_arvalid(1),
      O => found_prio
    );
\gen_arbiter.grant_hot[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E000000"
    )
        port map (
      I0 => next_hot321_out,
      I1 => p_5_in,
      I2 => \^gen_arbiter.s_ready_i_reg[0]_0\,
      I3 => \gen_arbiter.qual_reg_reg_n_0_[0]\,
      I4 => s_axi_arvalid(0),
      O => \gen_arbiter.one_hot\(0)
    );
\gen_arbiter.grant_hot[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      I1 => grant_hot,
      I2 => \^next_hot\(1),
      I3 => aresetn_d,
      I4 => \^gen_arbiter.m_target_hot_i_reg[0]_0\,
      O => \gen_arbiter.grant_hot[1]_i_1__0_n_0\
    );
\gen_arbiter.grant_hot[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080808"
    )
        port map (
      I0 => s_axi_arvalid(1),
      I1 => p_0_in25_in,
      I2 => \^gen_arbiter.s_ready_i_reg[1]_0\,
      I3 => p_0_in27_in,
      I4 => s_axi_arvalid(2),
      O => \^next_hot\(1)
    );
\gen_arbiter.grant_hot[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[2]\,
      I1 => grant_hot,
      I2 => \^next_hot\(2),
      I3 => aresetn_d,
      I4 => \^gen_arbiter.m_target_hot_i_reg[0]_0\,
      O => \gen_arbiter.grant_hot[2]_i_1_n_0\
    );
\gen_arbiter.grant_hot[2]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in27_in,
      I1 => s_axi_arvalid(2),
      I2 => \^gen_arbiter.s_ready_i_reg[2]_0\,
      O => \^next_hot\(2)
    );
\gen_arbiter.grant_hot[2]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => aa_mi_artarget_hot(0),
      I1 => aa_mi_arvalid,
      I2 => m_axi_arready(0),
      O => \^gen_arbiter.m_target_hot_i_reg[0]_0\
    );
\gen_arbiter.grant_hot[2]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00110010"
    )
        port map (
      I0 => aa_mi_arvalid,
      I1 => \gen_arbiter.any_grant_reg_n_0\,
      I2 => found_prio,
      I3 => \prio_stall__0\,
      I4 => \gen_arbiter.one_hot\(0),
      O => \gen_arbiter.m_valid_i_reg_0\
    );
\gen_arbiter.grant_hot[2]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008080800"
    )
        port map (
      I0 => s_axi_arvalid(0),
      I1 => \gen_arbiter.qual_reg_reg_n_0_[0]\,
      I2 => \^gen_arbiter.s_ready_i_reg[0]_0\,
      I3 => p_5_in,
      I4 => next_hot321_out,
      I5 => found_prio,
      O => \^next_hot\(0)
    );
\gen_arbiter.grant_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[0]_i_1__0_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      R => '0'
    );
\gen_arbiter.grant_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[1]_i_1__0_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      R => '0'
    );
\gen_arbiter.grant_hot_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot[2]_i_1_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[2]\,
      R => '0'
    );
\gen_arbiter.last_rr_hot[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => \gen_arbiter.one_hot\(0),
      I1 => \prio_stall__0\,
      I2 => found_prio,
      I3 => \gen_arbiter.last_rr_hot[0]_i_3__0_n_0\,
      I4 => grant_hot0,
      I5 => next_hot321_out,
      O => \gen_arbiter.last_rr_hot[0]_i_1__0_n_0\
    );
\gen_arbiter.last_rr_hot[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => s_axi_arvalid(1),
      I1 => p_0_in25_in,
      I2 => \^gen_arbiter.s_ready_i_reg[1]_0\,
      I3 => \^gen_arbiter.s_ready_i_reg[2]_0\,
      I4 => s_axi_arvalid(2),
      I5 => p_0_in27_in,
      O => \prio_stall__0\
    );
\gen_arbiter.last_rr_hot[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_arbiter.any_grant_reg_n_0\,
      I1 => aa_mi_arvalid,
      O => \gen_arbiter.last_rr_hot[0]_i_3__0_n_0\
    );
\gen_arbiter.last_rr_hot[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFF00000000"
    )
        port map (
      I0 => \grant_hot1__2\,
      I1 => aa_mi_arvalid,
      I2 => \gen_arbiter.any_grant_reg_n_0\,
      I3 => found_prio,
      I4 => grant_hot0,
      I5 => p_5_in,
      O => \gen_arbiter.last_rr_hot[2]_i_1__0_n_0\
    );
\gen_arbiter.last_rr_hot[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003FFF2AEA2AEA"
    )
        port map (
      I0 => \gen_arbiter.one_hot\(0),
      I1 => s_axi_arvalid(1),
      I2 => p_0_in25_in,
      I3 => \^gen_arbiter.s_ready_i_reg[1]_0\,
      I4 => \^gen_arbiter.s_ready_i_reg[2]_0\,
      I5 => \any_prio129_out__0\,
      O => \grant_hot1__2\
    );
\gen_arbiter.last_rr_hot[2]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arvalid(2),
      I1 => p_0_in27_in,
      O => \any_prio129_out__0\
    );
\gen_arbiter.last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.last_rr_hot[0]_i_1__0_n_0\,
      Q => next_hot321_out,
      R => \^reset\
    );
\gen_arbiter.last_rr_hot_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.last_rr_hot[2]_i_1__0_n_0\,
      Q => p_5_in,
      S => \^reset\
    );
\gen_arbiter.m_grant_enc_i[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^next_hot\(1),
      I1 => grant_hot,
      I2 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => \gen_arbiter.m_grant_enc_i[0]_i_1__0_n_0\
    );
\gen_arbiter.m_grant_enc_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40000000"
    )
        port map (
      I0 => \^gen_arbiter.s_ready_i_reg[2]_0\,
      I1 => s_axi_arvalid(2),
      I2 => p_0_in27_in,
      I3 => found_prio,
      I4 => grant_hot,
      I5 => \gen_arbiter.m_grant_enc_i_reg_n_0_[1]\,
      O => \gen_arbiter.m_grant_enc_i[1]_i_1_n_0\
    );
\gen_arbiter.m_grant_enc_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_grant_enc_i[0]_i_1__0_n_0\,
      Q => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      R => \^reset\
    );
\gen_arbiter.m_grant_enc_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_grant_enc_i[1]_i_1_n_0\,
      Q => \gen_arbiter.m_grant_enc_i_reg_n_0_[1]\,
      R => \^reset\
    );
\gen_arbiter.m_mesg_i[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[1]\,
      O => \gen_arbiter.m_mesg_i[2]_i_1__0_n_0\
    );
\gen_arbiter.m_mesg_i[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_d,
      O => \^reset\
    );
\gen_arbiter.m_mesg_i[3]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aa_mi_arvalid,
      O => p_2_in
    );
\gen_arbiter.m_mesg_i[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i_reg_n_0_[1]\,
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      O => \gen_arbiter.m_mesg_i[3]_i_2__0_n_0\
    );
\gen_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(0),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(0),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(10),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(10),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(11),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(11),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(12),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(12),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(13),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(13),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(14),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(14),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(15),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(15),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(16),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(16),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(17),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(17),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(18),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(18),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(19),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(19),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(1),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(1),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(20),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(20),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(21),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(21),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(22),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(22),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(23),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(23),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(24),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(24),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(25),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(25),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(26),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(26),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(27),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(27),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(28),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(28),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(29),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(29),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => \gen_arbiter.m_mesg_i[2]_i_1__0_n_0\,
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(2),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(30),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(30),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(31),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(31),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(32),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(32),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(33),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(33),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(34),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(34),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(35),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(35),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(36),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(36),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(37),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(37),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(38),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(38),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(39),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(39),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => \gen_arbiter.m_mesg_i[3]_i_2__0_n_0\,
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(3),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(44),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(40),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(45),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(41),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(46),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(42),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(47),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(43),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(49),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(44),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(4),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(4),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(50),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(45),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(51),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(46),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(56),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(47),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(57),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(48),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(58),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(49),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(59),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(50),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(5),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(5),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(60),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(51),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(61),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(52),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(62),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(53),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(63),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(54),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(64),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(55),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(65),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(56),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(6),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(6),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(7),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(7),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(8),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(8),
      R => \^reset\
    );
\gen_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_2_in,
      D => m_mesg_mux(9),
      Q => \gen_arbiter.m_mesg_i_reg[65]_0\(9),
      R => \^reset\
    );
\gen_arbiter.m_target_hot_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => \^next_hot\(1),
      I1 => \^next_hot\(2),
      I2 => grant_hot,
      I3 => aa_mi_artarget_hot(0),
      O => \gen_arbiter.m_target_hot_i[0]_i_1_n_0\
    );
\gen_arbiter.m_target_hot_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_target_hot_i[0]_i_1_n_0\,
      Q => aa_mi_artarget_hot(0),
      R => \^reset\
    );
\gen_arbiter.m_valid_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"77F0"
    )
        port map (
      I0 => m_axi_arready(0),
      I1 => aa_mi_artarget_hot(0),
      I2 => \gen_arbiter.any_grant_reg_n_0\,
      I3 => aa_mi_arvalid,
      O => \gen_arbiter.m_valid_i_i_1__0_n_0\
    );
\gen_arbiter.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_valid_i_i_1__0_n_0\,
      Q => aa_mi_arvalid,
      R => \^reset\
    );
\gen_arbiter.mux_mesg\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generic_baseblocks_v2_1_0_mux_enc__parameterized2\
     port map (
      D(54 downto 45) => m_mesg_mux(65 downto 56),
      D(44 downto 42) => m_mesg_mux(51 downto 49),
      D(41 downto 38) => m_mesg_mux(47 downto 44),
      D(37 downto 2) => m_mesg_mux(39 downto 4),
      D(1 downto 0) => m_mesg_mux(1 downto 0),
      \gen_arbiter.m_mesg_i_reg[65]\ => \gen_arbiter.m_grant_enc_i_reg_n_0_[1]\,
      \gen_arbiter.m_mesg_i_reg[65]_0\ => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      s_axi_araddr(95 downto 0) => s_axi_araddr(95 downto 0),
      s_axi_arburst(5 downto 0) => s_axi_arburst(5 downto 0),
      s_axi_arcache(11 downto 0) => s_axi_arcache(11 downto 0),
      s_axi_arid(5 downto 0) => s_axi_arid(5 downto 0),
      s_axi_arlen(11 downto 0) => s_axi_arlen(11 downto 0),
      s_axi_arlock(2 downto 0) => s_axi_arlock(2 downto 0),
      s_axi_arprot(8 downto 0) => s_axi_arprot(8 downto 0),
      s_axi_arqos(11 downto 0) => s_axi_arqos(11 downto 0),
      s_axi_arsize(8 downto 0) => s_axi_arsize(8 downto 0)
    );
\gen_arbiter.qual_reg[2]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => r_issuing_cnt(1),
      I1 => r_issuing_cnt(0),
      I2 => r_issuing_cnt(2),
      O => \gen_master_slots[0].r_issuing_cnt_reg[1]\
    );
\gen_arbiter.qual_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \gen_arbiter.qual_reg_reg_n_0_[0]\,
      R => \^reset\
    );
\gen_arbiter.qual_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => p_0_in25_in,
      R => \^reset\
    );
\gen_arbiter.qual_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => p_0_in27_in,
      R => \^reset\
    );
\gen_arbiter.s_ready_i[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      I1 => aresetn_d,
      I2 => aa_mi_arvalid,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[0]_i_1__0_n_0\
    );
\gen_arbiter.s_ready_i[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      I1 => aresetn_d,
      I2 => aa_mi_arvalid,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[1]_i_1__0_n_0\
    );
\gen_arbiter.s_ready_i[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_arbiter.grant_hot_reg_n_0_[2]\,
      I1 => aresetn_d,
      I2 => aa_mi_arvalid,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[2]_i_1__0_n_0\
    );
\gen_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[0]_i_1__0_n_0\,
      Q => \^gen_arbiter.s_ready_i_reg[0]_0\,
      R => '0'
    );
\gen_arbiter.s_ready_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[1]_i_1__0_n_0\,
      Q => \^gen_arbiter.s_ready_i_reg[1]_0\,
      R => '0'
    );
\gen_arbiter.s_ready_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.s_ready_i[2]_i_1__0_n_0\,
      Q => \^gen_arbiter.s_ready_i_reg[2]_0\,
      R => '0'
    );
\gen_master_slots[0].r_issuing_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F03C3CF0F0C3C2F0"
    )
        port map (
      I0 => r_issuing_cnt(2),
      I1 => r_issuing_cnt(0),
      I2 => r_issuing_cnt(1),
      I3 => \r_cmd_pop_0__1\,
      I4 => \^gen_arbiter.m_target_hot_i_reg[0]_0\,
      I5 => \p_25_out__0\,
      O => \gen_master_slots[0].r_issuing_cnt_reg[2]\
    );
\gen_master_slots[0].r_issuing_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6A6AAAAAA9A8AA"
    )
        port map (
      I0 => r_issuing_cnt(2),
      I1 => r_issuing_cnt(0),
      I2 => r_issuing_cnt(1),
      I3 => \r_cmd_pop_0__1\,
      I4 => \^gen_arbiter.m_target_hot_i_reg[0]_0\,
      I5 => \p_25_out__0\,
      O => \gen_master_slots[0].r_issuing_cnt_reg[2]_0\
    );
\gen_master_slots[0].r_issuing_cnt[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => m_axi_arready(0),
      I1 => aa_mi_arvalid,
      I2 => aa_mi_artarget_hot(0),
      I3 => \r_cmd_pop_0__1\,
      O => \p_25_out__0\
    );
\m_axi_arvalid[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aa_mi_arvalid,
      I1 => aa_mi_artarget_hot(0),
      O => m_axi_arvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor is
  port (
    chosen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    st_aa_arvalid_qual : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.accept_cnt\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_rvalid_qual__1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[1]\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_multi_thread.any_pop__1\ : in STD_LOGIC;
    \gen_multi_thread.accept_cnt_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor is
  signal \^gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[1]_i_1\ : label is "soft_lutpair69";
begin
  \gen_multi_thread.accept_cnt\(1 downto 0) <= \^gen_multi_thread.accept_cnt\(1 downto 0);
\gen_multi_thread.accept_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A54A"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I1 => \^gen_multi_thread.accept_cnt\(1),
      I2 => \gen_multi_thread.any_pop__1\,
      I3 => \^gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9CC4"
    )
        port map (
      I0 => \gen_multi_thread.any_pop__1\,
      I1 => \^gen_multi_thread.accept_cnt\(1),
      I2 => \^gen_multi_thread.accept_cnt\(0),
      I3 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.accept_cnt[1]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1_n_0\,
      Q => \^gen_multi_thread.accept_cnt\(0),
      R => reset
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[1]_i_1_n_0\,
      Q => \^gen_multi_thread.accept_cnt\(1),
      R => reset
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_15
     port map (
      aclk => aclk,
      chosen(1 downto 0) => chosen(1 downto 0),
      \gen_arbiter.grant_hot[2]_i_2\ => \^gen_multi_thread.accept_cnt\(1),
      \gen_arbiter.grant_hot[2]_i_2_0\ => \^gen_multi_thread.accept_cnt\(0),
      \last_rr_hot_reg[1]_0\ => \last_rr_hot_reg[1]\,
      \m_rvalid_qual__1\(1 downto 0) => \m_rvalid_qual__1\(1 downto 0),
      reset => reset,
      s_axi_rlast(0) => s_axi_rlast(0),
      s_axi_rready(0) => s_axi_rready(0),
      st_aa_arvalid_qual(0) => st_aa_arvalid_qual(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    chosen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    st_aa_awvalid_qual : out STD_LOGIC_VECTOR ( 0 to 0 );
    \valid_qual_i3__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_rr_hot_reg[1]\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized0\ : entity is "axi_crossbar_v2_1_21_si_transactor";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized0\ is
  signal \gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[0]_i_1__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[1]_i_1__0\ : label is "soft_lutpair71";
begin
\gen_arbiter.grant_hot[2]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(1),
      I1 => \gen_multi_thread.accept_cnt\(0),
      I2 => s_axi_bready(0),
      I3 => \last_rr_hot_reg[1]\,
      O => st_aa_awvalid_qual(0)
    );
\gen_multi_thread.accept_cnt[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A5554AAA"
    )
        port map (
      I0 => s_axi_awready(0),
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => s_axi_bready(0),
      I3 => \last_rr_hot_reg[1]\,
      I4 => \gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1__0_n_0\
    );
\gen_multi_thread.accept_cnt[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"87F0F070"
    )
        port map (
      I0 => \last_rr_hot_reg[1]\,
      I1 => s_axi_bready(0),
      I2 => \gen_multi_thread.accept_cnt\(1),
      I3 => \gen_multi_thread.accept_cnt\(0),
      I4 => s_axi_awready(0),
      O => \gen_multi_thread.accept_cnt[1]_i_1__0_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1__0_n_0\,
      Q => \gen_multi_thread.accept_cnt\(0),
      R => reset
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[1]_i_1__0_n_0\,
      Q => \gen_multi_thread.accept_cnt\(1),
      R => reset
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_14
     port map (
      D(0) => D(0),
      aclk => aclk,
      \chosen_reg[0]_0\ => chosen(0),
      \chosen_reg[0]_1\(0) => \chosen_reg[0]\(0),
      \chosen_reg[1]_0\ => chosen(1),
      \gen_multi_thread.accept_cnt\(1 downto 0) => \gen_multi_thread.accept_cnt\(1 downto 0),
      \last_rr_hot_reg[1]_0\ => \last_rr_hot_reg[1]\,
      m_ready_d(0) => m_ready_d(0),
      \m_rvalid_qual__0\(0) => \m_rvalid_qual__0\(0),
      reset => reset,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bready(0) => s_axi_bready(0),
      \valid_qual_i3__0\(0) => \valid_qual_i3__0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized1\ is
  port (
    \gen_multi_thread.accept_cnt\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    chosen : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_aa_arvalid_qual : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    \gen_multi_thread.accept_cnt_reg[1]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_multi_thread.accept_cnt_reg[0]_0\ : in STD_LOGIC;
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.accept_cnt_reg[0]_1\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized1\ : entity is "axi_crossbar_v2_1_21_si_transactor";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized1\ is
  signal \^gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1__1_n_0\ : STD_LOGIC;
begin
  \gen_multi_thread.accept_cnt\(1 downto 0) <= \^gen_multi_thread.accept_cnt\(1 downto 0);
\gen_multi_thread.accept_cnt[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A55555554AAAAAAA"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I1 => \^gen_multi_thread.accept_cnt\(1),
      I2 => s_axi_rlast(0),
      I3 => \gen_multi_thread.accept_cnt_reg[0]_1\,
      I4 => s_axi_rready(0),
      I5 => \^gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1__1_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1__1_n_0\,
      Q => \^gen_multi_thread.accept_cnt\(0),
      R => reset
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt_reg[1]_0\,
      Q => \^gen_multi_thread.accept_cnt\(1),
      R => reset
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_11
     port map (
      aclk => aclk,
      \chosen_reg[0]_0\ => chosen(0),
      \gen_multi_thread.accept_cnt\(1 downto 0) => \^gen_multi_thread.accept_cnt\(1 downto 0),
      \m_rvalid_qual__1\(0) => \m_rvalid_qual__1\(0),
      reset => reset,
      s_axi_rlast(0) => s_axi_rlast(0),
      s_axi_rready(0) => s_axi_rready(0),
      st_aa_arvalid_qual(0) => st_aa_arvalid_qual(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized2\ is
  port (
    chosen : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_aa_awvalid_qual : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.accept_cnt\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.accept_cnt_reg[0]_0\ : out STD_LOGIC;
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \access_done__0\ : in STD_LOGIC;
    \any_prio129_out__0\ : in STD_LOGIC;
    \any_prio6_out__0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized2\ : entity is "axi_crossbar_v2_1_21_si_transactor";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized2\ is
  signal \^gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[1]_i_1__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.grant_hot[2]_i_8__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[2]_i_5__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[0]_i_1__2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[1]_i_1__2\ : label is "soft_lutpair79";
begin
  \gen_multi_thread.accept_cnt\(1 downto 0) <= \^gen_multi_thread.accept_cnt\(1 downto 0);
\gen_arbiter.grant_hot[2]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EF0000"
    )
        port map (
      I0 => \access_done__0\,
      I1 => \^gen_multi_thread.accept_cnt\(0),
      I2 => \^gen_multi_thread.accept_cnt\(1),
      I3 => \any_prio129_out__0\,
      I4 => \any_prio6_out__0\,
      O => \gen_multi_thread.accept_cnt_reg[0]_0\
    );
\gen_arbiter.last_rr_hot[2]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^gen_multi_thread.accept_cnt\(1),
      I1 => \^gen_multi_thread.accept_cnt\(0),
      I2 => \access_done__0\,
      O => st_aa_awvalid_qual(0)
    );
\gen_multi_thread.accept_cnt[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A54A"
    )
        port map (
      I0 => s_axi_awready(0),
      I1 => \^gen_multi_thread.accept_cnt\(1),
      I2 => \access_done__0\,
      I3 => \^gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1__2_n_0\
    );
\gen_multi_thread.accept_cnt[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9CC4"
    )
        port map (
      I0 => \access_done__0\,
      I1 => \^gen_multi_thread.accept_cnt\(1),
      I2 => \^gen_multi_thread.accept_cnt\(0),
      I3 => s_axi_awready(0),
      O => \gen_multi_thread.accept_cnt[1]_i_1__2_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1__2_n_0\,
      Q => \^gen_multi_thread.accept_cnt\(0),
      R => reset
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[1]_i_1__2_n_0\,
      Q => \^gen_multi_thread.accept_cnt\(1),
      R => reset
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_10
     port map (
      aclk => aclk,
      \chosen_reg[0]_0\ => chosen(0),
      \m_rvalid_qual__0\(0) => \m_rvalid_qual__0\(0),
      reset => reset,
      s_axi_bready(0) => s_axi_bready(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized3\ is
  port (
    \gen_multi_thread.accept_cnt\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    chosen : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    \gen_multi_thread.accept_cnt_reg[1]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_multi_thread.accept_cnt_reg[0]_0\ : in STD_LOGIC;
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.accept_cnt_reg[0]_1\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized3\ : entity is "axi_crossbar_v2_1_21_si_transactor";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized3\ is
  signal \^gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1__3_n_0\ : STD_LOGIC;
begin
  \gen_multi_thread.accept_cnt\(1 downto 0) <= \^gen_multi_thread.accept_cnt\(1 downto 0);
\gen_multi_thread.accept_cnt[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A55555554AAAAAAA"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I1 => \^gen_multi_thread.accept_cnt\(1),
      I2 => s_axi_rlast(0),
      I3 => \gen_multi_thread.accept_cnt_reg[0]_1\,
      I4 => s_axi_rready(0),
      I5 => \^gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1__3_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1__3_n_0\,
      Q => \^gen_multi_thread.accept_cnt\(0),
      R => reset
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt_reg[1]_0\,
      Q => \^gen_multi_thread.accept_cnt\(1),
      R => reset
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp_7
     port map (
      aclk => aclk,
      \chosen_reg[0]_0\ => chosen(0),
      \m_rvalid_qual__1\(0) => \m_rvalid_qual__1\(0),
      reset => reset,
      s_axi_rready(0) => s_axi_rready(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized4\ is
  port (
    chosen : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.accept_cnt_reg[0]_0\ : out STD_LOGIC;
    \gen_multi_thread.accept_cnt\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \access_done__1\ : in STD_LOGIC;
    ss_aa_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \any_prio129_out__0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized4\ : entity is "axi_crossbar_v2_1_21_si_transactor";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized4\ is
  signal \^gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[1]_i_1__4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[0]_i_1__4\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[1]_i_1__4\ : label is "soft_lutpair87";
begin
  \gen_multi_thread.accept_cnt\(1 downto 0) <= \^gen_multi_thread.accept_cnt\(1 downto 0);
\gen_arbiter.grant_hot[2]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EF0000"
    )
        port map (
      I0 => \access_done__1\,
      I1 => \^gen_multi_thread.accept_cnt\(0),
      I2 => \^gen_multi_thread.accept_cnt\(1),
      I3 => ss_aa_awready(0),
      I4 => \any_prio129_out__0\,
      O => \gen_multi_thread.accept_cnt_reg[0]_0\
    );
\gen_multi_thread.accept_cnt[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A54A"
    )
        port map (
      I0 => s_axi_awready(0),
      I1 => \^gen_multi_thread.accept_cnt\(1),
      I2 => \access_done__1\,
      I3 => \^gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1__4_n_0\
    );
\gen_multi_thread.accept_cnt[1]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9CC4"
    )
        port map (
      I0 => \access_done__1\,
      I1 => \^gen_multi_thread.accept_cnt\(1),
      I2 => \^gen_multi_thread.accept_cnt\(0),
      I3 => s_axi_awready(0),
      O => \gen_multi_thread.accept_cnt[1]_i_1__4_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1__4_n_0\,
      Q => \^gen_multi_thread.accept_cnt\(0),
      R => reset
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[1]_i_1__4_n_0\,
      Q => \^gen_multi_thread.accept_cnt\(1),
      R => reset
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_arbiter_resp
     port map (
      aclk => aclk,
      \chosen_reg[0]_0\ => chosen(0),
      \m_rvalid_qual__0\(0) => \m_rvalid_qual__0\(0),
      reset => reset,
      s_axi_bready(0) => s_axi_bready(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid : out STD_LOGIC;
    ss_wr_awready_2 : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awvalid_2 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    \storage_data1_reg[0]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo is
  signal \FSM_onehot_state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_2\ : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal \^m_avalid\ : STD_LOGIC;
  signal \^m_select_enc\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__4_n_0\ : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_i_1__2_n_0\ : STD_LOGIC;
  signal \^ss_wr_awready_2\ : STD_LOGIC;
  signal storage_data11 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1__1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_3__1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3__1\ : label is "soft_lutpair90";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_1__1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_1__1\ : label is "soft_lutpair91";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
begin
  Q(0) <= \^q\(0);
  SS(0) <= \^ss\(0);
  m_avalid <= \^m_avalid\;
  m_select_enc <= \^m_select_enc\;
  ss_wr_awready_2 <= \^ss_wr_awready_2\;
\FSM_onehot_state[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_awvalid(0),
      I2 => m_ready_d(0),
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[0]_i_1__1_n_0\
    );
\FSM_onehot_state[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => push,
      I1 => fifoaddr(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => fifoaddr(1),
      I4 => storage_data11,
      I5 => \FSM_onehot_state[1]_i_3__1_n_0\,
      O => \FSM_onehot_state[1]_i_1__1_n_0\
    );
\FSM_onehot_state[1]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => storage_data11
    );
\FSM_onehot_state[1]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_9_in,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      O => \FSM_onehot_state[1]_i_3__1_n_0\
    );
\FSM_onehot_state[3]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FFF4FF444444"
    )
        port map (
      I0 => push,
      I1 => \FSM_onehot_state[3]_i_3__1_n_0\,
      I2 => p_9_in,
      I3 => \^q\(0),
      I4 => \m_aready__1\,
      I5 => ss_wr_awvalid_2,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A200"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_awvalid(0),
      I2 => m_ready_d(0),
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_2__1_n_0\
    );
\FSM_onehot_state[3]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => fifoaddr(1),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_3__1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1__1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => \^ss\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \^ss\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2__1_n_0\,
      Q => p_9_in,
      S => \^ss\(0)
    );
areset_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => reset,
      Q => \^ss\(0),
      R => '0'
    );
\gen_rep[0].fifoaddr[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => push,
      I1 => storage_data11,
      I2 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DB24"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => storage_data11,
      I2 => push,
      I3 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1__1_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1__1_n_0\,
      Q => fifoaddr(0),
      S => reset
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1__1_n_0\,
      Q => fifoaddr(1),
      S => reset
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl
     port map (
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q(1) => \^q\(0),
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      \m_aready__1\ => \m_aready__1\,
      m_avalid => \^m_avalid\,
      m_axi_wid(0) => m_axi_wid(0),
      m_ready_d(0) => m_ready_d(0),
      m_select_enc => \^m_select_enc\,
      push => push,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready_2 => \^ss_wr_awready_2\,
      \storage_data1_reg[0]\ => \storage_data1_reg[0]_0\,
      \storage_data1_reg[0]_0\ => \FSM_onehot_state[1]_i_3__1_n_0\,
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]_1\
    );
\m_valid_i_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F400F400FFFFF400"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \^q\(0),
      I2 => p_9_in,
      I3 => ss_wr_awvalid_2,
      I4 => \FSM_onehot_state[3]_i_3__1_n_0\,
      I5 => push,
      O => \m_valid_i_i_1__4_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__4_n_0\,
      Q => \^m_avalid\,
      R => \^ss\(0)
    );
\s_ready_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFAAAA"
    )
        port map (
      I0 => \^ss\(0),
      I1 => push,
      I2 => fifoaddr(0),
      I3 => fifoaddr(1),
      I4 => storage_data11,
      I5 => \^ss_wr_awready_2\,
      O => \s_ready_i_i_1__2_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__2_n_0\,
      Q => \^ss_wr_awready_2\,
      R => reset
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q => \^m_select_enc\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo_12 is
  port (
    m_avalid : out STD_LOGIC;
    ss_wr_awready_0 : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awvalid_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_aready1__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo_12 : entity is "axi_data_fifo_v2_1_19_axic_reg_srl_fifo";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo_12 is
  signal \FSM_onehot_state[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_2\ : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal \^m_avalid\ : STD_LOGIC;
  signal \^m_select_enc\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__2_n_0\ : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_i_1__0_n_0\ : STD_LOGIC;
  signal \^ss_wr_awready_0\ : STD_LOGIC;
  signal storage_data11 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_3\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2__2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3\ : label is "soft_lutpair73";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_1\ : label is "soft_lutpair74";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
begin
  Q(0) <= \^q\(0);
  m_avalid <= \^m_avalid\;
  m_select_enc <= \^m_select_enc\;
  ss_wr_awready_0 <= \^ss_wr_awready_0\;
\FSM_onehot_state[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7500"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => \^q\(0),
      O => \FSM_onehot_state[0]_i_1__2_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => push,
      I1 => fifoaddr(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => fifoaddr(1),
      I4 => storage_data11,
      I5 => \FSM_onehot_state[1]_i_3_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => storage_data11
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_9_in,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      O => \FSM_onehot_state[1]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FFF4FF444444"
    )
        port map (
      I0 => push,
      I1 => \FSM_onehot_state[3]_i_3_n_0\,
      I2 => p_9_in,
      I3 => \^q\(0),
      I4 => \m_aready__1\,
      I5 => ss_wr_awvalid_0,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      I3 => \^q\(0),
      O => \FSM_onehot_state[3]_i_2__2_n_0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => fifoaddr(1),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1__2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \^q\(0),
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2__2_n_0\,
      Q => p_9_in,
      S => areset_d1
    );
\gen_rep[0].fifoaddr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => push,
      I1 => storage_data11,
      I2 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DB24"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => storage_data11,
      I2 => push,
      I3 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1_n_0\,
      Q => fifoaddr(0),
      S => reset
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1_n_0\,
      Q => fifoaddr(1),
      S => reset
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_13
     port map (
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q(1) => \^q\(0),
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      \m_aready1__0\(0) => \m_aready1__0\(0),
      \m_aready__1\ => \m_aready__1\,
      m_avalid => \^m_avalid\,
      m_ready_d(0) => m_ready_d(0),
      m_select_enc => \^m_select_enc\,
      push => push,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready_0 => \^ss_wr_awready_0\,
      \storage_data1_reg[0]\ => \FSM_onehot_state[1]_i_3_n_0\,
      \storage_data1_reg[0]_0\ => \storage_data1_reg[0]_0\
    );
\m_valid_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F400F400FFFFF400"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \^q\(0),
      I2 => p_9_in,
      I3 => ss_wr_awvalid_0,
      I4 => \FSM_onehot_state[3]_i_3_n_0\,
      I5 => push,
      O => \m_valid_i_i_1__2_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__2_n_0\,
      Q => \^m_avalid\,
      R => areset_d1
    );
\s_ready_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFAAAA"
    )
        port map (
      I0 => areset_d1,
      I1 => push,
      I2 => fifoaddr(0),
      I3 => fifoaddr(1),
      I4 => storage_data11,
      I5 => \^ss_wr_awready_0\,
      O => \s_ready_i_i_1__0_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__0_n_0\,
      Q => \^ss_wr_awready_0\,
      R => reset
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q => \^m_select_enc\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo_8 is
  port (
    m_avalid : out STD_LOGIC;
    ss_wr_awready_1 : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wvalid[1]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awvalid_1 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]_1\ : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_data1_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo_8 : entity is "axi_data_fifo_v2_1_19_axic_reg_srl_fifo";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo_8 is
  signal \FSM_onehot_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_2\ : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal \^m_avalid\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__3_n_0\ : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_i_1__1_n_0\ : STD_LOGIC;
  signal \^ss_wr_awready_1\ : STD_LOGIC;
  signal storage_data11 : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_3__0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2__0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3__0\ : label is "soft_lutpair83";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_1__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_1__0\ : label is "soft_lutpair84";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
begin
  Q(0) <= \^q\(0);
  m_avalid <= \^m_avalid\;
  ss_wr_awready_1 <= \^ss_wr_awready_1\;
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
\FSM_onehot_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_awvalid(0),
      I2 => m_ready_d(0),
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[0]_i_1__0_n_0\
    );
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => push,
      I1 => fifoaddr(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => fifoaddr(1),
      I4 => storage_data11,
      I5 => \FSM_onehot_state[1]_i_3__0_n_0\,
      O => \FSM_onehot_state[1]_i_1__0_n_0\
    );
\FSM_onehot_state[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => storage_data11
    );
\FSM_onehot_state[1]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_9_in,
      I1 => m_ready_d(0),
      I2 => s_axi_awvalid(0),
      O => \FSM_onehot_state[1]_i_3__0_n_0\
    );
\FSM_onehot_state[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FFF4FF444444"
    )
        port map (
      I0 => push,
      I1 => \FSM_onehot_state[3]_i_3__0_n_0\,
      I2 => p_9_in,
      I3 => \^q\(0),
      I4 => \m_aready__1\,
      I5 => ss_wr_awvalid_1,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A200"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_awvalid(0),
      I2 => m_ready_d(0),
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_2__0_n_0\
    );
\FSM_onehot_state[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => fifoaddr(1),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_3__0_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1__0_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1__0_n_0\,
      Q => \^q\(0),
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2__0_n_0\,
      Q => p_9_in,
      S => areset_d1
    );
\gen_rep[0].fifoaddr[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => push,
      I1 => storage_data11,
      I2 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DB24"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => storage_data11,
      I2 => push,
      I3 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1__0_n_0\,
      Q => fifoaddr(0),
      S => reset
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1__0_n_0\,
      Q => fifoaddr(1),
      S => reset
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_9
     port map (
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q(1) => \^q\(0),
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      \m_aready__1\ => \m_aready__1\,
      m_avalid => \^m_avalid\,
      m_axi_wid(0) => m_axi_wid(0),
      m_ready_d(0) => m_ready_d(0),
      push => push,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready_1 => \^ss_wr_awready_1\,
      \storage_data1_reg[0]\ => \storage_data1_reg[0]_1\,
      \storage_data1_reg[0]_0\ => \^storage_data1_reg[0]_0\,
      \storage_data1_reg[0]_1\ => \FSM_onehot_state[1]_i_3__0_n_0\,
      \storage_data1_reg[0]_2\ => \storage_data1_reg[0]_2\
    );
\m_axi_wvalid[0]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => \^m_avalid\,
      I2 => \^storage_data1_reg[0]_0\,
      I3 => m_select_enc_0(1),
      I4 => m_select_enc_0(0),
      O => \s_axi_wvalid[1]\
    );
\m_valid_i_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F400F400FFFFF400"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \^q\(0),
      I2 => p_9_in,
      I3 => ss_wr_awvalid_1,
      I4 => \FSM_onehot_state[3]_i_3__0_n_0\,
      I5 => push,
      O => \m_valid_i_i_1__3_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__3_n_0\,
      Q => \^m_avalid\,
      R => areset_d1
    );
\s_ready_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFAAAA"
    )
        port map (
      I0 => areset_d1,
      I1 => push,
      I2 => fifoaddr(0),
      I3 => fifoaddr(1),
      I4 => storage_data11,
      I5 => \^ss_wr_awready_1\,
      O => \s_ready_i_i_1__1_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__1_n_0\,
      Q => \^ss_wr_awready_1\,
      R => reset
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_aready1__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    aa_mi_awtarget_hot : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sa_wm_awvalid__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_avalid : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_select_enc_1 : in STD_LOGIC;
    m_avalid_2 : in STD_LOGIC;
    \m_axi_wvalid[0]_INST_0_i_1_0\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid_3 : in STD_LOGIC;
    m_select_enc_4 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_rep[0].fifoaddr_reg[0]_0\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    \storage_data1_reg[1]_1\ : in STD_LOGIC;
    \storage_data1_reg[1]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo__parameterized0\ : entity is "axi_data_fifo_v2_1_19_axic_reg_srl_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo__parameterized0\ is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[1].srl_nx1_n_2\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[1].srl_nx1_n_3\ : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal m_avalid_0 : STD_LOGIC;
  signal \^m_axi_wid\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m_valid_i : STD_LOGIC;
  signal m_valid_i_0 : STD_LOGIC;
  signal \m_valid_i_i_1__1_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  signal \^storage_data1_reg[1]_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__1\ : label is "soft_lutpair16";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute SOFT_HLUTNM of \m_axi_wdata[10]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axi_wid[2]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axi_wid[3]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axi_wlast[0]_INST_0\ : label is "soft_lutpair17";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  m_axi_wid(3 downto 0) <= \^m_axi_wid\(3 downto 0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
  \storage_data1_reg[1]_0\ <= \^storage_data1_reg[1]_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080AAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => aa_mi_awtarget_hot(0),
      I2 => aa_sa_awvalid,
      I3 => m_ready_d(0),
      I4 => \m_aready__1\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \m_aready__1\,
      I2 => \FSM_onehot_state[3]_i_3__2_n_0\,
      I3 => \sa_wm_awvalid__0\(0),
      I4 => \^q\(1),
      O => \FSM_onehot_state[1]_i_1__2_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FFF0FF880000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state[3]_i_3__2_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \m_aready__1\,
      I5 => \sa_wm_awvalid__0\(0),
      O => m_valid_i_0
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0000"
    )
        port map (
      I0 => \^q\(0),
      I1 => aa_mi_awtarget_hot(0),
      I2 => aa_sa_awvalid,
      I3 => m_ready_d(0),
      I4 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => fifoaddr(0),
      O => \FSM_onehot_state[3]_i_3__2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i_0,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i_0,
      D => \FSM_onehot_state[1]_i_1__2_n_0\,
      Q => \^q\(0),
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i_0,
      D => \FSM_onehot_state[3]_i_2_n_0\,
      Q => \^q\(1),
      S => areset_d1
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => m_select_enc_1,
      I1 => m_avalid_0,
      I2 => m_axi_wready(0),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => \m_aready1__0\(0)
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_avalid_0,
      I1 => m_axi_wready(0),
      O => \^m_valid_i_reg_0\
    );
\gen_rep[0].fifoaddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C777D7783888288"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \m_aready__1\,
      I2 => m_ready_d(0),
      I3 => \gen_rep[0].fifoaddr_reg[0]_0\,
      I4 => \^q\(0),
      I5 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA5FFF7F05A00080"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => \^q\(0),
      I2 => \sa_wm_awvalid__0\(0),
      I3 => \m_aready__1\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1_n_0\,
      Q => fifoaddr(0),
      S => reset
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1_n_0\,
      Q => fifoaddr(1),
      S => reset
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_18
     port map (
      A(1 downto 0) => fifoaddr(1 downto 0),
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aa_wm_awgrant_enc(0) => aa_wm_awgrant_enc(0),
      aclk => aclk,
      \m_aready__1\ => \m_aready__1\,
      push => push,
      \storage_data1_reg[0]\ => \storage_data1_reg[1]_1\,
      \storage_data1_reg[0]_0\ => \storage_data1_reg[1]_2\,
      \storage_data1_reg[0]_1\ => \^storage_data1_reg[0]_0\
    );
\gen_srls[0].gen_rep[1].srl_nx1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_ndeep_srl_19
     port map (
      A(1 downto 0) => fifoaddr(1 downto 0),
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[1].srl_nx1_n_3\,
      Q(1) => \^q\(0),
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aa_mi_awtarget_hot(0) => aa_mi_awtarget_hot(0),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(0) => aa_wm_awgrant_enc(1),
      aclk => aclk,
      \gen_primitive_shifter.gen_srls[0].srl_inst_i_2_0\ => \^m_valid_i_reg_0\,
      \m_aready__1\ => \m_aready__1\,
      m_avalid => m_avalid,
      m_avalid_2 => m_avalid_2,
      m_axi_wid(0) => \^m_axi_wid\(3),
      \m_axi_wvalid[0]_INST_0_i_1\ => \^storage_data1_reg[0]_0\,
      \m_axi_wvalid[0]_INST_0_i_1_0\ => \m_axi_wvalid[0]_INST_0_i_1_0\,
      m_ready_d(0) => m_ready_d(0),
      m_select_enc_0 => m_select_enc_0,
      m_select_enc_1 => m_select_enc_1,
      push => push,
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      s_axi_wvalid(1 downto 0) => s_axi_wvalid(1 downto 0),
      \storage_data1_reg[1]\ => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      \storage_data1_reg[1]_0\ => \^storage_data1_reg[1]_0\,
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]_1\,
      \storage_data1_reg[1]_2\ => \storage_data1_reg[1]_2\
    );
\m_axi_wdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(64),
      I1 => s_axi_wdata(0),
      I2 => s_axi_wdata(32),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(0)
    );
\m_axi_wdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(74),
      I1 => s_axi_wdata(10),
      I2 => s_axi_wdata(42),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(10)
    );
\m_axi_wdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(75),
      I1 => s_axi_wdata(11),
      I2 => s_axi_wdata(43),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(11)
    );
\m_axi_wdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(76),
      I1 => s_axi_wdata(12),
      I2 => s_axi_wdata(44),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(12)
    );
\m_axi_wdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(77),
      I1 => s_axi_wdata(13),
      I2 => s_axi_wdata(45),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(13)
    );
\m_axi_wdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(78),
      I1 => s_axi_wdata(14),
      I2 => s_axi_wdata(46),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(14)
    );
\m_axi_wdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(79),
      I1 => s_axi_wdata(15),
      I2 => s_axi_wdata(47),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(15)
    );
\m_axi_wdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(80),
      I1 => s_axi_wdata(16),
      I2 => s_axi_wdata(48),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(16)
    );
\m_axi_wdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(81),
      I1 => s_axi_wdata(17),
      I2 => s_axi_wdata(49),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(17)
    );
\m_axi_wdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(82),
      I1 => s_axi_wdata(18),
      I2 => s_axi_wdata(50),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(18)
    );
\m_axi_wdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(83),
      I1 => s_axi_wdata(19),
      I2 => s_axi_wdata(51),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(19)
    );
\m_axi_wdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(65),
      I1 => s_axi_wdata(1),
      I2 => s_axi_wdata(33),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(1)
    );
\m_axi_wdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(84),
      I1 => s_axi_wdata(20),
      I2 => s_axi_wdata(52),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(20)
    );
\m_axi_wdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(85),
      I1 => s_axi_wdata(21),
      I2 => s_axi_wdata(53),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(21)
    );
\m_axi_wdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(86),
      I1 => s_axi_wdata(22),
      I2 => s_axi_wdata(54),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(22)
    );
\m_axi_wdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(87),
      I1 => s_axi_wdata(23),
      I2 => s_axi_wdata(55),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(23)
    );
\m_axi_wdata[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(88),
      I1 => s_axi_wdata(24),
      I2 => s_axi_wdata(56),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(24)
    );
\m_axi_wdata[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(89),
      I1 => s_axi_wdata(25),
      I2 => s_axi_wdata(57),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(25)
    );
\m_axi_wdata[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(90),
      I1 => s_axi_wdata(26),
      I2 => s_axi_wdata(58),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(26)
    );
\m_axi_wdata[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(91),
      I1 => s_axi_wdata(27),
      I2 => s_axi_wdata(59),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(27)
    );
\m_axi_wdata[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(92),
      I1 => s_axi_wdata(28),
      I2 => s_axi_wdata(60),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(28)
    );
\m_axi_wdata[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(93),
      I1 => s_axi_wdata(29),
      I2 => s_axi_wdata(61),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(29)
    );
\m_axi_wdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(66),
      I1 => s_axi_wdata(2),
      I2 => s_axi_wdata(34),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(2)
    );
\m_axi_wdata[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(94),
      I1 => s_axi_wdata(30),
      I2 => s_axi_wdata(62),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(30)
    );
\m_axi_wdata[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(95),
      I1 => s_axi_wdata(31),
      I2 => s_axi_wdata(63),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(31)
    );
\m_axi_wdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(67),
      I1 => s_axi_wdata(3),
      I2 => s_axi_wdata(35),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(3)
    );
\m_axi_wdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(68),
      I1 => s_axi_wdata(4),
      I2 => s_axi_wdata(36),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(4)
    );
\m_axi_wdata[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(69),
      I1 => s_axi_wdata(5),
      I2 => s_axi_wdata(37),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(5)
    );
\m_axi_wdata[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(70),
      I1 => s_axi_wdata(6),
      I2 => s_axi_wdata(38),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(6)
    );
\m_axi_wdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(71),
      I1 => s_axi_wdata(7),
      I2 => s_axi_wdata(39),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(7)
    );
\m_axi_wdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(72),
      I1 => s_axi_wdata(8),
      I2 => s_axi_wdata(40),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(8)
    );
\m_axi_wdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wdata(73),
      I1 => s_axi_wdata(9),
      I2 => s_axi_wdata(41),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wdata(9)
    );
\m_axi_wid[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wid(4),
      I1 => s_axi_wid(0),
      I2 => s_axi_wid(2),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => \^m_axi_wid\(0)
    );
\m_axi_wid[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wid(5),
      I1 => s_axi_wid(1),
      I2 => s_axi_wid(3),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => \^m_axi_wid\(1)
    );
\m_axi_wid[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^storage_data1_reg[0]_0\,
      I1 => \^storage_data1_reg[1]_0\,
      O => \^m_axi_wid\(2)
    );
\m_axi_wid[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^storage_data1_reg[1]_0\,
      I1 => \^storage_data1_reg[0]_0\,
      O => \^m_axi_wid\(3)
    );
\m_axi_wlast[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AFC0A0C"
    )
        port map (
      I0 => s_axi_wlast(1),
      I1 => s_axi_wlast(0),
      I2 => \^storage_data1_reg[1]_0\,
      I3 => \^storage_data1_reg[0]_0\,
      I4 => s_axi_wlast(2),
      O => m_axi_wlast(0)
    );
\m_axi_wstrb[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wstrb(8),
      I1 => s_axi_wstrb(0),
      I2 => s_axi_wstrb(4),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wstrb(0)
    );
\m_axi_wstrb[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wstrb(9),
      I1 => s_axi_wstrb(1),
      I2 => s_axi_wstrb(5),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wstrb(1)
    );
\m_axi_wstrb[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wstrb(10),
      I1 => s_axi_wstrb(2),
      I2 => s_axi_wstrb(6),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wstrb(2)
    );
\m_axi_wstrb[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => s_axi_wstrb(11),
      I1 => s_axi_wstrb(3),
      I2 => s_axi_wstrb(7),
      I3 => \^storage_data1_reg[0]_0\,
      I4 => \^storage_data1_reg[1]_0\,
      O => m_axi_wstrb(3)
    );
\m_axi_wvalid[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_valid_i,
      I1 => m_avalid_0,
      O => m_axi_wvalid(0)
    );
\m_axi_wvalid[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAA"
    )
        port map (
      I0 => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      I1 => \^storage_data1_reg[1]_0\,
      I2 => \^storage_data1_reg[0]_0\,
      I3 => m_select_enc_0,
      I4 => m_avalid,
      I5 => s_axi_wvalid(1),
      O => m_valid_i
    );
\m_valid_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8CC888888CC88"
    )
        port map (
      I0 => \^q\(1),
      I1 => \sa_wm_awvalid__0\(0),
      I2 => \FSM_onehot_state[3]_i_3__2_n_0\,
      I3 => \^q\(0),
      I4 => \m_aready__1\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \m_valid_i_i_1__1_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i_0,
      D => \m_valid_i_i_1__1_n_0\,
      Q => m_avalid_0,
      R => areset_d1
    );
\s_axi_wready[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => m_avalid_2,
      I1 => \^storage_data1_reg[1]_0\,
      I2 => \^storage_data1_reg[0]_0\,
      I3 => m_axi_wready(0),
      I4 => m_avalid_0,
      I5 => m_select_enc_1,
      O => s_axi_wready(0)
    );
\s_axi_wready[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => m_avalid_3,
      I1 => \^storage_data1_reg[0]_0\,
      I2 => \^storage_data1_reg[1]_0\,
      I3 => m_axi_wready(0),
      I4 => m_avalid_0,
      I5 => m_select_enc_4,
      O => s_axi_wready(1)
    );
\s_axi_wready[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => m_avalid,
      I1 => \^storage_data1_reg[1]_0\,
      I2 => \^storage_data1_reg[0]_0\,
      I3 => m_axi_wready(0),
      I4 => m_avalid_0,
      I5 => m_select_enc_0,
      O => s_axi_wready(2)
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[1].srl_nx1_n_3\,
      Q => \^storage_data1_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice is
  port (
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : out STD_LOGIC;
    s_ready_i_reg : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 46 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \chosen_reg[0]\ : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[2]\ : out STD_LOGIC;
    \r_cmd_pop_0__1\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[2]\ : out STD_LOGIC;
    s_axi_rready_1_sp_1 : out STD_LOGIC;
    \chosen_reg[0]_0\ : out STD_LOGIC;
    s_axi_rready_2_sp_1 : out STD_LOGIC;
    \chosen_reg[0]_1\ : out STD_LOGIC;
    grant_hot : out STD_LOGIC;
    grant_hot0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_multi_thread.any_pop__1\ : out STD_LOGIC;
    \m_rvalid_qual__1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__1_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    \gen_multi_thread.accept_cnt_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \valid_qual_i3__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \access_done__0\ : out STD_LOGIC;
    \access_done__1\ : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_rvalid_qual__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_rvalid_qual__0_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : out STD_LOGIC;
    \m_rvalid_qual__0_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \aresetn_d_reg[0]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_bresp[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \m_rvalid_qual__1_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_31_in : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_multi_thread.accept_cnt\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.accept_cnt_reg[1]_0\ : in STD_LOGIC;
    \gen_multi_thread.accept_cnt_4\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.accept_cnt_reg[1]_1\ : in STD_LOGIC;
    \gen_arbiter.grant_hot_reg[2]\ : in STD_LOGIC;
    st_aa_arvalid_qual : in STD_LOGIC_VECTOR ( 1 downto 0 );
    next_hot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_multi_thread.accept_cnt_5\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_arbiter.qual_reg_reg[2]\ : in STD_LOGIC;
    chosen_6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.accept_cnt_8\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.accept_cnt_9\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ready_d_10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.qual_reg_reg[2]_0\ : in STD_LOGIC;
    chosen_11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    chosen_12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_13 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \m_payload_i_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice is
  signal \^p_1_in\ : STD_LOGIC;
  signal s_axi_rready_1_sn_1 : STD_LOGIC;
  signal s_axi_rready_2_sn_1 : STD_LOGIC;
begin
  p_1_in <= \^p_1_in\;
  s_axi_rready_1_sp_1 <= s_axi_rready_1_sn_1;
  s_axi_rready_2_sp_1 <= s_axi_rready_2_sn_1;
\b.b_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_16\
     port map (
      \access_done__0\ => \access_done__0\,
      \access_done__1\ => \access_done__1\,
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]_0\ => \aresetn_d_reg[0]\,
      chosen_11(0) => chosen_11(0),
      chosen_12(0) => chosen_12(0),
      chosen_13(1 downto 0) => chosen_13(1 downto 0),
      \chosen_reg[0]\ => \chosen_reg[0]\,
      \gen_arbiter.qual_reg_reg[2]\ => \gen_arbiter.qual_reg_reg[2]_0\,
      \gen_master_slots[0].w_issuing_cnt_reg[2]\ => \gen_master_slots[0].w_issuing_cnt_reg[2]\,
      \gen_multi_thread.accept_cnt_8\(1 downto 0) => \gen_multi_thread.accept_cnt_8\(1 downto 0),
      \gen_multi_thread.accept_cnt_9\(1 downto 0) => \gen_multi_thread.accept_cnt_9\(1 downto 0),
      \gen_multi_thread.accept_cnt_reg[1]\(1 downto 0) => \gen_multi_thread.accept_cnt_reg[1]\(1 downto 0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      \m_payload_i_reg[5]_0\(5 downto 0) => \m_payload_i_reg[5]\(5 downto 0),
      m_ready_d(0) => m_ready_d(0),
      m_ready_d_10(0) => m_ready_d_10(0),
      \m_rvalid_qual__0\(0) => \m_rvalid_qual__0\(0),
      \m_rvalid_qual__0_1\(0) => \m_rvalid_qual__0_1\(0),
      \m_rvalid_qual__0_2\(0) => \m_rvalid_qual__0_2\(0),
      m_valid_i_reg_0 => m_valid_i_reg_1,
      p_0_in => p_0_in,
      p_1_in => \^p_1_in\,
      p_31_in => p_31_in,
      s_axi_awvalid(1 downto 0) => s_axi_awvalid(1 downto 0),
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready(2 downto 0) => s_axi_bready(2 downto 0),
      s_axi_bresp(3 downto 0) => s_axi_bresp(3 downto 0),
      \s_axi_bresp[1]\(0) => \s_axi_bresp[1]\(0),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      s_ready_i_reg_0 => s_ready_i_reg_0,
      \valid_qual_i3__0\(0) => \valid_qual_i3__0\(0),
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(2 downto 0)
    );
\r.r_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_17\
     port map (
      D(2 downto 0) => D(2 downto 0),
      aclk => aclk,
      chosen(1 downto 0) => chosen(1 downto 0),
      chosen_6(0) => chosen_6(0),
      chosen_7(0) => chosen_7(0),
      \chosen_reg[0]\ => \chosen_reg[0]_0\,
      \chosen_reg[0]_0\ => \chosen_reg[0]_1\,
      \gen_arbiter.grant_hot_reg[2]\ => \gen_arbiter.grant_hot_reg[2]\,
      \gen_arbiter.qual_reg_reg[2]\ => \gen_arbiter.qual_reg_reg[2]\,
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => \gen_master_slots[0].r_issuing_cnt_reg[0]\,
      \gen_master_slots[0].r_issuing_cnt_reg[2]\ => \gen_master_slots[0].r_issuing_cnt_reg[2]\,
      \gen_multi_thread.accept_cnt\(1 downto 0) => \gen_multi_thread.accept_cnt\(1 downto 0),
      \gen_multi_thread.accept_cnt_4\(1 downto 0) => \gen_multi_thread.accept_cnt_4\(1 downto 0),
      \gen_multi_thread.accept_cnt_5\(1 downto 0) => \gen_multi_thread.accept_cnt_5\(1 downto 0),
      \gen_multi_thread.accept_cnt_reg[1]\ => \gen_multi_thread.accept_cnt_reg[1]_0\,
      \gen_multi_thread.accept_cnt_reg[1]_0\ => \gen_multi_thread.accept_cnt_reg[1]_1\,
      \gen_multi_thread.any_pop__1\ => \gen_multi_thread.any_pop__1\,
      grant_hot => grant_hot,
      grant_hot0 => grant_hot0,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_rvalid_qual__1\(0) => \m_rvalid_qual__1\(0),
      \m_rvalid_qual__1_0\(0) => \m_rvalid_qual__1_0\(0),
      \m_rvalid_qual__1_3\(0) => \m_rvalid_qual__1_3\(0),
      m_valid_i_reg_0(0) => m_valid_i_reg(0),
      m_valid_i_reg_1 => m_valid_i_reg_0,
      next_hot(2 downto 0) => next_hot(2 downto 0),
      p_0_in => p_0_in,
      p_1_in => \^p_1_in\,
      \r_cmd_pop_0__1\ => \r_cmd_pop_0__1\,
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(2 downto 0),
      s_axi_arvalid(2 downto 0) => s_axi_arvalid(2 downto 0),
      s_axi_rdata(46 downto 0) => s_axi_rdata(46 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast(1 downto 0) => s_axi_rlast(1 downto 0),
      s_axi_rready(2 downto 0) => s_axi_rready(2 downto 0),
      s_axi_rready_1_sp_1 => s_axi_rready_1_sn_1,
      s_axi_rready_2_sp_1 => s_axi_rready_2_sn_1,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_ready_i_reg_0 => s_ready_i_reg,
      st_aa_arvalid_qual(1 downto 0) => st_aa_arvalid_qual(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice_1 is
  port (
    m_valid_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : out STD_LOGIC;
    \m_rvalid_qual__1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 16 downto 0 );
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \aresetn_d_reg[1]_0\ : in STD_LOGIC;
    chosen : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rresp[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_rdata[31]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice_1 : entity is "axi_register_slice_v2_1_20_axi_register_slice";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice_1 is
  signal \^p_0_in\ : STD_LOGIC;
begin
  p_0_in <= \^p_0_in\;
\b.b_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\
     port map (
      aclk => aclk,
      \aresetn_d_reg[1]_0\ => \aresetn_d_reg[1]\,
      \aresetn_d_reg[1]_1\ => \aresetn_d_reg[1]_0\,
      chosen_0(0) => chosen_0(0),
      m_valid_i_reg_0(0) => m_valid_i_reg(0),
      p_0_in => \^p_0_in\,
      p_1_in => p_1_in,
      s_axi_bready(0) => s_axi_bready(0)
    );
\r.r_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\
     port map (
      aclk => aclk,
      chosen(0) => chosen(0),
      m_valid_i_reg_0 => \m_rvalid_qual__1\(0),
      p_0_in => \^p_0_in\,
      p_1_in => p_1_in,
      s_axi_rdata(16 downto 0) => s_axi_rdata(16 downto 0),
      \s_axi_rdata[31]\(16 downto 0) => \s_axi_rdata[31]\(16 downto 0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      \s_axi_rresp[1]\(1 downto 0) => \s_axi_rresp[1]\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_mux is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_select_enc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_aready1__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aa_wm_awgrant_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    aa_mi_awtarget_hot : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sa_wm_awvalid__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_avalid : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_select_enc_1 : in STD_LOGIC;
    m_avalid_2 : in STD_LOGIC;
    \m_axi_wvalid[0]_INST_0_i_1\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid_3 : in STD_LOGIC;
    m_select_enc_4 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_rep[0].fifoaddr_reg[0]\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    \storage_data1_reg[1]\ : in STD_LOGIC;
    \storage_data1_reg[1]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_mux is
begin
\gen_wmux.wmux_aw_fifo\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo__parameterized0\
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      aa_mi_awtarget_hot(0) => aa_mi_awtarget_hot(0),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(1 downto 0) => aa_wm_awgrant_enc(1 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \gen_rep[0].fifoaddr_reg[0]_0\ => \gen_rep[0].fifoaddr_reg[0]\,
      \m_aready1__0\(0) => \m_aready1__0\(0),
      m_avalid => m_avalid,
      m_avalid_2 => m_avalid_2,
      m_avalid_3 => m_avalid_3,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(3 downto 0) => m_axi_wid(3 downto 0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid(0) => m_axi_wvalid(0),
      \m_axi_wvalid[0]_INST_0_i_1_0\ => \m_axi_wvalid[0]_INST_0_i_1\,
      m_ready_d(0) => m_ready_d(0),
      m_select_enc_0 => m_select_enc_0,
      m_select_enc_1 => m_select_enc_1,
      m_select_enc_4 => m_select_enc_4,
      m_valid_i_reg_0 => m_valid_i_reg,
      reset => reset,
      s_axi_wdata(95 downto 0) => s_axi_wdata(95 downto 0),
      s_axi_wid(5 downto 0) => s_axi_wid(5 downto 0),
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      s_axi_wready(2 downto 0) => s_axi_wready(2 downto 0),
      s_axi_wstrb(11 downto 0) => s_axi_wstrb(11 downto 0),
      s_axi_wvalid(1 downto 0) => s_axi_wvalid(1 downto 0),
      \sa_wm_awvalid__0\(0) => \sa_wm_awvalid__0\(0),
      \storage_data1_reg[0]_0\ => m_select_enc(0),
      \storage_data1_reg[1]_0\ => m_select_enc(1),
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]\,
      \storage_data1_reg[1]_2\ => \storage_data1_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router is
  port (
    m_avalid : out STD_LOGIC;
    ss_wr_awready_0 : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awvalid_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_aready1__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router is
begin
wrouter_aw_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo_12
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \m_aready1__0\(0) => \m_aready1__0\(0),
      m_avalid => m_avalid,
      m_ready_d(0) => m_ready_d(0),
      m_select_enc => m_select_enc,
      reset => reset,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready_0 => ss_wr_awready_0,
      ss_wr_awvalid_0 => ss_wr_awvalid_0,
      \storage_data1_reg[0]_0\ => \storage_data1_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router_3 is
  port (
    m_avalid : out STD_LOGIC;
    ss_wr_awready_1 : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wvalid[1]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awvalid_1 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_data1_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router_3 : entity is "axi_crossbar_v2_1_21_wdata_router";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router_3 is
begin
wrouter_aw_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo_8
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      areset_d1 => areset_d1,
      m_avalid => m_avalid,
      m_axi_wid(0) => m_axi_wid(0),
      m_ready_d(0) => m_ready_d(0),
      m_select_enc_0(1 downto 0) => m_select_enc_0(1 downto 0),
      reset => reset,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      \s_axi_wvalid[1]\ => \s_axi_wvalid[1]\,
      ss_wr_awready_1 => ss_wr_awready_1,
      ss_wr_awvalid_1 => ss_wr_awvalid_1,
      \storage_data1_reg[0]_0\ => m_select_enc,
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]\,
      \storage_data1_reg[0]_2\ => \storage_data1_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router_5 is
  port (
    areset_d1 : out STD_LOGIC;
    m_avalid : out STD_LOGIC;
    ss_wr_awready_2 : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awvalid_2 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router_5 : entity is "axi_crossbar_v2_1_21_wdata_router";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router_5 is
begin
wrouter_aw_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_19_axic_reg_srl_fifo
     port map (
      Q(0) => Q(0),
      SS(0) => areset_d1,
      aclk => aclk,
      m_avalid => m_avalid,
      m_axi_wid(0) => m_axi_wid(0),
      m_ready_d(0) => m_ready_d(0),
      m_select_enc => m_select_enc,
      reset => reset,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready_2 => ss_wr_awready_2,
      ss_wr_awvalid_2 => ss_wr_awvalid_2,
      \storage_data1_reg[0]_0\ => \storage_data1_reg[0]\,
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_crossbar is
  port (
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_RREADY : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 56 downto 0 );
    \gen_arbiter.s_ready_i_reg[2]\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[1]\ : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[0]\ : out STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[65]\ : out STD_LOGIC_VECTOR ( 56 downto 0 );
    m_valid_i_reg : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \chosen_reg[0]\ : out STD_LOGIC;
    \chosen_reg[0]_0\ : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_crossbar;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_crossbar is
  signal aa_mi_awtarget_hot : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aa_sa_awvalid : STD_LOGIC;
  signal aa_wm_awgrant_enc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \access_done__0\ : STD_LOGIC;
  signal \access_done__1\ : STD_LOGIC;
  signal addr_arbiter_ar_n_1 : STD_LOGIC;
  signal addr_arbiter_ar_n_2 : STD_LOGIC;
  signal addr_arbiter_ar_n_3 : STD_LOGIC;
  signal addr_arbiter_ar_n_5 : STD_LOGIC;
  signal addr_arbiter_ar_n_6 : STD_LOGIC;
  signal addr_arbiter_aw_n_11 : STD_LOGIC;
  signal addr_arbiter_aw_n_12 : STD_LOGIC;
  signal addr_arbiter_aw_n_14 : STD_LOGIC;
  signal addr_arbiter_aw_n_15 : STD_LOGIC;
  signal addr_arbiter_aw_n_2 : STD_LOGIC;
  signal addr_arbiter_aw_n_4 : STD_LOGIC;
  signal \any_prio129_out__0\ : STD_LOGIC;
  signal \any_prio6_out__0\ : STD_LOGIC;
  signal aresetn_d : STD_LOGIC;
  signal \^chosen_reg[0]\ : STD_LOGIC;
  signal \^chosen_reg[0]_0\ : STD_LOGIC;
  signal \^gen_arbiter.s_ready_i_reg[0]\ : STD_LOGIC;
  signal \^gen_arbiter.s_ready_i_reg[1]\ : STD_LOGIC;
  signal \^gen_arbiter.s_ready_i_reg[2]\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_8\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_56\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_57\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_59\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_60\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_62\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_66\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_67\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_68\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_74\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_75\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_93\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_3\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt_15\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt_16\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt_7\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt_8\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.any_pop__1\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst/chosen\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.arbiter_resp_inst/chosen_14\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_multi_thread.arbiter_resp_inst/chosen_17\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_multi_thread.arbiter_resp_inst/chosen_4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.arbiter_resp_inst/chosen_6\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_multi_thread.arbiter_resp_inst/chosen_9\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_0\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_1\ : STD_LOGIC;
  signal \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_3\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_0_in6_in\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_7_in\ : STD_LOGIC;
  signal grant_hot : STD_LOGIC;
  signal grant_hot0 : STD_LOGIC;
  signal \m_aready1__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_avalid : STD_LOGIC;
  signal m_avalid_13 : STD_LOGIC;
  signal m_avalid_21 : STD_LOGIC;
  signal \^m_axi_wid\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m_ready_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d_10 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d_18 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d_22 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_rvalid_qual__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_rvalid_qual__0_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_rvalid_qual__0_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_rvalid_qual__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_rvalid_qual__1_2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_rvalid_qual__1_3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_select_enc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_select_enc_12 : STD_LOGIC;
  signal m_select_enc_20 : STD_LOGIC;
  signal m_select_enc_5 : STD_LOGIC;
  signal \^m_valid_i_reg\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal next_hot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_0_in27_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_31_in : STD_LOGIC;
  signal \r_cmd_pop_0__1\ : STD_LOGIC;
  signal r_issuing_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reset : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_rlast\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sa_wm_awvalid__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal splitter_aw_mi_n_0 : STD_LOGIC;
  signal ss_aa_awready : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ss_aa_awvalid : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ss_wr_awready_0 : STD_LOGIC;
  signal ss_wr_awready_1 : STD_LOGIC;
  signal ss_wr_awready_2 : STD_LOGIC;
  signal ss_wr_awvalid_0 : STD_LOGIC;
  signal ss_wr_awvalid_1 : STD_LOGIC;
  signal ss_wr_awvalid_2 : STD_LOGIC;
  signal st_aa_arvalid_qual : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_aa_awvalid_qual : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_mr_bvalid : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \valid_qual_i3__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal w_issuing_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wrouter_aw_fifo/areset_d1\ : STD_LOGIC;
  signal \wrouter_aw_fifo/p_0_in8_in\ : STD_LOGIC;
  signal \wrouter_aw_fifo/p_0_in8_in_11\ : STD_LOGIC;
  signal \wrouter_aw_fifo/p_0_in8_in_19\ : STD_LOGIC;
begin
  \chosen_reg[0]\ <= \^chosen_reg[0]\;
  \chosen_reg[0]_0\ <= \^chosen_reg[0]_0\;
  \gen_arbiter.s_ready_i_reg[0]\ <= \^gen_arbiter.s_ready_i_reg[0]\;
  \gen_arbiter.s_ready_i_reg[1]\ <= \^gen_arbiter.s_ready_i_reg[1]\;
  \gen_arbiter.s_ready_i_reg[2]\ <= \^gen_arbiter.s_ready_i_reg[2]\;
  m_axi_wid(3 downto 0) <= \^m_axi_wid\(3 downto 0);
  m_valid_i_reg <= \^m_valid_i_reg\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_axi_awready(2 downto 0) <= \^s_axi_awready\(2 downto 0);
  s_axi_rdata(63 downto 0) <= \^s_axi_rdata\(63 downto 0);
  s_axi_rlast(1 downto 0) <= \^s_axi_rlast\(1 downto 0);
  s_axi_rresp(3 downto 0) <= \^s_axi_rresp\(3 downto 0);
addr_arbiter_ar: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_addr_arbiter
     port map (
      D(2) => \gen_master_slots[0].reg_slice_mi_n_66\,
      D(1) => \gen_master_slots[0].reg_slice_mi_n_67\,
      D(0) => \gen_master_slots[0].reg_slice_mi_n_68\,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.m_mesg_i_reg[65]_0\(56 downto 0) => \gen_arbiter.m_mesg_i_reg[65]\(56 downto 0),
      \gen_arbiter.m_target_hot_i_reg[0]_0\ => addr_arbiter_ar_n_2,
      \gen_arbiter.m_valid_i_reg_0\ => addr_arbiter_ar_n_6,
      \gen_arbiter.s_ready_i_reg[0]_0\ => \^gen_arbiter.s_ready_i_reg[0]\,
      \gen_arbiter.s_ready_i_reg[1]_0\ => \^gen_arbiter.s_ready_i_reg[1]\,
      \gen_arbiter.s_ready_i_reg[2]_0\ => \^gen_arbiter.s_ready_i_reg[2]\,
      \gen_master_slots[0].r_issuing_cnt_reg[1]\ => addr_arbiter_ar_n_5,
      \gen_master_slots[0].r_issuing_cnt_reg[2]\ => addr_arbiter_ar_n_1,
      \gen_master_slots[0].r_issuing_cnt_reg[2]_0\ => addr_arbiter_ar_n_3,
      grant_hot => grant_hot,
      grant_hot0 => grant_hot0,
      m_axi_arready(0) => m_axi_arready(0),
      m_axi_arvalid(0) => m_axi_arvalid(0),
      next_hot(2 downto 0) => next_hot(2 downto 0),
      \r_cmd_pop_0__1\ => \r_cmd_pop_0__1\,
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(2 downto 0),
      reset => reset,
      s_axi_araddr(95 downto 0) => s_axi_araddr(95 downto 0),
      s_axi_arburst(5 downto 0) => s_axi_arburst(5 downto 0),
      s_axi_arcache(11 downto 0) => s_axi_arcache(11 downto 0),
      s_axi_arid(5 downto 0) => s_axi_arid(5 downto 0),
      s_axi_arlen(11 downto 0) => s_axi_arlen(11 downto 0),
      s_axi_arlock(2 downto 0) => s_axi_arlock(2 downto 0),
      s_axi_arprot(8 downto 0) => s_axi_arprot(8 downto 0),
      s_axi_arqos(11 downto 0) => s_axi_arqos(11 downto 0),
      s_axi_arsize(8 downto 0) => s_axi_arsize(8 downto 0),
      s_axi_arvalid(2 downto 0) => s_axi_arvalid(2 downto 0)
    );
addr_arbiter_aw: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_addr_arbiter_0
     port map (
      D(2) => \gen_master_slots[0].reg_slice_mi_n_74\,
      D(1) => \gen_master_slots[0].reg_slice_mi_n_75\,
      D(0) => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_0\,
      \FSM_onehot_state_reg[3]\ => addr_arbiter_aw_n_11,
      Q(1) => \gen_wmux.wmux_aw_fifo/p_7_in\,
      Q(0) => \gen_wmux.wmux_aw_fifo/p_0_in6_in\,
      aa_mi_awtarget_hot(0) => aa_mi_awtarget_hot(0),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(1 downto 0) => aa_wm_awgrant_enc(1 downto 0),
      aclk => aclk,
      \any_prio129_out__0\ => \any_prio129_out__0\,
      \any_prio6_out__0\ => \any_prio6_out__0\,
      aresetn_d => aresetn_d,
      \gen_arbiter.grant_hot_reg[1]_0\ => splitter_aw_mi_n_0,
      \gen_arbiter.grant_hot_reg[2]_0\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_4\,
      \gen_arbiter.grant_hot_reg[2]_1\ => \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_1\,
      \gen_arbiter.m_mesg_i_reg[65]_0\(56 downto 0) => Q(56 downto 0),
      \gen_arbiter.m_valid_i_reg_0\ => addr_arbiter_aw_n_14,
      \gen_arbiter.qual_reg_reg[2]_0\(0) => p_0_in27_in,
      \gen_master_slots[0].w_issuing_cnt_reg[0]\ => addr_arbiter_aw_n_15,
      \gen_master_slots[0].w_issuing_cnt_reg[1]\ => \gen_master_slots[0].reg_slice_mi_n_56\,
      \gen_master_slots[0].w_issuing_cnt_reg[2]\ => addr_arbiter_aw_n_2,
      \gen_master_slots[0].w_issuing_cnt_reg[2]_0\ => addr_arbiter_aw_n_4,
      m_axi_awready(0) => m_axi_awready(0),
      m_axi_awvalid(0) => m_axi_awvalid(0),
      m_ready_d(1 downto 0) => m_ready_d_22(1 downto 0),
      m_ready_d_0(0) => m_ready_d_10(0),
      m_ready_d_1(0) => m_ready_d(0),
      \m_ready_d_reg[0]\ => addr_arbiter_aw_n_12,
      p_31_in => p_31_in,
      reset => reset,
      s_axi_awaddr(95 downto 0) => s_axi_awaddr(95 downto 0),
      s_axi_awburst(5 downto 0) => s_axi_awburst(5 downto 0),
      s_axi_awcache(11 downto 0) => s_axi_awcache(11 downto 0),
      s_axi_awid(5 downto 0) => s_axi_awid(5 downto 0),
      s_axi_awlen(11 downto 0) => s_axi_awlen(11 downto 0),
      s_axi_awlock(2 downto 0) => s_axi_awlock(2 downto 0),
      s_axi_awprot(8 downto 0) => s_axi_awprot(8 downto 0),
      s_axi_awqos(11 downto 0) => s_axi_awqos(11 downto 0),
      s_axi_awsize(8 downto 0) => s_axi_awsize(8 downto 0),
      s_axi_awvalid(1 downto 0) => s_axi_awvalid(1 downto 0),
      \sa_wm_awvalid__0\(0) => \sa_wm_awvalid__0\(0),
      ss_aa_awready(2 downto 0) => ss_aa_awready(2 downto 0),
      ss_aa_awvalid(0) => ss_aa_awvalid(1),
      st_aa_awvalid_qual(1 downto 0) => st_aa_awvalid_qual(1 downto 0),
      \valid_qual_i3__0\(0) => \valid_qual_i3__0\(0),
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(2 downto 0)
    );
aresetn_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => aresetn_d,
      R => '0'
    );
\gen_master_slots[0].gen_mi_write.wdata_mux_w\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_mux
     port map (
      Q(1) => \gen_wmux.wmux_aw_fifo/p_7_in\,
      Q(0) => \gen_wmux.wmux_aw_fifo/p_0_in6_in\,
      aa_mi_awtarget_hot(0) => aa_mi_awtarget_hot(0),
      aa_sa_awvalid => aa_sa_awvalid,
      aa_wm_awgrant_enc(1 downto 0) => aa_wm_awgrant_enc(1 downto 0),
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      \gen_rep[0].fifoaddr_reg[0]\ => addr_arbiter_aw_n_14,
      \m_aready1__0\(0) => \m_aready1__0\(0),
      m_avalid => m_avalid_21,
      m_avalid_2 => m_avalid,
      m_avalid_3 => m_avalid_13,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(3 downto 0) => \^m_axi_wid\(3 downto 0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid(0) => m_axi_wvalid(0),
      \m_axi_wvalid[0]_INST_0_i_1\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\,
      m_ready_d(0) => m_ready_d_22(0),
      m_select_enc(1 downto 0) => m_select_enc(1 downto 0),
      m_select_enc_0 => m_select_enc_20,
      m_select_enc_1 => m_select_enc_5,
      m_select_enc_4 => m_select_enc_12,
      m_valid_i_reg => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_8\,
      reset => reset,
      s_axi_wdata(95 downto 0) => s_axi_wdata(95 downto 0),
      s_axi_wid(5 downto 0) => s_axi_wid(5 downto 0),
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      s_axi_wready(2 downto 0) => s_axi_wready(2 downto 0),
      s_axi_wstrb(11 downto 0) => s_axi_wstrb(11 downto 0),
      s_axi_wvalid(1) => s_axi_wvalid(2),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      \sa_wm_awvalid__0\(0) => \sa_wm_awvalid__0\(0),
      \storage_data1_reg[1]\ => addr_arbiter_aw_n_11,
      \storage_data1_reg[1]_0\ => addr_arbiter_aw_n_12
    );
\gen_master_slots[0].r_issuing_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[0].reg_slice_mi_n_57\,
      Q => r_issuing_cnt(0),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_ar_n_1,
      Q => r_issuing_cnt(1),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_ar_n_3,
      Q => r_issuing_cnt(2),
      R => reset
    );
\gen_master_slots[0].reg_slice_mi\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice
     port map (
      D(2) => \gen_master_slots[0].reg_slice_mi_n_66\,
      D(1) => \gen_master_slots[0].reg_slice_mi_n_67\,
      D(0) => \gen_master_slots[0].reg_slice_mi_n_68\,
      \access_done__0\ => \access_done__0\,
      \access_done__1\ => \access_done__1\,
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_93\,
      chosen(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen\(1 downto 0),
      chosen_11(0) => \gen_multi_thread.arbiter_resp_inst/chosen_9\(0),
      chosen_12(0) => \gen_multi_thread.arbiter_resp_inst/chosen_17\(0),
      chosen_13(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen_4\(1 downto 0),
      chosen_6(0) => \gen_multi_thread.arbiter_resp_inst/chosen_6\(0),
      chosen_7(0) => \gen_multi_thread.arbiter_resp_inst/chosen_14\(0),
      \chosen_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_56\,
      \chosen_reg[0]_0\ => \^chosen_reg[0]\,
      \chosen_reg[0]_1\ => \^chosen_reg[0]_0\,
      \gen_arbiter.grant_hot_reg[2]\ => addr_arbiter_ar_n_6,
      \gen_arbiter.qual_reg_reg[2]\ => addr_arbiter_ar_n_5,
      \gen_arbiter.qual_reg_reg[2]_0\ => addr_arbiter_aw_n_15,
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => addr_arbiter_ar_n_2,
      \gen_master_slots[0].r_issuing_cnt_reg[2]\ => \gen_master_slots[0].reg_slice_mi_n_57\,
      \gen_master_slots[0].w_issuing_cnt_reg[2]\ => \gen_master_slots[0].reg_slice_mi_n_59\,
      \gen_multi_thread.accept_cnt\(1 downto 0) => \gen_multi_thread.accept_cnt_7\(1 downto 0),
      \gen_multi_thread.accept_cnt_4\(1 downto 0) => \gen_multi_thread.accept_cnt_15\(1 downto 0),
      \gen_multi_thread.accept_cnt_5\(1 downto 0) => \gen_multi_thread.accept_cnt\(1 downto 0),
      \gen_multi_thread.accept_cnt_8\(1 downto 0) => \gen_multi_thread.accept_cnt_8\(1 downto 0),
      \gen_multi_thread.accept_cnt_9\(1 downto 0) => \gen_multi_thread.accept_cnt_16\(1 downto 0),
      \gen_multi_thread.accept_cnt_reg[1]\(1) => \gen_master_slots[0].reg_slice_mi_n_74\,
      \gen_multi_thread.accept_cnt_reg[1]\(0) => \gen_master_slots[0].reg_slice_mi_n_75\,
      \gen_multi_thread.accept_cnt_reg[1]_0\ => \^gen_arbiter.s_ready_i_reg[1]\,
      \gen_multi_thread.accept_cnt_reg[1]_1\ => \^gen_arbiter.s_ready_i_reg[2]\,
      \gen_multi_thread.any_pop__1\ => \gen_multi_thread.any_pop__1\,
      grant_hot => grant_hot,
      grant_hot0 => grant_hot0,
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[5]\(5 downto 0) => D(5 downto 0),
      m_ready_d(0) => m_ready_d_10(0),
      m_ready_d_10(0) => m_ready_d_18(0),
      \m_rvalid_qual__0\(0) => \m_rvalid_qual__0_1\(0),
      \m_rvalid_qual__0_1\(0) => \m_rvalid_qual__0_0\(0),
      \m_rvalid_qual__0_2\(0) => \m_rvalid_qual__0\(0),
      \m_rvalid_qual__1\(0) => \m_rvalid_qual__1_3\(0),
      \m_rvalid_qual__1_0\(0) => \m_rvalid_qual__1_2\(0),
      \m_rvalid_qual__1_3\(0) => \m_rvalid_qual__1\(1),
      m_valid_i_reg(0) => \m_rvalid_qual__1\(0),
      m_valid_i_reg_0 => \^m_valid_i_reg\,
      m_valid_i_reg_1 => \^m_valid_i_reg_0\,
      next_hot(2 downto 0) => next_hot(2 downto 0),
      p_0_in => p_0_in,
      p_1_in => p_1_in,
      p_31_in => p_31_in,
      \r_cmd_pop_0__1\ => \r_cmd_pop_0__1\,
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(2 downto 0),
      s_axi_arvalid(2 downto 0) => s_axi_arvalid(2 downto 0),
      s_axi_awvalid(1 downto 0) => s_axi_awvalid(2 downto 1),
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready(2 downto 0) => s_axi_bready(2 downto 0),
      s_axi_bresp(3 downto 0) => s_axi_bresp(3 downto 0),
      \s_axi_bresp[1]\(0) => st_mr_bvalid(1),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      s_axi_rdata(46 downto 15) => \^s_axi_rdata\(63 downto 32),
      s_axi_rdata(14) => \^s_axi_rdata\(29),
      s_axi_rdata(13) => \^s_axi_rdata\(24),
      s_axi_rdata(12 downto 7) => \^s_axi_rdata\(21 downto 16),
      s_axi_rdata(6) => \^s_axi_rdata\(13),
      s_axi_rdata(5 downto 2) => \^s_axi_rdata\(8 downto 5),
      s_axi_rdata(1 downto 0) => \^s_axi_rdata\(1 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast(1 downto 0) => \^s_axi_rlast\(1 downto 0),
      s_axi_rready(2 downto 0) => s_axi_rready(2 downto 0),
      s_axi_rready_1_sp_1 => \gen_master_slots[0].reg_slice_mi_n_60\,
      s_axi_rready_2_sp_1 => \gen_master_slots[0].reg_slice_mi_n_62\,
      s_axi_rresp(1 downto 0) => \^s_axi_rresp\(3 downto 2),
      s_ready_i_reg => M_AXI_RREADY(0),
      s_ready_i_reg_0 => \gen_master_slots[1].reg_slice_mi_n_3\,
      st_aa_arvalid_qual(1 downto 0) => st_aa_arvalid_qual(1 downto 0),
      \valid_qual_i3__0\(0) => \valid_qual_i3__0\(0),
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(2 downto 0)
    );
\gen_master_slots[0].w_issuing_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[0].reg_slice_mi_n_59\,
      Q => w_issuing_cnt(0),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_2,
      Q => w_issuing_cnt(1),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_4,
      Q => w_issuing_cnt(2),
      R => reset
    );
\gen_master_slots[1].reg_slice_mi\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_20_axi_register_slice_1
     port map (
      aclk => aclk,
      \aresetn_d_reg[1]\ => \gen_master_slots[1].reg_slice_mi_n_3\,
      \aresetn_d_reg[1]_0\ => \gen_master_slots[0].reg_slice_mi_n_93\,
      chosen(0) => \gen_multi_thread.arbiter_resp_inst/chosen\(1),
      chosen_0(0) => \gen_multi_thread.arbiter_resp_inst/chosen_4\(1),
      \m_rvalid_qual__1\(0) => \m_rvalid_qual__1\(1),
      m_valid_i_reg(0) => st_mr_bvalid(1),
      p_0_in => p_0_in,
      p_1_in => p_1_in,
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_rdata(16 downto 15) => \^s_axi_rdata\(31 downto 30),
      s_axi_rdata(14 downto 11) => \^s_axi_rdata\(28 downto 25),
      s_axi_rdata(10 downto 9) => \^s_axi_rdata\(23 downto 22),
      s_axi_rdata(8 downto 7) => \^s_axi_rdata\(15 downto 14),
      s_axi_rdata(6 downto 3) => \^s_axi_rdata\(12 downto 9),
      s_axi_rdata(2 downto 0) => \^s_axi_rdata\(4 downto 2),
      \s_axi_rdata[31]\(16 downto 15) => \^s_axi_rdata\(63 downto 62),
      \s_axi_rdata[31]\(14 downto 11) => \^s_axi_rdata\(60 downto 57),
      \s_axi_rdata[31]\(10 downto 9) => \^s_axi_rdata\(55 downto 54),
      \s_axi_rdata[31]\(8 downto 7) => \^s_axi_rdata\(47 downto 46),
      \s_axi_rdata[31]\(6 downto 3) => \^s_axi_rdata\(44 downto 41),
      \s_axi_rdata[31]\(2 downto 0) => \^s_axi_rdata\(36 downto 34),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rresp(1 downto 0) => \^s_axi_rresp\(1 downto 0),
      \s_axi_rresp[1]\(1 downto 0) => \^s_axi_rresp\(3 downto 2)
    );
\gen_slave_slots[0].gen_si_read.si_transactor_ar\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor
     port map (
      aclk => aclk,
      chosen(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen\(1 downto 0),
      \gen_multi_thread.accept_cnt\(1 downto 0) => \gen_multi_thread.accept_cnt\(1 downto 0),
      \gen_multi_thread.accept_cnt_reg[0]_0\ => \^gen_arbiter.s_ready_i_reg[0]\,
      \gen_multi_thread.any_pop__1\ => \gen_multi_thread.any_pop__1\,
      \last_rr_hot_reg[1]\ => \^m_valid_i_reg\,
      \m_rvalid_qual__1\(1 downto 0) => \m_rvalid_qual__1\(1 downto 0),
      reset => reset,
      s_axi_rlast(0) => \^s_axi_rlast\(1),
      s_axi_rready(0) => s_axi_rready(0),
      st_aa_arvalid_qual(0) => st_aa_arvalid_qual(0)
    );
\gen_slave_slots[0].gen_si_write.si_transactor_aw\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized0\
     port map (
      D(0) => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_0\,
      aclk => aclk,
      chosen(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen_4\(1 downto 0),
      \chosen_reg[0]\(0) => st_mr_bvalid(1),
      \last_rr_hot_reg[1]\ => \^m_valid_i_reg_0\,
      m_ready_d(0) => m_ready_d(0),
      \m_rvalid_qual__0\(0) => \m_rvalid_qual__0\(0),
      reset => reset,
      s_axi_awready(0) => \^s_axi_awready\(0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bready(0) => s_axi_bready(0),
      st_aa_awvalid_qual(0) => st_aa_awvalid_qual(0),
      \valid_qual_i3__0\(0) => \valid_qual_i3__0\(0)
    );
\gen_slave_slots[0].gen_si_write.splitter_aw_si\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter
     port map (
      Q(0) => \wrouter_aw_fifo/p_0_in8_in\,
      aclk => aclk,
      aresetn_d => aresetn_d,
      m_ready_d(1 downto 0) => m_ready_d(1 downto 0),
      \m_ready_d_reg[1]_0\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3\,
      s_axi_awready(0) => \^s_axi_awready\(0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      ss_aa_awready(0) => ss_aa_awready(0),
      ss_wr_awready_0 => ss_wr_awready_0,
      ss_wr_awvalid_0 => ss_wr_awvalid_0
    );
\gen_slave_slots[0].gen_si_write.wdata_router_w\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router
     port map (
      Q(0) => \wrouter_aw_fifo/p_0_in8_in\,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      \m_aready1__0\(0) => \m_aready1__0\(0),
      m_avalid => m_avalid,
      m_ready_d(0) => m_ready_d(1),
      m_select_enc => m_select_enc_5,
      reset => reset,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready_0 => ss_wr_awready_0,
      ss_wr_awvalid_0 => ss_wr_awvalid_0,
      \storage_data1_reg[0]\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3\
    );
\gen_slave_slots[1].gen_si_read.si_transactor_ar\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized1\
     port map (
      aclk => aclk,
      chosen(0) => \gen_multi_thread.arbiter_resp_inst/chosen_6\(0),
      \gen_multi_thread.accept_cnt\(1 downto 0) => \gen_multi_thread.accept_cnt_7\(1 downto 0),
      \gen_multi_thread.accept_cnt_reg[0]_0\ => \^gen_arbiter.s_ready_i_reg[1]\,
      \gen_multi_thread.accept_cnt_reg[0]_1\ => \^chosen_reg[0]\,
      \gen_multi_thread.accept_cnt_reg[1]_0\ => \gen_master_slots[0].reg_slice_mi_n_60\,
      \m_rvalid_qual__1\(0) => \m_rvalid_qual__1_3\(0),
      reset => reset,
      s_axi_rlast(0) => \^s_axi_rlast\(1),
      s_axi_rready(0) => s_axi_rready(1),
      st_aa_arvalid_qual(0) => st_aa_arvalid_qual(1)
    );
\gen_slave_slots[1].gen_si_write.si_transactor_aw\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized2\
     port map (
      \access_done__0\ => \access_done__0\,
      aclk => aclk,
      \any_prio129_out__0\ => \any_prio129_out__0\,
      \any_prio6_out__0\ => \any_prio6_out__0\,
      chosen(0) => \gen_multi_thread.arbiter_resp_inst/chosen_9\(0),
      \gen_multi_thread.accept_cnt\(1 downto 0) => \gen_multi_thread.accept_cnt_8\(1 downto 0),
      \gen_multi_thread.accept_cnt_reg[0]_0\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_4\,
      \m_rvalid_qual__0\(0) => \m_rvalid_qual__0_1\(0),
      reset => reset,
      s_axi_awready(0) => \^s_axi_awready\(1),
      s_axi_bready(0) => s_axi_bready(1),
      st_aa_awvalid_qual(0) => st_aa_awvalid_qual(1)
    );
\gen_slave_slots[1].gen_si_write.splitter_aw_si\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_2
     port map (
      Q(0) => \wrouter_aw_fifo/p_0_in8_in_11\,
      aclk => aclk,
      aresetn_d => aresetn_d,
      m_ready_d(1 downto 0) => m_ready_d_10(1 downto 0),
      \m_ready_d_reg[1]_0\ => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3\,
      s_axi_awready(0) => \^s_axi_awready\(1),
      s_axi_awvalid(0) => s_axi_awvalid(1),
      ss_aa_awready(0) => ss_aa_awready(1),
      ss_aa_awvalid(0) => ss_aa_awvalid(1),
      ss_wr_awready_1 => ss_wr_awready_1,
      ss_wr_awvalid_1 => ss_wr_awvalid_1
    );
\gen_slave_slots[1].gen_si_write.wdata_router_w\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router_3
     port map (
      Q(0) => \wrouter_aw_fifo/p_0_in8_in_11\,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      m_avalid => m_avalid_13,
      m_axi_wid(0) => \^m_axi_wid\(2),
      m_ready_d(0) => m_ready_d_10(1),
      m_select_enc => m_select_enc_12,
      m_select_enc_0(1 downto 0) => m_select_enc(1 downto 0),
      reset => reset,
      s_axi_awvalid(0) => s_axi_awvalid(1),
      s_axi_wlast(0) => s_axi_wlast(1),
      s_axi_wvalid(0) => s_axi_wvalid(1),
      \s_axi_wvalid[1]\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\,
      ss_wr_awready_1 => ss_wr_awready_1,
      ss_wr_awvalid_1 => ss_wr_awvalid_1,
      \storage_data1_reg[0]\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_8\,
      \storage_data1_reg[0]_0\ => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3\
    );
\gen_slave_slots[2].gen_si_read.si_transactor_ar\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized3\
     port map (
      aclk => aclk,
      chosen(0) => \gen_multi_thread.arbiter_resp_inst/chosen_14\(0),
      \gen_multi_thread.accept_cnt\(1 downto 0) => \gen_multi_thread.accept_cnt_15\(1 downto 0),
      \gen_multi_thread.accept_cnt_reg[0]_0\ => \^gen_arbiter.s_ready_i_reg[2]\,
      \gen_multi_thread.accept_cnt_reg[0]_1\ => \^chosen_reg[0]_0\,
      \gen_multi_thread.accept_cnt_reg[1]_0\ => \gen_master_slots[0].reg_slice_mi_n_62\,
      \m_rvalid_qual__1\(0) => \m_rvalid_qual__1_2\(0),
      reset => reset,
      s_axi_rlast(0) => \^s_axi_rlast\(1),
      s_axi_rready(0) => s_axi_rready(2)
    );
\gen_slave_slots[2].gen_si_write.si_transactor_aw\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_si_transactor__parameterized4\
     port map (
      \access_done__1\ => \access_done__1\,
      aclk => aclk,
      \any_prio129_out__0\ => \any_prio129_out__0\,
      chosen(0) => \gen_multi_thread.arbiter_resp_inst/chosen_17\(0),
      \gen_multi_thread.accept_cnt\(1 downto 0) => \gen_multi_thread.accept_cnt_16\(1 downto 0),
      \gen_multi_thread.accept_cnt_reg[0]_0\ => \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_1\,
      \m_rvalid_qual__0\(0) => \m_rvalid_qual__0_0\(0),
      reset => reset,
      s_axi_awready(0) => \^s_axi_awready\(2),
      s_axi_bready(0) => s_axi_bready(2),
      ss_aa_awready(0) => ss_aa_awready(2)
    );
\gen_slave_slots[2].gen_si_write.splitter_aw_si\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_4
     port map (
      Q(0) => \wrouter_aw_fifo/p_0_in8_in_19\,
      aclk => aclk,
      \any_prio129_out__0\ => \any_prio129_out__0\,
      aresetn_d => aresetn_d,
      \gen_arbiter.m_target_hot_i_reg[0]\(0) => p_0_in27_in,
      m_ready_d(1 downto 0) => m_ready_d_18(1 downto 0),
      \m_ready_d_reg[1]_0\ => \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_3\,
      s_axi_awready(0) => \^s_axi_awready\(2),
      s_axi_awvalid(0) => s_axi_awvalid(2),
      ss_aa_awready(0) => ss_aa_awready(2),
      ss_wr_awready_2 => ss_wr_awready_2,
      ss_wr_awvalid_2 => ss_wr_awvalid_2
    );
\gen_slave_slots[2].gen_si_write.wdata_router_w\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_wdata_router_5
     port map (
      Q(0) => \wrouter_aw_fifo/p_0_in8_in_19\,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      m_avalid => m_avalid_21,
      m_axi_wid(0) => \^m_axi_wid\(3),
      m_ready_d(0) => m_ready_d_18(1),
      m_select_enc => m_select_enc_20,
      reset => reset,
      s_axi_awvalid(0) => s_axi_awvalid(2),
      s_axi_wlast(0) => s_axi_wlast(2),
      s_axi_wvalid(0) => s_axi_wvalid(2),
      ss_wr_awready_2 => ss_wr_awready_2,
      ss_wr_awvalid_2 => ss_wr_awvalid_2,
      \storage_data1_reg[0]\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_8\,
      \storage_data1_reg[0]_0\ => \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_3\
    );
splitter_aw_mi: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_splitter_6
     port map (
      aa_mi_awtarget_hot(0) => aa_mi_awtarget_hot(0),
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      m_axi_awready(0) => m_axi_awready(0),
      m_axi_awready_0_sp_1 => splitter_aw_mi_n_0,
      m_ready_d(1 downto 0) => m_ready_d_22(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ruser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 4;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "artix7";
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 32;
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_READ_CONNECTIVITY : integer;
  attribute C_M_AXI_READ_CONNECTIVITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 7;
  attribute C_M_AXI_READ_ISSUING : integer;
  attribute C_M_AXI_READ_ISSUING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 4;
  attribute C_M_AXI_SECURE : integer;
  attribute C_M_AXI_SECURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 0;
  attribute C_M_AXI_WRITE_CONNECTIVITY : integer;
  attribute C_M_AXI_WRITE_CONNECTIVITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 7;
  attribute C_M_AXI_WRITE_ISSUING : integer;
  attribute C_M_AXI_WRITE_ISSUING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 4;
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 3;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 0;
  attribute C_S_AXI_ARB_PRIORITY : string;
  attribute C_S_AXI_ARB_PRIORITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000000";
  attribute C_S_AXI_BASE_ID : string;
  attribute C_S_AXI_BASE_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000010000000000000000000000000000000010000000000000000000000000000000000";
  attribute C_S_AXI_READ_ACCEPTANCE : string;
  attribute C_S_AXI_READ_ACCEPTANCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010";
  attribute C_S_AXI_SINGLE_THREAD : string;
  attribute C_S_AXI_SINGLE_THREAD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_THREAD_ID_WIDTH : string;
  attribute C_S_AXI_THREAD_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010";
  attribute C_S_AXI_WRITE_ACCEPTANCE : string;
  attribute C_S_AXI_WRITE_ACCEPTANCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "yes";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "artix7";
  attribute P_INCR : string;
  attribute P_INCR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 4;
  attribute P_LOCK : integer;
  attribute P_LOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 2;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "32'b00000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "1'b1";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "1'b1";
  attribute P_ONES : string;
  attribute P_ONES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "192'b000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "192'b000000000000000000000000000000000000000000000000000000000000101100000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000011";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "3'b111";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar : entity is "3'b111";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_arlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^s_axi_rlast\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \^m_axi_arlock\(0);
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \^m_axi_awlock\(0);
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  s_axi_bid(11) <= \<const0>\;
  s_axi_bid(10) <= \<const0>\;
  s_axi_bid(9 downto 8) <= \^s_axi_bid\(9 downto 8);
  s_axi_bid(7) <= \<const0>\;
  s_axi_bid(6) <= \<const0>\;
  s_axi_bid(5 downto 4) <= \^s_axi_bid\(9 downto 8);
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1 downto 0) <= \^s_axi_bid\(1 downto 0);
  s_axi_bresp(5 downto 4) <= \^s_axi_bresp\(5 downto 4);
  s_axi_bresp(3 downto 2) <= \^s_axi_bresp\(5 downto 4);
  s_axi_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  s_axi_buser(2) <= \<const0>\;
  s_axi_buser(1) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_rdata(95 downto 64) <= \^s_axi_rdata\(95 downto 64);
  s_axi_rdata(63 downto 32) <= \^s_axi_rdata\(95 downto 64);
  s_axi_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  s_axi_rid(11) <= \<const0>\;
  s_axi_rid(10) <= \<const0>\;
  s_axi_rid(9 downto 8) <= \^s_axi_rid\(9 downto 8);
  s_axi_rid(7) <= \<const0>\;
  s_axi_rid(6) <= \<const0>\;
  s_axi_rid(5 downto 4) <= \^s_axi_rid\(9 downto 8);
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1 downto 0) <= \^s_axi_rid\(1 downto 0);
  s_axi_rlast(2) <= \^s_axi_rlast\(2);
  s_axi_rlast(1) <= \^s_axi_rlast\(2);
  s_axi_rlast(0) <= \^s_axi_rlast\(0);
  s_axi_rresp(5 downto 4) <= \^s_axi_rresp\(5 downto 4);
  s_axi_rresp(3 downto 2) <= \^s_axi_rresp\(5 downto 4);
  s_axi_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  s_axi_ruser(2) <= \<const0>\;
  s_axi_ruser(1) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_samd.crossbar_samd\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_crossbar
     port map (
      D(5 downto 2) => m_axi_bid(3 downto 0),
      D(1 downto 0) => m_axi_bresp(1 downto 0),
      M_AXI_RREADY(0) => m_axi_rready(0),
      Q(56 downto 53) => m_axi_awqos(3 downto 0),
      Q(52 downto 49) => m_axi_awcache(3 downto 0),
      Q(48 downto 47) => m_axi_awburst(1 downto 0),
      Q(46 downto 44) => m_axi_awprot(2 downto 0),
      Q(43) => \^m_axi_awlock\(0),
      Q(42 downto 40) => m_axi_awsize(2 downto 0),
      Q(39 downto 36) => m_axi_awlen(3 downto 0),
      Q(35 downto 4) => m_axi_awaddr(31 downto 0),
      Q(3 downto 0) => m_axi_awid(3 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      \chosen_reg[0]\ => s_axi_rvalid(1),
      \chosen_reg[0]_0\ => s_axi_rvalid(2),
      \gen_arbiter.m_mesg_i_reg[65]\(56 downto 53) => m_axi_arqos(3 downto 0),
      \gen_arbiter.m_mesg_i_reg[65]\(52 downto 49) => m_axi_arcache(3 downto 0),
      \gen_arbiter.m_mesg_i_reg[65]\(48 downto 47) => m_axi_arburst(1 downto 0),
      \gen_arbiter.m_mesg_i_reg[65]\(46 downto 44) => m_axi_arprot(2 downto 0),
      \gen_arbiter.m_mesg_i_reg[65]\(43) => \^m_axi_arlock\(0),
      \gen_arbiter.m_mesg_i_reg[65]\(42 downto 40) => m_axi_arsize(2 downto 0),
      \gen_arbiter.m_mesg_i_reg[65]\(39 downto 36) => m_axi_arlen(3 downto 0),
      \gen_arbiter.m_mesg_i_reg[65]\(35 downto 4) => m_axi_araddr(31 downto 0),
      \gen_arbiter.m_mesg_i_reg[65]\(3 downto 0) => m_axi_arid(3 downto 0),
      \gen_arbiter.s_ready_i_reg[0]\ => s_axi_arready(0),
      \gen_arbiter.s_ready_i_reg[1]\ => s_axi_arready(1),
      \gen_arbiter.s_ready_i_reg[2]\ => s_axi_arready(2),
      m_axi_arready(0) => m_axi_arready(0),
      m_axi_arvalid(0) => m_axi_arvalid(0),
      m_axi_awready(0) => m_axi_awready(0),
      m_axi_awvalid(0) => m_axi_awvalid(0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(3 downto 0) => m_axi_wid(3 downto 0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid(0) => m_axi_wvalid(0),
      m_valid_i_reg => s_axi_rvalid(0),
      m_valid_i_reg_0 => s_axi_bvalid(0),
      s_axi_araddr(95 downto 0) => s_axi_araddr(95 downto 0),
      s_axi_arburst(5 downto 0) => s_axi_arburst(5 downto 0),
      s_axi_arcache(11 downto 0) => s_axi_arcache(11 downto 0),
      s_axi_arid(5 downto 4) => s_axi_arid(9 downto 8),
      s_axi_arid(3 downto 2) => s_axi_arid(5 downto 4),
      s_axi_arid(1 downto 0) => s_axi_arid(1 downto 0),
      s_axi_arlen(11 downto 0) => s_axi_arlen(11 downto 0),
      s_axi_arlock(2) => s_axi_arlock(4),
      s_axi_arlock(1) => s_axi_arlock(2),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(8 downto 0) => s_axi_arprot(8 downto 0),
      s_axi_arqos(11 downto 0) => s_axi_arqos(11 downto 0),
      s_axi_arsize(8 downto 0) => s_axi_arsize(8 downto 0),
      s_axi_arvalid(2 downto 0) => s_axi_arvalid(2 downto 0),
      s_axi_awaddr(95 downto 0) => s_axi_awaddr(95 downto 0),
      s_axi_awburst(5 downto 0) => s_axi_awburst(5 downto 0),
      s_axi_awcache(11 downto 0) => s_axi_awcache(11 downto 0),
      s_axi_awid(5 downto 4) => s_axi_awid(9 downto 8),
      s_axi_awid(3 downto 2) => s_axi_awid(5 downto 4),
      s_axi_awid(1 downto 0) => s_axi_awid(1 downto 0),
      s_axi_awlen(11 downto 0) => s_axi_awlen(11 downto 0),
      s_axi_awlock(2) => s_axi_awlock(4),
      s_axi_awlock(1) => s_axi_awlock(2),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(8 downto 0) => s_axi_awprot(8 downto 0),
      s_axi_awqos(11 downto 0) => s_axi_awqos(11 downto 0),
      s_axi_awready(2 downto 0) => s_axi_awready(2 downto 0),
      s_axi_awsize(8 downto 0) => s_axi_awsize(8 downto 0),
      s_axi_awvalid(2 downto 0) => s_axi_awvalid(2 downto 0),
      s_axi_bid(3 downto 2) => \^s_axi_bid\(9 downto 8),
      s_axi_bid(1 downto 0) => \^s_axi_bid\(1 downto 0),
      s_axi_bready(2 downto 0) => s_axi_bready(2 downto 0),
      s_axi_bresp(3 downto 2) => \^s_axi_bresp\(5 downto 4),
      s_axi_bresp(1 downto 0) => \^s_axi_bresp\(1 downto 0),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(2 downto 1),
      s_axi_rdata(63 downto 32) => \^s_axi_rdata\(95 downto 64),
      s_axi_rdata(31 downto 0) => \^s_axi_rdata\(31 downto 0),
      s_axi_rid(3 downto 2) => \^s_axi_rid\(9 downto 8),
      s_axi_rid(1 downto 0) => \^s_axi_rid\(1 downto 0),
      s_axi_rlast(1) => \^s_axi_rlast\(2),
      s_axi_rlast(0) => \^s_axi_rlast\(0),
      s_axi_rready(2 downto 0) => s_axi_rready(2 downto 0),
      s_axi_rresp(3 downto 2) => \^s_axi_rresp\(5 downto 4),
      s_axi_rresp(1 downto 0) => \^s_axi_rresp\(1 downto 0),
      s_axi_wdata(95 downto 0) => s_axi_wdata(95 downto 0),
      s_axi_wid(5 downto 4) => s_axi_wid(9 downto 8),
      s_axi_wid(3 downto 2) => s_axi_wid(5 downto 4),
      s_axi_wid(1 downto 0) => s_axi_wid(1 downto 0),
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      s_axi_wready(2 downto 0) => s_axi_wready(2 downto 0),
      s_axi_wstrb(11 downto 0) => s_axi_wstrb(11 downto 0),
      s_axi_wvalid(2 downto 0) => s_axi_wvalid(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_crossbar,axi_crossbar_v2_1_21_axi_crossbar,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_crossbar_v2_1_21_axi_crossbar,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 4;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of inst : label is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "artix7";
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_READ_CONNECTIVITY : integer;
  attribute C_M_AXI_READ_CONNECTIVITY of inst : label is 7;
  attribute C_M_AXI_READ_ISSUING : integer;
  attribute C_M_AXI_READ_ISSUING of inst : label is 4;
  attribute C_M_AXI_SECURE : integer;
  attribute C_M_AXI_SECURE of inst : label is 0;
  attribute C_M_AXI_WRITE_CONNECTIVITY : integer;
  attribute C_M_AXI_WRITE_CONNECTIVITY of inst : label is 7;
  attribute C_M_AXI_WRITE_ISSUING : integer;
  attribute C_M_AXI_WRITE_ISSUING of inst : label is 4;
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of inst : label is 1;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of inst : label is 1;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of inst : label is 3;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of inst : label is 0;
  attribute C_S_AXI_ARB_PRIORITY : string;
  attribute C_S_AXI_ARB_PRIORITY of inst : label is "96'b000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000000";
  attribute C_S_AXI_BASE_ID : string;
  attribute C_S_AXI_BASE_ID of inst : label is "96'b000000000000000000000000000010000000000000000000000000000000010000000000000000000000000000000000";
  attribute C_S_AXI_READ_ACCEPTANCE : string;
  attribute C_S_AXI_READ_ACCEPTANCE of inst : label is "96'b000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010";
  attribute C_S_AXI_SINGLE_THREAD : string;
  attribute C_S_AXI_SINGLE_THREAD of inst : label is "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_THREAD_ID_WIDTH : string;
  attribute C_S_AXI_THREAD_ID_WIDTH of inst : label is "96'b000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010";
  attribute C_S_AXI_WRITE_ACCEPTANCE : string;
  attribute C_S_AXI_WRITE_ACCEPTANCE of inst : label is "96'b000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010";
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of inst : label is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of inst : label is "artix7";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of inst : label is 4;
  attribute P_LOCK : integer;
  attribute P_LOCK of inst : label is 2;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of inst : label is "32'b00000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of inst : label is "1'b1";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of inst : label is "1'b1";
  attribute P_ONES : string;
  attribute P_ONES of inst : label is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of inst : label is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of inst : label is "192'b000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of inst : label is "192'b000000000000000000000000000000000000000000000000000000000000101100000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000011";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of inst : label is "3'b111";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of inst : label is "3'b111";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI ARADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI ARADDR [31:0] [95:64]";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI ARBURST [1:0] [5:4]";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE [3:0] [11:8]";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARID [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARID [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI ARID [3:0] [11:8]";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLEN [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI ARLEN [3:0] [11:8]";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK [1:0] [5:4]";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI ARPROT [2:0] [8:6]";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI ARQOS [3:0] [11:8]";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARREADY [0:0] [2:2]";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE [2:0] [8:6]";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARVALID [0:0] [2:2]";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI AWADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI AWADDR [31:0] [95:64]";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI AWBURST [1:0] [5:4]";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE [3:0] [11:8]";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWID [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWID [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI AWID [3:0] [11:8]";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLEN [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI AWLEN [3:0] [11:8]";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK [1:0] [5:4]";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI AWPROT [2:0] [8:6]";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI AWQOS [3:0] [11:8]";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWREADY [0:0] [2:2]";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE [2:0] [8:6]";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWVALID [0:0] [2:2]";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BID [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI BID [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI BID [3:0] [11:8]";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI BREADY [0:0] [2:2]";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI BRESP [1:0] [5:4]";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI BVALID [0:0] [2:2]";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI RDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI RDATA [31:0] [95:64]";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RID [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI RID [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI RID [3:0] [11:8]";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RLAST [0:0] [2:2]";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RREADY [0:0] [2:2]";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S02_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI RRESP [1:0] [5:4]";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RVALID [0:0] [2:2]";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI WDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI WDATA [31:0] [95:64]";
  attribute X_INTERFACE_INFO of s_axi_wid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WID [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI WID [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI WID [3:0] [11:8]";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WLAST [0:0] [2:2]";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WREADY [0:0] [2:2]";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI WSTRB [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI WSTRB [3:0] [11:8]";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WVALID [0:0] [2:2]";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_21_axi_crossbar
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(3 downto 0) => m_axi_arid(3 downto 0),
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => m_axi_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready(0) => m_axi_arready(0),
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid(0) => m_axi_arvalid(0),
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(3 downto 0) => m_axi_awid(3 downto 0),
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => m_axi_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready(0) => m_axi_awready(0),
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid(0) => m_axi_awvalid(0),
      m_axi_bid(3 downto 0) => m_axi_bid(3 downto 0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid(0) => m_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rready(0) => m_axi_rready(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid(0) => m_axi_rvalid(0),
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(3 downto 0) => m_axi_wid(3 downto 0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid(0) => m_axi_wvalid(0),
      s_axi_araddr(95 downto 0) => s_axi_araddr(95 downto 0),
      s_axi_arburst(5 downto 0) => s_axi_arburst(5 downto 0),
      s_axi_arcache(11 downto 0) => s_axi_arcache(11 downto 0),
      s_axi_arid(11 downto 0) => s_axi_arid(11 downto 0),
      s_axi_arlen(11 downto 0) => s_axi_arlen(11 downto 0),
      s_axi_arlock(5 downto 0) => s_axi_arlock(5 downto 0),
      s_axi_arprot(8 downto 0) => s_axi_arprot(8 downto 0),
      s_axi_arqos(11 downto 0) => s_axi_arqos(11 downto 0),
      s_axi_arready(2 downto 0) => s_axi_arready(2 downto 0),
      s_axi_arsize(8 downto 0) => s_axi_arsize(8 downto 0),
      s_axi_aruser(2 downto 0) => B"000",
      s_axi_arvalid(2 downto 0) => s_axi_arvalid(2 downto 0),
      s_axi_awaddr(95 downto 0) => s_axi_awaddr(95 downto 0),
      s_axi_awburst(5 downto 0) => s_axi_awburst(5 downto 0),
      s_axi_awcache(11 downto 0) => s_axi_awcache(11 downto 0),
      s_axi_awid(11 downto 0) => s_axi_awid(11 downto 0),
      s_axi_awlen(11 downto 0) => s_axi_awlen(11 downto 0),
      s_axi_awlock(5 downto 0) => s_axi_awlock(5 downto 0),
      s_axi_awprot(8 downto 0) => s_axi_awprot(8 downto 0),
      s_axi_awqos(11 downto 0) => s_axi_awqos(11 downto 0),
      s_axi_awready(2 downto 0) => s_axi_awready(2 downto 0),
      s_axi_awsize(8 downto 0) => s_axi_awsize(8 downto 0),
      s_axi_awuser(2 downto 0) => B"000",
      s_axi_awvalid(2 downto 0) => s_axi_awvalid(2 downto 0),
      s_axi_bid(11 downto 0) => s_axi_bid(11 downto 0),
      s_axi_bready(2 downto 0) => s_axi_bready(2 downto 0),
      s_axi_bresp(5 downto 0) => s_axi_bresp(5 downto 0),
      s_axi_buser(2 downto 0) => NLW_inst_s_axi_buser_UNCONNECTED(2 downto 0),
      s_axi_bvalid(2 downto 0) => s_axi_bvalid(2 downto 0),
      s_axi_rdata(95 downto 0) => s_axi_rdata(95 downto 0),
      s_axi_rid(11 downto 0) => s_axi_rid(11 downto 0),
      s_axi_rlast(2 downto 0) => s_axi_rlast(2 downto 0),
      s_axi_rready(2 downto 0) => s_axi_rready(2 downto 0),
      s_axi_rresp(5 downto 0) => s_axi_rresp(5 downto 0),
      s_axi_ruser(2 downto 0) => NLW_inst_s_axi_ruser_UNCONNECTED(2 downto 0),
      s_axi_rvalid(2 downto 0) => s_axi_rvalid(2 downto 0),
      s_axi_wdata(95 downto 0) => s_axi_wdata(95 downto 0),
      s_axi_wid(11 downto 0) => s_axi_wid(11 downto 0),
      s_axi_wlast(2 downto 0) => s_axi_wlast(2 downto 0),
      s_axi_wready(2 downto 0) => s_axi_wready(2 downto 0),
      s_axi_wstrb(11 downto 0) => s_axi_wstrb(11 downto 0),
      s_axi_wuser(2 downto 0) => B"000",
      s_axi_wvalid(2 downto 0) => s_axi_wvalid(2 downto 0)
    );
end STRUCTURE;
