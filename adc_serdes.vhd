----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:22:07 11/20/2014 
-- Design Name: 
-- Module Name:    adc_serdes - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity adc_serdes is
generic
 (-- width of the data for the system
  sys_w       : integer := 9;
  -- width of the data for the device
  dev_w       : integer := 72);
port
 (
  -- From the system into the device
  DATA_IN_FROM_PINS_P     : in    std_logic_vector(sys_w-1 downto 0);
  DATA_IN_FROM_PINS_N     : in    std_logic_vector(sys_w-1 downto 0);
  DATA_IN_TO_DEVICE       : out   std_logic_vector(dev_w-1 downto 0);

  BITSLIP                 : in    std_logic;
-- Clock and reset signals
  CLK_IN                  : in    std_logic;                    -- Fast clock from PLL/MMCM 
  CLK_DIV_IN              : in    std_logic;                    -- Slow clock from PLL/MMCM
  LOCKED_IN               : in    std_logic;
  LOCKED_OUT              : out   std_logic;
  CLK_RESET               : in    std_logic;                    -- Reset signal for Clock circuit
  IO_RESET                : in    std_logic);                   -- Reset signal for IO circuit
end adc_serdes;

architecture Behavioral of adc_serdes is
  attribute CORE_GENERATION_INFO            : string;
  attribute CORE_GENERATION_INFO of Behavioral  : architecture is "adc_serdes,selectio_wiz_v2_0,{component_name=adc_serdes,bus_dir=INPUTS,bus_sig_type=DIFF,bus_io_std=LVDS_25,use_serialization=true,use_phase_detector=false,serialization_factor=8,enable_bitslip=true,enable_train=false,system_data_width=9,bus_in_delay=NONE,bus_out_delay=NONE,clk_sig_type=SINGLE,clk_io_std=LVCMOS25,clk_buf=BUFPLL,active_edge=RISING,clk_delay=NONE,v6_bus_in_delay=NONE,v6_bus_out_delay=NONE,v6_clk_buf=BUFIO,v6_active_edge=NOT_APP,v6_ddr_alignment=SAME_EDGE_PIPELINED,v6_oddr_alignment=SAME_EDGE,ddr_alignment=C0,v6_interface_type=NETWORKING,interface_type=RETIMED,v6_bus_in_tap=0,v6_bus_out_tap=0,v6_clk_io_std=LVCMOS18,v6_clk_sig_type=DIFF}";
  constant clock_enable            : std_logic := '1';
  signal clk_in_int_buf            : std_logic;
  signal clk_div_in_int            : std_logic;


  -- After the buffer
  signal data_in_from_pins_int     : std_logic_vector(sys_w-1 downto 0);
  -- Between the delay and serdes
  signal data_in_from_pins_delay   : std_logic_vector(sys_w-1 downto 0);


  constant num_serial_bits         : integer := dev_w/sys_w;
  type serdarr is array (0 to 7) of std_logic_vector(sys_w-1 downto 0);
  -- Array to use intermediately from the serdes to the internal
  --  devices. bus "0" is the leftmost bus
  -- * fills in starting with 0
  signal iserdes_q                : serdarr := (( others => (others => '0')));
  signal serdesstrobe             : std_logic;
  signal icascade                 : std_logic_vector(sys_w-1 downto 0);
  signal slave_shiftout           : std_logic_vector(sys_w-1 downto 0);



begin



  -- Create the clock logic

 --  bufpll_inst : BUFPLL
 --   generic map (
  --    DIVIDE        => 8)
  --  port map (
  --    IOCLK        => clk_in_int_buf,
  --    LOCK         => LOCKED_OUT,
  --    SERDESSTROBE => serdesstrobe,
  --    GCLK         => CLK_DIV_IN,  -- GCLK pin must be driven by BUFG
  --    LOCKED       => LOCKED_IN,
  --    PLLIN        => CLK_IN);

	
