
-------------------------------------------------------------------
-- System Generator version 13.2 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component user_logic_cw  port (
    bram_rd_dout: in std_logic_vector(63 downto 0); 
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    fifo_rd_count: in std_logic_vector(14 downto 0); 
    fifo_rd_dout: in std_logic_vector(71 downto 0); 
    fifo_rd_empty: in std_logic; 
    fifo_rd_pempty: in std_logic; 
    fifo_rd_valid: in std_logic; 
    fifo_wr_count: in std_logic_vector(14 downto 0); 
    fifo_wr_full: in std_logic; 
    fifo_wr_pfull: in std_logic; 
    from_register10_data_out: in std_logic_vector(0 downto 0); 
    from_register11_data_out: in std_logic_vector(31 downto 0); 
    from_register12_data_out: in std_logic_vector(0 downto 0); 
    from_register13_data_out: in std_logic_vector(31 downto 0); 
    from_register14_data_out: in std_logic_vector(0 downto 0); 
    from_register15_data_out: in std_logic_vector(0 downto 0); 
    from_register16_data_out: in std_logic_vector(0 downto 0); 
    from_register17_data_out: in std_logic_vector(31 downto 0); 
    from_register18_data_out: in std_logic_vector(0 downto 0); 
    from_register19_data_out: in std_logic_vector(31 downto 0); 
    from_register1_data_out: in std_logic_vector(31 downto 0); 
    from_register20_data_out: in std_logic_vector(31 downto 0); 
    from_register21_data_out: in std_logic_vector(0 downto 0); 
    from_register22_data_out: in std_logic_vector(31 downto 0); 
    from_register23_data_out: in std_logic_vector(0 downto 0); 
    from_register24_data_out: in std_logic_vector(31 downto 0); 
    from_register25_data_out: in std_logic_vector(0 downto 0); 
    from_register26_data_out: in std_logic_vector(31 downto 0); 
    from_register27_data_out: in std_logic_vector(0 downto 0); 
    from_register28_data_out: in std_logic_vector(31 downto 0); 
    from_register29_data_out: in std_logic_vector(0 downto 0); 
    from_register2_data_out: in std_logic_vector(31 downto 0); 
    from_register30_data_out: in std_logic_vector(31 downto 0); 
    from_register31_data_out: in std_logic_vector(0 downto 0); 
    from_register32_data_out: in std_logic_vector(31 downto 0); 
    from_register33_data_out: in std_logic_vector(0 downto 0); 
    from_register3_data_out: in std_logic_vector(31 downto 0); 
    from_register4_data_out: in std_logic_vector(0 downto 0); 
    from_register5_data_out: in std_logic_vector(31 downto 0); 
    from_register6_data_out: in std_logic_vector(0 downto 0); 
    from_register7_data_out: in std_logic_vector(31 downto 0); 
    from_register8_data_out: in std_logic_vector(0 downto 0); 
    from_register9_data_out: in std_logic_vector(31 downto 0); 
    from_register_data_out: in std_logic_vector(31 downto 0); 
    rst_i: in std_logic; 
    to_register10_dout: in std_logic_vector(0 downto 0); 
    to_register11_dout: in std_logic_vector(0 downto 0); 
    to_register12_dout: in std_logic_vector(0 downto 0); 
    to_register13_dout: in std_logic_vector(31 downto 0); 
    to_register14_dout: in std_logic_vector(0 downto 0); 
    to_register15_dout: in std_logic_vector(31 downto 0); 
    to_register16_dout: in std_logic_vector(0 downto 0); 
    to_register17_dout: in std_logic_vector(31 downto 0); 
    to_register18_dout: in std_logic_vector(0 downto 0); 
    to_register19_dout: in std_logic_vector(31 downto 0); 
    to_register1_dout: in std_logic_vector(0 downto 0); 
    to_register20_dout: in std_logic_vector(0 downto 0); 
    to_register21_dout: in std_logic_vector(31 downto 0); 
    to_register22_dout: in std_logic_vector(0 downto 0); 
    to_register23_dout: in std_logic_vector(31 downto 0); 
    to_register24_dout: in std_logic_vector(0 downto 0); 
    to_register25_dout: in std_logic_vector(31 downto 0); 
    to_register26_dout: in std_logic_vector(0 downto 0); 
    to_register27_dout: in std_logic_vector(31 downto 0); 
    to_register2_dout: in std_logic_vector(31 downto 0); 
    to_register3_dout: in std_logic_vector(31 downto 0); 
    to_register4_dout: in std_logic_vector(0 downto 0); 
    to_register5_dout: in std_logic_vector(0 downto 0); 
    to_register6_dout: in std_logic_vector(31 downto 0); 
    to_register7_dout: in std_logic_vector(0 downto 0); 
    to_register8_dout: in std_logic_vector(31 downto 0); 
    to_register9_dout: in std_logic_vector(31 downto 0); 
    to_register_dout: in std_logic_vector(31 downto 0); 
    bram_rd_addr: out std_logic_vector(11 downto 0); 
    bram_wr_addr: out std_logic_vector(11 downto 0); 
    bram_wr_din: out std_logic_vector(63 downto 0); 
    bram_wr_en: out std_logic_vector(7 downto 0); 
    fifo_rd_en: out std_logic; 
    fifo_wr_din: out std_logic_vector(71 downto 0); 
    fifo_wr_en: out std_logic; 
    rst_o: out std_logic; 
    to_register10_ce: out std_logic; 
    to_register10_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register10_clr: out std_logic; 
    to_register10_data_in: out std_logic_vector(0 downto 0); 
    to_register10_en: out std_logic_vector(0 downto 0); 
    to_register11_ce: out std_logic; 
    to_register11_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register11_clr: out std_logic; 
    to_register11_data_in: out std_logic_vector(0 downto 0); 
    to_register11_en: out std_logic_vector(0 downto 0); 
    to_register12_ce: out std_logic; 
    to_register12_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register12_clr: out std_logic; 
    to_register12_data_in: out std_logic_vector(0 downto 0); 
    to_register12_en: out std_logic_vector(0 downto 0); 
    to_register13_ce: out std_logic; 
    to_register13_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register13_clr: out std_logic; 
    to_register13_data_in: out std_logic_vector(31 downto 0); 
    to_register13_en: out std_logic_vector(0 downto 0); 
    to_register14_ce: out std_logic; 
    to_register14_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register14_clr: out std_logic; 
    to_register14_data_in: out std_logic_vector(0 downto 0); 
    to_register14_en: out std_logic_vector(0 downto 0); 
    to_register15_ce: out std_logic; 
    to_register15_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register15_clr: out std_logic; 
    to_register15_data_in: out std_logic_vector(31 downto 0); 
    to_register15_en: out std_logic_vector(0 downto 0); 
    to_register16_ce: out std_logic; 
    to_register16_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register16_clr: out std_logic; 
    to_register16_data_in: out std_logic_vector(0 downto 0); 
    to_register16_en: out std_logic_vector(0 downto 0); 
    to_register17_ce: out std_logic; 
    to_register17_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register17_clr: out std_logic; 
    to_register17_data_in: out std_logic_vector(31 downto 0); 
    to_register17_en: out std_logic_vector(0 downto 0); 
    to_register18_ce: out std_logic; 
    to_register18_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register18_clr: out std_logic; 
    to_register18_data_in: out std_logic_vector(0 downto 0); 
    to_register18_en: out std_logic_vector(0 downto 0); 
    to_register19_ce: out std_logic; 
    to_register19_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register19_clr: out std_logic; 
    to_register19_data_in: out std_logic_vector(31 downto 0); 
    to_register19_en: out std_logic_vector(0 downto 0); 
    to_register1_ce: out std_logic; 
    to_register1_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register1_clr: out std_logic; 
    to_register1_data_in: out std_logic_vector(0 downto 0); 
    to_register1_en: out std_logic_vector(0 downto 0); 
    to_register20_ce: out std_logic; 
    to_register20_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register20_clr: out std_logic; 
    to_register20_data_in: out std_logic_vector(0 downto 0); 
    to_register20_en: out std_logic_vector(0 downto 0); 
    to_register21_ce: out std_logic; 
    to_register21_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register21_clr: out std_logic; 
    to_register21_data_in: out std_logic_vector(31 downto 0); 
    to_register21_en: out std_logic_vector(0 downto 0); 
    to_register22_ce: out std_logic; 
    to_register22_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register22_clr: out std_logic; 
    to_register22_data_in: out std_logic_vector(0 downto 0); 
    to_register22_en: out std_logic_vector(0 downto 0); 
    to_register23_ce: out std_logic; 
    to_register23_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register23_clr: out std_logic; 
    to_register23_data_in: out std_logic_vector(31 downto 0); 
    to_register23_en: out std_logic_vector(0 downto 0); 
    to_register24_ce: out std_logic; 
    to_register24_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register24_clr: out std_logic; 
    to_register24_data_in: out std_logic_vector(0 downto 0); 
    to_register24_en: out std_logic_vector(0 downto 0); 
    to_register25_ce: out std_logic; 
    to_register25_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register25_clr: out std_logic; 
    to_register25_data_in: out std_logic_vector(31 downto 0); 
    to_register25_en: out std_logic_vector(0 downto 0); 
    to_register26_ce: out std_logic; 
    to_register26_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register26_clr: out std_logic; 
    to_register26_data_in: out std_logic_vector(0 downto 0); 
    to_register26_en: out std_logic_vector(0 downto 0); 
    to_register27_ce: out std_logic; 
    to_register27_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register27_clr: out std_logic; 
    to_register27_data_in: out std_logic_vector(31 downto 0); 
    to_register27_en: out std_logic_vector(0 downto 0); 
    to_register2_ce: out std_logic; 
    to_register2_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register2_clr: out std_logic; 
    to_register2_data_in: out std_logic_vector(31 downto 0); 
    to_register2_en: out std_logic_vector(0 downto 0); 
    to_register3_ce: out std_logic; 
    to_register3_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register3_clr: out std_logic; 
    to_register3_data_in: out std_logic_vector(31 downto 0); 
    to_register3_en: out std_logic_vector(0 downto 0); 
    to_register4_ce: out std_logic; 
    to_register4_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register4_clr: out std_logic; 
    to_register4_data_in: out std_logic_vector(0 downto 0); 
    to_register4_en: out std_logic_vector(0 downto 0); 
    to_register5_ce: out std_logic; 
    to_register5_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register5_clr: out std_logic; 
    to_register5_data_in: out std_logic_vector(0 downto 0); 
    to_register5_en: out std_logic_vector(0 downto 0); 
    to_register6_ce: out std_logic; 
    to_register6_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register6_clr: out std_logic; 
    to_register6_data_in: out std_logic_vector(31 downto 0); 
    to_register6_en: out std_logic_vector(0 downto 0); 
    to_register7_ce: out std_logic; 
    to_register7_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register7_clr: out std_logic; 
    to_register7_data_in: out std_logic_vector(0 downto 0); 
    to_register7_en: out std_logic_vector(0 downto 0); 
    to_register8_ce: out std_logic; 
    to_register8_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register8_clr: out std_logic; 
    to_register8_data_in: out std_logic_vector(31 downto 0); 
    to_register8_en: out std_logic_vector(0 downto 0); 
    to_register9_ce: out std_logic; 
    to_register9_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register9_clr: out std_logic; 
    to_register9_data_in: out std_logic_vector(31 downto 0); 
    to_register9_en: out std_logic_vector(0 downto 0); 
    to_register_ce: out std_logic; 
    to_register_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register_clr: out std_logic; 
    to_register_data_in: out std_logic_vector(31 downto 0); 
    to_register_en: out std_logic_vector(0 downto 0); 
    user_int_1o: out std_logic; 
    user_int_2o: out std_logic; 
    user_int_3o: out std_logic
  );
