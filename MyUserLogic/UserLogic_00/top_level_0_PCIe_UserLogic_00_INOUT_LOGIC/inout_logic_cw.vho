
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
component inout_logic_cw  port (
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    debug_in_1i: in std_logic_vector(31 downto 0); 
    debug_in_2i: in std_logic_vector(31 downto 0); 
    debug_in_3i: in std_logic_vector(31 downto 0); 
    debug_in_4i: in std_logic_vector(31 downto 0); 
    dma_host2board_busy: in std_logic; 
    dma_host2board_done: in std_logic; 
    from_register10_data_out: in std_logic_vector(31 downto 0); 
    from_register11_data_out: in std_logic_vector(31 downto 0); 
    from_register12_data_out: in std_logic_vector(0 downto 0); 
    from_register13_data_out: in std_logic_vector(31 downto 0); 
    from_register14_data_out: in std_logic_vector(0 downto 0); 
    from_register15_data_out: in std_logic_vector(31 downto 0); 
    from_register16_data_out: in std_logic_vector(0 downto 0); 
    from_register17_data_out: in std_logic_vector(31 downto 0); 
    from_register18_data_out: in std_logic_vector(0 downto 0); 
    from_register19_data_out: in std_logic_vector(31 downto 0); 
    from_register1_data_out: in std_logic_vector(0 downto 0); 
    from_register20_data_out: in std_logic_vector(0 downto 0); 
    from_register21_data_out: in std_logic_vector(31 downto 0); 
    from_register22_data_out: in std_logic_vector(0 downto 0); 
    from_register23_data_out: in std_logic_vector(31 downto 0); 
    from_register24_data_out: in std_logic_vector(0 downto 0); 
    from_register25_data_out: in std_logic_vector(31 downto 0); 
    from_register26_data_out: in std_logic_vector(0 downto 0); 
    from_register27_data_out: in std_logic_vector(31 downto 0); 
    from_register28_data_out: in std_logic_vector(0 downto 0); 
    from_register2_data_out: in std_logic_vector(0 downto 0); 
    from_register3_data_out: in std_logic_vector(31 downto 0); 
    from_register4_data_out: in std_logic_vector(0 downto 0); 
    from_register5_data_out: in std_logic_vector(31 downto 0); 
    from_register6_data_out: in std_logic_vector(0 downto 0); 
    from_register7_data_out: in std_logic_vector(31 downto 0); 
    from_register8_data_out: in std_logic_vector(31 downto 0); 
    from_register9_data_out: in std_logic_vector(0 downto 0); 
    reg01_td: in std_logic_vector(31 downto 0); 
    reg01_tv: in std_logic; 
    reg02_td: in std_logic_vector(31 downto 0); 
    reg02_tv: in std_logic; 
    reg03_td: in std_logic_vector(31 downto 0); 
    reg03_tv: in std_logic; 
    reg04_td: in std_logic_vector(31 downto 0); 
    reg04_tv: in std_logic; 
    reg05_td: in std_logic_vector(31 downto 0); 
    reg05_tv: in std_logic; 
    reg06_td: in std_logic_vector(31 downto 0); 
    reg06_tv: in std_logic; 
    reg07_td: in std_logic_vector(31 downto 0); 
    reg07_tv: in std_logic; 
    reg08_td: in std_logic_vector(31 downto 0); 
    reg08_tv: in std_logic; 
    reg09_td: in std_logic_vector(31 downto 0); 
    reg09_tv: in std_logic; 
    reg10_td: in std_logic_vector(31 downto 0); 
    reg10_tv: in std_logic; 
    reg11_td: in std_logic_vector(31 downto 0); 
    reg11_tv: in std_logic; 
    reg12_td: in std_logic_vector(31 downto 0); 
    reg12_tv: in std_logic; 
    reg13_td: in std_logic_vector(31 downto 0); 
    reg13_tv: in std_logic; 
    reg14_td: in std_logic_vector(31 downto 0); 
    reg14_tv: in std_logic; 
    to_register10_dout: in std_logic_vector(0 downto 0); 
    to_register11_dout: in std_logic_vector(31 downto 0); 
    to_register12_dout: in std_logic_vector(0 downto 0); 
    to_register13_dout: in std_logic_vector(31 downto 0); 
    to_register14_dout: in std_logic_vector(0 downto 0); 
    to_register15_dout: in std_logic_vector(31 downto 0); 
    to_register16_dout: in std_logic_vector(0 downto 0); 
    to_register17_dout: in std_logic_vector(31 downto 0); 
    to_register18_dout: in std_logic_vector(0 downto 0); 
    to_register19_dout: in std_logic_vector(0 downto 0); 
    to_register1_dout: in std_logic_vector(31 downto 0); 
    to_register20_dout: in std_logic_vector(31 downto 0); 
    to_register21_dout: in std_logic_vector(0 downto 0); 
    to_register22_dout: in std_logic_vector(31 downto 0); 
    to_register23_dout: in std_logic_vector(0 downto 0); 
    to_register24_dout: in std_logic_vector(31 downto 0); 
    to_register25_dout: in std_logic_vector(0 downto 0); 
    to_register26_dout: in std_logic_vector(31 downto 0); 
    to_register27_dout: in std_logic_vector(0 downto 0); 
    to_register28_dout: in std_logic_vector(31 downto 0); 
    to_register29_dout: in std_logic_vector(0 downto 0); 
    to_register2_dout: in std_logic_vector(31 downto 0); 
    to_register30_dout: in std_logic_vector(31 downto 0); 
    to_register31_dout: in std_logic_vector(0 downto 0); 
    to_register32_dout: in std_logic_vector(31 downto 0); 
    to_register33_dout: in std_logic_vector(0 downto 0); 
    to_register34_dout: in std_logic_vector(31 downto 0); 
    to_register3_dout: in std_logic_vector(0 downto 0); 
    to_register4_dout: in std_logic_vector(0 downto 0); 
    to_register5_dout: in std_logic_vector(31 downto 0); 
    to_register6_dout: in std_logic_vector(31 downto 0); 
    to_register7_dout: in std_logic_vector(31 downto 0); 
    to_register8_dout: in std_logic_vector(0 downto 0); 
    to_register9_dout: in std_logic_vector(31 downto 0); 
    reg01_rd: out std_logic_vector(31 downto 0); 
    reg01_rv: out std_logic; 
    reg02_rd: out std_logic_vector(31 downto 0); 
    reg02_rv: out std_logic; 
    reg03_rd: out std_logic_vector(31 downto 0); 
    reg03_rv: out std_logic; 
    reg04_rd: out std_logic_vector(31 downto 0); 
    reg04_rv: out std_logic; 
    reg05_rd: out std_logic_vector(31 downto 0); 
    reg05_rv: out std_logic; 
    reg06_rd: out std_logic_vector(31 downto 0); 
    reg06_rv: out std_logic; 
    reg07_rd: out std_logic_vector(31 downto 0); 
    reg07_rv: out std_logic; 
    reg08_rd: out std_logic_vector(31 downto 0); 
    reg08_rv: out std_logic; 
    reg09_rd: out std_logic_vector(31 downto 0); 
    reg09_rv: out std_logic; 
    reg10_rd: out std_logic_vector(31 downto 0); 
    reg10_rv: out std_logic; 
    reg11_rd: out std_logic_vector(31 downto 0); 
    reg11_rv: out std_logic; 
    reg12_rd: out std_logic_vector(31 downto 0); 
    reg12_rv: out std_logic; 
    reg13_rd: out std_logic_vector(31 downto 0); 
    reg13_rv: out std_logic; 
    reg14_rd: out std_logic_vector(31 downto 0); 
    reg14_rv: out std_logic; 
    to_register10_ce: out std_logic; 
    to_register10_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register10_clr: out std_logic; 
    to_register10_data_in: out std_logic_vector(0 downto 0); 
    to_register10_en: out std_logic_vector(0 downto 0); 
    to_register11_ce: out std_logic; 
    to_register11_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register11_clr: out std_logic; 
    to_register11_data_in: out std_logic_vector(31 downto 0); 
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
    to_register19_data_in: out std_logic_vector(0 downto 0); 
    to_register19_en: out std_logic_vector(0 downto 0); 
    to_register1_ce: out std_logic; 
    to_register1_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register1_clr: out std_logic; 
    to_register1_data_in: out std_logic_vector(31 downto 0); 
    to_register1_en: out std_logic_vector(0 downto 0); 
    to_register20_ce: out std_logic; 
    to_register20_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register20_clr: out std_logic; 
    to_register20_data_in: out std_logic_vector(31 downto 0); 
    to_register20_en: out std_logic_vector(0 downto 0); 
    to_register21_ce: out std_logic; 
    to_register21_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register21_clr: out std_logic; 
    to_register21_data_in: out std_logic_vector(0 downto 0); 
    to_register21_en: out std_logic_vector(0 downto 0); 
    to_register22_ce: out std_logic; 
    to_register22_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register22_clr: out std_logic; 
    to_register22_data_in: out std_logic_vector(31 downto 0); 
    to_register22_en: out std_logic_vector(0 downto 0); 
    to_register23_ce: out std_logic; 
    to_register23_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register23_clr: out std_logic; 
    to_register23_data_in: out std_logic_vector(0 downto 0); 
    to_register23_en: out std_logic_vector(0 downto 0); 
    to_register24_ce: out std_logic; 
    to_register24_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register24_clr: out std_logic; 
    to_register24_data_in: out std_logic_vector(31 downto 0); 
    to_register24_en: out std_logic_vector(0 downto 0); 
    to_register25_ce: out std_logic; 
    to_register25_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register25_clr: out std_logic; 
    to_register25_data_in: out std_logic_vector(0 downto 0); 
    to_register25_en: out std_logic_vector(0 downto 0); 
    to_register26_ce: out std_logic; 
    to_register26_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register26_clr: out std_logic; 
    to_register26_data_in: out std_logic_vector(31 downto 0); 
    to_register26_en: out std_logic_vector(0 downto 0); 
    to_register27_ce: out std_logic; 
    to_register27_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register27_clr: out std_logic; 
    to_register27_data_in: out std_logic_vector(0 downto 0); 
    to_register27_en: out std_logic_vector(0 downto 0); 
    to_register28_ce: out std_logic; 
    to_register28_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register28_clr: out std_logic; 
    to_register28_data_in: out std_logic_vector(31 downto 0); 
    to_register28_en: out std_logic_vector(0 downto 0); 
    to_register29_ce: out std_logic; 
    to_register29_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register29_clr: out std_logic; 
    to_register29_data_in: out std_logic_vector(0 downto 0); 
    to_register29_en: out std_logic_vector(0 downto 0); 
    to_register2_ce: out std_logic; 
    to_register2_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register2_clr: out std_logic; 
    to_register2_data_in: out std_logic_vector(31 downto 0); 
    to_register2_en: out std_logic_vector(0 downto 0); 
    to_register30_ce: out std_logic; 
    to_register30_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register30_clr: out std_logic; 
    to_register30_data_in: out std_logic_vector(31 downto 0); 
    to_register30_en: out std_logic_vector(0 downto 0); 
    to_register31_ce: out std_logic; 
    to_register31_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register31_clr: out std_logic; 
    to_register31_data_in: out std_logic_vector(0 downto 0); 
    to_register31_en: out std_logic_vector(0 downto 0); 
    to_register32_ce: out std_logic; 
    to_register32_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register32_clr: out std_logic; 
    to_register32_data_in: out std_logic_vector(31 downto 0); 
    to_register32_en: out std_logic_vector(0 downto 0); 
    to_register33_ce: out std_logic; 
    to_register33_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register33_clr: out std_logic; 
    to_register33_data_in: out std_logic_vector(0 downto 0); 
    to_register33_en: out std_logic_vector(0 downto 0); 
    to_register34_ce: out std_logic; 
    to_register34_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register34_clr: out std_logic; 
    to_register34_data_in: out std_logic_vector(31 downto 0); 
    to_register34_en: out std_logic_vector(0 downto 0); 
    to_register3_ce: out std_logic; 
    to_register3_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register3_clr: out std_logic; 
    to_register3_data_in: out std_logic_vector(0 downto 0); 
    to_register3_en: out std_logic_vector(0 downto 0); 
    to_register4_ce: out std_logic; 
    to_register4_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register4_clr: out std_logic; 
    to_register4_data_in: out std_logic_vector(0 downto 0); 
    to_register4_en: out std_logic_vector(0 downto 0); 
    to_register5_ce: out std_logic; 
    to_register5_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register5_clr: out std_logic; 
    to_register5_data_in: out std_logic_vector(31 downto 0); 
    to_register5_en: out std_logic_vector(0 downto 0); 
    to_register6_ce: out std_logic; 
    to_register6_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register6_clr: out std_logic; 
    to_register6_data_in: out std_logic_vector(31 downto 0); 
    to_register6_en: out std_logic_vector(0 downto 0); 
    to_register7_ce: out std_logic; 
    to_register7_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register7_clr: out std_logic; 
    to_register7_data_in: out std_logic_vector(31 downto 0); 
    to_register7_en: out std_logic_vector(0 downto 0); 
    to_register8_ce: out std_logic; 
    to_register8_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register8_clr: out std_logic; 
    to_register8_data_in: out std_logic_vector(0 downto 0); 
    to_register8_en: out std_logic_vector(0 downto 0); 
    to_register9_ce: out std_logic; 
    to_register9_clk: out std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    to_register9_clr: out std_logic; 
    to_register9_data_in: out std_logic_vector(31 downto 0); 
    to_register9_en: out std_logic_vector(0 downto 0)
  );