-- 	buffpll_inst : BUFR
--    generic map(
--    SIM_DEVICE => "7SERIES",
--    BUFR_DIVIDE => "8")
--    port map
--    (
--     O  	=> CLK_DIV_IN,
--     CE  => '1',
--     CLR => CLK_RESET,
--     I 	=> CLK_IN
--    );

	

	bufio_inst : BUFIO
   port map (
	 O => clk_in_int_buf,
  I => CLK_IN);

  -- We have multiple bits- step over every bit, instantiating the required elements
  pins: for pin_count in 0 to sys_w-1 generate 

   begin
    -- Instantiate the buffers
    ----------------------------------
    -- Instantiate a buffer for every bit of the data bus
     ibufds_inst : IBUFDS
       generic map (
         DIFF_TERM  => TRUE,             -- Differential termination
         IOSTANDARD => "LVDS_25")
       port map (
         I          => DATA_IN_FROM_PINS_P  (pin_count),
         IB         => DATA_IN_FROM_PINS_N  (pin_count),
         O          => data_in_from_pins_int(pin_count));


    -- Pass through the delay
    -----------------------------------
   data_in_from_pins_delay(pin_count) <= data_in_from_pins_int(pin_count);

     -- Instantiate the serdes primitive
     ----------------------------------
     -- declare the iserdes
     iserdes2_master : ISERDESE2
       generic map (
        -- BITSLIP_ENABLE => FALSE,--TRUE,
         DATA_RATE      => "SDR",
         DATA_WIDTH     => 8,
         INTERFACE_TYPE =>  "NETWORKING",--"RETIMED",
         SERDES_MODE    => "MASTER")
       port map (
         Q1         => iserdes_q(3)(pin_count),
         Q2         => iserdes_q(2)(pin_count),
         Q3         => iserdes_q(1)(pin_count),
         Q4         => iserdes_q(0)(pin_count),
         SHIFTOUT1   => icascade(pin_count),
         --INCDEC     => open,
         --VALID      => open,
         BITSLIP    => BITSLIP,       -- 1-bit Invoke Bitslip. This can be used with any DATA_WIDTH, cascaded or not.
                                      -- The amount of bitslip is fixed by the DATA_WIDTH selection.
         CE1        => clock_enable,   -- 1-bit Clock enable input
         CE2		  => clock_enable,
			CLK       => clk_in_int_buf,--clk_in_int_buf, -- 1-bit IO Clock network input. Optionally Invertible. This is the primary clock
                                       -- input used when the clock doubler circuit is not engaged (see DATA_RATE
                                       -- attribute).
         --CLK1       => '0',
			CLKB			=> '0',
         CLKDIV     => CLK_DIV_IN,
			CLKDIVP	  => '0',
			DDLY		=> '0',
			DYNCLKDIVSEL => '0',
			DYNCLKSEL	=> '0',
			OCLK			=> '0',
			OCLKB			=> '0',
			OFB			=> '0',
			
         D          => data_in_from_pins_delay(pin_count), -- 1-bit Input signal from IOB.
         ----IOCE       => serdesstrobe,                       -- 1-bit Data strobe signal derived from BUFIO CE. Strobes data capture for
                                                          -- NETWORKING and NETWORKING_PIPELINES alignment modes.

         RST        => IO_RESET,        -- 1-bit Asynchronous reset only.
         SHIFTIN1    => slave_shiftout(pin_count),
			SHIFTIN2		=> '0');

        -- unused connections
         --FABRICOUT  => open,
         --CFB0       => open,
         --CFB1       => open,
         --DFB        => open);

     iserdes2_slave : ISERDESE2
       generic map (
        -- BITSLIP_ENABLE => FALSE,--TRUE,
         DATA_RATE      => "SDR",
         DATA_WIDTH     => 8,
         INTERFACE_TYPE => "NETWORKING",--"RETIMED",
         SERDES_MODE    => "SLAVE")
       port map (
        Q1         => iserdes_q(7)(pin_count),
        Q2         => iserdes_q(6)(pin_count),
        Q3         => iserdes_q(5)(pin_count),
        Q4         => iserdes_q(4)(pin_count),
        SHIFTOUT1   => slave_shiftout(pin_count),
        BITSLIP    => BITSLIP,      -- 1-bit Invoke Bitslip. This can be used with any DATA_WIDTH, cascaded or not.
                                    -- The amount of bitslip is fixed by the DATA_WIDTH selection.
        CE1        => clock_enable,   -- 1-bit Clock enable input
        CE2			 => clock_enable,
		  CLK       => clk_in_int_buf,--clk_in_int_buf, -- 1-bit IO Clock network input. Optionally Invertible. This is the primary clock
                                      -- input used when the clock doubler circuit is not engaged (see DATA_RATE
                                      -- attribute).
        --CLK1       => '0',
			CLKB			=> '0',
         CLKDIV     => CLK_DIV_IN,
			CLKDIVP	  => '0',
			DDLY		=> '0',
			DYNCLKDIVSEL => '0',
			DYNCLKSEL	=> '0',
			OCLK			=> '0',
			OCLKB			=> '0',
			OFB			=> '0',
        D          => '0',            -- 1-bit Input signal from IOB.
        ----IOCE       => serdesstrobe,   -- 1-bit Data strobe signal derived from BUFIO CE. Strobes data capture for
                                      -- NETWORKING and NETWORKING_PIPELINES alignment modes.

        RST        => IO_RESET,       -- 1-bit Asynchronous reset only.
        SHIFTIN1    => icascade(pin_count),
        SHIFTIN2	  => '0');
		  -- unused connections
        --FABRICOUT  => open,
        --CFB0       => open,
        --CFB1       => open,
        --DFB        => open);



     -- Concatenate the serdes outputs together. Keep the timesliced
     --   bits together, and placing the earliest bits on the right
     --   ie, if data comes in 0, 1, 2, 3, 4, 5, 6, 7, ...
     --       the output will be 3210, 7654, ...
     -------------------------------------------------------------

     in_slices: for slice_count in 0 to num_serial_bits-1 generate begin
        -- This places the first data in time on the right
        --DATA_IN_TO_DEVICE(slice_count*sys_w+sys_w-1 downto slice_count*sys_w) <=
        --  iserdes_q(num_serial_bits-slice_count-1);
        -- To place the first data in time on the left, use the
        --   following code, instead
         DATA_IN_TO_DEVICE(slice_count*sys_w+sys_w-1 downto slice_count*sys_w) <=
           iserdes_q(slice_count);
     end generate in_slices;


  end generate pins;





end Behavioral;
