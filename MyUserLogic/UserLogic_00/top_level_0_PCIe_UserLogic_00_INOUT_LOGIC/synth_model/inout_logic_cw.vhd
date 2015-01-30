
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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
entity xlclockdriver is
  generic (
    period: integer := 2;
    log_2_period: integer := 0;
    pipeline_regs: integer := 5;
    use_bufg: integer := 0
  );
  port (
    sysclk: in std_logic;
    sysclr: in std_logic;
    sysce: in std_logic;
    clk: out std_logic;
    clr: out std_logic;
    ce: out std_logic;
    ce_logic: out std_logic
  );
end xlclockdriver;
architecture behavior of xlclockdriver is
  component bufg
    port (
      i: in std_logic;
      o: out std_logic
    );
  end component;
  component synth_reg_w_init
    generic (
      width: integer;
      init_index: integer;
      init_value: bit_vector;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function size_of_uint(inp: integer; power_of_2: boolean)
    return integer
  is
    constant inp_vec: std_logic_vector(31 downto 0) :=
      integer_to_std_logic_vector(inp,32, xlUnsigned);
    variable result: integer;
  begin
    result := 32;
    for i in 0 to 31 loop
      if inp_vec(i) = '1' then
        result := i;
      end if;
    end loop;
    if power_of_2 then
      return result;
    else
      return result+1;
    end if;
  end;
  function is_power_of_2(inp: std_logic_vector)
    return boolean
  is
    constant width: integer := inp'length;
    variable vec: std_logic_vector(width - 1 downto 0);
    variable single_bit_set: boolean;
    variable more_than_one_bit_set: boolean;
    variable result: boolean;
  begin
    vec := inp;
    single_bit_set := false;
    more_than_one_bit_set := false;
    -- synopsys translate_off
    if (is_XorU(vec)) then
      return false;
    end if;
     -- synopsys translate_on
    if width > 0 then
      for i in 0 to width - 1 loop
        if vec(i) = '1' then
          if single_bit_set then
            more_than_one_bit_set := true;
          end if;
          single_bit_set := true;
        end if;
      end loop;
    end if;
    if (single_bit_set and not(more_than_one_bit_set)) then
      result := true;
    else
      result := false;
    end if;
    return result;
  end;
  function ce_reg_init_val(index, period : integer)
    return integer
  is
     variable result: integer;
   begin
      result := 0;
      if ((index mod period) = 0) then
          result := 1;
      end if;
      return result;
  end;
  function remaining_pipe_regs(num_pipeline_regs, period : integer)
    return integer
  is
     variable factor, result: integer;
  begin
      factor := (num_pipeline_regs / period);
      result := num_pipeline_regs - (period * factor) + 1;
      return result;
  end;

  function sg_min(L, R: INTEGER) return INTEGER is
  begin
      if L < R then
            return L;
      else
            return R;
      end if;
  end;
  constant max_pipeline_regs : integer := 8;
  constant pipe_regs : integer := 5;
  constant num_pipeline_regs : integer := sg_min(pipeline_regs, max_pipeline_regs);
  constant rem_pipeline_regs : integer := remaining_pipe_regs(num_pipeline_regs,period);
  constant period_floor: integer := max(2, period);
  constant power_of_2_counter: boolean :=
    is_power_of_2(integer_to_std_logic_vector(period_floor,32, xlUnsigned));
  constant cnt_width: integer :=
    size_of_uint(period_floor, power_of_2_counter);
  constant clk_for_ce_pulse_minus1: std_logic_vector(cnt_width - 1 downto 0) :=
    integer_to_std_logic_vector((period_floor - 2),cnt_width, xlUnsigned);
  constant clk_for_ce_pulse_minus2: std_logic_vector(cnt_width - 1 downto 0) :=
    integer_to_std_logic_vector(max(0,period - 3),cnt_width, xlUnsigned);
  constant clk_for_ce_pulse_minus_regs: std_logic_vector(cnt_width - 1 downto 0) :=
    integer_to_std_logic_vector(max(0,period - rem_pipeline_regs),cnt_width, xlUnsigned);
  signal clk_num: unsigned(cnt_width - 1 downto 0) := (others => '0');
  signal ce_vec : std_logic_vector(num_pipeline_regs downto 0);
  attribute MAX_FANOUT : string;
  attribute MAX_FANOUT of ce_vec:signal is "REDUCE";
  signal ce_vec_logic : std_logic_vector(num_pipeline_regs downto 0);
  attribute MAX_FANOUT of ce_vec_logic:signal is "REDUCE";
  signal internal_ce: std_logic_vector(0 downto 0);
  signal internal_ce_logic: std_logic_vector(0 downto 0);
  signal cnt_clr, cnt_clr_dly: std_logic_vector (0 downto 0);
begin
  clk <= sysclk;
  clr <= sysclr;
  cntr_gen: process(sysclk)
  begin
    if sysclk'event and sysclk = '1'  then
      if (sysce = '1') then
        if ((cnt_clr_dly(0) = '1') or (sysclr = '1')) then
          clk_num <= (others => '0');
        else
          clk_num <= clk_num + 1;
        end if;
    end if;
    end if;
  end process;
  clr_gen: process(clk_num, sysclr)
  begin
    if power_of_2_counter then
      cnt_clr(0) <= sysclr;
    else
      if (unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus1
          or sysclr = '1') then
        cnt_clr(0) <= '1';
      else
        cnt_clr(0) <= '0';
      end if;
    end if;
  end process;
  clr_reg: synth_reg_w_init
    generic map (
      width => 1,
      init_index => 0,
      init_value => b"0000",
      latency => 1
    )
    port map (
      i => cnt_clr,
      ce => sysce,
      clr => sysclr,
      clk => sysclk,
      o => cnt_clr_dly
    );
  pipelined_ce : if period > 1 generate
      ce_gen: process(clk_num)
      begin
          if unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus_regs then
              ce_vec(num_pipeline_regs) <= '1';
          else
              ce_vec(num_pipeline_regs) <= '0';
          end if;
      end process;
      ce_pipeline: for index in num_pipeline_regs downto 1 generate
          ce_reg : synth_reg_w_init
              generic map (
                  width => 1,
                  init_index => ce_reg_init_val(index, period),
                  init_value => b"0000",
                  latency => 1
                  )
              port map (
                  i => ce_vec(index downto index),
                  ce => sysce,
                  clr => sysclr,
                  clk => sysclk,
                  o => ce_vec(index-1 downto index-1)
                  );
      end generate;
      internal_ce <= ce_vec(0 downto 0);
  end generate;
  pipelined_ce_logic: if period > 1 generate
      ce_gen_logic: process(clk_num)
      begin
          if unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus_regs then
              ce_vec_logic(num_pipeline_regs) <= '1';
          else
              ce_vec_logic(num_pipeline_regs) <= '0';
          end if;
      end process;
      ce_logic_pipeline: for index in num_pipeline_regs downto 1 generate
          ce_logic_reg : synth_reg_w_init
              generic map (
                  width => 1,
                  init_index => ce_reg_init_val(index, period),
                  init_value => b"0000",
                  latency => 1
                  )
              port map (
                  i => ce_vec_logic(index downto index),
                  ce => sysce,
                  clr => sysclr,
                  clk => sysclk,
                  o => ce_vec_logic(index-1 downto index-1)
                  );
      end generate;
      internal_ce_logic <= ce_vec_logic(0 downto 0);
  end generate;
  use_bufg_true: if period > 1 and use_bufg = 1 generate
    ce_bufg_inst: bufg
      port map (
        i => internal_ce(0),
        o => ce
      );
    ce_bufg_inst_logic: bufg
      port map (
        i => internal_ce_logic(0),
        o => ce_logic
      );
  end generate;
  use_bufg_false: if period > 1 and (use_bufg = 0) generate
    ce <= internal_ce(0);
    ce_logic <= internal_ce_logic(0);
  end generate;
  generate_system_clk: if period = 1 generate
    ce <= sysce;
    ce_logic <= sysce;
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity default_clock_driver is
  port (
    sysce: in std_logic; 
    sysce_clr: in std_logic; 
    sysclk: in std_logic; 
    ce_1: out std_logic; 
    clk_1: out std_logic
  );
end default_clock_driver;

architecture structural of default_clock_driver is
  attribute syn_noprune: boolean;
  attribute syn_noprune of structural : architecture is true;
  attribute optimize_primitives: boolean;
  attribute optimize_primitives of structural : architecture is false;
  attribute dont_touch: boolean;
  attribute dont_touch of structural : architecture is true;

  signal sysce_clr_x0: std_logic;
  signal sysce_x0: std_logic;
  signal sysclk_x0: std_logic;
  signal xlclockdriver_1_ce: std_logic;
  signal xlclockdriver_1_clk: std_logic;

begin
  sysce_x0 <= sysce;
  sysce_clr_x0 <= sysce_clr;
  sysclk_x0 <= sysclk;
  ce_1 <= xlclockdriver_1_ce;
  clk_1 <= xlclockdriver_1_clk;

  xlclockdriver_1: entity work.xlclockdriver
    generic map (
      log_2_period => 1,
      period => 1,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_1_ce,
      clk => xlclockdriver_1_clk
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity inout_logic_cw is
  port (
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
end inout_logic_cw;

architecture structural of inout_logic_cw is
  component xlpersistentdff
    port (
      clk: in std_logic; 
      d: in std_logic; 
      q: out std_logic
    );
  end component;
  attribute syn_black_box: boolean;
  attribute syn_black_box of xlpersistentdff: component is true;
  attribute box_type: string;
  attribute box_type of xlpersistentdff: component is "black_box";
  attribute syn_noprune: boolean;
  attribute optimize_primitives: boolean;
  attribute dont_touch: boolean;
  attribute syn_noprune of xlpersistentdff: component is true;
  attribute optimize_primitives of xlpersistentdff: component is false;
  attribute dont_touch of xlpersistentdff: component is true;

  signal ce_1_sg: std_logic;
  attribute MAX_FANOUT: string;
  attribute MAX_FANOUT of ce_1_sg: signal is "REDUCE";
  signal clkNet: std_logic;
  signal clk_1_sg: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal constant1_op_net_x1: std_logic;
  signal constant1_op_net_x10: std_logic;
  signal constant1_op_net_x11: std_logic;
  signal constant1_op_net_x12: std_logic;
  signal constant1_op_net_x13: std_logic;
  signal constant1_op_net_x2: std_logic;
  signal constant1_op_net_x3: std_logic;
  signal constant1_op_net_x4: std_logic;
  signal constant1_op_net_x5: std_logic;
  signal constant1_op_net_x6: std_logic;
  signal constant1_op_net_x7: std_logic;
  signal constant1_op_net_x8: std_logic;
  signal constant1_op_net_x9: std_logic;
  signal constant5_op_net_x0: std_logic;
  signal constant5_op_net_x1: std_logic;
  signal constant5_op_net_x10: std_logic;
  signal constant5_op_net_x11: std_logic;
  signal constant5_op_net_x12: std_logic;
  signal constant5_op_net_x13: std_logic;
  signal constant5_op_net_x14: std_logic;
  signal constant5_op_net_x15: std_logic;
  signal constant5_op_net_x16: std_logic;
  signal constant5_op_net_x17: std_logic;
  signal constant5_op_net_x18: std_logic;
  signal constant5_op_net_x19: std_logic;
  signal constant5_op_net_x2: std_logic;
  signal constant5_op_net_x3: std_logic;
  signal constant5_op_net_x4: std_logic;
  signal constant5_op_net_x5: std_logic;
  signal constant5_op_net_x6: std_logic;
  signal constant5_op_net_x7: std_logic;
  signal constant5_op_net_x8: std_logic;
  signal constant5_op_net_x9: std_logic;
  signal debug_in_1i_net: std_logic_vector(31 downto 0);
  signal debug_in_1i_net_x0: std_logic_vector(31 downto 0);
  signal debug_in_2i_net: std_logic_vector(31 downto 0);
  signal debug_in_2i_net_x0: std_logic_vector(31 downto 0);
  signal debug_in_3i_net: std_logic_vector(31 downto 0);
  signal debug_in_3i_net_x0: std_logic_vector(31 downto 0);
  signal debug_in_4i_net: std_logic_vector(31 downto 0);
  signal debug_in_4i_net_x0: std_logic_vector(31 downto 0);
  signal dma_host2board_busy_net: std_logic;
  signal dma_host2board_busy_net_x0: std_logic;
  signal dma_host2board_done_net: std_logic;
  signal dma_host2board_done_net_x0: std_logic;
  signal from_register10_data_out_net: std_logic_vector(31 downto 0);
  signal from_register10_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register11_data_out_net: std_logic_vector(31 downto 0);
  signal from_register11_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register12_data_out_net: std_logic;
  signal from_register12_data_out_net_x0: std_logic;
  signal from_register13_data_out_net: std_logic_vector(31 downto 0);
  signal from_register13_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register14_data_out_net: std_logic;
  signal from_register14_data_out_net_x0: std_logic;
  signal from_register15_data_out_net: std_logic_vector(31 downto 0);
  signal from_register15_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register16_data_out_net: std_logic;
  signal from_register16_data_out_net_x0: std_logic;
  signal from_register17_data_out_net: std_logic_vector(31 downto 0);
  signal from_register17_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register18_data_out_net: std_logic;
  signal from_register18_data_out_net_x0: std_logic;
  signal from_register19_data_out_net: std_logic_vector(31 downto 0);
  signal from_register19_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register1_data_out_net: std_logic;
  signal from_register1_data_out_net_x0: std_logic;
  signal from_register20_data_out_net: std_logic;
  signal from_register20_data_out_net_x0: std_logic;
  signal from_register21_data_out_net: std_logic_vector(31 downto 0);
  signal from_register21_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register22_data_out_net: std_logic;
  signal from_register22_data_out_net_x0: std_logic;
  signal from_register23_data_out_net: std_logic_vector(31 downto 0);
  signal from_register23_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register24_data_out_net: std_logic;
  signal from_register24_data_out_net_x0: std_logic;
  signal from_register25_data_out_net: std_logic_vector(31 downto 0);
  signal from_register25_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register26_data_out_net: std_logic;
  signal from_register26_data_out_net_x0: std_logic;
  signal from_register27_data_out_net: std_logic_vector(31 downto 0);
  signal from_register27_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register28_data_out_net: std_logic;
  signal from_register28_data_out_net_x0: std_logic;
  signal from_register2_data_out_net: std_logic;
  signal from_register2_data_out_net_x0: std_logic;
  signal from_register3_data_out_net: std_logic_vector(31 downto 0);
  signal from_register3_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register4_data_out_net: std_logic;
  signal from_register4_data_out_net_x0: std_logic;
  signal from_register5_data_out_net: std_logic_vector(31 downto 0);
  signal from_register5_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register6_data_out_net: std_logic;
  signal from_register6_data_out_net_x0: std_logic;
  signal from_register7_data_out_net: std_logic_vector(31 downto 0);
  signal from_register7_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register8_data_out_net: std_logic_vector(31 downto 0);
  signal from_register8_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register9_data_out_net: std_logic;
  signal from_register9_data_out_net_x0: std_logic;
  signal persistentdff_inst_q: std_logic;
  attribute syn_keep: boolean;
  attribute syn_keep of persistentdff_inst_q: signal is true;
  attribute keep: boolean;
  attribute keep of persistentdff_inst_q: signal is true;
  attribute preserve_signal: boolean;
  attribute preserve_signal of persistentdff_inst_q: signal is true;
  signal reg01_td_net: std_logic_vector(31 downto 0);
  signal reg01_td_net_x0: std_logic_vector(31 downto 0);
  signal reg01_tv_net: std_logic;
  signal reg01_tv_net_x0: std_logic;
  signal reg02_td_net: std_logic_vector(31 downto 0);
  signal reg02_td_net_x0: std_logic_vector(31 downto 0);
  signal reg02_tv_net: std_logic;
  signal reg02_tv_net_x0: std_logic;
  signal reg03_td_net: std_logic_vector(31 downto 0);
  signal reg03_td_net_x0: std_logic_vector(31 downto 0);
  signal reg03_tv_net: std_logic;
  signal reg03_tv_net_x0: std_logic;
  signal reg04_td_net: std_logic_vector(31 downto 0);
  signal reg04_td_net_x0: std_logic_vector(31 downto 0);
  signal reg04_tv_net: std_logic;
  signal reg04_tv_net_x0: std_logic;
  signal reg05_td_net: std_logic_vector(31 downto 0);
  signal reg05_td_net_x0: std_logic_vector(31 downto 0);
  signal reg05_tv_net: std_logic;
  signal reg05_tv_net_x0: std_logic;
  signal reg06_td_net: std_logic_vector(31 downto 0);
  signal reg06_td_net_x0: std_logic_vector(31 downto 0);
  signal reg06_tv_net: std_logic;
  signal reg06_tv_net_x0: std_logic;
  signal reg07_td_net: std_logic_vector(31 downto 0);
  signal reg07_td_net_x0: std_logic_vector(31 downto 0);
  signal reg07_tv_net: std_logic;
  signal reg07_tv_net_x0: std_logic;
  signal reg08_td_net: std_logic_vector(31 downto 0);
  signal reg08_td_net_x0: std_logic_vector(31 downto 0);
  signal reg08_tv_net: std_logic;
  signal reg08_tv_net_x0: std_logic;
  signal reg09_td_net: std_logic_vector(31 downto 0);
  signal reg09_td_net_x0: std_logic_vector(31 downto 0);
  signal reg09_tv_net: std_logic;
  signal reg09_tv_net_x0: std_logic;
  signal reg10_td_net: std_logic_vector(31 downto 0);
  signal reg10_td_net_x0: std_logic_vector(31 downto 0);
  signal reg10_tv_net: std_logic;
  signal reg10_tv_net_x0: std_logic;
  signal reg11_td_net: std_logic_vector(31 downto 0);
  signal reg11_td_net_x0: std_logic_vector(31 downto 0);
  signal reg11_tv_net: std_logic;
  signal reg11_tv_net_x0: std_logic;
  signal reg12_td_net: std_logic_vector(31 downto 0);
  signal reg12_td_net_x0: std_logic_vector(31 downto 0);
  signal reg12_tv_net: std_logic;
  signal reg12_tv_net_x0: std_logic;
  signal reg13_td_net: std_logic_vector(31 downto 0);
  signal reg13_td_net_x0: std_logic_vector(31 downto 0);
  signal reg13_tv_net: std_logic;
  signal reg13_tv_net_x0: std_logic;
  signal reg14_td_net: std_logic_vector(31 downto 0);
  signal reg14_td_net_x0: std_logic_vector(31 downto 0);
  signal reg14_tv_net: std_logic;
  signal reg14_tv_net_x0: std_logic;
  signal to_register10_dout_net: std_logic;
  signal to_register11_dout_net: std_logic_vector(31 downto 0);
  signal to_register12_dout_net: std_logic;
  signal to_register13_dout_net: std_logic_vector(31 downto 0);
  signal to_register14_dout_net: std_logic;
  signal to_register15_dout_net: std_logic_vector(31 downto 0);
  signal to_register16_dout_net: std_logic;
  signal to_register17_dout_net: std_logic_vector(31 downto 0);
  signal to_register18_dout_net: std_logic;
  signal to_register19_dout_net: std_logic;
  signal to_register1_dout_net: std_logic_vector(31 downto 0);
  signal to_register20_dout_net: std_logic_vector(31 downto 0);
  signal to_register21_dout_net: std_logic;
  signal to_register22_dout_net: std_logic_vector(31 downto 0);
  signal to_register23_dout_net: std_logic;
  signal to_register24_dout_net: std_logic_vector(31 downto 0);
  signal to_register25_dout_net: std_logic;
  signal to_register26_dout_net: std_logic_vector(31 downto 0);
  signal to_register27_dout_net: std_logic;
  signal to_register28_dout_net: std_logic_vector(31 downto 0);
  signal to_register29_dout_net: std_logic;
  signal to_register2_dout_net: std_logic_vector(31 downto 0);
  signal to_register30_dout_net: std_logic_vector(31 downto 0);
  signal to_register31_dout_net: std_logic;
  signal to_register32_dout_net: std_logic_vector(31 downto 0);
  signal to_register33_dout_net: std_logic;
  signal to_register34_dout_net: std_logic_vector(31 downto 0);
  signal to_register3_dout_net: std_logic;
  signal to_register4_dout_net: std_logic;
  signal to_register5_dout_net: std_logic_vector(31 downto 0);
  signal to_register6_dout_net: std_logic_vector(31 downto 0);
  signal to_register7_dout_net: std_logic_vector(31 downto 0);
  signal to_register8_dout_net: std_logic;
  signal to_register9_dout_net: std_logic_vector(31 downto 0);

begin
  clkNet <= clk;
  debug_in_1i_net <= debug_in_1i;
  debug_in_2i_net <= debug_in_2i;
  debug_in_3i_net <= debug_in_3i;
  debug_in_4i_net <= debug_in_4i;
  dma_host2board_busy_net <= dma_host2board_busy;
  dma_host2board_done_net <= dma_host2board_done;
  from_register10_data_out_net <= from_register10_data_out;
  from_register11_data_out_net <= from_register11_data_out;
  from_register12_data_out_net <= from_register12_data_out(0);
  from_register13_data_out_net <= from_register13_data_out;
  from_register14_data_out_net <= from_register14_data_out(0);
  from_register15_data_out_net <= from_register15_data_out;
  from_register16_data_out_net <= from_register16_data_out(0);
  from_register17_data_out_net <= from_register17_data_out;
  from_register18_data_out_net <= from_register18_data_out(0);
  from_register19_data_out_net <= from_register19_data_out;
  from_register1_data_out_net <= from_register1_data_out(0);
  from_register20_data_out_net <= from_register20_data_out(0);
  from_register21_data_out_net <= from_register21_data_out;
  from_register22_data_out_net <= from_register22_data_out(0);
  from_register23_data_out_net <= from_register23_data_out;
  from_register24_data_out_net <= from_register24_data_out(0);
  from_register25_data_out_net <= from_register25_data_out;
  from_register26_data_out_net <= from_register26_data_out(0);
  from_register27_data_out_net <= from_register27_data_out;
  from_register28_data_out_net <= from_register28_data_out(0);
  from_register2_data_out_net <= from_register2_data_out(0);
  from_register3_data_out_net <= from_register3_data_out;
  from_register4_data_out_net <= from_register4_data_out(0);
  from_register5_data_out_net <= from_register5_data_out;
  from_register6_data_out_net <= from_register6_data_out(0);
  from_register7_data_out_net <= from_register7_data_out;
  from_register8_data_out_net <= from_register8_data_out;
  from_register9_data_out_net <= from_register9_data_out(0);
  reg01_td_net <= reg01_td;
  reg01_tv_net <= reg01_tv;
  reg02_td_net <= reg02_td;
  reg02_tv_net <= reg02_tv;
  reg03_td_net <= reg03_td;
  reg03_tv_net <= reg03_tv;
  reg04_td_net <= reg04_td;
  reg04_tv_net <= reg04_tv;
  reg05_td_net <= reg05_td;
  reg05_tv_net <= reg05_tv;
  reg06_td_net <= reg06_td;
  reg06_tv_net <= reg06_tv;
  reg07_td_net <= reg07_td;
  reg07_tv_net <= reg07_tv;
  reg08_td_net <= reg08_td;
  reg08_tv_net <= reg08_tv;
  reg09_td_net <= reg09_td;
  reg09_tv_net <= reg09_tv;
  reg10_td_net <= reg10_td;
  reg10_tv_net <= reg10_tv;
  reg11_td_net <= reg11_td;
  reg11_tv_net <= reg11_tv;
  reg12_td_net <= reg12_td;
  reg12_tv_net <= reg12_tv;
  reg13_td_net <= reg13_td;
  reg13_tv_net <= reg13_tv;
  reg14_td_net <= reg14_td;
  reg14_tv_net <= reg14_tv;
  to_register10_dout_net <= to_register10_dout(0);
  to_register11_dout_net <= to_register11_dout;
  to_register12_dout_net <= to_register12_dout(0);
  to_register13_dout_net <= to_register13_dout;
  to_register14_dout_net <= to_register14_dout(0);
  to_register15_dout_net <= to_register15_dout;
  to_register16_dout_net <= to_register16_dout(0);
  to_register17_dout_net <= to_register17_dout;
  to_register18_dout_net <= to_register18_dout(0);
  to_register19_dout_net <= to_register19_dout(0);
  to_register1_dout_net <= to_register1_dout;
  to_register20_dout_net <= to_register20_dout;
  to_register21_dout_net <= to_register21_dout(0);
  to_register22_dout_net <= to_register22_dout;
  to_register23_dout_net <= to_register23_dout(0);
  to_register24_dout_net <= to_register24_dout;
  to_register25_dout_net <= to_register25_dout(0);
  to_register26_dout_net <= to_register26_dout;
  to_register27_dout_net <= to_register27_dout(0);
  to_register28_dout_net <= to_register28_dout;
  to_register29_dout_net <= to_register29_dout(0);
  to_register2_dout_net <= to_register2_dout;
  to_register30_dout_net <= to_register30_dout;
  to_register31_dout_net <= to_register31_dout(0);
  to_register32_dout_net <= to_register32_dout;
  to_register33_dout_net <= to_register33_dout(0);
  to_register34_dout_net <= to_register34_dout;
  to_register3_dout_net <= to_register3_dout(0);
  to_register4_dout_net <= to_register4_dout(0);
  to_register5_dout_net <= to_register5_dout;
  to_register6_dout_net <= to_register6_dout;
  to_register7_dout_net <= to_register7_dout;
  to_register8_dout_net <= to_register8_dout(0);
  to_register9_dout_net <= to_register9_dout;
  reg01_rd <= from_register3_data_out_net_x0;
  reg01_rv <= from_register1_data_out_net_x0;
  reg02_rd <= from_register5_data_out_net_x0;
  reg02_rv <= from_register2_data_out_net_x0;
  reg03_rd <= from_register7_data_out_net_x0;
  reg03_rv <= from_register6_data_out_net_x0;
  reg04_rd <= from_register8_data_out_net_x0;
  reg04_rv <= from_register4_data_out_net_x0;
  reg05_rd <= from_register10_data_out_net_x0;
  reg05_rv <= from_register9_data_out_net_x0;
  reg06_rd <= from_register11_data_out_net_x0;
  reg06_rv <= from_register12_data_out_net_x0;
  reg07_rd <= from_register13_data_out_net_x0;
  reg07_rv <= from_register14_data_out_net_x0;
  reg08_rd <= from_register15_data_out_net_x0;
  reg08_rv <= from_register16_data_out_net_x0;
  reg09_rd <= from_register17_data_out_net_x0;
  reg09_rv <= from_register18_data_out_net_x0;
  reg10_rd <= from_register19_data_out_net_x0;
  reg10_rv <= from_register20_data_out_net_x0;
  reg11_rd <= from_register21_data_out_net_x0;
  reg11_rv <= from_register22_data_out_net_x0;
  reg12_rd <= from_register23_data_out_net_x0;
  reg12_rv <= from_register24_data_out_net_x0;
  reg13_rd <= from_register25_data_out_net_x0;
  reg13_rv <= from_register26_data_out_net_x0;
  reg14_rd <= from_register27_data_out_net_x0;
  reg14_rv <= from_register28_data_out_net_x0;
  to_register10_ce <= ce_1_sg;
  to_register10_clk <= clk_1_sg;
  to_register10_clr <= '0';
  to_register10_data_in(0) <= reg04_tv_net_x0;
  to_register10_en(0) <= constant5_op_net_x1;
  to_register11_ce <= ce_1_sg;
  to_register11_clk <= clk_1_sg;
  to_register11_clr <= '0';
  to_register11_data_in <= reg04_td_net_x0;
  to_register11_en(0) <= constant5_op_net_x2;
  to_register12_ce <= ce_1_sg;
  to_register12_clk <= clk_1_sg;
  to_register12_clr <= '0';
  to_register12_data_in(0) <= reg05_tv_net_x0;
  to_register12_en(0) <= constant5_op_net_x3;
  to_register13_ce <= ce_1_sg;
  to_register13_clk <= clk_1_sg;
  to_register13_clr <= '0';
  to_register13_data_in <= reg05_td_net_x0;
  to_register13_en(0) <= constant5_op_net_x4;
  to_register14_ce <= ce_1_sg;
  to_register14_clk <= clk_1_sg;
  to_register14_clr <= '0';
  to_register14_data_in(0) <= reg06_tv_net_x0;
  to_register14_en(0) <= constant5_op_net_x5;
  to_register15_ce <= ce_1_sg;
  to_register15_clk <= clk_1_sg;
  to_register15_clr <= '0';
  to_register15_data_in <= reg06_td_net_x0;
  to_register15_en(0) <= constant5_op_net_x6;
  to_register16_ce <= ce_1_sg;
  to_register16_clk <= clk_1_sg;
  to_register16_clr <= '0';
  to_register16_data_in(0) <= reg07_tv_net_x0;
  to_register16_en(0) <= constant5_op_net_x7;
  to_register17_ce <= ce_1_sg;
  to_register17_clk <= clk_1_sg;
  to_register17_clr <= '0';
  to_register17_data_in <= reg07_td_net_x0;
  to_register17_en(0) <= constant5_op_net_x8;
  to_register18_ce <= ce_1_sg;
  to_register18_clk <= clk_1_sg;
  to_register18_clr <= '0';
  to_register18_data_in(0) <= dma_host2board_busy_net_x0;
  to_register18_en(0) <= constant5_op_net_x9;
  to_register19_ce <= ce_1_sg;
  to_register19_clk <= clk_1_sg;
  to_register19_clr <= '0';
  to_register19_data_in(0) <= dma_host2board_done_net_x0;
  to_register19_en(0) <= constant5_op_net_x10;
  to_register1_ce <= ce_1_sg;
  to_register1_clk <= clk_1_sg;
  to_register1_clr <= '0';
  to_register1_data_in <= debug_in_2i_net_x0;
  to_register1_en(0) <= constant5_op_net_x0;
  to_register20_ce <= ce_1_sg;
  to_register20_clk <= clk_1_sg;
  to_register20_clr <= '0';
  to_register20_data_in <= debug_in_4i_net_x0;
  to_register20_en(0) <= constant5_op_net_x12;
  to_register21_ce <= ce_1_sg;
  to_register21_clk <= clk_1_sg;
  to_register21_clr <= '0';
  to_register21_data_in(0) <= reg09_tv_net_x0;
  to_register21_en(0) <= constant1_op_net_x0;
  to_register22_ce <= ce_1_sg;
  to_register22_clk <= clk_1_sg;
  to_register22_clr <= '0';
  to_register22_data_in <= reg09_td_net_x0;
  to_register22_en(0) <= constant1_op_net_x1;
  to_register23_ce <= ce_1_sg;
  to_register23_clk <= clk_1_sg;
  to_register23_clr <= '0';
  to_register23_data_in(0) <= reg10_tv_net_x0;
  to_register23_en(0) <= constant1_op_net_x2;
  to_register24_ce <= ce_1_sg;
  to_register24_clk <= clk_1_sg;
  to_register24_clr <= '0';
  to_register24_data_in <= reg10_td_net_x0;
  to_register24_en(0) <= constant1_op_net_x3;
  to_register25_ce <= ce_1_sg;
  to_register25_clk <= clk_1_sg;
  to_register25_clr <= '0';
  to_register25_data_in(0) <= reg08_tv_net_x0;
  to_register25_en(0) <= constant1_op_net_x4;
  to_register26_ce <= ce_1_sg;
  to_register26_clk <= clk_1_sg;
  to_register26_clr <= '0';
  to_register26_data_in <= reg08_td_net_x0;
  to_register26_en(0) <= constant1_op_net_x5;
  to_register27_ce <= ce_1_sg;
  to_register27_clk <= clk_1_sg;
  to_register27_clr <= '0';
  to_register27_data_in(0) <= reg11_tv_net_x0;
  to_register27_en(0) <= constant1_op_net_x6;
  to_register28_ce <= ce_1_sg;
  to_register28_clk <= clk_1_sg;
  to_register28_clr <= '0';
  to_register28_data_in <= reg11_td_net_x0;
  to_register28_en(0) <= constant1_op_net_x7;
  to_register29_ce <= ce_1_sg;
  to_register29_clk <= clk_1_sg;
  to_register29_clr <= '0';
  to_register29_data_in(0) <= reg12_tv_net_x0;
  to_register29_en(0) <= constant1_op_net_x8;
  to_register2_ce <= ce_1_sg;
  to_register2_clk <= clk_1_sg;
  to_register2_clr <= '0';
  to_register2_data_in <= debug_in_3i_net_x0;
  to_register2_en(0) <= constant5_op_net_x11;
  to_register30_ce <= ce_1_sg;
  to_register30_clk <= clk_1_sg;
  to_register30_clr <= '0';
  to_register30_data_in <= reg12_td_net_x0;
  to_register30_en(0) <= constant1_op_net_x9;
  to_register31_ce <= ce_1_sg;
  to_register31_clk <= clk_1_sg;
  to_register31_clr <= '0';
  to_register31_data_in(0) <= reg13_tv_net_x0;
  to_register31_en(0) <= constant1_op_net_x10;
  to_register32_ce <= ce_1_sg;
  to_register32_clk <= clk_1_sg;
  to_register32_clr <= '0';
  to_register32_data_in <= reg13_td_net_x0;
  to_register32_en(0) <= constant1_op_net_x11;
  to_register33_ce <= ce_1_sg;
  to_register33_clk <= clk_1_sg;
  to_register33_clr <= '0';
  to_register33_data_in(0) <= reg14_tv_net_x0;
  to_register33_en(0) <= constant1_op_net_x12;
  to_register34_ce <= ce_1_sg;
  to_register34_clk <= clk_1_sg;
  to_register34_clr <= '0';
  to_register34_data_in <= reg14_td_net_x0;
  to_register34_en(0) <= constant1_op_net_x13;
  to_register3_ce <= ce_1_sg;
  to_register3_clk <= clk_1_sg;
  to_register3_clr <= '0';
  to_register3_data_in(0) <= reg01_tv_net_x0;
  to_register3_en(0) <= constant5_op_net_x13;
  to_register4_ce <= ce_1_sg;
  to_register4_clk <= clk_1_sg;
  to_register4_clr <= '0';
  to_register4_data_in(0) <= reg02_tv_net_x0;
  to_register4_en(0) <= constant5_op_net_x14;
  to_register5_ce <= ce_1_sg;
  to_register5_clk <= clk_1_sg;
  to_register5_clr <= '0';
  to_register5_data_in <= reg02_td_net_x0;
  to_register5_en(0) <= constant5_op_net_x15;
  to_register6_ce <= ce_1_sg;
  to_register6_clk <= clk_1_sg;
  to_register6_clr <= '0';
  to_register6_data_in <= debug_in_1i_net_x0;
  to_register6_en(0) <= constant5_op_net_x16;
  to_register7_ce <= ce_1_sg;
  to_register7_clk <= clk_1_sg;
  to_register7_clr <= '0';
  to_register7_data_in <= reg01_td_net_x0;
  to_register7_en(0) <= constant5_op_net_x17;
  to_register8_ce <= ce_1_sg;
  to_register8_clk <= clk_1_sg;
  to_register8_clr <= '0';
  to_register8_data_in(0) <= reg03_tv_net_x0;
  to_register8_en(0) <= constant5_op_net_x18;
  to_register9_ce <= ce_1_sg;
  to_register9_clk <= clk_1_sg;
  to_register9_clr <= '0';
  to_register9_data_in <= reg03_td_net_x0;
  to_register9_en(0) <= constant5_op_net_x19;

  default_clock_driver_x0: entity work.default_clock_driver
    port map (
      sysce => '1',
      sysce_clr => '0',
      sysclk => clkNet,
      ce_1 => ce_1_sg,
      clk_1 => clk_1_sg
    );

  inout_logic_x0: entity work.inout_logic
    port map (
      data_out => from_register1_data_out_net,
      data_out_x0 => from_register10_data_out_net,
      data_out_x1 => from_register11_data_out_net,
      data_out_x10 => from_register2_data_out_net,
      data_out_x11 => from_register20_data_out_net,
      data_out_x12 => from_register21_data_out_net,
      data_out_x13 => from_register22_data_out_net,
      data_out_x14 => from_register23_data_out_net,
      data_out_x15 => from_register24_data_out_net,
      data_out_x16 => from_register25_data_out_net,
      data_out_x17 => from_register26_data_out_net,
      data_out_x18 => from_register27_data_out_net,
      data_out_x19 => from_register28_data_out_net,
      data_out_x2 => from_register12_data_out_net,
      data_out_x20 => from_register3_data_out_net,
      data_out_x21 => from_register4_data_out_net,
      data_out_x22 => from_register5_data_out_net,
      data_out_x23 => from_register6_data_out_net,
      data_out_x24 => from_register7_data_out_net,
      data_out_x25 => from_register8_data_out_net,
      data_out_x26 => from_register9_data_out_net,
      data_out_x3 => from_register13_data_out_net,
      data_out_x4 => from_register14_data_out_net,
      data_out_x5 => from_register15_data_out_net,
      data_out_x6 => from_register16_data_out_net,
      data_out_x7 => from_register17_data_out_net,
      data_out_x8 => from_register18_data_out_net,
      data_out_x9 => from_register19_data_out_net,
      debug_in_1i => debug_in_1i_net,
      debug_in_2i => debug_in_2i_net,
      debug_in_3i => debug_in_3i_net,
      debug_in_4i => debug_in_4i_net,
      dma_host2board_busy => dma_host2board_busy_net,
      dma_host2board_done => dma_host2board_done_net,
      reg01_td => reg01_td_net,
      reg01_tv => reg01_tv_net,
      reg02_td => reg02_td_net,
      reg02_tv => reg02_tv_net,
      reg03_td => reg03_td_net,
      reg03_tv => reg03_tv_net,
      reg04_td => reg04_td_net,
      reg04_tv => reg04_tv_net,
      reg05_td => reg05_td_net,
      reg05_tv => reg05_tv_net,
      reg06_td => reg06_td_net,
      reg06_tv => reg06_tv_net,
      reg07_td => reg07_td_net,
      reg07_tv => reg07_tv_net,
      reg08_td => reg08_td_net,
      reg08_tv => reg08_tv_net,
      reg09_td => reg09_td_net,
      reg09_tv => reg09_tv_net,
      reg10_td => reg10_td_net,
      reg10_tv => reg10_tv_net,
      reg11_td => reg11_td_net,
      reg11_tv => reg11_tv_net,
      reg12_td => reg12_td_net,
      reg12_tv => reg12_tv_net,
      reg13_td => reg13_td_net,
      reg13_tv => reg13_tv_net,
      reg14_td => reg14_td_net,
      reg14_tv => reg14_tv_net,
      data_in => debug_in_2i_net_x0,
      data_in_x0 => reg04_tv_net_x0,
      data_in_x1 => reg04_td_net_x0,
      data_in_x10 => debug_in_3i_net_x0,
      data_in_x11 => debug_in_4i_net_x0,
      data_in_x12 => reg09_tv_net_x0,
      data_in_x13 => reg09_td_net_x0,
      data_in_x14 => reg10_tv_net_x0,
      data_in_x15 => reg10_td_net_x0,
      data_in_x16 => reg08_tv_net_x0,
      data_in_x17 => reg08_td_net_x0,
      data_in_x18 => reg11_tv_net_x0,
      data_in_x19 => reg11_td_net_x0,
      data_in_x2 => reg05_tv_net_x0,
      data_in_x20 => reg12_tv_net_x0,
      data_in_x21 => reg01_tv_net_x0,
      data_in_x22 => reg12_td_net_x0,
      data_in_x23 => reg13_tv_net_x0,
      data_in_x24 => reg13_td_net_x0,
      data_in_x25 => reg14_tv_net_x0,
      data_in_x26 => reg14_td_net_x0,
      data_in_x27 => reg02_tv_net_x0,
      data_in_x28 => reg02_td_net_x0,
      data_in_x29 => debug_in_1i_net_x0,
      data_in_x3 => reg05_td_net_x0,
      data_in_x30 => reg01_td_net_x0,
      data_in_x31 => reg03_tv_net_x0,
      data_in_x32 => reg03_td_net_x0,
      data_in_x4 => reg06_tv_net_x0,
      data_in_x5 => reg06_td_net_x0,
      data_in_x6 => reg07_tv_net_x0,
      data_in_x7 => reg07_td_net_x0,
      data_in_x8 => dma_host2board_busy_net_x0,
      data_in_x9 => dma_host2board_done_net_x0,
      en => constant5_op_net_x0,
      en_x0 => constant5_op_net_x1,
      en_x1 => constant5_op_net_x2,
      en_x10 => constant5_op_net_x11,
      en_x11 => constant5_op_net_x12,
      en_x12 => constant1_op_net_x0,
      en_x13 => constant1_op_net_x1,
      en_x14 => constant1_op_net_x2,
      en_x15 => constant1_op_net_x3,
      en_x16 => constant1_op_net_x4,
      en_x17 => constant1_op_net_x5,
      en_x18 => constant1_op_net_x6,
      en_x19 => constant1_op_net_x7,
      en_x2 => constant5_op_net_x3,
      en_x20 => constant1_op_net_x8,
      en_x21 => constant5_op_net_x13,
      en_x22 => constant1_op_net_x9,
      en_x23 => constant1_op_net_x10,
      en_x24 => constant1_op_net_x11,
      en_x25 => constant1_op_net_x12,
      en_x26 => constant1_op_net_x13,
      en_x27 => constant5_op_net_x14,
      en_x28 => constant5_op_net_x15,
      en_x29 => constant5_op_net_x16,
      en_x3 => constant5_op_net_x4,
      en_x30 => constant5_op_net_x17,
      en_x31 => constant5_op_net_x18,
      en_x32 => constant5_op_net_x19,
      en_x4 => constant5_op_net_x5,
      en_x5 => constant5_op_net_x6,
      en_x6 => constant5_op_net_x7,
      en_x7 => constant5_op_net_x8,
      en_x8 => constant5_op_net_x9,
      en_x9 => constant5_op_net_x10,
      reg01_rd => from_register3_data_out_net_x0,
      reg01_rv => from_register1_data_out_net_x0,
      reg02_rd => from_register5_data_out_net_x0,
      reg02_rv => from_register2_data_out_net_x0,
      reg03_rd => from_register7_data_out_net_x0,
      reg03_rv => from_register6_data_out_net_x0,
      reg04_rd => from_register8_data_out_net_x0,
      reg04_rv => from_register4_data_out_net_x0,
      reg05_rd => from_register10_data_out_net_x0,
      reg05_rv => from_register9_data_out_net_x0,
      reg06_rd => from_register11_data_out_net_x0,
      reg06_rv => from_register12_data_out_net_x0,
      reg07_rd => from_register13_data_out_net_x0,
      reg07_rv => from_register14_data_out_net_x0,
      reg08_rd => from_register15_data_out_net_x0,
      reg08_rv => from_register16_data_out_net_x0,
      reg09_rd => from_register17_data_out_net_x0,
      reg09_rv => from_register18_data_out_net_x0,
      reg10_rd => from_register19_data_out_net_x0,
      reg10_rv => from_register20_data_out_net_x0,
      reg11_rd => from_register21_data_out_net_x0,
      reg11_rv => from_register22_data_out_net_x0,
      reg12_rd => from_register23_data_out_net_x0,
      reg12_rv => from_register24_data_out_net_x0,
      reg13_rd => from_register25_data_out_net_x0,
      reg13_rv => from_register26_data_out_net_x0,
      reg14_rd => from_register27_data_out_net_x0,
      reg14_rv => from_register28_data_out_net_x0
    );

  persistentdff_inst: xlpersistentdff
    port map (
      clk => clkNet,
      d => persistentdff_inst_q,
      q => persistentdff_inst_q
    );

end structural;