end component;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : inout_logic_cw
  port map (
    ce => ce,
    clk => clk,
    debug_in_1i => debug_in_1i,
    debug_in_2i => debug_in_2i,
    debug_in_3i => debug_in_3i,
    debug_in_4i => debug_in_4i,
    dma_host2board_busy => dma_host2board_busy,
    dma_host2board_done => dma_host2board_done,
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
    from_register2_data_out => from_register2_data_out,
    from_register3_data_out => from_register3_data_out,
    from_register4_data_out => from_register4_data_out,
    from_register5_data_out => from_register5_data_out,
    from_register6_data_out => from_register6_data_out,
    from_register7_data_out => from_register7_data_out,
    from_register8_data_out => from_register8_data_out,
    from_register9_data_out => from_register9_data_out,
    reg01_td => reg01_td,
    reg01_tv => reg01_tv,
    reg02_td => reg02_td,
    reg02_tv => reg02_tv,
    reg03_td => reg03_td,
    reg03_tv => reg03_tv,
    reg04_td => reg04_td,
    reg04_tv => reg04_tv,
    reg05_td => reg05_td,
    reg05_tv => reg05_tv,
    reg06_td => reg06_td,
    reg06_tv => reg06_tv,
    reg07_td => reg07_td,
    reg07_tv => reg07_tv,
    reg08_td => reg08_td,
    reg08_tv => reg08_tv,
    reg09_td => reg09_td,
    reg09_tv => reg09_tv,
    reg10_td => reg10_td,
    reg10_tv => reg10_tv,
    reg11_td => reg11_td,
    reg11_tv => reg11_tv,
    reg12_td => reg12_td,
    reg12_tv => reg12_tv,
    reg13_td => reg13_td,
    reg13_tv => reg13_tv,
    reg14_td => reg14_td,
    reg14_tv => reg14_tv,
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
    to_register28_dout => to_register28_dout,
    to_register29_dout => to_register29_dout,
    to_register2_dout => to_register2_dout,
    to_register30_dout => to_register30_dout,
    to_register31_dout => to_register31_dout,
    to_register32_dout => to_register32_dout,
    to_register33_dout => to_register33_dout,
    to_register34_dout => to_register34_dout,
    to_register3_dout => to_register3_dout,
    to_register4_dout => to_register4_dout,
    to_register5_dout => to_register5_dout,
    to_register6_dout => to_register6_dout,
    to_register7_dout => to_register7_dout,
    to_register8_dout => to_register8_dout,
    to_register9_dout => to_register9_dout,
    reg01_rd => reg01_rd,
    reg01_rv => reg01_rv,
    reg02_rd => reg02_rd,
    reg02_rv => reg02_rv,
    reg03_rd => reg03_rd,
    reg03_rv => reg03_rv,
    reg04_rd => reg04_rd,
    reg04_rv => reg04_rv,
    reg05_rd => reg05_rd,
    reg05_rv => reg05_rv,
    reg06_rd => reg06_rd,
    reg06_rv => reg06_rv,
    reg07_rd => reg07_rd,
    reg07_rv => reg07_rv,
    reg08_rd => reg08_rd,
    reg08_rv => reg08_rv,
    reg09_rd => reg09_rd,
    reg09_rv => reg09_rv,
    reg10_rd => reg10_rd,
    reg10_rv => reg10_rv,
    reg11_rd => reg11_rd,
    reg11_rv => reg11_rv,
    reg12_rd => reg12_rd,
    reg12_rv => reg12_rv,
    reg13_rd => reg13_rd,
    reg13_rv => reg13_rv,
    reg14_rd => reg14_rd,
    reg14_rv => reg14_rv,
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
    to_register28_ce => to_register28_ce,
    to_register28_clk => to_register28_clk,
    to_register28_clr => to_register28_clr,
    to_register28_data_in => to_register28_data_in,
    to_register28_en => to_register28_en,
    to_register29_ce => to_register29_ce,
    to_register29_clk => to_register29_clk,
    to_register29_clr => to_register29_clr,
    to_register29_data_in => to_register29_data_in,
    to_register29_en => to_register29_en,
    to_register2_ce => to_register2_ce,
    to_register2_clk => to_register2_clk,
    to_register2_clr => to_register2_clr,
    to_register2_data_in => to_register2_data_in,
    to_register2_en => to_register2_en,
    to_register30_ce => to_register30_ce,
    to_register30_clk => to_register30_clk,
    to_register30_clr => to_register30_clr,
    to_register30_data_in => to_register30_data_in,
    to_register30_en => to_register30_en,
    to_register31_ce => to_register31_ce,
    to_register31_clk => to_register31_clk,
    to_register31_clr => to_register31_clr,
    to_register31_data_in => to_register31_data_in,
    to_register31_en => to_register31_en,
    to_register32_ce => to_register32_ce,
    to_register32_clk => to_register32_clk,
    to_register32_clr => to_register32_clr,
    to_register32_data_in => to_register32_data_in,
    to_register32_en => to_register32_en,
    to_register33_ce => to_register33_ce,
    to_register33_clk => to_register33_clk,
    to_register33_clr => to_register33_clr,
    to_register33_data_in => to_register33_data_in,
    to_register33_en => to_register33_en,
    to_register34_ce => to_register34_ce,
    to_register34_clk => to_register34_clk,
    to_register34_clr => to_register34_clr,
    to_register34_data_in => to_register34_data_in,
    to_register34_en => to_register34_en,
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
    to_register9_en => to_register9_en);
-- INST_TAG_END ------ End INSTANTIATION Template ------------
