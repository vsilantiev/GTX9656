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

component jesd204b_rx4
generic
(
    WRAPPER_SIM_GTRESET_SPEEDUP             : string    := "FALSE"    -- simulation setting for GT SecureIP model    
);
port
(
   --_________________________________________________________________________
    --_________________________________________________________________________
    --GT0  (X0Y0)
    --____________________________CHANNEL PORTS________________________________
    GT0_DRP_BUSY_OUT                        : out  std_logic; 
    ---------------------------- Channel - DRP Ports  --------------------------
    GT0_DRPADDR_IN                          : in   std_logic_vector(8 downto 0);
    GT0_DRPCLK_IN                           : in   std_logic;
    GT0_DRPDI_IN                            : in   std_logic_vector(15 downto 0);
    GT0_DRPDO_OUT                           : out  std_logic_vector(15 downto 0);
    GT0_DRPEN_IN                            : in   std_logic;
    GT0_DRPRDY_OUT                          : out  std_logic;
    GT0_DRPWE_IN                            : in   std_logic;
    --------------------- RX Initialization and Reset Ports --------------------
    GT0_RXUSERRDY_IN                        : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    GT0_EYESCANDATAERROR_OUT                : out  std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    GT0_RXCDRLOCK_OUT                       : out  std_logic;
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    GT0_RXDATA_OUT                          : out  std_logic_vector(15 downto 0);
    GT0_RXUSRCLK_IN                         : in   std_logic;
    GT0_RXUSRCLK2_IN                        : in   std_logic;
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    GT0_RXCHARISCOMMA_OUT                   : out  std_logic_vector(1 downto 0);
    GT0_RXCHARISK_OUT                       : out  std_logic_vector(1 downto 0);
    GT0_RXDISPERR_OUT                       : out  std_logic_vector(1 downto 0);
    GT0_RXNOTINTABLE_OUT                    : out  std_logic_vector(1 downto 0);
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    GT0_GTPRXN_IN                           : in   std_logic;
    GT0_GTPRXP_IN                           : in   std_logic;
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    GT0_RXMCOMMAALIGNEN_IN                  : in   std_logic;
    GT0_RXPCOMMAALIGNEN_IN                  : in   std_logic;
    -------------------- Receive Ports - RX Equailizer Ports -------------------
    GT0_RXLPMHFHOLD_IN                      : in   std_logic;
    GT0_RXLPMLFHOLD_IN                      : in   std_logic;
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    GT0_RXOUTCLK_OUT                        : out  std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    GT0_GTRXRESET_IN                        : in   std_logic;
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    GT0_RXRESETDONE_OUT                     : out  std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
    GT0_GTTXRESET_IN                        : in   std_logic;
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    GT0_TXPCSRESET_IN                       : in   std_logic;

    --GT1  (X0Y1)
    --____________________________CHANNEL PORTS________________________________
    GT1_DRP_BUSY_OUT                        : out  std_logic; 
    ---------------------------- Channel - DRP Ports  --------------------------
    GT1_DRPADDR_IN                          : in   std_logic_vector(8 downto 0);
    GT1_DRPCLK_IN                           : in   std_logic;
    GT1_DRPDI_IN                            : in   std_logic_vector(15 downto 0);
    GT1_DRPDO_OUT                           : out  std_logic_vector(15 downto 0);
    GT1_DRPEN_IN                            : in   std_logic;
    GT1_DRPRDY_OUT                          : out  std_logic;
    GT1_DRPWE_IN                            : in   std_logic;
    --------------------- RX Initialization and Reset Ports --------------------
    GT1_RXUSERRDY_IN                        : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    GT1_EYESCANDATAERROR_OUT                : out  std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    GT1_RXCDRLOCK_OUT                       : out  std_logic;
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    GT1_RXDATA_OUT                          : out  std_logic_vector(15 downto 0);
    GT1_RXUSRCLK_IN                         : in   std_logic;
    GT1_RXUSRCLK2_IN                        : in   std_logic;
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    GT1_RXCHARISCOMMA_OUT                   : out  std_logic_vector(1 downto 0);
    GT1_RXCHARISK_OUT                       : out  std_logic_vector(1 downto 0);
    GT1_RXDISPERR_OUT                       : out  std_logic_vector(1 downto 0);
    GT1_RXNOTINTABLE_OUT                    : out  std_logic_vector(1 downto 0);
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    GT1_GTPRXN_IN                           : in   std_logic;
    GT1_GTPRXP_IN                           : in   std_logic;
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    GT1_RXMCOMMAALIGNEN_IN                  : in   std_logic;
    GT1_RXPCOMMAALIGNEN_IN                  : in   std_logic;
    -------------------- Receive Ports - RX Equailizer Ports -------------------
    GT1_RXLPMHFHOLD_IN                      : in   std_logic;
    GT1_RXLPMLFHOLD_IN                      : in   std_logic;
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    GT1_RXOUTCLK_OUT                        : out  std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    GT1_GTRXRESET_IN                        : in   std_logic;
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    GT1_RXRESETDONE_OUT                     : out  std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
    GT1_GTTXRESET_IN                        : in   std_logic;
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    GT1_TXPCSRESET_IN                       : in   std_logic;

    --GT2  (X0Y2)
    --____________________________CHANNEL PORTS________________________________
    GT2_DRP_BUSY_OUT                        : out  std_logic; 
    ---------------------------- Channel - DRP Ports  --------------------------
    GT2_DRPADDR_IN                          : in   std_logic_vector(8 downto 0);
    GT2_DRPCLK_IN                           : in   std_logic;
    GT2_DRPDI_IN                            : in   std_logic_vector(15 downto 0);
    GT2_DRPDO_OUT                           : out  std_logic_vector(15 downto 0);
    GT2_DRPEN_IN                            : in   std_logic;
    GT2_DRPRDY_OUT                          : out  std_logic;
    GT2_DRPWE_IN                            : in   std_logic;
    --------------------- RX Initialization and Reset Ports --------------------
    GT2_RXUSERRDY_IN                        : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    GT2_EYESCANDATAERROR_OUT                : out  std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    GT2_RXCDRLOCK_OUT                       : out  std_logic;
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    GT2_RXDATA_OUT                          : out  std_logic_vector(15 downto 0);
    GT2_RXUSRCLK_IN                         : in   std_logic;
    GT2_RXUSRCLK2_IN                        : in   std_logic;
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    GT2_RXCHARISCOMMA_OUT                   : out  std_logic_vector(1 downto 0);
    GT2_RXCHARISK_OUT                       : out  std_logic_vector(1 downto 0);
    GT2_RXDISPERR_OUT                       : out  std_logic_vector(1 downto 0);
    GT2_RXNOTINTABLE_OUT                    : out  std_logic_vector(1 downto 0);
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    GT2_GTPRXN_IN                           : in   std_logic;
    GT2_GTPRXP_IN                           : in   std_logic;
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    GT2_RXMCOMMAALIGNEN_IN                  : in   std_logic;
    GT2_RXPCOMMAALIGNEN_IN                  : in   std_logic;
    -------------------- Receive Ports - RX Equailizer Ports -------------------
    GT2_RXLPMHFHOLD_IN                      : in   std_logic;
    GT2_RXLPMLFHOLD_IN                      : in   std_logic;
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    GT2_RXOUTCLK_OUT                        : out  std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    GT2_GTRXRESET_IN                        : in   std_logic;
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    GT2_RXRESETDONE_OUT                     : out  std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
    GT2_GTTXRESET_IN                        : in   std_logic;
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    GT2_TXPCSRESET_IN                       : in   std_logic;

    --GT3  (X0Y3)
    --____________________________CHANNEL PORTS________________________________
  ---  GT3_DRP_BUSY_OUT                        : out  std_logic; 
    ---------------------------- Channel - DRP Ports  --------------------------
   --- GT3_DRPADDR_IN                          : in   std_logic_vector(8 downto 0);
  ---  GT3_DRPCLK_IN                           : in   std_logic;
  ---  GT3_DRPDI_IN                            : in   std_logic_vector(15 downto 0);
  ---  GT3_DRPDO_OUT                           : out  std_logic_vector(15 downto 0);
  ---  GT3_DRPEN_IN                            : in   std_logic;
  ---  GT3_DRPRDY_OUT                          : out  std_logic;
  ---  GT3_DRPWE_IN                            : in   std_logic;
    --------------------- RX Initialization and Reset Ports --------------------
   --- GT3_RXUSERRDY_IN                        : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
  ---  GT3_EYESCANDATAERROR_OUT                : out  std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
  ---  GT3_RXCDRLOCK_OUT                       : out  std_logic;
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
   --- GT3_RXDATA_OUT                          : out  std_logic_vector(15 downto 0);
  ---  GT3_RXUSRCLK_IN                         : in   std_logic;
  ---  GT3_RXUSRCLK2_IN                        : in   std_logic;
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
  ---  GT3_RXCHARISCOMMA_OUT                   : out  std_logic_vector(1 downto 0);
  ---  GT3_RXCHARISK_OUT                       : out  std_logic_vector(1 downto 0);
  ---  GT3_RXDISPERR_OUT                       : out  std_logic_vector(1 downto 0);
  ---  GT3_RXNOTINTABLE_OUT                    : out  std_logic_vector(1 downto 0);
    ------------------------ Receive Ports - RX AFE Ports ----------------------
  ---  GT3_GTPRXN_IN                           : in   std_logic;
  ---  GT3_GTPRXP_IN                           : in   std_logic;
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
  ---  GT3_RXMCOMMAALIGNEN_IN                  : in   std_logic;
  ---  GT3_RXPCOMMAALIGNEN_IN                  : in   std_logic;
    -------------------- Receive Ports - RX Equailizer Ports -------------------
  ---  GT3_RXLPMHFHOLD_IN                      : in   std_logic;
   --- GT3_RXLPMLFHOLD_IN                      : in   std_logic;
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
  ---  GT3_RXOUTCLK_OUT                        : out  std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
  ---  GT3_GTRXRESET_IN                        : in   std_logic;
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
   --- GT3_RXRESETDONE_OUT                     : out  std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
  ---  GT3_GTTXRESET_IN                        : in   std_logic;
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
  ---  GT3_TXPCSRESET_IN                       : in   std_logic;


    --____________________________COMMON PORTS________________________________
    ----------------- Common Block - GTPE2_COMMON Clocking Ports ---------------
    GT0_GTREFCLK0_IN                        : in   std_logic;
    -------------------------- Common Block - PLL Ports ------------------------
    GT0_PLL0LOCK_OUT                        : out  std_logic;
    GT0_PLL0LOCKDETCLK_IN                   : in   std_logic;
    GT0_PLL0REFCLKLOST_OUT                  : out  std_logic;
    GT0_PLL0RESET_IN                        : in   std_logic


);
end component jesd204b_rx4;  
 ---- component serdes
 ----  generic
 ----     (
  ----      sys_w : integer := 9;                 -- width of the data for the system
  ----      dev_w : integer := 72                 -- width of the data for the device
  ----      );
  ----  port
 ----     (
        -- Datapath
  ----      DATA_IN_FROM_PINS_P : in  std_logic_vector(sys_w-1 downto 0);
  ----      DATA_IN_FROM_PINS_N : in  std_logic_vector(sys_w-1 downto 0);
  ----      DATA_IN_TO_DEVICE   : out std_logic_vector(dev_w-1 downto 0);
        -- Data control
  ----      BITSLIP             : in  std_logic;
        -- Clock and reset signals
  ----      CLK_IN              : in  std_logic;  -- Fast clock from PLL/MMCM
  ----      CLK_DIV_IN          : in  std_logic;  -- Slow clock from PLL/MMCM
        --LOCKED_IN           : in  std_logic;
        --LOCKED_OUT          : out std_logic;
        --CLK_RESET           : in  std_logic;  -- Reset signal for Clock circuit
   ----     IO_RESET            : in  std_logic   -- Reset signal for IO circuit
   ----     );
  ----end component serdes;

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

