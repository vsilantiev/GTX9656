library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "USER_LOGIC"

entity user_logic is
  port (
    bram_rd_dout: in std_logic_vector(63 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_out_x1: in std_logic; 
    data_out_x12: in std_logic_vector(31 downto 0); 
    data_out_x13: in std_logic; 
    data_out_x14: in std_logic_vector(31 downto 0); 
    data_out_x15: in std_logic; 
    data_out_x16: in std_logic_vector(31 downto 0); 
    data_out_x17: in std_logic; 
    data_out_x18: in std_logic_vector(31 downto 0); 
    data_out_x19: in std_logic; 
    data_out_x2: in std_logic_vector(31 downto 0); 
    data_out_x20: in std_logic_vector(31 downto 0); 
    data_out_x21: in std_logic; 
    data_out_x22: in std_logic_vector(31 downto 0); 
    data_out_x23: in std_logic_vector(31 downto 0); 
    data_out_x24: in std_logic; 
    data_out_x25: in std_logic_vector(31 downto 0); 
    data_out_x26: in std_logic; 
    data_out_x27: in std_logic; 
    data_out_x28: in std_logic_vector(31 downto 0); 
    data_out_x29: in std_logic; 
    data_out_x3: in std_logic; 
    data_out_x30: in std_logic_vector(31 downto 0); 
    data_out_x31: in std_logic; 
    data_out_x32: in std_logic_vector(31 downto 0); 
    data_out_x4: in std_logic_vector(31 downto 0); 
    data_out_x5: in std_logic; 
    data_out_x8: in std_logic_vector(31 downto 0); 
    data_out_x9: in std_logic; 
    fifo_rd_count_x0: in std_logic_vector(14 downto 0); 
    fifo_rd_dout: in std_logic_vector(71 downto 0); 
    fifo_rd_empty: in std_logic; 
    fifo_rd_pempty_x0: in std_logic; 
    fifo_rd_valid: in std_logic; 
    fifo_wr_count_x0: in std_logic_vector(14 downto 0); 
    fifo_wr_full_x0: in std_logic; 
    fifo_wr_pfull_x0: in std_logic; 
    rst_i: in std_logic; 
    bram_rd_addr: out std_logic_vector(11 downto 0); 
    bram_wr_addr: out std_logic_vector(11 downto 0); 
    bram_wr_din: out std_logic_vector(63 downto 0); 
    bram_wr_en: out std_logic_vector(7 downto 0); 
    data_in: out std_logic_vector(31 downto 0); 
    data_in_x0: out std_logic; 
    data_in_x1: out std_logic; 
    data_in_x10: out std_logic_vector(31 downto 0); 
    data_in_x11: out std_logic_vector(31 downto 0); 
    data_in_x12: out std_logic; 
    data_in_x13: out std_logic_vector(31 downto 0); 
    data_in_x14: out std_logic; 
    data_in_x15: out std_logic_vector(31 downto 0); 
    data_in_x16: out std_logic; 
    data_in_x17: out std_logic_vector(31 downto 0); 
    data_in_x18: out std_logic; 
    data_in_x19: out std_logic_vector(31 downto 0); 
    data_in_x2: out std_logic; 
    data_in_x20: out std_logic_vector(31 downto 0); 
    data_in_x21: out std_logic; 
    data_in_x22: out std_logic; 
    data_in_x23: out std_logic_vector(31 downto 0); 
    data_in_x24: out std_logic; 
    data_in_x25: out std_logic_vector(31 downto 0); 
    data_in_x26: out std_logic_vector(31 downto 0); 
    data_in_x3: out std_logic; 
    data_in_x4: out std_logic_vector(31 downto 0); 
    data_in_x5: out std_logic; 
    data_in_x6: out std_logic_vector(31 downto 0); 
    data_in_x7: out std_logic; 
    data_in_x8: out std_logic_vector(31 downto 0); 
    data_in_x9: out std_logic; 
    en: out std_logic; 
    en_x0: out std_logic; 
    en_x1: out std_logic; 
    en_x10: out std_logic; 
    en_x11: out std_logic; 
    en_x12: out std_logic; 
    en_x13: out std_logic; 
    en_x14: out std_logic; 
    en_x15: out std_logic; 
    en_x16: out std_logic; 
    en_x17: out std_logic; 
    en_x18: out std_logic; 
    en_x19: out std_logic; 
    en_x2: out std_logic; 
    en_x20: out std_logic; 
    en_x21: out std_logic; 
    en_x22: out std_logic; 
    en_x23: out std_logic; 
    en_x24: out std_logic; 
    en_x25: out std_logic; 
    en_x26: out std_logic; 
    en_x3: out std_logic; 
    en_x4: out std_logic; 
    en_x5: out std_logic; 
    en_x6: out std_logic; 
    en_x7: out std_logic; 
    en_x8: out std_logic; 
    en_x9: out std_logic; 
    fifo_rd_en_x1: out std_logic; 
    fifo_wr_din: out std_logic_vector(71 downto 0); 
    fifo_wr_en_x0: out std_logic; 
    rst_o: out std_logic; 
    user_int_1o: out std_logic; 
    user_int_2o: out std_logic; 
    user_int_3o: out std_logic
  );
end user_logic;

architecture structural of user_logic is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "PCIe_UserLogic_00,sysgen_core,{clock_period=5.00000000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=351,xilinx_chipscope_block=1,xilinx_constant_block_block=23,xilinx_counter_block=1,xilinx_gateway_in_block=44,xilinx_gateway_out_block=39,xilinx_inverter_block=2,xilinx_logical_block_block=1,xilinx_register_block=89,xilinx_shared_memory_based_from_register_block=62,xilinx_shared_memory_based_to_register_block=62,xilinx_subsystem_generator_block=1,xilinx_system_generator_block=2,xilinx_type_converter_block=14,}";

  signal bram_addr: std_logic_vector(11 downto 0);
  signal bram_addr_x0: std_logic_vector(11 downto 0);
  signal bram_data: std_logic_vector(63 downto 0);
  signal bram_rd_addr_net: std_logic_vector(11 downto 0);
  signal bram_rd_dout_net: std_logic_vector(63 downto 0);
  signal bram_wr_addr_net: std_logic_vector(11 downto 0);
  signal bram_wr_din_net: std_logic_vector(63 downto 0);
  signal bram_wr_en_net: std_logic_vector(7 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal constant10_op_net: std_logic;
  signal constant11_op_net: std_logic;
  signal constant12_op_net: std_logic;
  signal constant14_op_net: std_logic;
  signal constant15_op_net: std_logic;
  signal constant19_op_net: std_logic;
  signal constant1_op_net: std_logic;
  signal constant20_op_net: std_logic;
  signal constant21_op_net: std_logic;
  signal constant22_op_net: std_logic;
  signal constant23_op_net: std_logic;
  signal constant24_op_net: std_logic;
  signal constant25_op_net: std_logic;
  signal constant26_op_net: std_logic;
  signal constant2_op_net: std_logic_vector(7 downto 0);
  signal constant3_op_net: std_logic;
  signal constant4_op_net: std_logic;
  signal constant6_op_net_x0: std_logic;
  signal constant7_op_net: std_logic;
  signal constant8_op_net: std_logic;
  signal constant9_op_net: std_logic;
  signal convert11_dout_net: std_logic;
  signal convert12_dout_net: std_logic;
  signal convert14_dout_net: std_logic;
  signal convert15_dout_net: std_logic;
  signal convert16_dout_net: std_logic;
  signal convert17_dout_net: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert4_dout_net: std_logic;
  signal convert5_dout_net: std_logic;
  signal convert6_dout_net: std_logic;
  signal convert7_dout_net: std_logic;
  signal convert8_dout_net: std_logic;
  signal counter4_op_net: std_logic_vector(11 downto 0);
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
  signal dinb: std_logic_vector(31 downto 0);
  signal dinb_x0: std_logic_vector(31 downto 0);
  signal fifo_data_in_out: std_logic_vector(71 downto 0);
  signal fifo_empty: std_logic;
  signal fifo_empty_x0: std_logic;
  signal fifo_rd_count: std_logic_vector(14 downto 0);
  signal fifo_rd_count_net: std_logic_vector(14 downto 0);
  signal fifo_rd_dout_net: std_logic_vector(71 downto 0);
  signal fifo_rd_empty_net: std_logic;
  signal fifo_rd_en: std_logic;
  signal fifo_rd_en_net: std_logic;
  signal fifo_rd_en_x0: std_logic;
  signal fifo_rd_pempty: std_logic;
  signal fifo_rd_pempty_net: std_logic;
  signal fifo_rd_valid_net: std_logic;
  signal fifo_wr_count: std_logic_vector(14 downto 0);
  signal fifo_wr_count_net: std_logic_vector(14 downto 0);
  signal fifo_wr_din_net: std_logic_vector(71 downto 0);
  signal fifo_wr_en: std_logic;
  signal fifo_wr_en_net: std_logic;
  signal fifo_wr_full: std_logic;
  signal fifo_wr_full_net: std_logic;
  signal fifo_wr_pfull: std_logic;
  signal fifo_wr_pfull_net: std_logic;
  signal inverter3_op_net: std_logic;
  signal inverter5_op_net: std_logic;
  signal rst_i_net: std_logic;
  signal rst_o_net: std_logic;
  signal timecountreset: std_logic;
  signal timecounttrigger: std_logic;
  signal tx_en_in107_q_net: std_logic;
  signal tx_en_in116_q_net: std_logic;
  signal tx_en_in117_q_net: std_logic_vector(31 downto 0);
  signal tx_en_in119_q_net: std_logic;
  signal tx_en_in120_q_net: std_logic_vector(31 downto 0);
  signal tx_en_in123_q_net: std_logic;
  signal tx_en_in124_q_net: std_logic_vector(31 downto 0);
  signal tx_en_in127_q_net: std_logic;
  signal tx_en_in128_q_net: std_logic_vector(31 downto 0);
  signal tx_en_in12_q_net: std_logic_vector(31 downto 0);
  signal tx_en_in17_q_net: std_logic_vector(11 downto 0);
  signal tx_en_in18_q_net: std_logic_vector(7 downto 0);
  signal tx_en_in30_q_net: std_logic_vector(11 downto 0);
  signal tx_en_in4_q_net: std_logic;
  signal tx_en_in52_q_net: std_logic_vector(31 downto 0);
  signal tx_en_in58_q_net: std_logic;
  signal tx_en_in59_q_net: std_logic;
  signal tx_en_in5_q_net: std_logic;
  signal tx_en_in60_q_net: std_logic_vector(31 downto 0);
  signal tx_en_in61_q_net: std_logic;
  signal tx_en_in65_q_net: std_logic_vector(31 downto 0);
  signal tx_en_in67_q_net: std_logic;
  signal tx_en_in6_q_net: std_logic_vector(31 downto 0);
  signal tx_en_in86_q_net: std_logic;
  signal tx_en_in87_q_net: std_logic_vector(31 downto 0);
  signal tx_en_in89_q_net: std_logic;
  signal tx_en_in8_q_net: std_logic;
  signal tx_en_in90_q_net: std_logic_vector(31 downto 0);
  signal tx_en_in92_q_net: std_logic;
  signal tx_en_in93_q_net: std_logic_vector(31 downto 0);
  signal user_int_1o_net: std_logic;
  signal user_int_2o_net: std_logic;
  signal user_int_3o_net: std_logic;

begin
  bram_rd_dout_net <= bram_rd_dout;
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  data_out_x1_net <= data_out_x1;
  data_out_x12_net <= data_out_x12;
  data_out_x13_net <= data_out_x13;
  data_out_x14_net <= data_out_x14;
  data_out_x15_net <= data_out_x15;
  data_out_x16_net <= data_out_x16;
  data_out_x17_net <= data_out_x17;
  data_out_x18_net <= data_out_x18;
  data_out_x19_net <= data_out_x19;
  data_out_x2_net <= data_out_x2;
  data_out_x20_net <= data_out_x20;
  data_out_x21_net <= data_out_x21;
  data_out_x22_net <= data_out_x22;
  data_out_x23_net <= data_out_x23;
  data_out_x24_net <= data_out_x24;
  data_out_x25_net <= data_out_x25;
  data_out_x26_net <= data_out_x26;
  data_out_x27_net <= data_out_x27;
  data_out_x28_net <= data_out_x28;
  data_out_x29_net <= data_out_x29;
  data_out_x3_net <= data_out_x3;
  data_out_x30_net <= data_out_x30;
  data_out_x31_net <= data_out_x31;
  data_out_x32_net <= data_out_x32;
  data_out_x4_net <= data_out_x4;
  data_out_x5_net <= data_out_x5;
  data_out_x8_net <= data_out_x8;
  data_out_x9_net <= data_out_x9;
  fifo_rd_count_net <= fifo_rd_count_x0;
  fifo_rd_dout_net <= fifo_rd_dout;
  fifo_rd_empty_net <= fifo_rd_empty;
  fifo_rd_pempty_net <= fifo_rd_pempty_x0;
  fifo_rd_valid_net <= fifo_rd_valid;
  fifo_wr_count_net <= fifo_wr_count_x0;
  fifo_wr_full_net <= fifo_wr_full_x0;
  fifo_wr_pfull_net <= fifo_wr_pfull_x0;
  rst_i_net <= rst_i;
  bram_rd_addr <= bram_rd_addr_net;
  bram_wr_addr <= bram_wr_addr_net;
  bram_wr_din <= bram_wr_din_net;
  bram_wr_en <= bram_wr_en_net;
  data_in <= data_in_net;
  data_in_x0 <= data_in_x0_net;
  data_in_x1 <= data_in_x1_net;
  data_in_x10 <= data_in_x10_net;
  data_in_x11 <= data_in_x11_net;
  data_in_x12 <= data_in_x12_net;
  data_in_x13 <= data_in_x13_net;
  data_in_x14 <= data_in_x14_net;
  data_in_x15 <= data_in_x15_net;
  data_in_x16 <= data_in_x16_net;
  data_in_x17 <= data_in_x17_net;
  data_in_x18 <= data_in_x18_net;
  data_in_x19 <= data_in_x19_net;
  data_in_x2 <= data_in_x2_net;
  data_in_x20 <= data_in_x20_net;
  data_in_x21 <= data_in_x21_net;
  data_in_x22 <= data_in_x22_net;
  data_in_x23 <= data_in_x23_net;
  data_in_x24 <= data_in_x24_net;
  data_in_x25 <= data_in_x25_net;
  data_in_x26 <= data_in_x26_net;
  data_in_x3 <= data_in_x3_net;
  data_in_x4 <= data_in_x4_net;
  data_in_x5 <= data_in_x5_net;
  data_in_x6 <= data_in_x6_net;
  data_in_x7 <= data_in_x7_net;
  data_in_x8 <= data_in_x8_net;
  data_in_x9 <= data_in_x9_net;
  en <= constant6_op_net_x0;
  en_x0 <= constant6_op_net_x0;
  en_x1 <= constant6_op_net_x0;
  en_x10 <= constant6_op_net_x0;
  en_x11 <= constant6_op_net_x0;
  en_x12 <= constant6_op_net_x0;
  en_x13 <= constant6_op_net_x0;
  en_x14 <= constant6_op_net_x0;
  en_x15 <= constant6_op_net_x0;
  en_x16 <= constant6_op_net_x0;
  en_x17 <= constant6_op_net_x0;
  en_x18 <= constant6_op_net_x0;
  en_x19 <= constant6_op_net_x0;
  en_x2 <= constant6_op_net_x0;
  en_x20 <= constant6_op_net_x0;
  en_x21 <= constant6_op_net_x0;
  en_x22 <= constant6_op_net_x0;
  en_x23 <= constant6_op_net_x0;
  en_x24 <= constant6_op_net_x0;
  en_x25 <= constant6_op_net_x0;
  en_x26 <= constant6_op_net_x0;
  en_x3 <= constant6_op_net_x0;
  en_x4 <= constant6_op_net_x0;
  en_x5 <= constant6_op_net_x0;
  en_x6 <= constant6_op_net_x0;
  en_x7 <= constant6_op_net_x0;
  en_x8 <= constant6_op_net_x0;
  en_x9 <= constant6_op_net_x0;
  fifo_rd_en_x1 <= fifo_rd_en_net;
  fifo_wr_din <= fifo_wr_din_net;
  fifo_wr_en_x0 <= fifo_wr_en_net;
  rst_o <= rst_o_net;
  user_int_1o <= user_int_1o_net;
  user_int_2o <= user_int_2o_net;
  user_int_3o <= user_int_3o_net;

  chipscope: entity work.xlchipscope
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      trig0 => bram_addr,
      trig1 => bram_data,
      trig10 => fifo_wr_count,
      trig2(0) => fifo_empty_x0,
      trig3(0) => fifo_rd_en_x0,
      trig4(0) => fifo_wr_en,
      trig5 => fifo_data_in_out,
      trig6(0) => fifo_rd_pempty,
      trig7 => fifo_rd_count,
      trig8(0) => fifo_wr_full,
      trig9(0) => fifo_wr_pfull
    );

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant10: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant10_op_net
    );

  constant11: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant11_op_net
    );

  constant12: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant12_op_net
    );

  constant14: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant14_op_net
    );

  constant15: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant15_op_net
    );

  constant19: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant19_op_net
    );

  constant2: entity work.constant_19562ab42f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant20: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant20_op_net
    );

  constant21: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant21_op_net
    );

  constant22: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant22_op_net
    );

  constant23: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant23_op_net
    );

  constant24: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant24_op_net
    );

  constant25: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant25_op_net
    );

  constant26: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant26_op_net
    );

  constant3: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant4: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant4_op_net
    );

  constant6: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant6_op_net_x0
    );

  constant7: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant7_op_net
    );

  constant8: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant8_op_net
    );

  constant9: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant9_op_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in5_q_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  convert11: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in89_q_net,
      en => "1",
      dout(0) => convert11_dout_net
    );

  convert12: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in92_q_net,
      en => "1",
      dout(0) => convert12_dout_net
    );

  convert14: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in116_q_net,
      en => "1",
      dout(0) => convert14_dout_net
    );

  convert15: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in119_q_net,
      en => "1",
      dout(0) => convert15_dout_net
    );

  convert16: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in123_q_net,
      en => "1",
      dout(0) => convert16_dout_net
    );

  convert17: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in127_q_net,
      en => "1",
      dout(0) => convert17_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in4_q_net,
      en => "1",
      dout(0) => timecountreset
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in86_q_net,
      en => "1",
      dout(0) => convert4_dout_net
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in58_q_net,
      en => "1",
      dout(0) => convert5_dout_net
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in59_q_net,
      en => "1",
      dout(0) => convert6_dout_net
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in61_q_net,
      en => "1",
      dout(0) => convert7_dout_net
    );

  convert8: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in67_q_net,
      en => "1",
      dout(0) => convert8_dout_net
    );

  convert9: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => tx_en_in8_q_net,
      en => "1",
      dout(0) => timecounttrigger
    );

  counter4: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_341fbb8cfa0e669e",
      op_arith => xlUnsigned,
      op_width => 12
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter4_op_net
    );

  inverter3: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => rst_i_net,
      op(0) => inverter3_op_net
    );

  inverter5: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => tx_en_in107_q_net,
      op(0) => inverter5_op_net
    );

  logical4: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant15_op_net,
      d1(0) => inverter5_op_net,
      y(0) => fifo_rd_en
    );

  tx_en_in1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => timecountreset,
      en => "1",
      rst => "0",
      q(0) => data_in_x0_net
    );

  tx_en_in10: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in12_q_net,
      en(0) => timecounttrigger,
      rst(0) => constant3_op_net,
      q => data_in_x20_net
    );

  tx_en_in100: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert12_dout_net,
      en => "1",
      rst => "0",
      q(0) => data_in_x9_net
    );

  tx_en_in105: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => fifo_rd_empty_net,
      en => "1",
      rst => "0",
      q(0) => fifo_empty
    );

  tx_en_in107: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => fifo_empty,
      en => "1",
      rst => "0",
      q(0) => tx_en_in107_q_net
    );

  tx_en_in108: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => fifo_rd_en,
      en(0) => constant14_op_net,
      rst => "0",
      q(0) => fifo_rd_en_net
    );

  tx_en_in109: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => fifo_rd_valid_net,
      en => "1",
      rst => "0",
      q(0) => fifo_wr_en_net
    );

  tx_en_in11: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => bram_addr_x0,
      en => "1",
      rst => "0",
      q => bram_addr
    );

  tx_en_in113: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert14_dout_net,
      en => "1",
      rst => "0",
      q(0) => data_in_x12_net
    );

  tx_en_in114: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert15_dout_net,
      en => "1",
      rst => "0",
      q(0) => data_in_x14_net
    );

  tx_en_in115: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000110000110100100011"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in117_q_net,
      en(0) => convert14_dout_net,
      rst(0) => constant19_op_net,
      q => data_in_x13_net
    );

  tx_en_in116: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x19_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in116_q_net
    );

  tx_en_in117: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x18_net,
      en => "1",
      rst => "0",
      q => tx_en_in117_q_net
    );

  tx_en_in118: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000100101011000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in120_q_net,
      en(0) => convert15_dout_net,
      rst(0) => constant21_op_net,
      q => data_in_x15_net
    );

  tx_en_in119: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x21_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in119_q_net
    );

  tx_en_in12: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x30_net,
      en => "1",
      rst => "0",
      q => tx_en_in12_q_net
    );

  tx_en_in120: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x20_net,
      en => "1",
      rst => "0",
      q => tx_en_in120_q_net
    );

  tx_en_in121: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert16_dout_net,
      en => "1",
      rst => "0",
      q(0) => data_in_x16_net
    );

  tx_en_in122: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in124_q_net,
      en(0) => convert16_dout_net,
      rst(0) => constant22_op_net,
      q => data_in_x17_net
    );

  tx_en_in123: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x24_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in123_q_net
    );

  tx_en_in124: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x23_net,
      en => "1",
      rst => "0",
      q => tx_en_in124_q_net
    );

  tx_en_in125: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert17_dout_net,
      en => "1",
      rst => "0",
      q(0) => data_in_x18_net
    );

  tx_en_in126: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in128_q_net,
      en(0) => convert17_dout_net,
      rst(0) => constant23_op_net,
      q => data_in_x19_net
    );

  tx_en_in127: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x26_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in127_q_net
    );

  tx_en_in128: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x25_net,
      en => "1",
      rst => "0",
      q => tx_en_in128_q_net
    );

  tx_en_in13: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert8_dout_net,
      en => "1",
      rst => "0",
      q(0) => data_in_x3_net
    );

  tx_en_in14: entity work.xlregister
    generic map (
      d_width => 64,
      init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => bram_rd_dout_net,
      en => "1",
      rst => "0",
      q => bram_data
    );

  tx_en_in15: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => counter4_op_net,
      en => "1",
      rst => "0",
      q => bram_rd_addr_net
    );

  tx_en_in16: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in30_q_net,
      en => "1",
      rst => "0",
      q => bram_addr_x0
    );

  tx_en_in17: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => counter4_op_net,
      en => "1",
      rst => "0",
      q => tx_en_in17_q_net
    );

  tx_en_in18: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => constant2_op_net,
      en => "1",
      rst => "0",
      q => tx_en_in18_q_net
    );

  tx_en_in19: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => bram_addr_x0,
      en => "1",
      rst => "0",
      q => bram_wr_addr_net
    );

  tx_en_in2: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => dinb_x0,
      en(0) => timecountreset,
      rst(0) => constant1_op_net,
      q => data_in_net
    );

  tx_en_in20: entity work.xlregister
    generic map (
      d_width => 64,
      init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => bram_rd_dout_net,
      en => "1",
      rst => "0",
      q => bram_wr_din_net
    );

  tx_en_in21: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => fifo_empty,
      en => "1",
      rst => "0",
      q(0) => fifo_empty_x0
    );

  tx_en_in22: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => fifo_rd_en,
      en => "1",
      rst => "0",
      q(0) => fifo_rd_en_x0
    );

  tx_en_in23: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => fifo_rd_valid_net,
      en => "1",
      rst => "0",
      q(0) => fifo_wr_en
    );

  tx_en_in24: entity work.xlregister
    generic map (
      d_width => 72,
      init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => fifo_rd_dout_net,
      en => "1",
      rst => "0",
      q => fifo_data_in_out
    );

  tx_en_in25: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => fifo_rd_pempty_net,
      en => "1",
      rst => "0",
      q(0) => fifo_rd_pempty
    );

  tx_en_in26: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => inverter3_op_net,
      en => "1",
      rst => "0",
      q(0) => rst_o_net
    );

  tx_en_in27: entity work.xlregister
    generic map (
      d_width => 15,
      init_value => b"000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => fifo_rd_count_net,
      en => "1",
      rst => "0",
      q => fifo_rd_count
    );

  tx_en_in28: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => fifo_wr_full_net,
      en => "1",
      rst => "0",
      q(0) => fifo_wr_full
    );

  tx_en_in29: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => fifo_wr_pfull_net,
      en => "1",
      rst => "0",
      q(0) => fifo_wr_pfull
    );

  tx_en_in3: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => constant8_op_net,
      en => "1",
      rst => "0",
      q(0) => user_int_1o_net
    );

  tx_en_in30: entity work.xlregister
    generic map (
      d_width => 12,
      init_value => b"000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in17_q_net,
      en => "1",
      rst => "0",
      q => tx_en_in30_q_net
    );

  tx_en_in31: entity work.xlregister
    generic map (
      d_width => 15,
      init_value => b"000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => fifo_wr_count_net,
      en => "1",
      rst => "0",
      q => fifo_wr_count
    );

  tx_en_in33: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in6_q_net,
      en(0) => convert1_dout_net,
      rst(0) => constant26_op_net,
      q => data_in_x11_net
    );

  tx_en_in38: entity work.xlregister
    generic map (
      d_width => 72,
      init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => fifo_rd_dout_net,
      en => "1",
      rst => "0",
      q => fifo_wr_din_net
    );

  tx_en_in4: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x27_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in4_q_net
    );

  tx_en_in43: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in18_q_net,
      en => "1",
      rst => "0",
      q => bram_wr_en_net
    );

  tx_en_in5: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x29_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in5_q_net
    );

  tx_en_in50: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => dinb,
      en(0) => convert5_dout_net,
      rst(0) => constant25_op_net,
      q => data_in_x23_net
    );

  tx_en_in51: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => constant11_op_net,
      en => "1",
      rst => "0",
      q(0) => user_int_3o_net
    );

  tx_en_in52: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x4_net,
      en => "1",
      rst => "0",
      q => tx_en_in52_q_net
    );

  tx_en_in53: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in60_q_net,
      en(0) => convert6_dout_net,
      rst(0) => constant24_op_net,
      q => data_in_x25_net
    );

  tx_en_in54: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in52_q_net,
      en(0) => convert7_dout_net,
      rst(0) => constant20_op_net,
      q => data_in_x26_net
    );

  tx_en_in58: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x1_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in58_q_net
    );

  tx_en_in59: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x3_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in59_q_net
    );

  tx_en_in6: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x28_net,
      en => "1",
      rst => "0",
      q => tx_en_in6_q_net
    );

  tx_en_in60: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x2_net,
      en => "1",
      rst => "0",
      q => tx_en_in60_q_net
    );

  tx_en_in61: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x5_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in61_q_net
    );

  tx_en_in62: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x32_net,
      en => "1",
      rst => "0",
      q => dinb
    );

  tx_en_in65: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x8_net,
      en => "1",
      rst => "0",
      q => tx_en_in65_q_net
    );

  tx_en_in66: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in65_q_net,
      en(0) => convert8_dout_net,
      rst(0) => constant12_op_net,
      q => data_in_x4_net
    );

  tx_en_in67: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x9_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in67_q_net
    );

  tx_en_in7: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => timecounttrigger,
      en => "1",
      rst => "0",
      q(0) => data_in_x22_net
    );

  tx_en_in75: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => constant10_op_net,
      en => "1",
      rst => "0",
      q(0) => user_int_2o_net
    );

  tx_en_in8: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x31_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in8_q_net
    );

  tx_en_in85: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000001"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in87_q_net,
      en(0) => convert4_dout_net,
      rst(0) => constant7_op_net,
      q => data_in_x6_net
    );

  tx_en_in86: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x13_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in86_q_net
    );

  tx_en_in87: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x12_net,
      en => "1",
      rst => "0",
      q => tx_en_in87_q_net
    );

  tx_en_in88: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"10000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in90_q_net,
      en(0) => convert11_dout_net,
      rst(0) => constant4_op_net,
      q => data_in_x8_net
    );

  tx_en_in89: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x15_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in89_q_net
    );

  tx_en_in9: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x22_net,
      en => "1",
      rst => "0",
      q => dinb_x0
    );

  tx_en_in90: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x14_net,
      en => "1",
      rst => "0",
      q => tx_en_in90_q_net
    );

  tx_en_in91: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => tx_en_in93_q_net,
      en(0) => convert12_dout_net,
      rst(0) => constant9_op_net,
      q => data_in_x10_net
    );

  tx_en_in92: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => data_out_x17_net,
      en => "1",
      rst => "0",
      q(0) => tx_en_in92_q_net
    );

  tx_en_in93: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => data_out_x16_net,
      en => "1",
      rst => "0",
      q => tx_en_in93_q_net
    );

  tx_en_in94: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert1_dout_net,
      en => "1",
      rst => "0",
      q(0) => data_in_x21_net
    );

  tx_en_in95: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert5_dout_net,
      en => "1",
      rst => "0",
      q(0) => data_in_x24_net
    );

  tx_en_in96: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert6_dout_net,
      en => "1",
      rst => "0",
      q(0) => data_in_x1_net
    );

  tx_en_in97: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert7_dout_net,
      en => "1",
      rst => "0",
      q(0) => data_in_x2_net
    );

  tx_en_in98: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert4_dout_net,
      en => "1",
      rst => "0",
      q(0) => data_in_x5_net
    );

  tx_en_in99: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert11_dout_net,
      en => "1",
      rst => "0",
      q(0) => data_in_x7_net
    );

end structural;
