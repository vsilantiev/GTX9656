--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.76xd
--  \   \         Application: netgen
--  /   /         Filename: v6_afifo_256x36c_fwft.vhd
-- /___/   /\     Timestamp: Mon Mar 26 15:30:30 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl "C:/Temp/Xilinx PCI Express/ML605_ISE13.3/ipcore_dir_ISE13.3/tmp/_cg/v6_afifo_256x36c_fwft.ngc" "C:/Temp/Xilinx PCI Express/ML605_ISE13.3/ipcore_dir_ISE13.3/tmp/_cg/v6_afifo_256x36c_fwft.vhd" 
-- Device	: 6vlx240tff1156-1
-- Input file	: C:/Temp/Xilinx PCI Express/ML605_ISE13.3/ipcore_dir_ISE13.3/tmp/_cg/v6_afifo_256x36c_fwft.ngc
-- Output file	: C:/Temp/Xilinx PCI Express/ML605_ISE13.3/ipcore_dir_ISE13.3/tmp/_cg/v6_afifo_256x36c_fwft.vhd
-- # of Entities	: 1
-- Design Name	: v6_afifo_256x36c_fwft
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

entity v6_afifo_256x36c_fwft is
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
    din : in STD_LOGIC_VECTOR ( 35 downto 0 ); 
    dout : out STD_LOGIC_VECTOR ( 35 downto 0 ); 
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 ) 
  );
end v6_afifo_256x36c_fwft;