--attribute syn_noclockbuf : boolean;
signal ref_clk : std_logic;

--attribute syn_noclockbuf of ref_clk : signal is true;

signal gt0_rxusrclk_in : std_logic;
signal gt0_rxusrclk2_in : std_logic;
signal gt1_rxusrclk_in : std_logic;
signal gt1_rxusrclk2_in : std_logic;
signal gt2_rxusrclk_in : std_logic;
signal gt2_rxusrclk2_in : std_logic;
signal gt3_rxusrclk_in : std_logic;
signal gt3_rxusrclk2_in : std_logic;
--**************************** Wire Declarations ******************************
    -------------------------- GT Wrapper Wires ------------------------------
    --________________________________________________________________________
    --________________________________________________________________________
    --GT0   (X0Y0)

    ---------------------------- Channel - DRP Ports  --------------------------
    signal  gt0_drpaddr_in                   : std_logic_vector(8 downto 0);
    signal  gt0_drpdi_in                     : std_logic_vector(15 downto 0);
    signal  gt0_drpdo_out                    : std_logic_vector(15 downto 0);
    signal  gt0_drpen_in                     : std_logic;
    signal  gt0_drprdy_out                   : std_logic;
    signal  gt0_drpwe_in                     : std_logic;
    --------------------- RX Initialization and Reset Ports --------------------
    signal  gt0_rxuserrdy_i                 : std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    signal  gt0_eyescandataerror_out          : std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    signal  gt0_rxcdrlock_out                 : std_logic;
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    signal  gt0_rxdata_out                    : std_logic_vector(15 downto 0);
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    signal  gt0_rxchariscomma_out             : std_logic_vector(1 downto 0);
    signal  gt0_rxcharisk_out                 : std_logic_vector(1 downto 0);
    signal  gt0_rxdisperr_out                 : std_logic_vector(1 downto 0);
    signal  gt0_rxnotintable_out              : std_logic_vector(1 downto 0);
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    ------signal  gt0_gtprxn_in                    : std_logic;
    ------signal  gt0_gtprxp_in                    : std_logic;
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    signal  gt0_rxmcommaalignen_in           : std_logic;
    signal  gt0_rxpcommaalignen_in           : std_logic;
    -------------------- Receive Ports - RX Equailizer Ports -------------------
    signal  gt0_rxlpmhfhold_in               : std_logic;
    signal  gt0_rxlpmlfhold_in               : std_logic;
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    signal  gt0_rxoutclk_i                  : std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    signal  gt0_gtrxreset_i                 : std_logic;
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    signal  gt0_rxresetdone_i               : std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
    signal  gt0_gttxreset_i                 : std_logic;
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    signal  gt0_txpcsreset_i                : std_logic;


    --________________________________________________________________________
    --________________________________________________________________________
    --GT1   (X0Y1)

    ---------------------------- Channel - DRP Ports  --------------------------
    signal  gt1_drpaddr_in                   : std_logic_vector(8 downto 0);
    signal  gt1_drpdi_in                     : std_logic_vector(15 downto 0);
    signal  gt1_drpdo_out                    : std_logic_vector(15 downto 0);
    signal  gt1_drpen_in                     : std_logic;
    signal  gt1_drprdy_out                   : std_logic;
    signal  gt1_drpwe_in                     : std_logic;
    --------------------- RX Initialization and Reset Ports --------------------
    signal  gt1_rxuserrdy_i                 : std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    signal  gt1_eyescandataerror_out          : std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    signal  gt1_rxcdrlock_out                 : std_logic;
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    signal  gt1_rxdata_out                    : std_logic_vector(15 downto 0);
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    signal  gt1_rxchariscomma_out             : std_logic_vector(1 downto 0);
    signal  gt1_rxcharisk_out                 : std_logic_vector(1 downto 0);
    signal  gt1_rxdisperr_out                 : std_logic_vector(1 downto 0);
    signal  gt1_rxnotintable_out              : std_logic_vector(1 downto 0);
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    ----signal  gt1_gtprxn_in                    : std_logic;
    ----signal  gt1_gtprxp_in                    : std_logic;
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    signal  gt1_rxmcommaalignen_in           : std_logic;
    signal  gt1_rxpcommaalignen_in           : std_logic;
    -------------------- Receive Ports - RX Equailizer Ports -------------------
    signal  gt1_rxlpmhfhold_in               : std_logic;
    signal  gt1_rxlpmlfhold_in               : std_logic;
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    signal  gt1_rxoutclk_i                  : std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    signal  gt1_gtrxreset_i                 : std_logic;
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    signal  gt1_rxresetdone_i               : std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
    signal  gt1_gttxreset_i                 : std_logic;
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    signal  gt1_txpcsreset_i                : std_logic;


    --________________________________________________________________________
    --________________________________________________________________________
    --GT2   (X0Y2)

    ---------------------------- Channel - DRP Ports  --------------------------
    signal  gt2_drpaddr_in                   : std_logic_vector(8 downto 0);
    signal  gt2_drpdi_in                     : std_logic_vector(15 downto 0);
    signal  gt2_drpdo_out                    : std_logic_vector(15 downto 0);
    signal  gt2_drpen_in                     : std_logic;
    signal  gt2_drprdy_out                   : std_logic;
    signal  gt2_drpwe_in                     : std_logic;
    --------------------- RX Initialization and Reset Ports --------------------
    signal  gt2_rxuserrdy_i                 : std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    signal  gt2_eyescandataerror_out          : std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    signal  gt2_rxcdrlock_out                 : std_logic;
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    signal  gt2_rxdata_out                    : std_logic_vector(15 downto 0);
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    signal  gt2_rxchariscomma_out             : std_logic_vector(1 downto 0);
    signal  gt2_rxcharisk_out                 : std_logic_vector(1 downto 0);
    signal  gt2_rxdisperr_out                 : std_logic_vector(1 downto 0);
    signal  gt2_rxnotintable_out              : std_logic_vector(1 downto 0);
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    -----signal  gt2_gtprxn_in                    : std_logic;
    -----signal  gt2_gtprxp_in                    : std_logic;
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    signal  gt2_rxmcommaalignen_in           : std_logic;
    signal  gt2_rxpcommaalignen_in           : std_logic;
    -------------------- Receive Ports - RX Equailizer Ports -------------------
    signal  gt2_rxlpmhfhold_in               : std_logic;
    signal  gt2_rxlpmlfhold_in               : std_logic;
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    signal  gt2_rxoutclk_i                  : std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    signal  gt2_gtrxreset_i                 : std_logic;
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    signal  gt2_rxresetdone_i               : std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
    signal  gt2_gttxreset_i                 : std_logic;
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    signal  gt2_txpcsreset_i                : std_logic;


    --________________________________________________________________________
    --________________________________________________________________________
    --GT3   (X0Y3)

    ---------------------------- Channel - DRP Ports  --------------------------
    signal  gt3_drpaddr_in                   : std_logic_vector(8 downto 0);
    signal  gt3_drpdi_in                     : std_logic_vector(15 downto 0);
    signal  gt3_drpdo_out                    : std_logic_vector(15 downto 0);
    signal  gt3_drpen_in                     : std_logic;
    signal  gt3_drprdy_out                   : std_logic;
    signal  gt3_drpwe_in                     : std_logic;
    --------------------- RX Initialization and Reset Ports --------------------
    signal  gt3_rxuserrdy_i                 : std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    signal  gt3_eyescandataerror_out          : std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    signal  gt3_rxcdrlock_out                 : std_logic;
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    signal  gt3_rxdata_out                    : std_logic_vector(15 downto 0);
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    signal  gt3_rxchariscomma_out             : std_logic_vector(1 downto 0);
    signal  gt3_rxcharisk_out                 : std_logic_vector(1 downto 0);
    signal  gt3_rxdisperr_out                 : std_logic_vector(1 downto 0);
    signal  gt3_rxnotintable_out              : std_logic_vector(1 downto 0);
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    -----signal  gt3_gtprxn_in                    : std_logic;
    -----signal  gt3_gtprxp_in                    : std_logic;
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    signal  gt3_rxmcommaalignen_in           : std_logic;
    signal  gt3_rxpcommaalignen_in           : std_logic;
    -------------------- Receive Ports - RX Equailizer Ports -------------------
    signal  gt3_rxlpmhfhold_in               : std_logic;
    signal  gt3_rxlpmlfhold_in               : std_logic;
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    signal  gt3_rxoutclk_i                  : std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    signal  gt3_gtrxreset_i                 : std_logic;
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    signal  gt3_rxresetdone_i               : std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
    signal  gt3_gttxreset_i                 : std_logic;
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    signal  gt3_txpcsreset_i                : std_logic;



    --____________________________COMMON PORTS________________________________
    -------------------------- Common Block - PLL Ports ------------------------
    signal  gt0_pll0lock_i                  : std_logic;
    signal  gt0_pll0refclklost_i            : std_logic;
    signal  gt0_pll0reset_i                 : std_logic;



    ------------------------------- Global Signals -----------------------------
    signal  gt0_tx_system_reset_c           : std_logic;
    signal  gt0_rx_system_reset_c           : std_logic;
    signal  gt1_tx_system_reset_c           : std_logic;
    signal  gt1_rx_system_reset_c           : std_logic;
    signal  gt2_tx_system_reset_c           : std_logic;
    signal  gt2_rx_system_reset_c           : std_logic;
    signal  gt3_tx_system_reset_c           : std_logic;
    signal  gt3_rx_system_reset_c           : std_logic;
    signal  tied_to_ground_i                : std_logic;
    signal  tied_to_ground_vec_i            : std_logic_vector(63 downto 0);
    signal  tied_to_vcc_i                   : std_logic;
    signal  tied_to_vcc_vec_i               : std_logic_vector(7 downto 0);
    signal  drpclk_in_i                     : std_logic;

 
    signal  GTTXRESET_IN                    : std_logic;
    signal  GTRXRESET_IN                    : std_logic;
    signal  PLL0RESET_IN                    : std_logic;
    signal  PLL1RESET_IN                    : std_logic;

	signal data_n_i : std_logic_vector(3 downto 0);
	 signal data_p_i: std_logic_vector(3 downto 0);
	  signal	data_in_from_pins_int : std_logic_vector(0 downto 0);

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

  
  
 ref_clk_cmp : IBUFDS_GTE2
  port map (
    I  => adc_clk_p_i,
     IB => adc_clk_n_i,
	  ODIV2 => open,
	  CEB => '0',
     O  => ref_clk
     );
 

 
    rxoutclk_bufg0_i : BUFG
    port map
    (
        I                               =>      gt0_rxoutclk_i,
        O                               =>      gt0_rxusrclk_in
    );


    --rxoutclk_bufg1_i : BUFG
    --port map
   --(
   --     I                               =>      gt1_rxoutclk_i,
   --     O                               =>      gt1_rxusrclk_in
   -- );


    --rxoutclk_bufg2_i : BUFG
    --port map
   -- (
    --    I                               =>      gt2_rxoutclk_i,
    --    O                               =>      gt2_rxusrclk_in
    --);


    --rxoutclk_bufg3_i : BUFG
    --port map
    --(
     --   I                               =>      gt3_rxoutclk_i,
     --   O                               =>      gt3_rxusrclk_in
    --);


 