end component;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : user_logic_cw
  port map (
    bram_rd_dout => bram_rd_dout,
    ce => ce,
    clk => clk,
    fifo_rd_count => fifo_rd_count,
    fifo_rd_dout => fifo_rd_dout,
    fifo_rd_empty => fifo_rd_empty,
    fifo_rd_pempty => fifo_rd_pempty,
    fifo_rd_valid => fifo_rd_valid,
    fifo_wr_count => fifo_wr_count,
    fifo_wr_full => fifo_wr_full,
    fifo_wr_pfull => fifo_wr_pfull,
    from_register10_data_out => from_register10_data_out,
    from_register11_data_out => from_register11_data_out,
    from_register12_data_out => from_register12_data_out,
    from_register13_data_out => from_register13_data_out,
    from_register14_data_out => from_register14_data_out,
    from_register15_data_out => from_register15_data_out,
    from_register16_data_out => from_register16_data_out,
    from_register17_data_out => from_register17_data_out,
    from_register18_data_out => from_register18_data_out,
    from_register19_data_out => from_register19_data_out,
    from_register1_data_out => from_register1_data_out,
    from_register20_data_out => from_register20_data_out,
    from_register21_data_out => from_register21_data_out,
    from_register22_data_out => from_register22_data_out,
    from_register23_data_out => from_register23_data_out,
    from_register24_data_out => from_register24_data_out,
    from_register25_data_out => from_register25_data_out,
    from_register26_data_out => from_register26_data_out,
    from_register27_data_out => from_register27_data_out,
    from_register28_data_out => from_register28_data_out,
    from_register29_data_out => from_register29_data_out,
    from_register2_data_out => from_register2_data_out,
    from_register30_data_out => from_register30_data_out,
    from_register31_data_out => from_register31_data_out,
    from_register32_data_out => from_register32_data_out,
    from_register33_data_out => from_register33_data_out,
    from_register3_data_out => from_register3_data_out,
    from_register4_data_out => from_register4_data_out,
    from_register5_data_out => from_register5_data_out,
    from_register6_data_out => from_register6_data_out,
    from_register7_data_out => from_register7_data_out,
    from_register8_data_out => from_register8_data_out,
    from_register9_data_out => from_register9_data_out,
    from_register_data_out => from_register_data_out,
    rst_i => rst_i,
    to_register10_dout => to_register10_dout,
    to_register11_dout => to_register11_dout,
    to_register12_dout => to_register12_dout,
    to_register13_dout => to_register13_dout,
    to_register14_dout => to_register14_dout,
    to_register15_dout => to_register15_dout,
    to_register16_dout => to_register16_dout,
    to_register17_dout => to_register17_dout,
    to_register18_dout => to_register18_dout,
    to_register19_dout => to_register19_dout,
    to_register1_dout => to_register1_dout,
    to_register20_dout => to_register20_dout,
    to_register21_dout => to_register21_dout,
    to_register22_dout => to_register22_dout,
    to_register23_dout => to_register23_dout,
    to_register24_dout => to_register24_dout,
    to_register25_dout => to_register25_dout,
    to_register26_dout => to_register26_dout,
    to_register27_dout => to_register27_dout,
    to_register2_dout => to_register2_dout,
    to_register3_dout => to_register3_dout,
    to_register4_dout => to_register4_dout,
    to_register5_dout => to_register5_dout,
    to_register6_dout => to_register6_dout,
    to_register7_dout => to_register7_dout,
    to_register8_dout => to_register8_dout,
    to_register9_dout => to_register9_dout,
    to_register_dout => to_register_dout,
    bram_rd_addr => bram_rd_addr,
    bram_wr_addr => bram_wr_addr,
    bram_wr_din => bram_wr_din,
    bram_wr_en => bram_wr_en,
    fifo_rd_en => fifo_rd_en,
    fifo_wr_din => fifo_wr_din,
    fifo_wr_en => fifo_wr_en,
    rst_o => rst_o,
    to_register10_ce => to_register10_ce,
    to_register10_clk => to_register10_clk,
    to_register10_clr => to_register10_clr,
    to_register10_data_in => to_register10_data_in,
    to_register10_en => to_register10_en,
    to_register11_ce => to_register11_ce,
    to_register11_clk => to_register11_clk,
    to_register11_clr => to_register11_clr,
    to_register11_data_in => to_register11_data_in,
    to_register11_en => to_register11_en,
    to_register12_ce => to_register12_ce,
    to_register12_clk => to_register12_clk,
    to_register12_clr => to_register12_clr,
    to_register12_data_in => to_register12_data_in,
    to_register12_en => to_register12_en,
    to_register13_ce => to_register13_ce,
    to_register13_clk => to_register13_clk,
    to_register13_clr => to_register13_clr,
    to_register13_data_in => to_register13_data_in,
    to_register13_en => to_register13_en,
    to_register14_ce => to_register14_ce,
    to_register14_clk => to_register14_clk,
    to_register14_clr => to_register14_clr,
    to_register14_data_in => to_register14_data_in,
    to_register14_en => to_register14_en,
    to_register15_ce => to_register15_ce,
    to_register15_clk => to_register15_clk,
    to_register15_clr => to_register15_clr,
    to_register15_data_in => to_register15_data_in,
    to_register15_en => to_register15_en,
    to_register16_ce => to_register16_ce,
    to_register16_clk => to_register16_clk,
    to_register16_clr => to_register16_clr,
    to_register16_data_in => to_register16_data_in,
    to_register16_en => to_register16_en,
    to_register17_ce => to_register17_ce,
    to_register17_clk => to_register17_clk,
    to_register17_clr => to_register17_clr,
    to_register17_data_in => to_register17_data_in,
    to_register17_en => to_register17_en,
    to_register18_ce => to_register18_ce,
    to_register18_clk => to_register18_clk,
    to_register18_clr => to_register18_clr,
    to_register18_data_in => to_register18_data_in,
    to_register18_en => to_register18_en,
    to_register19_ce => to_register19_ce,
    to_register19_clk => to_register19_clk,
    to_register19_clr => to_register19_clr,
    to_register19_data_in => to_register19_data_in,
    to_register19_en => to_register19_en,
    to_register1_ce => to_register1_ce,
    to_register1_clk => to_register1_clk,
    to_register1_clr => to_register1_clr,
    to_register1_data_in => to_register1_data_in,
    to_register1_en => to_register1_en,
    to_register20_ce => to_register20_ce,
    to_register20_clk => to_register20_clk,
    to_register20_clr => to_register20_clr,
    to_register20_data_in => to_register20_data_in,
    to_register20_en => to_register20_en,
    to_register21_ce => to_register21_ce,
    to_register21_clk => to_register21_clk,
    to_register21_clr => to_register21_clr,
    to_register21_data_in => to_register21_data_in,
    to_register21_en => to_register21_en,
    to_register22_ce => to_register22_ce,
    to_register22_clk => to_register22_clk,
    to_register22_clr => to_register22_clr,
    to_register22_data_in => to_register22_data_in,
    to_register22_en => to_register22_en,
    to_register23_ce => to_register23_ce,
    to_register23_clk => to_register23_clk,
    to_register23_clr => to_register23_clr,
    to_register23_data_in => to_register23_data_in,
    to_register23_en => to_register23_en,
    to_register24_ce => to_register24_ce,
    to_register24_clk => to_register24_clk,
    to_register24_clr => to_register24_clr,
    to_register24_data_in => to_register24_data_in,
    to_register24_en => to_register24_en,
    to_register25_ce => to_register25_ce,
    to_register25_clk => to_register25_clk,
    to_register25_clr => to_register25_clr,
    to_register25_data_in => to_register25_data_in,
    to_register25_en => to_register25_en,
    to_register26_ce => to_register26_ce,
    to_register26_clk => to_register26_clk,
    to_register26_clr => to_register26_clr,
    to_register26_data_in => to_register26_data_in,
    to_register26_en => to_register26_en,
    to_register27_ce => to_register27_ce,
    to_register27_clk => to_register27_clk,
    to_register27_clr => to_register27_clr,
    to_register27_data_in => to_register27_data_in,
    to_register27_en => to_register27_en,
    to_register2_ce => to_register2_ce,
    to_register2_clk => to_register2_clk,
    to_register2_clr => to_register2_clr,
    to_register2_data_in => to_register2_data_in,
    to_register2_en => to_register2_en,
    to_register3_ce => to_register3_ce,
    to_register3_clk => to_register3_clk,
    to_register3_clr => to_register3_clr,
    to_register3_data_in => to_register3_data_in,
    to_register3_en => to_register3_en,
    to_register4_ce => to_register4_ce,
    to_register4_clk => to_register4_clk,
    to_register4_clr => to_register4_clr,
    to_register4_data_in => to_register4_data_in,
    to_register4_en => to_register4_en,
    to_register5_ce => to_register5_ce,
    to_register5_clk => to_register5_clk,
    to_register5_clr => to_register5_clr,
    to_register5_data_in => to_register5_data_in,
    to_register5_en => to_register5_en,
    to_register6_ce => to_register6_ce,
    to_register6_clk => to_register6_clk,
    to_register6_clr => to_register6_clr,
    to_register6_data_in => to_register6_data_in,
    to_register6_en => to_register6_en,
    to_register7_ce => to_register7_ce,
    to_register7_clk => to_register7_clk,
    to_register7_clr => to_register7_clr,
    to_register7_data_in => to_register7_data_in,
    to_register7_en => to_register7_en,
    to_register8_ce => to_register8_ce,
    to_register8_clk => to_register8_clk,
    to_register8_clr => to_register8_clr,
    to_register8_data_in => to_register8_data_in,
    to_register8_en => to_register8_en,
    to_register9_ce => to_register9_ce,
    to_register9_clk => to_register9_clk,
    to_register9_clr => to_register9_clr,
    to_register9_data_in => to_register9_data_in,
    to_register9_en => to_register9_en,
    to_register_ce => to_register_ce,
    to_register_clk => to_register_clk,
    to_register_clr => to_register_clr,
    to_register_data_in => to_register_data_in,
    to_register_en => to_register_en,
    user_int_1o => user_int_1o,
    user_int_2o => user_int_2o,
    user_int_3o => user_int_3o);
-- INST_TAG_END ------ End INSTANTIATION Template ------------
