--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.76xd
--  \   \         Application: netgen
--  /   /         Filename: v6_pkt_counter_1024.vhd
-- /___/   /\     Timestamp: Mon Mar 26 16:00:40 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl "C:/Temp/Xilinx PCI Express/ML605_ISE13.3/ipcore_dir_ISE13.3/tmp/_cg/v6_pkt_counter_1024.ngc" "C:/Temp/Xilinx PCI Express/ML605_ISE13.3/ipcore_dir_ISE13.3/tmp/_cg/v6_pkt_counter_1024.vhd" 
-- Device	: 6vlx240tff1156-1
-- Input file	: C:/Temp/Xilinx PCI Express/ML605_ISE13.3/ipcore_dir_ISE13.3/tmp/_cg/v6_pkt_counter_1024.ngc
-- Output file	: C:/Temp/Xilinx PCI Express/ML605_ISE13.3/ipcore_dir_ISE13.3/tmp/_cg/v6_pkt_counter_1024.vhd
-- # of Entities	: 1
-- Design Name	: v6_pkt_counter_1024
-- Xilinx	: C:\Programmi\Xilinx\13.3\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity v6_pkt_counter_1024 is
  port (
    rst : in STD_LOGIC := 'X'; 
    wr_clk : in STD_LOGIC := 'X'; 
    rd_clk : in STD_LOGIC := 'X'; 
    wr_en : in STD_LOGIC := 'X'; 
    rd_en : in STD_LOGIC := 'X'; 
    full : out STD_LOGIC; 
    empty : out STD_LOGIC; 
    prog_full : out STD_LOGIC; 
    prog_empty : out STD_LOGIC; 
    din : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
    dout : out STD_LOGIC_VECTOR ( 0 downto 0 ) 
  );
end v6_pkt_counter_1024;

