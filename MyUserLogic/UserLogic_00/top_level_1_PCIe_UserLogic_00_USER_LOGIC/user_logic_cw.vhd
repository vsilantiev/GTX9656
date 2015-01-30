
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

entity user_logic_cw is
  port (
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
end user_logic_cw;

architecture structural of user_logic_cw is
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

  signal bram_rd_addr_net: std_logic_vector(11 downto 0);
  signal bram_rd_dout_net: std_logic_vector(63 downto 0);
  signal bram_wr_addr_net: std_logic_vector(11 downto 0);
  signal bram_wr_din_net: std_logic_vector(63 downto 0);
  signal bram_wr_en_net: std_logic_vector(7 downto 0);
  signal ce_1_sg_x0: std_logic;
  attribute MAX_FANOUT: string;
  attribute MAX_FANOUT of ce_1_sg_x0: signal is "REDUCE";
  signal clkNet: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal constant6_op_net_x0: std_logic;
  signal constant6_op_net_x1: std_logic;
  signal constant6_op_net_x10: std_logic;
  signal constant6_op_net_x11: std_logic;
  signal constant6_op_net_x12: std_logic;
  signal constant6_op_net_x13: std_logic;
  signal constant6_op_net_x14: std_logic;
  signal constant6_op_net_x15: std_logic;
  signal constant6_op_net_x16: std_logic;
  signal constant6_op_net_x17: std_logic;
  signal constant6_op_net_x18: std_logic;
  signal constant6_op_net_x19: std_logic;
  signal constant6_op_net_x2: std_logic;
  signal constant6_op_net_x20: std_logic;
  signal constant6_op_net_x21: std_logic;
  signal constant6_op_net_x22: std_logic;
  signal constant6_op_net_x23: std_logic;
  signal constant6_op_net_x24: std_logic;
  signal constant6_op_net_x25: std_logic;
  signal constant6_op_net_x26: std_logic;
  signal constant6_op_net_x27: std_logic;
  signal constant6_op_net_x3: std_logic;
  signal constant6_op_net_x4: std_logic;
  signal constant6_op_net_x5: std_logic;
  signal constant6_op_net_x6: std_logic;
  signal constant6_op_net_x7: std_logic;
  signal constant6_op_net_x8: std_logic;
  signal constant6_op_net_x9: std_logic;
  signal data_in_net: std_logic_vector(31 downto 0);
  signal data_in_x0_net: std_logic;
  signal data_in_x10_net: std_logic_vector(31 downto 0);
  signal data_in_x11_net: std_logic_vector(31 downto 0);
  signal data_in_x12_net: std_logic;
  signal data_in_x13_net: std_logic_vector(31 downto 0);
  signal data_in_x14_net: std_logic;
  signal data_in_x15_net: std_logic_vector(31 downto 0);
  signal data_in_x16_net: std_logic;
  signal data_in_x17_net: std_logic_vector(31 downto 0);
  signal data_in_x18_net: std_logic;
  signal data_in_x19_net: std_logic_vector(31 downto 0);
  signal data_in_x1_net: std_logic;
  signal data_in_x20_net: std_logic_vector(31 downto 0);
  signal data_in_x21_net: std_logic;
  signal data_in_x22_net: std_logic;
  signal data_in_x23_net: std_logic_vector(31 downto 0);
  signal data_in_x24_net: std_logic;
  signal data_in_x25_net: std_logic_vector(31 downto 0);
  signal data_in_x26_net: std_logic_vector(31 downto 0);
  signal data_in_x2_net: std_logic;
  signal data_in_x3_net: std_logic;
  signal data_in_x4_net: std_logic_vector(31 downto 0);
  signal data_in_x5_net: std_logic;
  signal data_in_x6_net: std_logic_vector(31 downto 0);
  signal data_in_x7_net: std_logic;
  signal data_in_x8_net: std_logic_vector(31 downto 0);
  signal data_in_x9_net: std_logic;
  signal data_out_x12_net: std_logic_vector(31 downto 0);
  signal data_out_x13_net: std_logic;
  signal data_out_x14_net: std_logic_vector(31 downto 0);
  signal data_out_x15_net: std_logic;
  signal data_out_x16_net: std_logic_vector(31 downto 0);
  signal data_out_x17_net: std_logic;
  signal data_out_x18_net: std_logic_vector(31 downto 0);
  signal data_out_x19_net: std_logic;
  signal data_out_x1_net: std_logic;
  signal data_out_x20_net: std_logic_vector(31 downto 0);
  signal data_out_x21_net: std_logic;
  signal data_out_x22_net: std_logic_vector(31 downto 0);
  signal data_out_x23_net: std_logic_vector(31 downto 0);
  signal data_out_x24_net: std_logic;
  signal data_out_x25_net: std_logic_vector(31 downto 0);
  signal data_out_x26_net: std_logic;
  signal data_out_x27_net: std_logic;
  signal data_out_x28_net: std_logic_vector(31 downto 0);
  signal data_out_x29_net: std_logic;
  signal data_out_x2_net: std_logic_vector(31 downto 0);
  signal data_out_x30_net: std_logic_vector(31 downto 0);
  signal data_out_x31_net: std_logic;
  signal data_out_x32_net: std_logic_vector(31 downto 0);
  signal data_out_x3_net: std_logic;
  signal data_out_x4_net: std_logic_vector(31 downto 0);
  signal data_out_x5_net: std_logic;
  signal data_out_x8_net: std_logic_vector(31 downto 0);
  signal data_out_x9_net: std_logic;
  signal fifo_rd_count_net: std_logic_vector(14 downto 0);
  signal fifo_rd_dout_net: std_logic_vector(71 downto 0);
  signal fifo_rd_empty_net: std_logic;
  signal fifo_rd_en_net: std_logic;
  signal fifo_rd_pempty_net: std_logic;
  signal fifo_rd_valid_net: std_logic;
  signal fifo_wr_count_net: std_logic_vector(14 downto 0);
  signal fifo_wr_din_net: std_logic_vector(71 downto 0);
  signal fifo_wr_en_net: std_logic;
  signal fifo_wr_full_net: std_logic;
  signal fifo_wr_pfull_net: std_logic;
  signal from_register15_data_out_net: std_logic;
  signal from_register16_data_out_net: std_logic;
  signal from_register19_data_out_net: std_logic_vector(31 downto 0);
  signal from_register1_data_out_net: std_logic_vector(31 downto 0);
  signal from_register2_data_out_net: std_logic_vector(31 downto 0);
  signal from_register_data_out_net: std_logic_vector(31 downto 0);
  signal persistentdff_inst_q: std_logic;
  attribute syn_keep: boolean;
  attribute syn_keep of persistentdff_inst_q: signal is true;
  attribute keep: boolean;
  attribute keep of persistentdff_inst_q: signal is true;
  attribute preserve_signal: boolean;
  attribute preserve_signal of persistentdff_inst_q: signal is true;
  signal rst_i_net: std_logic;
  signal rst_o_net: std_logic;
  signal to_register10_dout_net: std_logic;
  signal to_register11_dout_net: std_logic;
  signal to_register12_dout_net: std_logic;
  signal to_register13_dout_net: std_logic_vector(31 downto 0);
  signal to_register14_dout_net: std_logic;
  signal to_register15_dout_net: std_logic_vector(31 downto 0);
  signal to_register16_dout_net: std_logic;
  signal to_register17_dout_net: std_logic_vector(31 downto 0);
  signal to_register18_dout_net: std_logic;
  signal to_register19_dout_net: std_logic_vector(31 downto 0);
  signal to_register1_dout_net: std_logic;
  signal to_register20_dout_net: std_logic;
  signal to_register21_dout_net: std_logic_vector(31 downto 0);
  signal to_register22_dout_net: std_logic;
  signal to_register23_dout_net: std_logic_vector(31 downto 0);
  signal to_register24_dout_net: std_logic;
  signal to_register25_dout_net: std_logic_vector(31 downto 0);
  signal to_register26_dout_net: std_logic;
  signal to_register27_dout_net: std_logic_vector(31 downto 0);
  signal to_register2_dout_net: std_logic_vector(31 downto 0);
  signal to_register3_dout_net: std_logic_vector(31 downto 0);
  signal to_register4_dout_net: std_logic;
  signal to_register5_dout_net: std_logic;
  signal to_register6_dout_net: std_logic_vector(31 downto 0);
  signal to_register7_dout_net: std_logic;
  signal to_register8_dout_net: std_logic_vector(31 downto 0);
  signal to_register9_dout_net: std_logic_vector(31 downto 0);
  signal to_register_dout_net: std_logic_vector(31 downto 0);
  signal user_int_1o_net: std_logic;
  signal user_int_2o_net: std_logic;
  signal user_int_3o_net: std_logic;

begin
  bram_rd_dout_net <= bram_rd_dout;
  clkNet <= clk;
  fifo_rd_count_net <= fifo_rd_count;
  fifo_rd_dout_net <= fifo_rd_dout;
  fifo_rd_empty_net <= fifo_rd_empty;
  fifo_rd_pempty_net <= fifo_rd_pempty;
  fifo_rd_valid_net <= fifo_rd_valid;
  fifo_wr_count_net <= fifo_wr_count;
  fifo_wr_full_net <= fifo_wr_full;
  fifo_wr_pfull_net <= fifo_wr_pfull;
  data_out_x1_net <= from_register10_data_out(0);
  data_out_x2_net <= from_register11_data_out;
  data_out_x3_net <= from_register12_data_out(0);
  data_out_x4_net <= from_register13_data_out;
  data_out_x5_net <= from_register14_data_out(0);
  from_register15_data_out_net <= from_register15_data_out(0);
  from_register16_data_out_net <= from_register16_data_out(0);
  data_out_x8_net <= from_register17_data_out;
  data_out_x9_net <= from_register18_data_out(0);
  from_register19_data_out_net <= from_register19_data_out;
  from_register1_data_out_net <= from_register1_data_out;
  data_out_x12_net <= from_register20_data_out;
  data_out_x13_net <= from_register21_data_out(0);
  data_out_x14_net <= from_register22_data_out;
  data_out_x15_net <= from_register23_data_out(0);
  data_out_x16_net <= from_register24_data_out;
  data_out_x17_net <= from_register25_data_out(0);
  data_out_x18_net <= from_register26_data_out;
  data_out_x19_net <= from_register27_data_out(0);
  data_out_x20_net <= from_register28_data_out;
  data_out_x21_net <= from_register29_data_out(0);
  from_register2_data_out_net <= from_register2_data_out;
  data_out_x23_net <= from_register30_data_out;
  data_out_x24_net <= from_register31_data_out(0);
  data_out_x25_net <= from_register32_data_out;
  data_out_x26_net <= from_register33_data_out(0);
  data_out_x22_net <= from_register3_data_out;
  data_out_x27_net <= from_register4_data_out(0);
  data_out_x28_net <= from_register5_data_out;
  data_out_x29_net <= from_register6_data_out(0);
  data_out_x30_net <= from_register7_data_out;
  data_out_x31_net <= from_register8_data_out(0);
  data_out_x32_net <= from_register9_data_out;
  from_register_data_out_net <= from_register_data_out;
  rst_i_net <= rst_i;
  to_register10_dout_net <= to_register10_dout(0);
  to_register11_dout_net <= to_register11_dout(0);
  to_register12_dout_net <= to_register12_dout(0);
  to_register13_dout_net <= to_register13_dout;
  to_register14_dout_net <= to_register14_dout(0);
  to_register15_dout_net <= to_register15_dout;
  to_register16_dout_net <= to_register16_dout(0);
  to_register17_dout_net <= to_register17_dout;
  to_register18_dout_net <= to_register18_dout(0);
  to_register19_dout_net <= to_register19_dout;
  to_register1_dout_net <= to_register1_dout(0);
  to_register20_dout_net <= to_register20_dout(0);
  to_register21_dout_net <= to_register21_dout;
  to_register22_dout_net <= to_register22_dout(0);
  to_register23_dout_net <= to_register23_dout;
  to_register24_dout_net <= to_register24_dout(0);
  to_register25_dout_net <= to_register25_dout;
  to_register26_dout_net <= to_register26_dout(0);
  to_register27_dout_net <= to_register27_dout;
  to_register2_dout_net <= to_register2_dout;
  to_register3_dout_net <= to_register3_dout;
  to_register4_dout_net <= to_register4_dout(0);
  to_register5_dout_net <= to_register5_dout(0);
  to_register6_dout_net <= to_register6_dout;
  to_register7_dout_net <= to_register7_dout(0);
  to_register8_dout_net <= to_register8_dout;
  to_register9_dout_net <= to_register9_dout;
  to_register_dout_net <= to_register_dout;
  bram_rd_addr <= bram_rd_addr_net;
  bram_wr_addr <= bram_wr_addr_net;
  bram_wr_din <= bram_wr_din_net;
  bram_wr_en <= bram_wr_en_net;
  fifo_rd_en <= fifo_rd_en_net;
  fifo_wr_din <= fifo_wr_din_net;
  fifo_wr_en <= fifo_wr_en_net;
  rst_o <= rst_o_net;
  to_register10_ce <= ce_1_sg_x0;
  to_register10_clk <= clk_1_sg_x0;
  to_register10_clr <= '0';
  to_register10_data_in(0) <= data_in_x1_net;
  to_register10_en(0) <= constant6_op_net_x2;
  to_register11_ce <= ce_1_sg_x0;
  to_register11_clk <= clk_1_sg_x0;
  to_register11_clr <= '0';
  to_register11_data_in(0) <= data_in_x2_net;
  to_register11_en(0) <= constant6_op_net_x3;
  to_register12_ce <= ce_1_sg_x0;
  to_register12_clk <= clk_1_sg_x0;
  to_register12_clr <= '0';
  to_register12_data_in(0) <= data_in_x3_net;
  to_register12_en(0) <= constant6_op_net_x4;
  to_register13_ce <= ce_1_sg_x0;
  to_register13_clk <= clk_1_sg_x0;
  to_register13_clr <= '0';
  to_register13_data_in <= data_in_x4_net;
  to_register13_en(0) <= constant6_op_net_x5;
  to_register14_ce <= ce_1_sg_x0;
  to_register14_clk <= clk_1_sg_x0;
  to_register14_clr <= '0';
  to_register14_data_in(0) <= data_in_x5_net;
  to_register14_en(0) <= constant6_op_net_x6;
  to_register15_ce <= ce_1_sg_x0;
  to_register15_clk <= clk_1_sg_x0;
  to_register15_clr <= '0';
  to_register15_data_in <= data_in_x6_net;
  to_register15_en(0) <= constant6_op_net_x7;
  to_register16_ce <= ce_1_sg_x0;
  to_register16_clk <= clk_1_sg_x0;
  to_register16_clr <= '0';
  to_register16_data_in(0) <= data_in_x7_net;
  to_register16_en(0) <= constant6_op_net_x8;
  to_register17_ce <= ce_1_sg_x0;
  to_register17_clk <= clk_1_sg_x0;
  to_register17_clr <= '0';
  to_register17_data_in <= data_in_x8_net;
  to_register17_en(0) <= constant6_op_net_x9;
  to_register18_ce <= ce_1_sg_x0;
  to_register18_clk <= clk_1_sg_x0;
  to_register18_clr <= '0';
  to_register18_data_in(0) <= data_in_x9_net;
  to_register18_en(0) <= constant6_op_net_x10;
  to_register19_ce <= ce_1_sg_x0;
  to_register19_clk <= clk_1_sg_x0;
  to_register19_clr <= '0';
  to_register19_data_in <= data_in_x10_net;
  to_register19_en(0) <= constant6_op_net_x11;
  to_register1_ce <= ce_1_sg_x0;
  to_register1_clk <= clk_1_sg_x0;
  to_register1_clr <= '0';
  to_register1_data_in(0) <= data_in_x0_net;
  to_register1_en(0) <= constant6_op_net_x1;
  to_register20_ce <= ce_1_sg_x0;
  to_register20_clk <= clk_1_sg_x0;
  to_register20_clr <= '0';
  to_register20_data_in(0) <= data_in_x12_net;
  to_register20_en(0) <= constant6_op_net_x13;
  to_register21_ce <= ce_1_sg_x0;
  to_register21_clk <= clk_1_sg_x0;
  to_register21_clr <= '0';
  to_register21_data_in <= data_in_x13_net;
  to_register21_en(0) <= constant6_op_net_x14;
  to_register22_ce <= ce_1_sg_x0;
  to_register22_clk <= clk_1_sg_x0;
  to_register22_clr <= '0';
  to_register22_data_in(0) <= data_in_x14_net;
  to_register22_en(0) <= constant6_op_net_x15;
  to_register23_ce <= ce_1_sg_x0;
  to_register23_clk <= clk_1_sg_x0;
  to_register23_clr <= '0';
  to_register23_data_in <= data_in_x15_net;
  to_register23_en(0) <= constant6_op_net_x16;
  to_register24_ce <= ce_1_sg_x0;
  to_register24_clk <= clk_1_sg_x0;
  to_register24_clr <= '0';
  to_register24_data_in(0) <= data_in_x16_net;
  to_register24_en(0) <= constant6_op_net_x17;
  to_register25_ce <= ce_1_sg_x0;
  to_register25_clk <= clk_1_sg_x0;
  to_register25_clr <= '0';
  to_register25_data_in <= data_in_x17_net;
  to_register25_en(0) <= constant6_op_net_x18;
  to_register26_ce <= ce_1_sg_x0;
  to_register26_clk <= clk_1_sg_x0;
  to_register26_clr <= '0';
  to_register26_data_in(0) <= data_in_x18_net;
  to_register26_en(0) <= constant6_op_net_x19;
  to_register27_ce <= ce_1_sg_x0;
  to_register27_clk <= clk_1_sg_x0;
  to_register27_clr <= '0';
  to_register27_data_in <= data_in_x19_net;
  to_register27_en(0) <= constant6_op_net_x20;
  to_register2_ce <= ce_1_sg_x0;
  to_register2_clk <= clk_1_sg_x0;
  to_register2_clr <= '0';
  to_register2_data_in <= data_in_x11_net;
  to_register2_en(0) <= constant6_op_net_x12;
  to_register3_ce <= ce_1_sg_x0;
  to_register3_clk <= clk_1_sg_x0;
  to_register3_clr <= '0';
  to_register3_data_in <= data_in_x20_net;
  to_register3_en(0) <= constant6_op_net_x21;
  to_register4_ce <= ce_1_sg_x0;
  to_register4_clk <= clk_1_sg_x0;
  to_register4_clr <= '0';
  to_register4_data_in(0) <= data_in_x21_net;
  to_register4_en(0) <= constant6_op_net_x22;
  to_register5_ce <= ce_1_sg_x0;
  to_register5_clk <= clk_1_sg_x0;
  to_register5_clr <= '0';
  to_register5_data_in(0) <= data_in_x22_net;
  to_register5_en(0) <= constant6_op_net_x23;
  to_register6_ce <= ce_1_sg_x0;
  to_register6_clk <= clk_1_sg_x0;
  to_register6_clr <= '0';
  to_register6_data_in <= data_in_x23_net;
  to_register6_en(0) <= constant6_op_net_x24;
  to_register7_ce <= ce_1_sg_x0;
  to_register7_clk <= clk_1_sg_x0;
  to_register7_clr <= '0';
  to_register7_data_in(0) <= data_in_x24_net;
  to_register7_en(0) <= constant6_op_net_x25;
  to_register8_ce <= ce_1_sg_x0;
  to_register8_clk <= clk_1_sg_x0;
  to_register8_clr <= '0';
  to_register8_data_in <= data_in_x25_net;
  to_register8_en(0) <= constant6_op_net_x26;
  to_register9_ce <= ce_1_sg_x0;
  to_register9_clk <= clk_1_sg_x0;
  to_register9_clr <= '0';
  to_register9_data_in <= data_in_x26_net;
  to_register9_en(0) <= constant6_op_net_x27;
  to_register_ce <= ce_1_sg_x0;
  to_register_clk <= clk_1_sg_x0;
  to_register_clr <= '0';
  to_register_data_in <= data_in_net;
  to_register_en(0) <= constant6_op_net_x0;
  user_int_1o <= user_int_1o_net;
  user_int_2o <= user_int_2o_net;
  user_int_3o <= user_int_3o_net;

  default_clock_driver_x0: entity work.default_clock_driver
    port map (
      sysce => '1',
      sysce_clr => '0',
      sysclk => clkNet,
      ce_1 => ce_1_sg_x0,
      clk_1 => clk_1_sg_x0
    );

  persistentdff_inst: xlpersistentdff
    port map (
      clk => clkNet,
      d => persistentdff_inst_q,
      q => persistentdff_inst_q
    );

  user_logic_x0: entity work.user_logic
    port map (
      bram_rd_dout => bram_rd_dout_net,
      ce_1 => ce_1_sg_x0,
      clk_1 => clk_1_sg_x0,
      data_out_x1 => data_out_x1_net,
      data_out_x12 => data_out_x12_net,
      data_out_x13 => data_out_x13_net,
      data_out_x14 => data_out_x14_net,
      data_out_x15 => data_out_x15_net,
      data_out_x16 => data_out_x16_net,
      data_out_x17 => data_out_x17_net,
      data_out_x18 => data_out_x18_net,
      data_out_x19 => data_out_x19_net,
      data_out_x2 => data_out_x2_net,
      data_out_x20 => data_out_x20_net,
      data_out_x21 => data_out_x21_net,
      data_out_x22 => data_out_x22_net,
      data_out_x23 => data_out_x23_net,
      data_out_x24 => data_out_x24_net,
      data_out_x25 => data_out_x25_net,
      data_out_x26 => data_out_x26_net,
      data_out_x27 => data_out_x27_net,
      data_out_x28 => data_out_x28_net,
      data_out_x29 => data_out_x29_net,
      data_out_x3 => data_out_x3_net,
      data_out_x30 => data_out_x30_net,
      data_out_x31 => data_out_x31_net,
      data_out_x32 => data_out_x32_net,
      data_out_x4 => data_out_x4_net,
      data_out_x5 => data_out_x5_net,
      data_out_x8 => data_out_x8_net,
      data_out_x9 => data_out_x9_net,
      fifo_rd_count_x0 => fifo_rd_count_net,
      fifo_rd_dout => fifo_rd_dout_net,
      fifo_rd_empty => fifo_rd_empty_net,
      fifo_rd_pempty_x0 => fifo_rd_pempty_net,
      fifo_rd_valid => fifo_rd_valid_net,
      fifo_wr_count_x0 => fifo_wr_count_net,
      fifo_wr_full_x0 => fifo_wr_full_net,
      fifo_wr_pfull_x0 => fifo_wr_pfull_net,
      rst_i => rst_i_net,
      bram_rd_addr => bram_rd_addr_net,
      bram_wr_addr => bram_wr_addr_net,
      bram_wr_din => bram_wr_din_net,
      bram_wr_en => bram_wr_en_net,
      data_in => data_in_net,
      data_in_x0 => data_in_x0_net,
      data_in_x1 => data_in_x1_net,
      data_in_x10 => data_in_x10_net,
      data_in_x11 => data_in_x11_net,
      data_in_x12 => data_in_x12_net,
      data_in_x13 => data_in_x13_net,
      data_in_x14 => data_in_x14_net,
      data_in_x15 => data_in_x15_net,
      data_in_x16 => data_in_x16_net,
      data_in_x17 => data_in_x17_net,
      data_in_x18 => data_in_x18_net,
      data_in_x19 => data_in_x19_net,
      data_in_x2 => data_in_x2_net,
      data_in_x20 => data_in_x20_net,
      data_in_x21 => data_in_x21_net,
      data_in_x22 => data_in_x22_net,
      data_in_x23 => data_in_x23_net,
      data_in_x24 => data_in_x24_net,
      data_in_x25 => data_in_x25_net,
      data_in_x26 => data_in_x26_net,
      data_in_x3 => data_in_x3_net,
      data_in_x4 => data_in_x4_net,
      data_in_x5 => data_in_x5_net,
      data_in_x6 => data_in_x6_net,
      data_in_x7 => data_in_x7_net,
      data_in_x8 => data_in_x8_net,
      data_in_x9 => data_in_x9_net,
      en => constant6_op_net_x0,
      en_x0 => constant6_op_net_x1,
      en_x1 => constant6_op_net_x2,
      en_x10 => constant6_op_net_x11,
      en_x11 => constant6_op_net_x12,
      en_x12 => constant6_op_net_x13,
      en_x13 => constant6_op_net_x14,
      en_x14 => constant6_op_net_x15,
      en_x15 => constant6_op_net_x16,
      en_x16 => constant6_op_net_x17,
      en_x17 => constant6_op_net_x18,
      en_x18 => constant6_op_net_x19,
      en_x19 => constant6_op_net_x20,
      en_x2 => constant6_op_net_x3,
      en_x20 => constant6_op_net_x21,
      en_x21 => constant6_op_net_x22,
      en_x22 => constant6_op_net_x23,
      en_x23 => constant6_op_net_x24,
      en_x24 => constant6_op_net_x25,
      en_x25 => constant6_op_net_x26,
      en_x26 => constant6_op_net_x27,
      en_x3 => constant6_op_net_x4,
      en_x4 => constant6_op_net_x5,
      en_x5 => constant6_op_net_x6,
      en_x6 => constant6_op_net_x7,
      en_x7 => constant6_op_net_x8,
      en_x8 => constant6_op_net_x9,
      en_x9 => constant6_op_net_x10,
      fifo_rd_en_x1 => fifo_rd_en_net,
      fifo_wr_din => fifo_wr_din_net,
      fifo_wr_en_x0 => fifo_wr_en_net,
      rst_o => rst_o_net,
      user_int_1o => user_int_1o_net,
      user_int_2o => user_int_2o_net,
      user_int_3o => user_int_3o_net
    );

end structural;
