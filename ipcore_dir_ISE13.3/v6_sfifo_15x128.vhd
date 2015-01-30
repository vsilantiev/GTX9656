--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.76xd
--  \   \         Application: netgen
--  /   /         Filename: v6_sfifo_15x128.vhd
-- /___/   /\     Timestamp: Mon Mar 26 16:06:44 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl "C:/Temp/Xilinx PCI Express/ML605_ISE13.3/ipcore_dir_ISE13.3/tmp/_cg/v6_sfifo_15x128.ngc" "C:/Temp/Xilinx PCI Express/ML605_ISE13.3/ipcore_dir_ISE13.3/tmp/_cg/v6_sfifo_15x128.vhd" 
-- Device	: 6vlx240tff1156-1
-- Input file	: C:/Temp/Xilinx PCI Express/ML605_ISE13.3/ipcore_dir_ISE13.3/tmp/_cg/v6_sfifo_15x128.ngc
-- Output file	: C:/Temp/Xilinx PCI Express/ML605_ISE13.3/ipcore_dir_ISE13.3/tmp/_cg/v6_sfifo_15x128.vhd
-- # of Entities	: 1
-- Design Name	: v6_sfifo_15x128
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

entity v6_sfifo_15x128 is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    wr_en : in STD_LOGIC := 'X'; 
    rd_en : in STD_LOGIC := 'X'; 
    full : out STD_LOGIC; 
    empty : out STD_LOGIC; 
    prog_full : out STD_LOGIC; 
    prog_empty : out STD_LOGIC; 
    din : in STD_LOGIC_VECTOR ( 127 downto 0 ); 
    dout : out STD_LOGIC_VECTOR ( 127 downto 0 ) 
  );
end v6_sfifo_15x128;