----serdes_out_data(15 downto 0) <= serdes_out_data1(15 downto 2) & serdes_out_data1(0 downto 1)

fifowr_clk <= gt0_rxoutclk_i;--ref_clk;--fs_clk;
--serdes_out_data <= adc_out_p_i & adc_out_n_i & "00000000000000000000000000000000000000000000000000000000";
 data_p_i <= adc_out_p_i;
 data_n_i <= adc_out_n_i;
  ------------------------------------------------------------------------------
  -- ADC data and frame SerDes
  ------------------------------------------------------------------------------
jesd204b: jesd204b_rx4
generic map
    (
        WRAPPER_SIM_GTRESET_SPEEDUP     =>      "TRUE"
    )
    port map
    (
        GT0_DRP_BUSY_OUT                =>      open,
  
        --_____________________________________________________________________
        --_____________________________________________________________________
        --GT0  (X0Y0)

        ---------------------------- Channel - DRP Ports  --------------------------
        GT0_DRPADDR_IN                  =>      GT0_DRPADDR_IN,
        GT0_DRPCLK_IN                   =>      '0',--GT0_DRPCLK_IN,
        GT0_DRPDI_IN                    =>      GT0_DRPDI_IN,
        GT0_DRPDO_OUT                   =>      GT0_DRPDO_OUT,
        GT0_DRPEN_IN                    =>      GT0_DRPEN_IN,
        GT0_DRPRDY_OUT                  =>      GT0_DRPRDY_OUT,
        GT0_DRPWE_IN                    =>      GT0_DRPWE_IN,
        --------------------- RX Initialization and Reset Ports --------------------
        GT0_RXUSERRDY_IN                =>      gt0_rxuserrdy_i,
        -------------------------- RX Margin Analysis Ports ------------------------
        GT0_EYESCANDATAERROR_OUT        =>      GT0_EYESCANDATAERROR_OUT,
        ------------------------- Receive Ports - CDR Ports ------------------------
        GT0_RXCDRLOCK_OUT               =>      GT0_RXCDRLOCK_OUT,
        ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        GT0_RXDATA_OUT                  =>      serdes_out_data(15 downto 0),-----GT0_RXDATA_OUT,
        GT0_RXUSRCLK_IN                 =>      GT0_RXUSRCLK_IN,
        GT0_RXUSRCLK2_IN                =>      GT0_RXUSRCLK2_IN,
        ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
        GT0_RXCHARISCOMMA_OUT           =>      GT0_RXCHARISCOMMA_OUT,
        GT0_RXCHARISK_OUT               =>      GT0_RXCHARISK_OUT,
        GT0_RXDISPERR_OUT               =>      GT0_RXDISPERR_OUT,
        GT0_RXNOTINTABLE_OUT            =>      GT0_RXNOTINTABLE_OUT,
        ------------------------ Receive Ports - RX AFE Ports ----------------------
        GT0_GTPRXN_IN                   =>      data_n_i(0),----GT0_GTPRXN_IN,
        GT0_GTPRXP_IN                   =>      data_p_i(0),----GT0_GTPRXP_IN,
        -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
        GT0_RXMCOMMAALIGNEN_IN          =>      GT0_RXMCOMMAALIGNEN_IN,
        GT0_RXPCOMMAALIGNEN_IN          =>      GT0_RXPCOMMAALIGNEN_IN,
        -------------------- Receive Ports - RX Equailizer Ports -------------------
        GT0_RXLPMHFHOLD_IN              =>      GT0_RXLPMHFHOLD_IN,
        GT0_RXLPMLFHOLD_IN              =>      GT0_RXLPMLFHOLD_IN,
        --------------- Receive Ports - RX Fabric Output Control Ports -------------
        GT0_RXOUTCLK_OUT                =>      gt0_rxoutclk_i,
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        GT0_GTRXRESET_IN                =>      gt0_gtrxreset_i,
        -------------- Receive Ports -RX Initialization and Reset Ports ------------
        GT0_RXRESETDONE_OUT             =>      gt0_rxresetdone_i,
        --------------------- TX Initialization and Reset Ports --------------------
        GT0_GTTXRESET_IN                =>      gt0_gttxreset_i,
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        GT0_TXPCSRESET_IN               =>      gt0_txpcsreset_i,


        GT1_DRP_BUSY_OUT                =>      open,
  
        --_____________________________________________________________________
        --_____________________________________________________________________
        --GT1  (X0Y1)

        ---------------------------- Channel - DRP Ports  --------------------------
        GT1_DRPADDR_IN                  =>      GT1_DRPADDR_IN,
        GT1_DRPCLK_IN                   =>      '0',--GT1_DRPCLK_IN,
        GT1_DRPDI_IN                    =>      GT1_DRPDI_IN,
        GT1_DRPDO_OUT                   =>      GT1_DRPDO_OUT,
        GT1_DRPEN_IN                    =>      GT1_DRPEN_IN,
        GT1_DRPRDY_OUT                  =>      GT1_DRPRDY_OUT,
        GT1_DRPWE_IN                    =>      GT1_DRPWE_IN,
        --------------------- RX Initialization and Reset Ports --------------------
        GT1_RXUSERRDY_IN                =>      gt1_rxuserrdy_i,
        -------------------------- RX Margin Analysis Ports ------------------------
        GT1_EYESCANDATAERROR_OUT        =>      GT1_EYESCANDATAERROR_OUT,
        ------------------------- Receive Ports - CDR Ports ------------------------
        GT1_RXCDRLOCK_OUT               =>      GT1_RXCDRLOCK_OUT,
        ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        GT1_RXDATA_OUT                  =>      serdes_out_data(31 downto 16),---GT1_RXDATA_OUT,
        GT1_RXUSRCLK_IN                 =>      GT1_RXUSRCLK_IN,
        GT1_RXUSRCLK2_IN                =>      GT1_RXUSRCLK2_IN,
        ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
        GT1_RXCHARISCOMMA_OUT           =>      GT1_RXCHARISCOMMA_OUT,
        GT1_RXCHARISK_OUT               =>      GT1_RXCHARISK_OUT,
        GT1_RXDISPERR_OUT               =>      GT1_RXDISPERR_OUT,
        GT1_RXNOTINTABLE_OUT            =>      GT1_RXNOTINTABLE_OUT,
        ------------------------ Receive Ports - RX AFE Ports ----------------------
        GT1_GTPRXN_IN                   =>      data_n_i(1),----GT1_GTPRXN_IN,
        GT1_GTPRXP_IN                   =>      data_p_i(1),----GT1_GTPRXP_IN,
        -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
        GT1_RXMCOMMAALIGNEN_IN          =>      GT1_RXMCOMMAALIGNEN_IN,
        GT1_RXPCOMMAALIGNEN_IN          =>      GT1_RXPCOMMAALIGNEN_IN,
        -------------------- Receive Ports - RX Equailizer Ports -------------------
        GT1_RXLPMHFHOLD_IN              =>      GT1_RXLPMHFHOLD_IN,
        GT1_RXLPMLFHOLD_IN              =>      GT1_RXLPMLFHOLD_IN,
        --------------- Receive Ports - RX Fabric Output Control Ports -------------
        GT1_RXOUTCLK_OUT                =>      gt1_rxoutclk_i,
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        GT1_GTRXRESET_IN                =>      gt1_gtrxreset_i,
        -------------- Receive Ports -RX Initialization and Reset Ports ------------
        GT1_RXRESETDONE_OUT             =>      gt1_rxresetdone_i,
        --------------------- TX Initialization and Reset Ports --------------------
        GT1_GTTXRESET_IN                =>      gt1_gttxreset_i,
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        GT1_TXPCSRESET_IN               =>      gt1_txpcsreset_i,


        GT2_DRP_BUSY_OUT                =>      open,
  
        --_____________________________________________________________________
        --_____________________________________________________________________
        --GT2  (X0Y2)

        ---------------------------- Channel - DRP Ports  --------------------------
        GT2_DRPADDR_IN                  =>      GT2_DRPADDR_IN,
        GT2_DRPCLK_IN                   =>      '0',--GT2_DRPCLK_IN,
        GT2_DRPDI_IN                    =>      GT2_DRPDI_IN,
        GT2_DRPDO_OUT                   =>      GT2_DRPDO_OUT,
        GT2_DRPEN_IN                    =>      GT2_DRPEN_IN,
        GT2_DRPRDY_OUT                  =>      GT2_DRPRDY_OUT,
        GT2_DRPWE_IN                    =>      GT2_DRPWE_IN,
        --------------------- RX Initialization and Reset Ports --------------------
        GT2_RXUSERRDY_IN                =>      gt2_rxuserrdy_i,
        -------------------------- RX Margin Analysis Ports ------------------------
        GT2_EYESCANDATAERROR_OUT        =>      GT2_EYESCANDATAERROR_OUT,
        ------------------------- Receive Ports - CDR Ports ------------------------
        GT2_RXCDRLOCK_OUT               =>      GT2_RXCDRLOCK_OUT,
        ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        GT2_RXDATA_OUT                  =>      serdes_out_data(47 downto 32),----GT2_RXDATA_OUT,
        GT2_RXUSRCLK_IN                 =>      GT2_RXUSRCLK_IN,
        GT2_RXUSRCLK2_IN                =>      GT2_RXUSRCLK2_IN,
        ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
        GT2_RXCHARISCOMMA_OUT           =>      GT2_RXCHARISCOMMA_OUT,
        GT2_RXCHARISK_OUT               =>      GT2_RXCHARISK_OUT,
        GT2_RXDISPERR_OUT               =>      GT2_RXDISPERR_OUT,
        GT2_RXNOTINTABLE_OUT            =>      GT2_RXNOTINTABLE_OUT,
        ------------------------ Receive Ports - RX AFE Ports ----------------------
        GT2_GTPRXN_IN                   =>      data_n_i(2),-----GT2_GTPRXN_IN,
        GT2_GTPRXP_IN                   =>      data_p_i(2),-----GT2_GTPRXP_IN,
        -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
        GT2_RXMCOMMAALIGNEN_IN          =>      GT2_RXMCOMMAALIGNEN_IN,
        GT2_RXPCOMMAALIGNEN_IN          =>      GT2_RXPCOMMAALIGNEN_IN,
        -------------------- Receive Ports - RX Equailizer Ports -------------------
        GT2_RXLPMHFHOLD_IN              =>      GT2_RXLPMHFHOLD_IN,
        GT2_RXLPMLFHOLD_IN              =>      GT2_RXLPMLFHOLD_IN,
        --------------- Receive Ports - RX Fabric Output Control Ports -------------
        GT2_RXOUTCLK_OUT                =>      gt2_rxoutclk_i,
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        GT2_GTRXRESET_IN                =>      gt2_gtrxreset_i,
        -------------- Receive Ports -RX Initialization and Reset Ports ------------
        GT2_RXRESETDONE_OUT             =>      gt2_rxresetdone_i,
        --------------------- TX Initialization and Reset Ports --------------------
        GT2_GTTXRESET_IN                =>      gt2_gttxreset_i,
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        GT2_TXPCSRESET_IN               =>      gt2_txpcsreset_i,


   ---     GT3_DRP_BUSY_OUT                =>      open,
  
        --_____________________________________________________________________
        --_____________________________________________________________________
        --GT3  (X0Y3)

        ---------------------------- Channel - DRP Ports  --------------------------
      --  GT3_DRPADDR_IN                  =>      GT3_DRPADDR_IN,
      --  GT3_DRPCLK_IN                   =>      '0',--GT3_DRPCLK_IN,
      --  GT3_DRPDI_IN                    =>      GT3_DRPDI_IN,
      --  GT3_DRPDO_OUT                   =>      GT3_DRPDO_OUT,
      --  GT3_DRPEN_IN                    =>      GT3_DRPEN_IN,
      --  GT3_DRPRDY_OUT                  =>      GT3_DRPRDY_OUT,
     --   GT3_DRPWE_IN                    =>      GT3_DRPWE_IN,
        --------------------- RX Initialization and Reset Ports --------------------
      --  GT3_RXUSERRDY_IN                =>      gt3_rxuserrdy_i,
        -------------------------- RX Margin Analysis Ports ------------------------
      --  GT3_EYESCANDATAERROR_OUT        =>      GT3_EYESCANDATAERROR_OUT,
        ------------------------- Receive Ports - CDR Ports ------------------------
       -- GT3_RXCDRLOCK_OUT               =>      GT3_RXCDRLOCK_OUT,
        ------------------ Receive Ports - FPGA RX Interface Ports -----------------
       -- GT3_RXDATA_OUT                  =>      serdes_out_data(63 downto 48),--GT3_RXDATA_OUT,
       -- GT3_RXUSRCLK_IN                 =>      GT3_RXUSRCLK_IN,
       -- GT3_RXUSRCLK2_IN                =>      GT3_RXUSRCLK2_IN,
        ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
       -- GT3_RXCHARISCOMMA_OUT           =>      GT3_RXCHARISCOMMA_OUT,
       -- GT3_RXCHARISK_OUT               =>      GT3_RXCHARISK_OUT,
       -- GT3_RXDISPERR_OUT               =>      GT3_RXDISPERR_OUT,
       -- GT3_RXNOTINTABLE_OUT            =>      GT3_RXNOTINTABLE_OUT,
        ------------------------ Receive Ports - RX AFE Ports ----------------------
       -- GT3_GTPRXN_IN                   =>      data_n_i(3),----GT3_GTPRXN_IN,
       -- GT3_GTPRXP_IN                   =>      data_p_i(3),----GT3_GTPRXP_IN,
        -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
       -- GT3_RXMCOMMAALIGNEN_IN          =>      GT3_RXMCOMMAALIGNEN_IN,
       -- GT3_RXPCOMMAALIGNEN_IN          =>      GT3_RXPCOMMAALIGNEN_IN,
        -------------------- Receive Ports - RX Equailizer Ports -------------------
       -- GT3_RXLPMHFHOLD_IN              =>      GT3_RXLPMHFHOLD_IN,
       --- GT3_RXLPMLFHOLD_IN              =>      GT3_RXLPMLFHOLD_IN,
        --------------- Receive Ports - RX Fabric Output Control Ports -------------
       --- GT3_RXOUTCLK_OUT                =>      gt3_rxoutclk_i,
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
       --- GT3_GTRXRESET_IN                =>      gt3_gtrxreset_i,
        -------------- Receive Ports -RX Initialization and Reset Ports ------------
       --- GT3_RXRESETDONE_OUT             =>      gt3_rxresetdone_i,
        --------------------- TX Initialization and Reset Ports --------------------
       --- GT3_GTTXRESET_IN                =>      gt3_gttxreset_i,
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
       --- GT3_TXPCSRESET_IN               =>      gt3_txpcsreset_i,




    --____________________________COMMON PORTS________________________________
        ----------------- Common Block - GTPE2_COMMON Clocking Ports ---------------
        GT0_GTREFCLK0_IN                =>      ref_clk,--GT0_GTREFCLK0_IN,
        -------------------------- Common Block - PLL Ports ------------------------
        GT0_PLL0LOCK_OUT                =>      gt0_pll0lock_i,
        GT0_PLL0LOCKDETCLK_IN           =>      '0',--GT0_PLL0LOCKDETCLK_IN,
        GT0_PLL0REFCLKLOST_OUT          =>      gt0_pll0refclklost_i,
        GT0_PLL0RESET_IN                =>      gt0_pll0reset_i

    );
---  cmp_adc_serdes : serdes
---    port map(
 ---     DATA_IN_FROM_PINS_P => serdes_in_p,
 ---     DATA_IN_FROM_PINS_N => serdes_in_n,
 ---     DATA_IN_TO_DEVICE   => serdes_out_raw,
 ---     BITSLIP             => serdes_bitslip,
 ---     CLK_IN              => serdes_clk_buf,
 ---     CLK_DIV_IN          => fs_clk,
 ---     IO_RESET            => sys_rst
 ---     );

  
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

