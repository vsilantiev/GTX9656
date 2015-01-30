----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:55:32 11/20/2014 
-- Design Name: 
-- Module Name:    fmc_adc_100Ms_core - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity fmc_adc_125Ms_core is
	port (
      -- Clock, reset
      sys_clk_i   : in std_logic;
      sys_rst_n_i : in std_logic;
		resetfifo : out std_logic;
		trn_clk		: in  std_logic;
		serdes_out_data    : out std_logic_vector(63 downto 0); -- ADC to FIFO
		fifowr_clk   : out  std_logic;
		fifowr_en    : out  std_logic;
		fifofull     : in   std_logic;
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
			
			-- User reg read from PC
			
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

      adc_clk_p_i  : in std_logic;                     -- ADC data clock
      adc_clk_n_i  : in std_logic;

      adc_out_p_i : in std_logic_vector(3 downto 0);  -- ADC serial data (odd bits)
      adc_out_n_i : in std_logic_vector(3 downto 0)
  
		);
end fmc_adc_125Ms_core;

architecture Behavioral of fmc_adc_125Ms_core is

component jesd204b_rx4_exdes
generic
(
    EXAMPLE_CONFIG_INDEPENDENT_LANES        : integer   := 1;
    STABLE_CLOCK_PERIOD                     : integer   := 10;    --Period of the stable clock driving this state-machine, unit is [ns]
    EXAMPLE_LANE_WITH_START_CHAR            : integer   := 0;    -- specifies lane with unique start frame ch
    EXAMPLE_WORDS_IN_BRAM                   : integer   := 512;  -- specifies amount of data in BRAM
    EXAMPLE_SIM_GTRESET_SPEEDUP             : string    := "TRUE";    -- simulation setting for GT SecureIP model
    EXAMPLE_SIMULATION                      : integer   := 0;             -- Set to 1 for simulation
    EXAMPLE_USE_CHIPSCOPE                   : integer   := 0           -- Set to 1 to use Chipscope to drive resets  
);
port
(
    Q0_CLK0_GTREFCLK_PAD_N_IN               : in   std_logic;
    Q0_CLK0_GTREFCLK_PAD_P_IN               : in   std_logic;
    DRP_CLK_IN                              : in   std_logic;
    GTTX_RESET_IN                           : in   std_logic;
    GTRX_RESET_IN                           : in   std_logic;
    PLL0_RESET_IN                           : in   std_logic; 
    TRACK_DATA_OUT                          : out  std_logic;
    RXN_IN                                  : in   std_logic_vector(3 downto 0);
    RXP_IN                                  : in   std_logic_vector(3 downto 0);
    TXN_OUT                                 : out  std_logic_vector(3 downto 0);
    TXP_OUT                                 : out  std_logic_vector(3 downto 0);
	 RX												  : out  std_logic_vector(15 downto 0)
);
end component jesd204b_rx4_exdes;  


  ------------------------------------------------------------------------------
  -- Signals declaration
  ------------------------------------------------------------------------------
  --My
  signal reg01_rd_current_reflength : std_logic_vector(31 downto 0);
  signal reg02_rd_work_status : std_logic_vector(31 downto 0);
  signal reg03_strobe_length_cur : std_logic_vector(31 downto 0);
  signal reg04_soa_length_cur : std_logic_vector(31 downto 0);
  signal reg06_rd_testbandwith_speed : std_logic_vector(31 downto 0);
  signal wasfifoerror : std_logic_vector(31 downto 0);
  
  
  signal strobe_counter : std_logic_vector(31 downto 0);
  --   SOA
  signal	soa_counter : std_logic_vector(31 downto 0);
  signal reflength_counter : std_logic_vector(31 downto 0);
  signal	real_strobe_signal : std_logic;
  signal real_soa_signal : std_logic;
  
  signal fifowasoverflowonvalue : std_logic_vector(31 downto 0);
  signal fifowasoverflow : std_logic;
 -- signal resetfifo : std_logic;
  signal sys_rst: std_logic;