architecture STRUCTURE of v6_sfifo_15x128 is
  signal N1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_prog_empty_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_i_5 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_prog_full_i_6 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_i_7 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_138 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_139 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_274 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_275 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_276 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_277 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_278 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_comb_PWR_29_o_MUX_144_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_comb_PWR_26_o_MUX_136_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count4 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count3 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_n0025_inv : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_415 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_n0046_inv : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_GND_41_o_GND_41_o_equal_6_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_prog_full_i_PWR_28_o_MUX_142_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_PNTR_3_GND_41_o_mux_2_OUT_0_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_PNTR_3_GND_41_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_PNTR_3_GND_41_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_PNTR_3_GND_41_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_GND_52_o_GND_52_o_equal_6_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_PNTR_3_GND_52_o_mux_2_OUT_0_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_PNTR_3_GND_52_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_PNTR_3_GND_52_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_PNTR_3_GND_52_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_ram_wr_en_i_443 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_ram_rd_en_i_444 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_3_PWR_21_o_mux_5_OUT_2_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_3_PWR_21_o_mux_5_OUT_3_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3_GND_26_o_mux_5_OUT_1_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3_GND_26_o_mux_5_OUT_2_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3_GND_26_o_mux_5_OUT_3_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_rstpot_452 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_prog_empty_i_rstpot_453 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_127_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_126_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_125_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_124_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_123_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_122_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_121_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_120_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_119_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_118_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_117_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_116_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_115_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_114_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_113_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_112_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_111_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_110_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_109_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_108_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_107_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_106_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_105_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_104_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_103_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_102_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_101_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_100_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_99_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_98_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_97_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_96_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_95_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_94_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_93_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_92_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_91_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_90_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_89_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_88_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_87_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_86_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_85_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_84_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_83_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_82_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_81_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_80_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_79_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_78_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_77_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_76_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_75_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_74_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_73_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_72_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_71_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_70_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_69_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_68_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_67_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_66_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_65_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_64_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_63_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_62_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_61_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_60_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_59_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_58_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_57_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_56_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_55_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_54_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_53_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_52_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_51_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_50_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_49_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_48_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_47_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_46_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_45_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_44_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_43_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_42_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_41_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_40_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_39_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_38_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_37_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_36_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_35_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_34_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_33_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_32_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_31_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_30_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_29_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_28_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_27_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_26_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_25_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_24_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_23_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_22_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_21_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_20_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_19_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_18_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_17_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_16_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_15_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_14_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_13_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_12_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_11_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_10_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_9_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_8_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_7_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_6_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_5_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_4_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_3_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_2_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_1_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_0_gv5_srl32_Q31_UNCONNECTED : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i : STD_LOGIC_VECTOR ( 127 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem : STD_LOGIC_VECTOR ( 127 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  dout(127) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(127);
  dout(126) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(126);
  dout(125) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(125);
  dout(124) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(124);
  dout(123) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(123);
  dout(122) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(122);
  dout(121) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(121);
  dout(120) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(120);
  dout(119) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(119);
  dout(118) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(118);
  dout(117) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(117);
  dout(116) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(116);
  dout(115) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(115);
  dout(114) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(114);
  dout(113) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(113);
  dout(112) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(112);
  dout(111) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(111);
  dout(110) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(110);
  dout(109) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(109);
  dout(108) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(108);
  dout(107) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(107);
  dout(106) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(106);
  dout(105) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(105);
  dout(104) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(104);
  dout(103) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(103);
  dout(102) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(102);
  dout(101) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(101);
  dout(100) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(100);
  dout(99) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(99);
  dout(98) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(98);
  dout(97) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(97);
  dout(96) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(96);
  dout(95) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(95);
  dout(94) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(94);
  dout(93) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(93);
  dout(92) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(92);
  dout(91) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(91);
  dout(90) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(90);
  dout(89) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(89);
  dout(88) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(88);
  dout(87) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(87);
  dout(86) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(86);
  dout(85) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(85);
  dout(84) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(84);
  dout(83) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(83);
  dout(82) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(82);
  dout(81) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(81);
  dout(80) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(80);
  dout(79) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(79);
  dout(78) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(78);
  dout(77) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(77);
  dout(76) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(76);
  dout(75) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(75);
  dout(74) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(74);
  dout(73) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(73);
  dout(72) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(72);
  dout(71) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(71);
  dout(70) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(70);
  dout(69) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(69);
  dout(68) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(68);
  dout(67) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(67);
  dout(66) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(66);
  dout(65) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(65);
  dout(64) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(64);
  dout(63) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(63);
  dout(62) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(62);
  dout(61) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(61);
  dout(60) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(60);
  dout(59) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(59);
  dout(58) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(58);
  dout(57) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(57);
  dout(56) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(56);
  dout(55) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(55);
  dout(54) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(54);
  dout(53) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(53);
  dout(52) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(52);
  dout(51) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(51);
  dout(50) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(50);
  dout(49) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(49);
  dout(48) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(48);
  dout(47) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(47);
  dout(46) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(46);
  dout(45) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(45);
  dout(44) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(44);
  dout(43) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(43);
  dout(42) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(42);
  dout(41) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(41);
  dout(40) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(40);
  dout(39) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(39);
  dout(38) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(38);
  dout(37) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(37);
  dout(36) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(36);
  dout(35) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(35);
  dout(34) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(34);
  dout(33) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(33);
  dout(32) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(32);
  dout(31) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(31);
  dout(30) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(30);
  dout(29) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(29);
  dout(28) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(28);
  dout(27) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(27);
  dout(26) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(26);
  dout(25) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(25);
  dout(24) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(24);
  dout(23) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(23);
  dout(22) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(22);
  dout(21) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(21);
  dout(20) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(20);
  dout(19) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(19);
  dout(18) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(18);
  dout(17) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(17);
  dout(16) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(16);
  dout(15) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(15);
  dout(14) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(14);
  dout(13) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(13);
  dout(12) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(12);
  dout(11) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(11);
  dout(10) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(10);
  dout(9) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(9);
  dout(8) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(8);
  dout(7) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(7);
  dout(6) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(6);
  dout(5) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(5);
  dout(4) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(4);
  dout(3) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(3);
  dout(2) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(2);
  dout(1) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(1);
  dout(0) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(0);
  full <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_i_7;
  empty <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_i_5;
  prog_full <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_prog_full_i_6;
  prog_empty <= NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_prog_empty_i;
  XST_GND : GND
    port map (
      G => N1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => rst,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_277,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_139
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_276,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_275
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_138,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_277
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_274,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_276
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_278,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_138
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => N1,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => N1,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => N1,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_278
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_127 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(127),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(127)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_126 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(126),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(126)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_125 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(125),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(125)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_124 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(124),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(124)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_123 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(123),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(123)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_122 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(122),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(122)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_121 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(121),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(121)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_120 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(120),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(120)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_119 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(119),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(119)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_118 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(118),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(118)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_117 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(117),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(117)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_116 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(116),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(116)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_115 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(115),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(115)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_114 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(114),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(114)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_113 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(113),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(113)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_112 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(112),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(112)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_111 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(111),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(111)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_110 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(110),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(110)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_109 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(109),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(109)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_108 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(108),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(108)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_107 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(107),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(107)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_106 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(106),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(106)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_105 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(105),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(105)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_104 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(104),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(104)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_103 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(103),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(103)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_102 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(102),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(102)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_101 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(101),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(101)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_100 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(100),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(100)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_99 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(99),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(99)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_98 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(98),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(98)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_97 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(97),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(97)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_96 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(96),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(96)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_95 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(95),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(95)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_94 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(94),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(94)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_93 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(93),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(93)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_92 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(92),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(92)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_91 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(91),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(91)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_90 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(90),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(90)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_89 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(89),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(89)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_88 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(88),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(88)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_87 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(87),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(87)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_86 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(86),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(86)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_85 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(85),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(85)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_84 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(84),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(84)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_83 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(83),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(83)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_82 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(82),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(82)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_81 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(81),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(81)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_80 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(80),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(80)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_79 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(79),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(79)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_78 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(78),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(78)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_77 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(77),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(77)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_76 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(76),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(76)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_75 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(75),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(75)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_74 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(74),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(74)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_73 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(73),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(73)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_72 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(72),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(72)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_71 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(71),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(71)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_70 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(70),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(70)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_69 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(69),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(69)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_68 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(68),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(68)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_67 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(67),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(67)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_66 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(66),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(66)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_65 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(65),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(65)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_64 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(64),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(64)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_63 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(63),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(63)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_62 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(62),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(62)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_61 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(61),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(61)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_60 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(60),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(60)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_59 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(59),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(59)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_58 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(58),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(58)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_57 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(57),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(57)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_56 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(56),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(56)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_55 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(55),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(55)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_54 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(54),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(54)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_53 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(53),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(53)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_52 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(52),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(52)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_51 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(51),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(51)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_50 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(50),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(50)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_49 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(49),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(49)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_48 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(48),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(48)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_47 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(47),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(47)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_46 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(46),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(46)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_45 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(45),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(45)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_44 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(44),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(44)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_43 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(43),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(43)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_42 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(42),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(42)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_41 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(41),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(41)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_40 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(40),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(40)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_39 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(39),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(39)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_38 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(38),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(38)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_37 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(37),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(37)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_36 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(36),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(36)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_35 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(35),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(35)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_34 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(34),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(34)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_33 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(33),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(33)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_32 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(32),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(32)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_31 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(31),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(31)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(30),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(30)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(29),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(29)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(28),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(28)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(27),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(27)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(26),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(26)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(25),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(25)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(24),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(24)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(23),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(23)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(22),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(22)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(21),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(21)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(20),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(20)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(19),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(19)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(18),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(18)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(17),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(17)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(16),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(16)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(15),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(15)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(14),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(14)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(13),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(13)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(12),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(12)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(11),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(11)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(10),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(10)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_i(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_127_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(127),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(127),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_127_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_126_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(126),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(126),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_126_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_125_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(125),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(125),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_125_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_124_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(124),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(124),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_124_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_123_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(123),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(123),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_123_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_122_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(122),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(122),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_122_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_121_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(121),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(121),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_121_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_120_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(120),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(120),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_120_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_119_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(119),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(119),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_119_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_118_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(118),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(118),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_118_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_117_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(117),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(117),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_117_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_116_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(116),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(116),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_116_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_115_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(115),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(115),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_115_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_114_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(114),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(114),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_114_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_113_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(113),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(113),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_113_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_112_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(112),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(112),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_112_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_111_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(111),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(111),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_111_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_110_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(110),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(110),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_110_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_109_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(109),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(109),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_109_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_108_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(108),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(108),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_108_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_107_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(107),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(107),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_107_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_106_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(106),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(106),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_106_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_105_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(105),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(105),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_105_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_104_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(104),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(104),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_104_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_103_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(103),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(103),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_103_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_102_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(102),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(102),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_102_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_101_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(101),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(101),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_101_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_100_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(100),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(100),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_100_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_99_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(99),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(99),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_99_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_98_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(98),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(98),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_98_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_97_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(97),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(97),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_97_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_96_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(96),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(96),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_96_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_95_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(95),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(95),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_95_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_94_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(94),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(94),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_94_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_93_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(93),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(93),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_93_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_92_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(92),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(92),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_92_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_91_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(91),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(91),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_91_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_90_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(90),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(90),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_90_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_89_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(89),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(89),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_89_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_88_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(88),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(88),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_88_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_87_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(87),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(87),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_87_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_86_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(86),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(86),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_86_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_85_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(85),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(85),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_85_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_84_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(84),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(84),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_84_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_83_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(83),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(83),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_83_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_82_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(82),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(82),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_82_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_81_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(81),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(81),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_81_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_80_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(80),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(80),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_80_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_79_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(79),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(79),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_79_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_78_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(78),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(78),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_78_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_77_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(77),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(77),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_77_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_76_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(76),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(76),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_76_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_75_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(75),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(75),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_75_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_74_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(74),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(74),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_74_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_73_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(73),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(73),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_73_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_72_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(72),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(72),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_72_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_71_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(71),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(71),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_71_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_70_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(70),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(70),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_70_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_69_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(69),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(69),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_69_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_68_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(68),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(68),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_68_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_67_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(67),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(67),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_67_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_66_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(66),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(66),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_66_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_65_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(65),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(65),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_65_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_64_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(64),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(64),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_64_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_63_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(63),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(63),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_63_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_62_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(62),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(62),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_62_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_61_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(61),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(61),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_61_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_60_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(60),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(60),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_60_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_59_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(59),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(59),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_59_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_58_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(58),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(58),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_58_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_57_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(57),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(57),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_57_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_56_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(56),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(56),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_56_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_55_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(55),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(55),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_55_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_54_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(54),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(54),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_54_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_53_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(53),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(53),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_53_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_52_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(52),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(52),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_52_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_51_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(51),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(51),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_51_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_50_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(50),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(50),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_50_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_49_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(49),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(49),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_49_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_48_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(48),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(48),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_48_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_47_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(47),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(47),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_47_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_46_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(46),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(46),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_46_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_45_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(45),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(45),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_45_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_44_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(44),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(44),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_44_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_43_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(43),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(43),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_43_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_42_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(42),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(42),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_42_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_41_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(41),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(41),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_41_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_40_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(40),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(40),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_40_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_39_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(39),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(39),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_39_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_38_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(38),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(38),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_38_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_37_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(37),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(37),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_37_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_36_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(36),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(36),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_36_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_35_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(35),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(35),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_35_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_34_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(34),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(34),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_34_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_33_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(33),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(33),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_33_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_32_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(32),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(32),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_32_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_31_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(31),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(31),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_31_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_30_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(30),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(30),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_30_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_29_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(29),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(29),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_29_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_28_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(28),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(28),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_28_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_27_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(27),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(27),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_27_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_26_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(26),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(26),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_26_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_25_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(25),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(25),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_25_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_24_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(24),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(24),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_24_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_23_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(23),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(23),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_23_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_22_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(22),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(22),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_22_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_21_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(21),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(21),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_21_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_20_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(20),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(20),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_20_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_19_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(19),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(19),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_19_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_18_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(18),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(18),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_18_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_17_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(17),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(17),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_17_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_16_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(16),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(16),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_16_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_15_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(15),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(15),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_15_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_14_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(14),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(14),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_14_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_13_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(13),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(13),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_13_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_12_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(12),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(12),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_12_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_11_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(11),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(11),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_11_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_10_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(10),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(10),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_10_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_9_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(9),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(9),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_9_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_8_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(8),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(8),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_8_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_7_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(7),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(7),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_7_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_6_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(6),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(6),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_6_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_5_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(5),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(5),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_5_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_4_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(4),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(4),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_4_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_3_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(3),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(3),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_3_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_2_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(2),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(2),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_2_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_1_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(1),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(1),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_1_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_0_gv5_srl32 : SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      CLK => clk,
      D => din(0),
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_dout_mem(0),
      Q31 => NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gsm_sm_gsm1_sm1_gram_gsms_0_gv5_srl32_Q31_UNCONNECTED,
      A(4) => N1,
      A(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      A(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      A(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv,
      A(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_comb_PWR_29_o_MUX_144_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_comb_PWR_29_o_MUX_144_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_i_5
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_comb_PWR_26_o_MUX_136_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_138,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_415
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_comb_PWR_26_o_MUX_136_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_138,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_i_7
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_n0025_inv,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count4,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_n0025_inv,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count3,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_n0025_inv,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count2,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_n0025_inv,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1_3 : FDC
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_PNTR_3_GND_41_o_mux_2_OUT_3_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1_2 : FDC
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_PNTR_3_GND_41_o_mux_2_OUT_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1_1 : FDC
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_PNTR_3_GND_41_o_mux_2_OUT_1_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1_0 : FDC
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_PNTR_3_GND_41_o_mux_2_OUT_0_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_prog_full_i : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_n0046_inv,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_prog_full_i_PWR_28_o_MUX_142_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_138,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_prog_full_i_6
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_ram_rd_en_i : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_ram_rd_en_i_444
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_ram_wr_en_i : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_ram_wr_en_i_443
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_PNTR_3_GND_52_o_mux_2_OUT_3_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_PNTR_3_GND_52_o_mux_2_OUT_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_PNTR_3_GND_52_o_mux_2_OUT_1_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_PNTR_3_GND_52_o_mux_2_OUT_0_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_3 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_n0025_inv,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_3_PWR_21_o_mux_5_OUT_3_Q,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_2 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_n0025_inv,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_3_PWR_21_o_mux_5_OUT_2_Q,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_n0025_inv,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3_GND_26_o_mux_5_OUT_3_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_n0025_inv,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3_GND_26_o_mux_5_OUT_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_n0025_inv,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3_GND_26_o_mux_5_OUT_1_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_275,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_274,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_Mxor_cntr_en_xo_0_1 : LUT4
    generic map(
      INIT => X"0CA6"
    )
    port map (
      I0 => rd_en,
      I1 => wr_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_415,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_n0025_inv
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_2_11 : LUT5
    generic map(
      INIT => X"65AAAA9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I2 => rd_en,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count3
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_3_11 : LUT6
    generic map(
      INIT => X"65AAAAAAAAAAAA9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I2 => rd_en,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count4
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_1_11 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I3 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_ram_rd_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_415,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_Mmux_PNTR_3_GND_41_o_mux_2_OUT41 : LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_PNTR_3_GND_41_o_mux_2_OUT_3_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_n0046_inv1 : LUT4
    generic map(
      INIT => X"BEAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_139,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_ram_wr_en_i_443,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_ram_rd_en_i_444,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_GND_41_o_GND_41_o_equal_6_o,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_n0046_inv
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_Mmux_prog_full_i_PWR_28_o_MUX_142_o11 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_139,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_GND_41_o_GND_41_o_equal_6_o,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_ram_rd_en_i_444,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_ram_wr_en_i_443,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_prog_full_i_PWR_28_o_MUX_142_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_GND_41_o_GND_41_o_equal_6_o_3_1 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_pntr_d1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_GND_41_o_GND_41_o_equal_6_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_Mmux_PNTR_3_GND_52_o_mux_2_OUT41 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAA9AAAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_PNTR_3_GND_52_o_mux_2_OUT_3_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_GND_52_o_GND_52_o_equal_6_o_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_pntr_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_GND_52_o_GND_52_o_equal_6_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_Mmux_ram_empty_comb_PWR_29_o_MUX_144_o1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      O => N2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_Mmux_ram_empty_comb_PWR_29_o_MUX_144_o1 : LUT6
    generic map(
      INIT => X"AAEFAA8AAAAAAA8A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_415,
      I2 => wr_en,
      I3 => N2,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I5 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_comb_PWR_29_o_MUX_144_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_276,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_274,
      I2 => N1,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_rstpot_452
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg : FDP
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_rstpot_452,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_274
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_prog_empty_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_prog_empty_i_rstpot_453,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      Q => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_prog_empty_i
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_Mmux_ram_full_comb_PWR_26_o_MUX_136_o14_SW0 : LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I3 => wr_en,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(2),
      O => N4
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_Mmux_ram_full_comb_PWR_26_o_MUX_136_o14_SW1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      O => N5
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_Mmux_ram_full_comb_PWR_26_o_MUX_136_o14 : LUT6
    generic map(
      INIT => X"4444404474777077"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_139,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_415,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I3 => rd_en,
      I4 => N5,
      I5 => N4,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_comb_PWR_26_o_MUX_136_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_Mmux_PNTR_3_GND_41_o_mux_2_OUT21 : LUT6
    generic map(
      INIT => X"AAAAAAAA6AAA6A6A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      I1 => wr_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I4 => rd_en,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_415,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_PNTR_3_GND_41_o_mux_2_OUT_1_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_Mmux_PNTR_3_GND_41_o_mux_2_OUT11 : LUT5
    generic map(
      INIT => X"AAAA6A66"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I1 => wr_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I3 => rd_en,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_415,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_PNTR_3_GND_41_o_mux_2_OUT_0_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_Mmux_PNTR_3_GND_52_o_mux_2_OUT21 : LUT6
    generic map(
      INIT => X"AAAAAAAA9AAA9A9A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I2 => rd_en,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_415,
      I4 => wr_en,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_PNTR_3_GND_52_o_mux_2_OUT_1_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_Mmux_PNTR_3_GND_52_o_mux_2_OUT11 : LUT5
    generic map(
      INIT => X"AAAA6A66"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I1 => rd_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_415,
      I3 => wr_en,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_PNTR_3_GND_52_o_mux_2_OUT_0_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_3_PWR_21_o_mux_5_OUT_2_1 : LUT5
    generic map(
      INIT => X"AA6A99A9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I2 => rd_en,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_3_PWR_21_o_mux_5_OUT_2_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_3_PWR_21_o_mux_5_OUT_3_1 : LUT6
    generic map(
      INIT => X"A9AAA9AAAA6AA9AA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count(2),
      I4 => rd_en,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_crd_count_3_PWR_21_o_mux_5_OUT_3_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3_GND_26_o_mux_5_OUT_1_1 : LUT4
    generic map(
      INIT => X"96C3"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I3 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3_GND_26_o_mux_5_OUT_1_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3_GND_26_o_mux_5_OUT_2_1 : LUT5
    generic map(
      INIT => X"C96CCC3C"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I4 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3_GND_26_o_mux_5_OUT_2_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3_GND_26_o_mux_5_OUT_3_1 : LUT6
    generic map(
      INIT => X"CCC96CCCCCCC3CCC"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(1),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I5 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count_3_GND_26_o_mux_5_OUT_3_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_Mmux_PNTR_3_GND_41_o_mux_2_OUT31 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA6AAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      I1 => wr_en,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_wsts_ram_full_fb_i_415,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_PNTR_3_GND_41_o_mux_2_OUT_2_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_Mmux_PNTR_3_GND_52_o_mux_2_OUT31 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAA9AAAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_rsts_ram_empty_fb_i_414,
      I4 => rd_en,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_PNTR_3_GND_52_o_mux_2_OUT_2_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_prog_empty_i_rstpot : LUT4
    generic map(
      INIT => X"8EAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_prog_empty_i,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_ram_rd_en_i_444,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpf_wrpf_ram_wr_en_i_443,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_GND_52_o_GND_52_o_equal_6_o,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_gpe_rdpe_prog_empty_i_rstpot_453
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_count(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c0_Mcount_count1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv1_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_c1_count(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl1_lsshft_pntr_plus1_1_inv
    );

end STRUCTURE;

-- synthesis translate_on