architecture STRUCTURE of v6_afifo_256x36c_fwft is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_23 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_34 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_empty_fwft_i_35 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_90 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_91 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0_comp1_OR_7_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_165 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1_GND_243_o_MUX_70_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_171 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_172 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_173 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_174 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_175 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_176 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_177 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_178 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_9_Q_252 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_8_Q_253 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_8_Q_254 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_7_Q_255 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_7_Q_256 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_6_Q_257 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_6_Q_258 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_5_Q_259 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_5_Q_260 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_4_Q_261 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_4_Q_262 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_3_Q_263 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_3_Q_264 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_2_Q_265 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_2_Q_266 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_1_Q_267 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_1_Q_268 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_0_Q_269 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_1_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_2_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_3_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_4_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_5_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_6_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_7_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_8_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_9_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_8_Q_290 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_7_Q_291 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_7_Q_292 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_6_Q_293 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_6_Q_294 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_5_Q_295 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_5_Q_296 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_4_Q_297 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_4_Q_298 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_3_Q_299 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_3_Q_300 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_2_Q_301 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_2_Q_302 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_1_Q_303 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_1_Q_304 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_0_Q_305 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_0_Q_306 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_3_bdd0 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_8_Q_324 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_In : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_In : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_going_empty_fwft_PWR_40_o_MUX_66_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_328 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_329 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_empty_fwft_fb_330 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_9_Q_331 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_8_Q_332 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_8_Q_333 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_7_Q_334 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_7_Q_335 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_6_Q_336 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_6_Q_337 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_5_Q_338 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_5_Q_339 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_4_Q_340 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_4_Q_341 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_3_Q_342 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_3_Q_343 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_2_Q_344 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_2_Q_345 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_1_Q_346 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_1_Q_347 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_0_Q_348 : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_2_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_3_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_4_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_5_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_6_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_7_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_8_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_9_Q : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_3_bdd0 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_8_Q_373 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_10_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_9_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_8_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_7_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_6_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_5_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_4_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_22_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_21_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_20_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_19_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_18_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_17_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_16_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_0_RD_PNTR_1_XOR_52_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_1_RD_PNTR_2_XOR_51_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_2_RD_PNTR_3_XOR_50_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_3_RD_PNTR_4_XOR_49_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_4_RD_PNTR_5_XOR_48_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_5_RD_PNTR_6_XOR_47_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_6_RD_PNTR_7_XOR_46_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_7_RD_PNTR_8_XOR_45_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_0_WR_PNTR_1_XOR_8_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_1_WR_PNTR_2_XOR_7_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_2_WR_PNTR_3_XOR_6_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_3_WR_PNTR_4_XOR_5_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_4_WR_PNTR_5_XOR_4_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_5_WR_PNTR_6_XOR_3_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_6_WR_PNTR_7_XOR_2_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_7_WR_PNTR_8_XOR_1_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_11_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_23_o : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_rstpot_464 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i_rstpot_465 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i_rstpot_466 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2 : STD_LOGIC_VECTOR ( 8 downto 2 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i : STD_LOGIC_VECTOR ( 35 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i : STD_LOGIC_VECTOR ( 35 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad : STD_LOGIC_VECTOR ( 9 downto 1 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_rd_pntr_inv_pad : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad : STD_LOGIC_VECTOR ( 9 downto 2 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg : STD_LOGIC_VECTOR ( 8 downto 0 ); 
begin
  dout(35) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(35);
  dout(34) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(34);
  dout(33) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(33);
  dout(32) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(32);
  dout(31) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(31);
  dout(30) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(30);
  dout(29) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(29);
  dout(28) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(28);
  dout(27) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(27);
  dout(26) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(26);
  dout(25) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(25);
  dout(24) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(24);
  dout(23) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(23);
  dout(22) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(22);
  dout(21) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(21);
  dout(20) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(20);
  dout(19) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(19);
  dout(18) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(18);
  dout(17) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(17);
  dout(16) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(16);
  dout(15) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(15);
  dout(14) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(14);
  dout(13) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(13);
  dout(12) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(12);
  dout(11) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(11);
  dout(10) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(10);
  dout(9) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(9);
  dout(8) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(8);
  dout(7) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(7);
  dout(6) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(6);
  dout(5) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(5);
  dout(4) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(4);
  dout(3) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(3);
  dout(2) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(2);
  dout(1) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(1);
  dout(0) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(0);
  rd_data_count(8) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(8);
  rd_data_count(7) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(7);
  rd_data_count(6) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(6);
  rd_data_count(5) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(5);
  rd_data_count(4) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(4);
  rd_data_count(3) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(3);
  rd_data_count(2) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(2);
  rd_data_count(1) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(1);
  rd_data_count(0) <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(0);
  full <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_23;
  empty <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_empty_fwft_i_35;
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0_comp1_OR_7_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_34
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1_GND_243_o_MUX_70_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_90,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_23
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1_GND_243_o_MUX_70_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_90,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_165
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => rst,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_177,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_91
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_173,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_172
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_176,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_175
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_90,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d3_177
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_171,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_173
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_174,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_176
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_178,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_90
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
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_173,
      D => N1,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_171
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
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d1_178
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_35 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(35),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(35)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_34 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(34),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(34)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_33 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(33),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(33)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_32 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(32),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(32)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_31 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(31),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(31)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_30 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(30),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(30)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_29 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(29),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(29)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_28 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(28),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(28)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_27 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(27),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(27)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_26 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(26),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(26)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(25),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(25)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(24),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(24)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(23),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(23)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(22),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(22)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(21),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(21)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(20),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(20)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(19),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(19)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(18),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(18)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(17),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(17)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(16),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(16)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(15),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(15)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(14),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(14)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(13),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(13)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(12),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(12)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(11),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(11)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(10),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(10)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(9),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(8),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(7),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(6),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(5),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(4),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(3),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(2),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(1),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(0),
      R => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_dout_i(0)
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_carrynet(3),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_carrynet(3),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp2
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_carrynet(3),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_carrynet(3),
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_xor_9_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_8_Q_253
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_9_Q_252
,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_9_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_xor_8_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_7_Q_255
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_8_Q_254
,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_8_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_8_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_7_Q_255
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_8_Q_254
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_8_Q_253
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_xor_7_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_6_Q_257
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_7_Q_256
,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_7_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_7_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_6_Q_257
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_7_Q_256
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_7_Q_255
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_xor_6_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_5_Q_259
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_6_Q_258
,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_6_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_6_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_5_Q_259
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_6_Q_258
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_6_Q_257
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_xor_5_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_4_Q_261
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_5_Q_260
,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_5_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_5_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_4_Q_261
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_5_Q_260
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_5_Q_259
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_xor_4_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_3_Q_263
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_4_Q_262
,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_4_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_4_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_3_Q_263
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_4_Q_262
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_4_Q_261
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_xor_3_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_2_Q_265
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_3_Q_264
,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_3_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_3_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_2_Q_265
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_3_Q_264
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_3_Q_263
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_xor_2_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_1_Q_267
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_2_Q_266
,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_2_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_2_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_1_Q_267
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_2_Q_266
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_2_Q_265
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_xor_1_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_0_Q_269
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_1_Q_268
,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_1_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_1_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_0_Q_269
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_1_Q_268
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_1_Q_267
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_0_Q : 
MUXCY
    port map (
      CI => N1,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad(0),
      S => N1,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_cy_0_Q_269
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_9 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_9_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_8 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_8_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_7 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_7_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_6 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_6_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_5 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_5_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_4 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_4_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_3 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_3_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_2 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad_1 : FDC
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_1_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_xor_8_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_7_Q_291,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_8_Q_290,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_8_Q_290
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_xor_7_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_6_Q_293,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_7_Q_292,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_7_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_6_Q_293,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_7_Q_292,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_7_Q_291
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_7_Q_292
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_xor_6_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_5_Q_295,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_6_Q_294,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_6_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_5_Q_295,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_6_Q_294,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_6_Q_293
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_6_Q_294
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_xor_5_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_4_Q_297,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_5_Q_296,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_5_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_4_Q_297,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_5_Q_296,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_5_Q_295
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_5_Q_296
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_xor_4_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_3_Q_299,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_4_Q_298,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_4_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_3_Q_299,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_4_Q_298,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_4_Q_297
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_4_Q_298
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_xor_3_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_2_Q_301,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_3_Q_300,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_3_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_2_Q_301,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_3_Q_300,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_3_Q_299
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_3_Q_300
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_xor_2_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_1_Q_303,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_2_Q_302,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_2_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_1_Q_303,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_2_Q_302,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_2_Q_301
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_2_Q_302
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_xor_1_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_0_Q_305,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_1_Q_304,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_1_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_0_Q_305,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_1_Q_304,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_1_Q_303
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_1_Q_304
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_0_Q_306,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0),
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_0_Q_306,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_cy_0_Q_305
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_Msub_GND_237_o_GND_237_o_sub_2_OUT_8_0_lut_0_Q_306
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_GND_237_o_GND_237_o_sub_2_OUT(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_grdc1_rdc_rd_dc_i(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
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
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
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
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
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
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
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
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
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
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
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
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
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
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
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
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_rd_pntr_inv_pad(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_8_Q_324,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_7_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_6_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_5_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_4_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_3_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_1_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_In,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_328
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_In,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_329
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_empty_fwft_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_going_empty_fwft_PWR_40_o_MUX_66_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_empty_fwft_i_35
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_empty_fwft_fb : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_going_empty_fwft_PWR_40_o_MUX_66_o,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_empty_fwft_fb_330
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_xor_9_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_8_Q_332
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_9_Q_331
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_9_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_xor_8_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_7_Q_334
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_8_Q_333
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_8_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_8_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_7_Q_334
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(7),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_8_Q_333
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_8_Q_332

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_xor_7_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_6_Q_336
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_7_Q_335
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_7_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_7_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_6_Q_336
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(6),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_7_Q_335
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_7_Q_334

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_xor_6_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_5_Q_338
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_6_Q_337
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_6_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_6_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_5_Q_338
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(5),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_6_Q_337
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_6_Q_336

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_xor_5_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_4_Q_340
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_5_Q_339
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_5_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_5_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_4_Q_340
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(4),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_5_Q_339
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_5_Q_338

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_xor_4_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_3_Q_342
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_4_Q_341
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_4_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_4_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_3_Q_342
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(3),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_4_Q_341
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_4_Q_340

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_xor_3_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_2_Q_344
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_3_Q_343
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_3_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_3_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_2_Q_344
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(2),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_3_Q_343
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_3_Q_342

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_xor_2_Q : 
XORCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_1_Q_346
,
      LI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_2_Q_345
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_2_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_2_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_1_Q_346
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(1),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_2_Q_345
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_2_Q_344

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_1_Q : 
MUXCY
    port map (
      CI => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_0_Q_348
,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      S => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_1_Q_347
,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_1_Q_346

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_0_Q : 
MUXCY
    port map (
      CI => N1,
      DI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      S => N1,
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_cy_0_Q_348

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_9 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_9_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_8 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_8_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_7 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_7_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_6 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_6_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_5 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_5_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_4 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_4_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_3 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_3_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad_2 : FDC
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(2)
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_8_Q_373,
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
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_7_Q,
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
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_6_Q,
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
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_5_Q,
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
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_4_Q,
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
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_3_Q,
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
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_2_Q,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_1_Q,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_4_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_5_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_6_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_7_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_8_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_9_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_10_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_11_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_16_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_17_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_18_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_19_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_20_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_21_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_22_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_23_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(0)
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_7_RD_PNTR_8_XOR_45_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_6_RD_PNTR_7_XOR_46_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_5_RD_PNTR_6_XOR_47_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_4_RD_PNTR_5_XOR_48_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_3_RD_PNTR_4_XOR_49_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_2_RD_PNTR_3_XOR_50_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_1_RD_PNTR_2_XOR_51_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_0_RD_PNTR_1_XOR_52_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_7_WR_PNTR_8_XOR_1_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_6_WR_PNTR_7_XOR_2_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_5_WR_PNTR_6_XOR_3_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_4_WR_PNTR_5_XOR_4_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_3_WR_PNTR_4_XOR_5_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_2_WR_PNTR_3_XOR_6_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_1_WR_PNTR_2_XOR_7_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_0_WR_PNTR_1_XOR_8_o,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_165,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_Mmux_comp1_GND_243_o_MUX_70_o11 : LUT5
    generic map(
      INIT => X"33023300"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_91,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_165,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp2,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1_GND_243_o_MUX_70_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_171,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_172,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_174,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_175,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(4)
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(4)
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(4)
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
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4),
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1_4_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_7_1 : LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(6),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_3_bdd0,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_7_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_6_1 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_3_bdd0,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_6_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_RAM_REGOUT_EN1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_329,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_328,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_regout_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_329,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_328,
      I2 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_In
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_Mmux_going_empty_fwft_PWR_40_o_MUX_66_o11 : LUT4
    generic map(
      INIT => X"8E8A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_empty_fwft_fb_330,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_328,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_329,
      I3 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_going_empty_fwft_PWR_40_o_MUX_66_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"08FF"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_329,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_328,
      I2 => rd_en,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_34,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_In
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_Mmux_RAM_RD_EN_FWFT11 : LUT4
    generic map(
      INIT => X"5515"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_34,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_328,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_329,
      I3 => rd_en,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_7_1 : LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(6),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_3_bdd0,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_7_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_6_1 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_3_bdd0,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_6_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_16_o1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_16_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_17_o1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_17_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_4_o1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_4_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_5_o1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_5_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_7_WR_PNTR_8_XOR_1_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_7_WR_PNTR_8_XOR_1_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_6_WR_PNTR_7_XOR_2_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_6_WR_PNTR_7_XOR_2_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_5_WR_PNTR_6_XOR_3_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_5_WR_PNTR_6_XOR_3_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_4_WR_PNTR_5_XOR_4_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_4_WR_PNTR_5_XOR_4_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_3_WR_PNTR_4_XOR_5_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_3_WR_PNTR_4_XOR_5_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_2_WR_PNTR_3_XOR_6_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_2_WR_PNTR_3_XOR_6_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_7_RD_PNTR_8_XOR_45_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_7_RD_PNTR_8_XOR_45_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_6_RD_PNTR_7_XOR_46_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_6_RD_PNTR_7_XOR_46_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_5_RD_PNTR_6_XOR_47_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_5_RD_PNTR_6_XOR_47_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_4_RD_PNTR_5_XOR_48_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_4_RD_PNTR_5_XOR_48_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_3_RD_PNTR_4_XOR_49_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_3_RD_PNTR_4_XOR_49_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_2_RD_PNTR_3_XOR_50_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_2_RD_PNTR_3_XOR_50_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_1_RD_PNTR_2_XOR_51_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_1_RD_PNTR_2_XOR_51_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_RD_PNTR_0_RD_PNTR_1_XOR_52_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_RD_PNTR_0_RD_PNTR_1_XOR_52_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_181_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_18_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_191_xo_0_1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_19_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_201_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(4),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_20_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_61_xo_0_1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_6_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_71_xo_0_1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_7_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_81_xo_0_1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(4),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_8_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_231_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(0),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_18_o,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_23_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_111_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(0),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_6_o,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_11_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_211_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(4),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(5),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_16_o,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_21_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_221_xo_0_SW0 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(8),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(7),
      O => N14
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_221_xo_0_Q : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last(6),
      I5 => N14,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_asreg_last_8_reduce_xor_22_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_91_xo_0_Q : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(4),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(5),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_4_o,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_9_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_101_xo_0_SW0 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(8),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(7),
      O => N18
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_101_xo_0_Q : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last(6),
      I5 => N18,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_asreg_last_8_reduce_xor_10_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_176,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_174,
      I2 => N1,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_rstpot_464
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg : FDP
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_rstpot_464,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_174
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i_rstpot_465,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(2),
      Q => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i_rstpot_466,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_grstd1_grst_full_rst_d2_90,
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0_comp1_OR_7_o1 : LUT6
    generic map(
      INIT => X"FFFF2333FFFF0000"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_34,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_329,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_328,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp1,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0_comp1_OR_7_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_1_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(0),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_1_Q_347

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_2_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_2_Q_266

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_2_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(1),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_2_Q_345

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_3_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_3_Q_264

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_3_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(2),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_3_Q_343

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_4_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_4_Q_262

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_4_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(3),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_4_Q_341

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_1_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_1_Q_268

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad_0_1 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_328,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_329,
      I2 => rd_en,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_34,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_adjusted_wr_pntr_rd_pad(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_5_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_5_Q_260

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_5_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(4),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_5_Q_339

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_6_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_6_Q_258

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_6_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(5),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_6_Q_337

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_7_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_7_Q_256

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_7_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(6),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_7_Q_335

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_8_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(7),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_8_Q_254

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_8_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(7),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_8_Q_333

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_9_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_Madd_adjusted_wr_pntr_rd_pad_9_rd_pntr_inv_pad_9_add_3_OUT_lut_9_Q_252

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_9_Q : 
LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(8),
      O => 
U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_Madd_wr_pntr_plus1_pad_9_adjusted_rd_pntr_wr_inv_pad_9_add_3_OUT_lut_9_Q_331

    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i_rstpot : LUT6
    generic map(
      INIT => X"5454544410101000"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_91,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_165,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(9),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(7),
      I4 => N22,
      I5 => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i_rstpot_466
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_8_SW1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(7),
      O => N24
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_0_WR_PNTR_1_XOR_8_o_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_0_WR_PNTR_1_XOR_8_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en1 : LUT5
    generic map(
      INIT => X"FFFF2333"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_34,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd1_329,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gr1_rfwft_curr_fwft_state_FSM_FFd2_328,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_8_GND_225_o_mux_2_OUT21 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_1_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mmux_gc0_count_8_GND_225_o_mux_2_OUT31 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_2_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mmux_gic0_gc0_count_8_GND_241_o_mux_2_OUT31 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_2_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mmux_gic0_gc0_count_8_GND_241_o_mux_2_OUT21 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_1_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_WR_PNTR_1_WR_PNTR_2_XOR_7_o_xo_0_1 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_WR_PNTR_1_WR_PNTR_2_XOR_7_o
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_prog_full_i_rstpot_SW0 : LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(5),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(2),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_gpf_wrpf_diff_pntr_pad(4),
      O => N22
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i_rstpot_SW1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(7),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(8),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(9),
      O => N26
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i_rstpot : LUT6
    generic map(
      INIT => X"AAAA0000AAAA3FFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_diff_pntr_pad(2),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_34,
      I5 => N26,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_prog_empty_i_rstpot_465
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_3_11 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_3_bdd0
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_3_11 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_3_bdd0
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_8_Q : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA6AAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      I5 => N24,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_8_Q_324
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_3_2 : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_3_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_4_1 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_4_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_5_1 : LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count(1),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_8_GND_225_o_mux_2_OUT_5_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_3_2 : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_3_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_4_1 : LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_4_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_5_1 : LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_5_Q
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_8_SW1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(6),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d1(0),
      O => N28
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_8_Q : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(3),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count(4),
      I5 => N28,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_8_GND_241_o_mux_2_OUT_8_Q_373
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_gpe_rdpe_rd_pntr_inv_pad_9_1_0_1_INV_0 : INV
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
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v6_noinit_ram_SDP_WIDE_PRIM18_ram : 
RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "VIRTEX6",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
    port map (
      CLKARDCLK => rd_clk,
      CLKBWRCLK => wr_clk,
      ENARDEN => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en,
      ENBWREN => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      REGCEAREGCE => N1,
      REGCEB => N1,
      RSTRAMARSTRAM => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      RSTRAMB => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg(0),
      RSTREGARSTREG => N1,
      RSTREGB => N1,
      ADDRARDADDR(13) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(8),
      ADDRARDADDR(12) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(7),
      ADDRARDADDR(11) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(6),
      ADDRARDADDR(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(5),
      ADDRARDADDR(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(4),
      ADDRARDADDR(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(3),
      ADDRARDADDR(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(2),
      ADDRARDADDR(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(1),
      ADDRARDADDR(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_gc0_count_d1(0),
      ADDRARDADDR(4) => N1,
      ADDRARDADDR(3) => N1,
      ADDRARDADDR(2) => N1,
      ADDRARDADDR(1) => N1,
      ADDRARDADDR(0) => N1,
      ADDRBWRADDR(13) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(8),
      ADDRBWRADDR(12) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(7),
      ADDRBWRADDR(11) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(6),
      ADDRBWRADDR(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(5),
      ADDRBWRADDR(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(4),
      ADDRBWRADDR(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(3),
      ADDRBWRADDR(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_gic0_gc0_count_d2(2),
      ADDRBWRADDR(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus2_1_inv,
      ADDRBWRADDR(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wr_pntr_plus1_0_inv,
      ADDRBWRADDR(4) => N1,
      ADDRBWRADDR(3) => N1,
      ADDRBWRADDR(2) => N1,
      ADDRBWRADDR(1) => N1,
      ADDRBWRADDR(0) => N1,
      DIADI(15) => din(16),
      DIADI(14) => din(15),
      DIADI(13) => din(14),
      DIADI(12) => din(13),
      DIADI(11) => din(12),
      DIADI(10) => din(11),
      DIADI(9) => din(10),
      DIADI(8) => din(9),
      DIADI(7) => din(7),
      DIADI(6) => din(6),
      DIADI(5) => din(5),
      DIADI(4) => din(4),
      DIADI(3) => din(3),
      DIADI(2) => din(2),
      DIADI(1) => din(1),
      DIADI(0) => din(0),
      DIBDI(15) => din(34),
      DIBDI(14) => din(33),
      DIBDI(13) => din(32),
      DIBDI(12) => din(31),
      DIBDI(11) => din(30),
      DIBDI(10) => din(29),
      DIBDI(9) => din(28),
      DIBDI(8) => din(27),
      DIBDI(7) => din(25),
      DIBDI(6) => din(24),
      DIBDI(5) => din(23),
      DIBDI(4) => din(22),
      DIBDI(3) => din(21),
      DIBDI(2) => din(20),
      DIBDI(1) => din(19),
      DIBDI(0) => din(18),
      DIPADIP(1) => din(17),
      DIPADIP(0) => din(8),
      DIPBDIP(1) => din(35),
      DIPBDIP(0) => din(26),
      DOADO(15) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(16),
      DOADO(14) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(15),
      DOADO(13) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(14),
      DOADO(12) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(13),
      DOADO(11) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(12),
      DOADO(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(11),
      DOADO(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(10),
      DOADO(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(9),
      DOADO(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(7),
      DOADO(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(6),
      DOADO(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(5),
      DOADO(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(4),
      DOADO(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(3),
      DOADO(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(2),
      DOADO(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(1),
      DOADO(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(0),
      DOBDO(15) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(34),
      DOBDO(14) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(33),
      DOBDO(13) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(32),
      DOBDO(12) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(31),
      DOBDO(11) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(30),
      DOBDO(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(29),
      DOBDO(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(28),
      DOBDO(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(27),
      DOBDO(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(25),
      DOBDO(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(24),
      DOBDO(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(23),
      DOBDO(4) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(22),
      DOBDO(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(21),
      DOBDO(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(20),
      DOBDO(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(19),
      DOBDO(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(18),
      DOPADOP(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(17)
,
      DOPADOP(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(8),
      DOPBDOP(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(35)
,
      DOPBDOP(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_doutb_i(26)
,
      WEA(1) => N1,
      WEA(0) => N1,
      WEBWE(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEBWE(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEBWE(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEBWE(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en
    );

end STRUCTURE;

-- synthesis translate_on