signal fs_rst_n: std_logic;
signal fs_rst: std_logic;

attribute syn_noclockbuf : boolean;
signal ref_clk : std_logic;
attribute syn_noclockbuf of ref_clk : signal is true;



begin
  ------------------------------------------------------------------------------
  -- Resets
  ------------------------------------------------------------------------------
  sys_rst  <= not(sys_rst_n_i);
  fs_rst_n <= sys_rst_n_i; --and locked_out;
  fs_rst   <= not(fs_rst_n);
  ------------------------------------------------------------------------------
  -- ADC data clock buffer
  ------------------------------------------------------------------------------

  



  ------------------------------------------------------------------------------
  -- ADC data and frame SerDes
  ------------------------------------------------------------------------------
jesd204b: jesd204b_rx4_exdes
generic map
    (
    EXAMPLE_CONFIG_INDEPENDENT_LANES        => 1,
    STABLE_CLOCK_PERIOD                     => 10,    --Period of the stable clock driving this state-machine, unit is [ns]
    EXAMPLE_LANE_WITH_START_CHAR            => 0,    -- specifies lane with unique start frame ch
    EXAMPLE_WORDS_IN_BRAM                   => 512,  -- specifies amount of data in BRAM
    EXAMPLE_SIM_GTRESET_SPEEDUP             => "TRUE",    -- simulation setting for GT SecureIP model
    EXAMPLE_SIMULATION                      => 0,             -- Set to 1 for simulation
    EXAMPLE_USE_CHIPSCOPE                   => 0           -- Set to 1 to use Chipscope to drive resets
    )
    port map
    (
    Q0_CLK0_GTREFCLK_PAD_N_IN              => adc_clk_n_i,
    Q0_CLK0_GTREFCLK_PAD_P_IN               => adc_clk_p_i,
    DRP_CLK_IN                              => '0',
    GTTX_RESET_IN                           => '1',
    GTRX_RESET_IN                           => '1',
    PLL0_RESET_IN                           => '1', 
    TRACK_DATA_OUT                          => open,
    RXN_IN                                  => adc_out_n_i,
    RXP_IN                                  => adc_out_p_i,
    TXN_OUT                                 => open,
    TXP_OUT                                 => open,
	 RX												  => serdes_out_data(15 downto 0)
    );

  
  ust_reg : process (trn_clk, sys_rst_n_i)
  begin
      if sys_rst_n_i = '0' then
        reg01_rd_current_reflength <= X"0000EA60"; -- 60 km
		  reg02_rd_work_status <= X"00000000";	-- 0 not work
		  reg03_strobe_length_cur <= X"00000276";	-- 7500 ns
		  reg04_soa_length_cur <= X"00000008";	-- 80 ns
		  reg06_rd_testbandwith_speed<= X"00000000";

        
		  
		
		
		elsif (trn_clk'event and trn_clk='1') then 
	   if reg01_tv = '1' then
		  reg01_rd_current_reflength <= reg01_td;
	   end if;
      
		reg01_rd <= reg01_rd_current_reflength; --// 44
      reg01_rv <= '1';--//reg01_tv;//1; // Reg 44
	   
		if reg02_tv = '1' then
	     if (reg02_td > X"00000000") then		 
			  reg02_rd_work_status <= X"00000001";
		  else
			  reg02_rd_work_status <= X"00000000";
		  end if;
	   end if;
		
      reg02_rd  <= reg02_rd_work_status; --// state IRQ to reg 
	   reg02_rv <= '1'; --//45
	
	   if reg03_tv = '1' then
		  reg03_strobe_length_cur <= reg03_td;
	   end if;
		
	   reg03_rd <= reg03_strobe_length_cur;--//count_irq; // 
	   reg03_rv <= '1';	--//46	
		
	   if reg04_tv = '1' then
	  	  reg04_soa_length_cur <= reg04_td;-- //
	   end if;
		
		reg04_rd <= reg04_soa_length_cur;--//count_irq; // 
	   reg04_rv <= '1';--	//47	
		
		if reg05_tv = '1' then
			resetfifo <=  '1';
		else
			resetfifo <=  '0';
		end if;
		
  --    reg05_rd <= wasfifoerror;--  //48
  --    reg05_rv <= '1';--//1;
				
		if reg06_tv = '1' then
	   if (reg06_td > X"00000000") then
			reg06_rd_testbandwith_speed <= X"00000001";
		 else
			reg06_rd_testbandwith_speed <= X"00000000";		
		end if;
		end if;
		
		reg06_rd <= reg06_rd_testbandwith_speed;-- // state IRQ to reg 
	   reg06_rv <= '1';-- //49



	--	reg07_rd(31 downto 0)  <= "000000000000001"; --// iic control 50	
	--	reg07_rv <= '1'; --//51
	


				
	--	reg09_rd  <= "000000000000000" ; 
	--   reg09_rv <= '1'; --//52
	end if;
   end process ust_reg;


  ctrl_fifo : process (ref_clk, sys_rst_n_i)
  begin
      if sys_rst_n_i = '0' then
		  fifowr_en <= '0';		
		  strobe_counter <= X"00000000";
	     soa_counter <= X"00000000";
		  reflength_counter <= X"00000000";		
		  real_strobe_signal <= '0';
	     real_soa_signal <= '0';
		  wasfifoerror <= X"00000000";
		  fifowasoverflowonvalue <= X"00000000";
		  fifowasoverflow <= '0';
      elsif (ref_clk'event and ref_clk='1') then
		if reg02_rd_work_status = X"00000000" then
		  strobe_counter <= X"00000000";
		  soa_counter <= X"00000000";
		  reflength_counter <= X"00000000";	
		  real_strobe_signal <= '0';
		  real_soa_signal <= '0';					
		  fifowasoverflowonvalue <= X"00000000";
		  fifowasoverflow <= '0';
		else
		
		if reflength_counter = reg01_rd_current_reflength then
		  reflength_counter <= X"00000000";
		  strobe_counter <= X"00000000";
		  soa_counter <= X"00000000"; 
		  real_strobe_signal <= '1';
		  real_soa_signal <= '1';
		  fifowr_en <= '0';
		end if;
		
		if strobe_counter <= reg03_strobe_length_cur then
		  strobe_counter <= strobe_counter + 1;
		  real_strobe_signal <= '1';
	   else
		  real_strobe_signal <= '0'; 
		end if;
		
		if soa_counter <= reg04_soa_length_cur then
			soa_counter <= soa_counter + 1;
			real_soa_signal <= '1';
		else
			real_soa_signal <= '0'; 
		end if;
		
		
		
		if fifofull = '1' then
		  fifowr_en <= '0';
		  if fifowasoverflow = '0' then
		    fifowasoverflow <= '1';
		    fifowasoverflowonvalue <= reflength_counter;
		  else
		    if fifowasoverflow = '0' then
		       fifowr_en <= '1';							
	       else
		      if fifowasoverflowonvalue = reflength_counter then
			     fifowr_en <= '1';
			     fifowasoverflow <= '0';
			     fifowasoverflowonvalue <= X"00000000";
			   else
			     fifowr_en <= '0';
				end if;
			 end if;
		  end if;
		end if;
						 
		if fifofull = '1' then
			wasfifoerror <= wasfifoerror + 1;
		end if;
		
		   reflength_counter <= reflength_counter + 1;
		
		
		if reg06_rd_testbandwith_speed = X"00000001" then
		  fifowr_en <= '1';
		end if;
	 end if;
	end if;
  end process ctrl_fifo;

end Behavioral;