architecture STRUCTURE of v6_pkt_counter_1024 is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_25 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_35 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_i_36 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_0_47 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_48 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_49 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_n0011 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0_comp1_OR_3_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1_GND_38_o_MUX_27_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1 : STD_LOGIC; 
  signal write_ctrl_97 : STD_LOGIC; 
  signal write_ctrl1_98 : STD_LOGIC; 
  signal write_ctrl2_99 : STD_LOGIC; 
  signal write_ctrl3_100 : STD_LOGIC; 
  signal write_ctrl4_101 : STD_LOGIC; 
  signal write_ctrl5_102 : STD_LOGIC; 
  signal write_ctrl6_103 : STD_LOGIC; 
  signal write_ctrl7_104 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal inst_LPM_MUX_4_113 : STD_LOGIC; 
  signal inst_LPM_MUX_3_114 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_117 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_118 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_119 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_120 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_121 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_122 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_123 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_124 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_10_Q_161 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_9_Q_162 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_9_Q_163 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_8_Q_164 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_8_Q_165 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_7_Q_166 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_7_Q_167 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_6_Q_168 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_6_Q_169 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_5_Q_170 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_5_Q_171 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_4_Q_172 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_4_Q_173 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_3_Q_174 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_3_Q_175 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_2_Q_176 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_2_Q_177 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_1_Q_178 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_1_Q_179 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_0_Q_180 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_1_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_2_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_3_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_4_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_5_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_6_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_7_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_8_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_9_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_10_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT41 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT81_204 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT103 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_8_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_9_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_10_Q_215 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_9_Q_216 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_9_Q_217 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_8_Q_218 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_8_Q_219 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_7_Q_220 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_7_Q_221 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_6_Q_222 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_6_Q_223 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_5_Q_224 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_5_Q_225 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_4_Q_226 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_4_Q_227 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_3_Q_228 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_3_Q_229 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_2_Q_230 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_2_Q_231 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_1_Q_232 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_1_Q_233 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_0_Q_234 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_4_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_5_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_6_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_7_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_8_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_9_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_10_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_3_bdd0 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_8_Q_257 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_9_Q_258 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_11_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_10_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_9_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_8_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_7_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_6_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_5_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_4_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_24_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_23_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_22_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_21_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_20_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_19_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_18_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_17_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_0_RD_PNTR_1_XOR_63_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_1_RD_PNTR_2_XOR_62_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_2_RD_PNTR_3_XOR_61_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_3_RD_PNTR_4_XOR_60_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_4_RD_PNTR_5_XOR_59_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_5_RD_PNTR_6_XOR_58_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_6_RD_PNTR_7_XOR_57_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_7_RD_PNTR_8_XOR_56_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_8_RD_PNTR_9_XOR_55_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_0_WR_PNTR_1_XOR_9_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_1_WR_PNTR_2_XOR_8_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_2_WR_PNTR_3_XOR_7_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_3_WR_PNTR_4_XOR_6_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_4_WR_PNTR_5_XOR_5_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_5_WR_PNTR_6_XOR_4_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_6_WR_PNTR_7_XOR_3_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_7_WR_PNTR_8_XOR_2_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_8_WR_PNTR_9_XOR_1_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_12_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_25_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_rstpot_364 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i_rstpot_365 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i_rstpot_366 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM2_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM1_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM3_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM4_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM7_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM5_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM6_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM8_SPO_UNCONNECTED : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2 : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad : STD_LOGIC_VECTOR ( 10 downto 1 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_rd_pntr_inv_pad : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad : STD_LOGIC_VECTOR ( 10 downto 4 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  dout(0) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_0_47;
  full <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_25;
  empty <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_i_36;
  prog_full <= NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i;
  prog_empty <= NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i;
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_n0011,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_dout_i_0_47
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0_comp1_OR_3_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_i_36
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0_comp1_OR_3_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_35
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1_GND_38_o_MUX_27_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_48,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_25
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1_GND_38_o_MUX_27_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_48,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM2 : RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
    port map (
      WCLK => wr_clk,
      D => din(0),
      WE => write_ctrl1_98,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM2_SPO_UNCONNECTED,
      DPO => N13,
      A(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      A(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv,
      DPRA(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      DPRA(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      DPRA(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      DPRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      DPRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      DPRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      DPRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM1 : RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
    port map (
      WCLK => wr_clk,
      D => din(0),
      WE => write_ctrl_97,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM1_SPO_UNCONNECTED,
      DPO => N11,
      A(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      A(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv,
      DPRA(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      DPRA(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      DPRA(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      DPRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      DPRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      DPRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      DPRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM3 : RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
    port map (
      WCLK => wr_clk,
      D => din(0),
      WE => write_ctrl2_99,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM3_SPO_UNCONNECTED,
      DPO => N15,
      A(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      A(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv,
      DPRA(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      DPRA(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      DPRA(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      DPRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      DPRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      DPRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      DPRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM4 : RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
    port map (
      WCLK => wr_clk,
      D => din(0),
      WE => write_ctrl3_100,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM4_SPO_UNCONNECTED,
      DPO => N17,
      A(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      A(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv,
      DPRA(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      DPRA(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      DPRA(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      DPRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      DPRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      DPRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      DPRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM7 : RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
    port map (
      WCLK => wr_clk,
      D => din(0),
      WE => write_ctrl6_103,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM7_SPO_UNCONNECTED,
      DPO => N23,
      A(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      A(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv,
      DPRA(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      DPRA(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      DPRA(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      DPRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      DPRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      DPRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      DPRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM5 : RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
    port map (
      WCLK => wr_clk,
      D => din(0),
      WE => write_ctrl4_101,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM5_SPO_UNCONNECTED,
      DPO => N19,
      A(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      A(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv,
      DPRA(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      DPRA(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      DPRA(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      DPRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      DPRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      DPRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      DPRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM6 : RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
    port map (
      WCLK => wr_clk,
      D => din(0),
      WE => write_ctrl5_102,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM6_SPO_UNCONNECTED,
      DPO => N21,
      A(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      A(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv,
      DPRA(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      DPRA(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      DPRA(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      DPRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      DPRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      DPRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      DPRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM8 : RAM128X1D
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
    port map (
      WCLK => wr_clk,
      D => din(0),
      WE => write_ctrl7_104,
      SPO => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_Mram_RAM8_SPO_UNCONNECTED,
      DPO => N25,
      A(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      A(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      A(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv,
      DPRA(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      DPRA(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      DPRA(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      DPRA(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      DPRA(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      DPRA(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      DPRA(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0)
    );
  inst_LPM_MUX_2_f7 : MUXF7
    port map (
      I0 => inst_LPM_MUX_4_113,
      I1 => inst_LPM_MUX_3_114,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gdm_dm_n0011
    );
  inst_LPM_MUX_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(7),
      I2 => N15,
      I3 => N17,
      I4 => N13,
      I5 => N11,
      O => inst_LPM_MUX_4_113
    );
  inst_LPM_MUX_3 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(7),
      I2 => N23,
      I3 => N25,
      I4 => N21,
      I5 => N19,
      O => inst_LPM_MUX_3_114
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => rst,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_123,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_49
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_119,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_118
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_122,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_121
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_48,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_123
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_117,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_119
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_120,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_122
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_124,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_48
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => N1,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => N1,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => N1,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg : FDPE
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_119,
      D => N1,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_117
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => N1,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => N1,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => N1,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_124
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_carrynet(3),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_carrynet(2),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_carrynet(1),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_carrynet(0),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_carrynet(3),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_carrynet(2),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_carrynet(1),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_carrynet(0),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_carrynet(3),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_carrynet(2),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_carrynet(1),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_carrynet(0),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_carrynet(3),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_carrynet(2),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_carrynet(1),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_carrynet(0),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_xor_10_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_9_Q_162
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_10_Q_161
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_10_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_xor_9_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_8_Q_164
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_9_Q_163
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_9_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_9_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_8_Q_164
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_9_Q_163
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_9_Q_162

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_xor_8_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_7_Q_166
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_8_Q_165
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_8_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_8_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_7_Q_166
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_8_Q_165
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_8_Q_164

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_xor_7_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_6_Q_168
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_7_Q_167
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_7_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_7_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_6_Q_168
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_7_Q_167
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_7_Q_166

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_xor_6_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_5_Q_170
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_6_Q_169
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_6_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_6_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_5_Q_170
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_6_Q_169
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_6_Q_168

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_xor_5_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_4_Q_172
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_5_Q_171
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_5_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_5_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_4_Q_172
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_5_Q_171
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_5_Q_170

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_xor_4_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_3_Q_174
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_4_Q_173
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_4_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_4_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_3_Q_174
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_4_Q_173
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_4_Q_172

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_xor_3_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_2_Q_176
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_3_Q_175
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_3_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_3_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_2_Q_176
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_3_Q_175
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_3_Q_174

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_xor_2_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_1_Q_178
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_2_Q_177
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_2_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_2_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_1_Q_178
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_2_Q_177
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_2_Q_176

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_xor_1_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_0_Q_180
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_1_Q_179
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_1_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_1_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_0_Q_180
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_1_Q_179
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_1_Q_178

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_0_Q : 
MUXCY
    port map (
      CI => N1,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad(0),
      S => N1,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_cy_0_Q_180

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_10 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_10_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(10)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_9 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_9_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_8 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_8_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_7 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_7_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_6 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_6_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_5 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_5_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_4 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_4_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_3 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_3_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_2 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_1 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_1_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_rd_pntr_inv_pad(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_9_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_8_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_7_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_6_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_5_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_4_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_3_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_1_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_xor_10_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_9_Q_216
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_10_Q_215
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_10_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_xor_9_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_8_Q_218
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_9_Q_217
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_9_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_9_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_8_Q_218
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(8),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_9_Q_217
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_9_Q_216

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_xor_8_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_7_Q_220
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_8_Q_219
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_8_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_8_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_7_Q_220
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(7),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_8_Q_219
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_8_Q_218

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_xor_7_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_6_Q_222
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_7_Q_221
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_7_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_7_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_6_Q_222
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(6),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_7_Q_221
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_7_Q_220

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_xor_6_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_5_Q_224
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_6_Q_223
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_6_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_6_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_5_Q_224
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(5),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_6_Q_223
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_6_Q_222

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_xor_5_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_4_Q_226
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_5_Q_225
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_5_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_5_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_4_Q_226
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(4),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_5_Q_225
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_5_Q_224

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_xor_4_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_3_Q_228
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_4_Q_227
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_4_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_4_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_3_Q_228
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(3),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_4_Q_227
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_4_Q_226

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_3_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_2_Q_230
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(2),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_3_Q_229
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_3_Q_228

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_2_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_1_Q_232
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(1),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_2_Q_231
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_2_Q_230

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_1_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_0_Q_234
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_1_Q_233
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_1_Q_232

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_0_Q : 
MUXCY
    port map (
      CI => N1,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      S => N1,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_cy_0_Q_234

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_10 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_10_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(10)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_9 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_9_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_8 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_8_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_7 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_7_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_6 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_6_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_5 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_5_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_4 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_4_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_9_Q_258,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_8_Q_257,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_7_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_6_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_5_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_4_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_3_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_1_Q,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_4_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_5_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_6_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_7_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_8_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_9_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_10_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_11_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_12_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_17_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_18_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_19_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_20_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_21_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_22_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_23_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_24_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_25_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_8_RD_PNTR_9_XOR_55_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_7_RD_PNTR_8_XOR_56_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_6_RD_PNTR_7_XOR_57_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_5_RD_PNTR_6_XOR_58_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_4_RD_PNTR_5_XOR_59_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_3_RD_PNTR_4_XOR_60_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_2_RD_PNTR_3_XOR_61_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_1_RD_PNTR_2_XOR_62_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_0_RD_PNTR_1_XOR_63_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_8_WR_PNTR_9_XOR_1_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_7_WR_PNTR_8_XOR_2_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_6_WR_PNTR_7_XOR_3_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_5_WR_PNTR_6_XOR_4_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_4_WR_PNTR_5_XOR_5_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_3_WR_PNTR_4_XOR_6_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_2_WR_PNTR_3_XOR_7_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_1_WR_PNTR_2_XOR_8_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_0_WR_PNTR_1_XOR_9_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_35,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_ram_rd_en_i
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0_comp1_OR_3_o1 : LUT4
    generic map(
      INIT => X"F2F0"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_35,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp1,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0_comp1_OR_3_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_Mmux_comp1_GND_38_o_MUX_27_o11 : LUT5
    generic map(
      INIT => X"33023300"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_49,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp2,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1_GND_38_o_MUX_27_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_117,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_118,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_120,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_121,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1_4_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1_3_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1_2_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1_1_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1_0_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1_4_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1_3_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1_2_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1_1_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1_4_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1_3_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1_2_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1_1_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1_0_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1_4_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1_3_1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1_2_1 : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1_1_1 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT811 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT41,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT81_204
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT1031 : LUT5
    generic map(
      INIT => X"00008000"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(6),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT41,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT103
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT71 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT41,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_6_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT101 : LUT5
    generic map(
      INIT => X"EAAA6A2A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(8),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT103,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT81_204,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_9_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_6_1 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_3_bdd0,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_6_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_7_1 : LUT6
    generic map(
      INIT => X"CCCCCCCC6CCCCCCC"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(6),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_3_bdd0,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_7_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_17_o1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_17_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_18_o1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_18_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_4_o1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_4_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_5_o1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_5_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_8_WR_PNTR_9_XOR_1_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_8_WR_PNTR_9_XOR_1_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_7_WR_PNTR_8_XOR_2_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_7_WR_PNTR_8_XOR_2_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_6_WR_PNTR_7_XOR_3_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_6_WR_PNTR_7_XOR_3_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_5_WR_PNTR_6_XOR_4_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_5_WR_PNTR_6_XOR_4_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_4_WR_PNTR_5_XOR_5_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_4_WR_PNTR_5_XOR_5_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_3_WR_PNTR_4_XOR_6_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_3_WR_PNTR_4_XOR_6_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_2_WR_PNTR_3_XOR_7_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_2_WR_PNTR_3_XOR_7_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_8_RD_PNTR_9_XOR_55_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_8_RD_PNTR_9_XOR_55_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_7_RD_PNTR_8_XOR_56_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_7_RD_PNTR_8_XOR_56_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_6_RD_PNTR_7_XOR_57_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_6_RD_PNTR_7_XOR_57_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_5_RD_PNTR_6_XOR_58_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_5_RD_PNTR_6_XOR_58_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_4_RD_PNTR_5_XOR_59_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_4_RD_PNTR_5_XOR_59_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_3_RD_PNTR_4_XOR_60_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_3_RD_PNTR_4_XOR_60_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_2_RD_PNTR_3_XOR_61_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_2_RD_PNTR_3_XOR_61_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_1_RD_PNTR_2_XOR_62_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_1_RD_PNTR_2_XOR_62_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_0_RD_PNTR_1_XOR_63_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_0_RD_PNTR_1_XOR_63_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_191_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_19_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_201_xo_0_1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_20_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_211_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_21_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_61_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_6_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_71_xo_0_1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_7_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_81_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_8_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_9_GND_33_o_LessThan_7_o1_SW0 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(6),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(10),
      O => N01
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_251_xo_0_SW0 : LUT5
    generic map(
      INIT => X"69969669"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6),
      O => N81
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_251_xo_0_Q : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(1),
      I5 => N81,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_25_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_121_xo_0_SW0 : LUT5
    generic map(
      INIT => X"69969669"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6),
      O => N10
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_121_xo_0_Q : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(1),
      I5 => N10,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_12_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_221_xo_0_SW0 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6),
      O => N12
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_221_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(9),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      I5 => N12,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_22_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_231_xo_0_SW0 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6),
      O => N14
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_231_xo_0_Q : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(9),
      I5 => N14,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_23_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_241_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(1),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_19_o,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_9_reduce_xor_24_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_91_xo_0_SW0 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6),
      O => N18
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_91_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(9),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      I5 => N18,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_9_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_101_xo_0_SW0 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6),
      O => N20
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_101_xo_0_Q : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(9),
      I5 => N20,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_10_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_111_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(1),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_6_o,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_9_reduce_xor_11_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_rstpot : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_122,
      I1 => N1,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_120,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_rstpot_364
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg : FDP
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_rstpot_364,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_120
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i_rstpot_365,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      Q => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i_rstpot_366,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_48,
      Q => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1_0_1 : LUT4
    generic map(
      INIT => X"0990"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1_0_1 : LUT4
    generic map(
      INIT => X"4182"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT81 : LUT6
    generic map(
      INIT => X"CCCCCCCC6CCCCCCC"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT41,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_7_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT411 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT41
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_1_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(0),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_1_Q_233

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_2_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_2_Q_177

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_2_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(1),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_2_Q_231

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_3_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_3_Q_175

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_3_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(2),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_3_Q_229

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_4_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_4_Q_173

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_4_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(3),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_4_Q_227

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_5_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_5_Q_171

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_5_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(4),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_5_Q_225

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_1_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_1_Q_179

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_0_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_35,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i_rstpot_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(8),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(9),
      O => N24
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i_rstpot : LUT6
    generic map(
      INIT => X"AA00AA00AA00AA3F"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_35,
      I4 => N24,
      I5 => N01,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i_rstpot_365
    );
  write_ctrl : LUT5
    generic map(
      INIT => X"00000002"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93,
      O => write_ctrl_97
    );
  write_ctrl1 : LUT5
    generic map(
      INIT => X"00000200"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93,
      O => write_ctrl1_98
    );
  write_ctrl2 : LUT5
    generic map(
      INIT => X"00000200"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93,
      O => write_ctrl2_99
    );
  write_ctrl3 : LUT5
    generic map(
      INIT => X"00002000"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93,
      O => write_ctrl3_100
    );
  write_ctrl4 : LUT5
    generic map(
      INIT => X"00000200"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(9),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93,
      O => write_ctrl4_101
    );
  write_ctrl5 : LUT5
    generic map(
      INIT => X"00002000"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(9),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93,
      O => write_ctrl5_102
    );
  write_ctrl6 : LUT5
    generic map(
      INIT => X"00002000"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(9),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93,
      O => write_ctrl6_103
    );
  write_ctrl7 : LUT5
    generic map(
      INIT => X"00008000"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(9),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93,
      O => write_ctrl7_104
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_6_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_6_Q_169

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_6_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(5),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_6_Q_223

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_7_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_7_Q_167

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_7_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(6),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_7_Q_221

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_8_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(7),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_8_Q_165

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_8_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(7),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_8_Q_219

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_9_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_9_Q_163

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_9_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(8),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_9_Q_217

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_10_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(9),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_10_rd_pntr_inv_pad_10_add_3_OUT_lut_10_Q_161

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_10_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(9),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_10_adjusted_rd_pntr_wr_inv_pad_10_add_3_OUT_lut_10_Q_215

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_0_WR_PNTR_1_XOR_9_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_0_WR_PNTR_1_XOR_9_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT61 : LUT6
    generic map(
      INIT => X"CCCCCCCC6CCCCCCC"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_5_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT42 : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_3_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT51 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_4_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT21 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_1_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT31 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_2_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mmux_gic0_gc0_count_9_GND_36_o_mux_2_OUT31 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_2_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mmux_gic0_gc0_count_9_GND_36_o_mux_2_OUT21 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_1_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_1_WR_PNTR_2_XOR_8_o_xo_0_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_1_WR_PNTR_2_XOR_8_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i_rstpot_SW1 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(6),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(8),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(9),
      O => N28
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i_rstpot : LUT6
    generic map(
      INIT => X"5444444410000000"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_49,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_93,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(10),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(4),
      I4 => N28,
      I5 => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i_rstpot_366
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_3_11 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_3_bdd0
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_3_2 : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_3_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_4_1 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_4_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_5_1 : LUT6
    generic map(
      INIT => X"CCCCCCCC6CCCCCCC"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_5_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_9_SW1 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => N30
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_9_Q : LUT6
    generic map(
      INIT => X"CCCCCCCC6CCCCCCC"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(8),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I5 => N30,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_9_Q_258
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_8_SW1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(6),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => N32
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_8_Q : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      I5 => N32,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_9_GND_36_o_mux_2_OUT_8_Q_257
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT91_F : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(6),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(7),
      O => N34
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_rd_pntr_inv_pad_10_1_0_1_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_rd_pntr_inv_pad(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv1_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv1_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT911 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_9_GND_22_o_mux_2_OUT41,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(8),
      I2 => N34,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_9_GND_22_o_mux_2_OUT_8_Q
    );

end STRUCTURE;

-- synthesis translate_on
