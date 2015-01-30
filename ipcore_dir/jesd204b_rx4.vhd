-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version : 2.7
--  \   \         Application : 7 Series FPGAs Transceivers Wizard
--  /   /         Filename : jesd204b_rx4.vhd
-- /___/   /\     
-- \   \  /  \ 
--  \___\/\___\
--
--
-- Module jesd204b_rx4 (a GT Wrapper)
-- Generated by Xilinx 7 Series FPGAs Transceivers Wizard
-- 
-- 
-- (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES. 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;


--***************************** Entity Declaration ****************************

entity jesd204b_rx4 is
generic
(
    -- Simulation attributes
    WRAPPER_SIM_GTRESET_SPEEDUP    : string   := "FALSE" -- Set to "true" to speed up sim reset
);
port
(
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GT0  (X0Y1)
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

    --GT1  (X0Y2)
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

    --GT2  (X0Y3)
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


    --____________________________COMMON PORTS________________________________
    ----------------- Common Block - GTPE2_COMMON Clocking Ports ---------------
    GT0_GTREFCLK0_IN                        : in   std_logic;
    -------------------------- Common Block - PLL Ports ------------------------
    GT0_PLL0LOCK_OUT                        : out  std_logic;
    GT0_PLL0LOCKDETCLK_IN                   : in   std_logic;
    GT0_PLL0REFCLKLOST_OUT                  : out  std_logic;
    GT0_PLL0RESET_IN                        : in   std_logic


);


end jesd204b_rx4;
    
architecture RTL of jesd204b_rx4 is

    attribute CORE_GENERATION_INFO : string;
    attribute CORE_GENERATION_INFO of RTL : architecture is "jesd204b_rx4,gtwizard_v2_7,{protocol_file=JESD204}";


--***********************************Parameter Declarations********************

    constant DLY : time := 1 ns;

--***************************** Signal Declarations *****************************

    -- ground and tied_to_vcc_i signals
    signal  tied_to_ground_i                :   std_logic;
    signal  tied_to_ground_vec_i            :   std_logic_vector(63 downto 0);
    signal  tied_to_vcc_i                   :   std_logic;
    signal   gt0_pll0outclk_i       :   std_logic;
    signal   gt0_pll0outrefclk_i    :   std_logic;
    signal   gt0_pll1outclk_i       :   std_logic;
    signal   gt0_pll1outrefclk_i    :   std_logic;

  
    signal  gt0_mgtrefclktx_i           :   std_logic_vector(1 downto 0);
    signal  gt0_mgtrefclkrx_i           :   std_logic_vector(1 downto 0);
  
    signal  gt1_mgtrefclktx_i           :   std_logic_vector(1 downto 0);
    signal  gt1_mgtrefclkrx_i           :   std_logic_vector(1 downto 0);
  
    signal  gt2_mgtrefclktx_i           :   std_logic_vector(1 downto 0);
    signal  gt2_mgtrefclkrx_i           :   std_logic_vector(1 downto 0);
 

    signal   gt0_pll0clk_i       :   std_logic;
    signal   gt0_pll0refclk_i    :   std_logic;
    signal   gt0_pll1clk_i       :   std_logic;
    signal   gt0_pll1refclk_i    :   std_logic;
    signal    gt0_rst_i                       : std_logic;
      

    signal   gt1_pll0clk_i       :   std_logic;
    signal   gt1_pll0refclk_i    :   std_logic;
    signal   gt1_pll1clk_i       :   std_logic;
    signal   gt1_pll1refclk_i    :   std_logic;
    signal    gt1_rst_i                       : std_logic;
      

    signal   gt2_pll0clk_i       :   std_logic;
    signal   gt2_pll0refclk_i    :   std_logic;
    signal   gt2_pll1clk_i       :   std_logic;
    signal   gt2_pll1refclk_i    :   std_logic;
    signal    gt2_rst_i                       : std_logic;
      



--*************************** Component Declarations **************************
component jesd204b_rx4_GT
generic
(
    -- Simulation attributes
    GT_SIM_GTRESET_SPEEDUP    : string := "FALSE";
    TXSYNC_OVRD_IN            : bit    := '0';
    TXSYNC_MULTILANE_IN       : bit    := '0'     
);
port 
(   
    RST_IN                                  : in   std_logic;
    DRP_BUSY_OUT                            : out  std_logic;
   
    ---------------------------- Channel - DRP Ports  --------------------------
    DRPADDR_IN                              : in   std_logic_vector(8 downto 0);
    DRPCLK_IN                               : in   std_logic;
    DRPDI_IN                                : in   std_logic_vector(15 downto 0);
    DRPDO_OUT                               : out  std_logic_vector(15 downto 0);
    DRPEN_IN                                : in   std_logic;
    DRPRDY_OUT                              : out  std_logic;
    DRPWE_IN                                : in   std_logic;
    ------------------------ GTPE2_CHANNEL Clocking Ports ----------------------
    PLL0CLK_IN                              : in   std_logic;
    PLL0REFCLK_IN                           : in   std_logic;
    PLL1CLK_IN                              : in   std_logic;
    PLL1REFCLK_IN                           : in   std_logic;
    --------------------- RX Initialization and Reset Ports --------------------
    RXUSERRDY_IN                            : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    EYESCANDATAERROR_OUT                    : out  std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    RXCDRLOCK_OUT                           : out  std_logic;
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    RXDATA_OUT                              : out  std_logic_vector(15 downto 0);
    RXUSRCLK_IN                             : in   std_logic;
    RXUSRCLK2_IN                            : in   std_logic;
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    RXCHARISCOMMA_OUT                       : out  std_logic_vector(1 downto 0);
    RXCHARISK_OUT                           : out  std_logic_vector(1 downto 0);
    RXDISPERR_OUT                           : out  std_logic_vector(1 downto 0);
    RXNOTINTABLE_OUT                        : out  std_logic_vector(1 downto 0);
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    GTPRXN_IN                               : in   std_logic;
    GTPRXP_IN                               : in   std_logic;
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    RXMCOMMAALIGNEN_IN                      : in   std_logic;
    RXPCOMMAALIGNEN_IN                      : in   std_logic;
    -------------------- Receive Ports - RX Equailizer Ports -------------------
    RXLPMHFHOLD_IN                          : in   std_logic;
    RXLPMLFHOLD_IN                          : in   std_logic;
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    RXOUTCLK_OUT                            : out  std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    GTRXRESET_IN                            : in   std_logic;
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    RXRESETDONE_OUT                         : out  std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
    GTTXRESET_IN                            : in   std_logic;
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    TXPCSRESET_IN                           : in   std_logic


);
end component;


    constant PLL0_FBDIV_IN      :   integer := 5;
    constant PLL1_FBDIV_IN      :   integer := 1;
    constant PLL0_FBDIV_45_IN   :   integer := 5;
    constant PLL1_FBDIV_45_IN   :   integer := 4;
    constant PLL0_REFCLK_DIV_IN :   integer := 1;
    constant PLL1_REFCLK_DIV_IN :   integer := 1;

--********************************* Main Body of Code**************************

begin                       

    tied_to_ground_i                    <= '0';
    tied_to_ground_vec_i(63 downto 0)   <= (others => '0');
    tied_to_vcc_i                       <= '1';
    gt0_pll0clk_i    <= gt0_pll0outclk_i;  
    gt0_pll0refclk_i <= gt0_pll0outrefclk_i; 
    gt0_pll1clk_i    <= gt0_pll1outclk_i;  
    gt0_pll1refclk_i <= gt0_pll1outrefclk_i; 
    gt0_rst_i        <= GT0_PLL0RESET_IN;
      
   
    
    gt1_pll0clk_i    <= gt0_pll0outclk_i;  
    gt1_pll0refclk_i <= gt0_pll0outrefclk_i; 
    gt1_pll1clk_i    <= gt0_pll1outclk_i;  
    gt1_pll1refclk_i <= gt0_pll1outrefclk_i; 
    gt1_rst_i        <= GT0_PLL0RESET_IN;
      
   
    
    gt2_pll0clk_i    <= gt0_pll0outclk_i;  
    gt2_pll0refclk_i <= gt0_pll0outrefclk_i; 
    gt2_pll1clk_i    <= gt0_pll1outclk_i;  
    gt2_pll1refclk_i <= gt0_pll1outrefclk_i; 
    gt2_rst_i        <= GT0_PLL0RESET_IN;
      
   
    
    --------------------------- GT Instances  -------------------------------   
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GT0  (X0Y1)
    gt0_jesd204b_rx4_i : jesd204b_rx4_GT
    generic map
    (
        -- Simulation attributes
        GT_SIM_GTRESET_SPEEDUP => WRAPPER_SIM_GTRESET_SPEEDUP,
        TXSYNC_OVRD_IN         => ('0'),
        TXSYNC_MULTILANE_IN    => ('0')
    )
    port map
    (
        RST_IN                          =>      gt0_rst_i,
        DRP_BUSY_OUT                    =>      GT0_DRP_BUSY_OUT,
    
        ---------------------------- Channel - DRP Ports  --------------------------
        DRPADDR_IN                      =>      GT0_DRPADDR_IN,
        DRPCLK_IN                       =>      GT0_DRPCLK_IN,
        DRPDI_IN                        =>      GT0_DRPDI_IN,
        DRPDO_OUT                       =>      GT0_DRPDO_OUT,
        DRPEN_IN                        =>      GT0_DRPEN_IN,
        DRPRDY_OUT                      =>      GT0_DRPRDY_OUT,
        DRPWE_IN                        =>      GT0_DRPWE_IN,
        ------------------------ GTPE2_CHANNEL Clocking Ports ----------------------
        PLL0CLK_IN                      =>      gt0_pll0clk_i,
        PLL0REFCLK_IN                   =>      gt0_pll0refclk_i,
        PLL1CLK_IN                      =>      gt0_pll1clk_i,
        PLL1REFCLK_IN                   =>      gt0_pll1refclk_i,
        --------------------- RX Initialization and Reset Ports --------------------
        RXUSERRDY_IN                    =>      GT0_RXUSERRDY_IN,
        -------------------------- RX Margin Analysis Ports ------------------------
        EYESCANDATAERROR_OUT            =>      GT0_EYESCANDATAERROR_OUT,
        ------------------------- Receive Ports - CDR Ports ------------------------
        RXCDRLOCK_OUT                   =>      GT0_RXCDRLOCK_OUT,
        ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        RXDATA_OUT                      =>      GT0_RXDATA_OUT,
        RXUSRCLK_IN                     =>      GT0_RXUSRCLK_IN,
        RXUSRCLK2_IN                    =>      GT0_RXUSRCLK2_IN,
        ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
        RXCHARISCOMMA_OUT               =>      GT0_RXCHARISCOMMA_OUT,
        RXCHARISK_OUT                   =>      GT0_RXCHARISK_OUT,
        RXDISPERR_OUT                   =>      GT0_RXDISPERR_OUT,
        RXNOTINTABLE_OUT                =>      GT0_RXNOTINTABLE_OUT,
        ------------------------ Receive Ports - RX AFE Ports ----------------------
        GTPRXN_IN                       =>      GT0_GTPRXN_IN,
        GTPRXP_IN                       =>      GT0_GTPRXP_IN,
        -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
        RXMCOMMAALIGNEN_IN              =>      GT0_RXMCOMMAALIGNEN_IN,
        RXPCOMMAALIGNEN_IN              =>      GT0_RXPCOMMAALIGNEN_IN,
        -------------------- Receive Ports - RX Equailizer Ports -------------------
        RXLPMHFHOLD_IN                  =>      GT0_RXLPMHFHOLD_IN,
        RXLPMLFHOLD_IN                  =>      GT0_RXLPMLFHOLD_IN,
        --------------- Receive Ports - RX Fabric Output Control Ports -------------
        RXOUTCLK_OUT                    =>      GT0_RXOUTCLK_OUT,
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        GTRXRESET_IN                    =>      GT0_GTRXRESET_IN,
        -------------- Receive Ports -RX Initialization and Reset Ports ------------
        RXRESETDONE_OUT                 =>      GT0_RXRESETDONE_OUT,
        --------------------- TX Initialization and Reset Ports --------------------
        GTTXRESET_IN                    =>      GT0_GTTXRESET_IN,
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        TXPCSRESET_IN                   =>      GT0_TXPCSRESET_IN

    );

    --_________________________________________________________________________
    --_________________________________________________________________________
    --GT1  (X0Y2)
    gt1_jesd204b_rx4_i : jesd204b_rx4_GT
    generic map
    (
        -- Simulation attributes
        GT_SIM_GTRESET_SPEEDUP => WRAPPER_SIM_GTRESET_SPEEDUP,
        TXSYNC_OVRD_IN         => ('0'),
        TXSYNC_MULTILANE_IN    => ('0')
    )
    port map
    (
        RST_IN                          =>      gt1_rst_i,
        DRP_BUSY_OUT                    =>      GT1_DRP_BUSY_OUT,
    
        ---------------------------- Channel - DRP Ports  --------------------------
        DRPADDR_IN                      =>      GT1_DRPADDR_IN,
        DRPCLK_IN                       =>      GT1_DRPCLK_IN,
        DRPDI_IN                        =>      GT1_DRPDI_IN,
        DRPDO_OUT                       =>      GT1_DRPDO_OUT,
        DRPEN_IN                        =>      GT1_DRPEN_IN,
        DRPRDY_OUT                      =>      GT1_DRPRDY_OUT,
        DRPWE_IN                        =>      GT1_DRPWE_IN,
        ------------------------ GTPE2_CHANNEL Clocking Ports ----------------------
        PLL0CLK_IN                      =>      gt1_pll0clk_i,
        PLL0REFCLK_IN                   =>      gt1_pll0refclk_i,
        PLL1CLK_IN                      =>      gt1_pll1clk_i,
        PLL1REFCLK_IN                   =>      gt1_pll1refclk_i,
        --------------------- RX Initialization and Reset Ports --------------------
        RXUSERRDY_IN                    =>      GT1_RXUSERRDY_IN,
        -------------------------- RX Margin Analysis Ports ------------------------
        EYESCANDATAERROR_OUT            =>      GT1_EYESCANDATAERROR_OUT,
        ------------------------- Receive Ports - CDR Ports ------------------------
        RXCDRLOCK_OUT                   =>      GT1_RXCDRLOCK_OUT,
        ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        RXDATA_OUT                      =>      GT1_RXDATA_OUT,
        RXUSRCLK_IN                     =>      GT1_RXUSRCLK_IN,
        RXUSRCLK2_IN                    =>      GT1_RXUSRCLK2_IN,
        ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
        RXCHARISCOMMA_OUT               =>      GT1_RXCHARISCOMMA_OUT,
        RXCHARISK_OUT                   =>      GT1_RXCHARISK_OUT,
        RXDISPERR_OUT                   =>      GT1_RXDISPERR_OUT,
        RXNOTINTABLE_OUT                =>      GT1_RXNOTINTABLE_OUT,
        ------------------------ Receive Ports - RX AFE Ports ----------------------
        GTPRXN_IN                       =>      GT1_GTPRXN_IN,
        GTPRXP_IN                       =>      GT1_GTPRXP_IN,
        -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
        RXMCOMMAALIGNEN_IN              =>      GT1_RXMCOMMAALIGNEN_IN,
        RXPCOMMAALIGNEN_IN              =>      GT1_RXPCOMMAALIGNEN_IN,
        -------------------- Receive Ports - RX Equailizer Ports -------------------
        RXLPMHFHOLD_IN                  =>      GT1_RXLPMHFHOLD_IN,
        RXLPMLFHOLD_IN                  =>      GT1_RXLPMLFHOLD_IN,
        --------------- Receive Ports - RX Fabric Output Control Ports -------------
        RXOUTCLK_OUT                    =>      GT1_RXOUTCLK_OUT,
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        GTRXRESET_IN                    =>      GT1_GTRXRESET_IN,
        -------------- Receive Ports -RX Initialization and Reset Ports ------------
        RXRESETDONE_OUT                 =>      GT1_RXRESETDONE_OUT,
        --------------------- TX Initialization and Reset Ports --------------------
        GTTXRESET_IN                    =>      GT1_GTTXRESET_IN,
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        TXPCSRESET_IN                   =>      GT1_TXPCSRESET_IN

    );

    --_________________________________________________________________________
    --_________________________________________________________________________
    --GT2  (X0Y3)
    gt2_jesd204b_rx4_i : jesd204b_rx4_GT
    generic map
    (
        -- Simulation attributes
        GT_SIM_GTRESET_SPEEDUP => WRAPPER_SIM_GTRESET_SPEEDUP,
        TXSYNC_OVRD_IN         => ('0'),
        TXSYNC_MULTILANE_IN    => ('0')
    )
    port map
    (
        RST_IN                          =>      gt2_rst_i,
        DRP_BUSY_OUT                    =>      GT2_DRP_BUSY_OUT,
    
        ---------------------------- Channel - DRP Ports  --------------------------
        DRPADDR_IN                      =>      GT2_DRPADDR_IN,
        DRPCLK_IN                       =>      GT2_DRPCLK_IN,
        DRPDI_IN                        =>      GT2_DRPDI_IN,
        DRPDO_OUT                       =>      GT2_DRPDO_OUT,
        DRPEN_IN                        =>      GT2_DRPEN_IN,
        DRPRDY_OUT                      =>      GT2_DRPRDY_OUT,
        DRPWE_IN                        =>      GT2_DRPWE_IN,
        ------------------------ GTPE2_CHANNEL Clocking Ports ----------------------
        PLL0CLK_IN                      =>      gt2_pll0clk_i,
        PLL0REFCLK_IN                   =>      gt2_pll0refclk_i,
        PLL1CLK_IN                      =>      gt2_pll1clk_i,
        PLL1REFCLK_IN                   =>      gt2_pll1refclk_i,
        --------------------- RX Initialization and Reset Ports --------------------
        RXUSERRDY_IN                    =>      GT2_RXUSERRDY_IN,
        -------------------------- RX Margin Analysis Ports ------------------------
        EYESCANDATAERROR_OUT            =>      GT2_EYESCANDATAERROR_OUT,
        ------------------------- Receive Ports - CDR Ports ------------------------
        RXCDRLOCK_OUT                   =>      GT2_RXCDRLOCK_OUT,
        ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        RXDATA_OUT                      =>      GT2_RXDATA_OUT,
        RXUSRCLK_IN                     =>      GT2_RXUSRCLK_IN,
        RXUSRCLK2_IN                    =>      GT2_RXUSRCLK2_IN,
        ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
        RXCHARISCOMMA_OUT               =>      GT2_RXCHARISCOMMA_OUT,
        RXCHARISK_OUT                   =>      GT2_RXCHARISK_OUT,
        RXDISPERR_OUT                   =>      GT2_RXDISPERR_OUT,
        RXNOTINTABLE_OUT                =>      GT2_RXNOTINTABLE_OUT,
        ------------------------ Receive Ports - RX AFE Ports ----------------------
        GTPRXN_IN                       =>      GT2_GTPRXN_IN,
        GTPRXP_IN                       =>      GT2_GTPRXP_IN,
        -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
        RXMCOMMAALIGNEN_IN              =>      GT2_RXMCOMMAALIGNEN_IN,
        RXPCOMMAALIGNEN_IN              =>      GT2_RXPCOMMAALIGNEN_IN,
        -------------------- Receive Ports - RX Equailizer Ports -------------------
        RXLPMHFHOLD_IN                  =>      GT2_RXLPMHFHOLD_IN,
        RXLPMLFHOLD_IN                  =>      GT2_RXLPMLFHOLD_IN,
        --------------- Receive Ports - RX Fabric Output Control Ports -------------
        RXOUTCLK_OUT                    =>      GT2_RXOUTCLK_OUT,
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        GTRXRESET_IN                    =>      GT2_GTRXRESET_IN,
        -------------- Receive Ports -RX Initialization and Reset Ports ------------
        RXRESETDONE_OUT                 =>      GT2_RXRESETDONE_OUT,
        --------------------- TX Initialization and Reset Ports --------------------
        GTTXRESET_IN                    =>      GT2_GTTXRESET_IN,
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        TXPCSRESET_IN                   =>      GT2_TXPCSRESET_IN

    );


    --_________________________________________________________________________
    --_________________________________________________________________________
    --_________________________GTPE2_COMMON____________________________________

    gtpe2_common_0_i : GTPE2_COMMON
    generic map
    (
            -- Simulation attributes
            SIM_RESET_SPEEDUP    => WRAPPER_SIM_GTRESET_SPEEDUP,
            SIM_PLL0REFCLK_SEL   => ("001"),
            SIM_PLL1REFCLK_SEL   => ("001"),
            SIM_VERSION          => ("1.0"),

            PLL0_FBDIV           => PLL0_FBDIV_IN     ,	
	    PLL0_FBDIV_45        => PLL0_FBDIV_45_IN  ,	
	    PLL0_REFCLK_DIV      => PLL0_REFCLK_DIV_IN,	
	    PLL1_FBDIV           => PLL1_FBDIV_IN     ,	
	    PLL1_FBDIV_45        => PLL1_FBDIV_45_IN  ,	
	    PLL1_REFCLK_DIV      => PLL1_REFCLK_DIV_IN,	            


       ------------------COMMON BLOCK Attributes---------------
        BIAS_CFG                                =>     (x"0000000000050001"),
        COMMON_CFG                              =>     (x"00000000"),

       ----------------------------PLL Attributes----------------------------
        PLL0_CFG                                =>     (x"01F03DC"),
        PLL0_DMON_CFG                           =>     ('0'),
        PLL0_INIT_CFG                           =>     (x"00001E"),
        PLL0_LOCK_CFG                           =>     (x"1E8"),
        PLL1_CFG                                =>     (x"01F03DC"),
        PLL1_DMON_CFG                           =>     ('0'),
        PLL1_INIT_CFG                           =>     (x"00001E"),
        PLL1_LOCK_CFG                           =>     (x"1E8"),
        PLL_CLKOUT_CFG                          =>     (x"00"),

       ----------------------------Reserved Attributes----------------------------
        RSVD_ATTR0                              =>     (x"0000"),
        RSVD_ATTR1                              =>     (x"0000")

        
    )
    port map
    (
	     DMONITOROUT             => open,	
        ------------- Common Block  - Dynamic Reconfiguration Port (DRP) -----------
        DRPADDR                         =>      tied_to_ground_vec_i(7 downto 0),
        DRPCLK                          =>      tied_to_ground_i,
        DRPDI                           =>      tied_to_ground_vec_i(15 downto 0),
        DRPDO                           =>      open,
        DRPEN                           =>      tied_to_ground_i,
        DRPRDY                          =>      open,
        DRPWE                           =>      tied_to_ground_i,
        ----------------- Common Block - GTPE2_COMMON Clocking Ports ---------------
        GTEASTREFCLK0                   =>      tied_to_ground_i,
        GTEASTREFCLK1                   =>      tied_to_ground_i,
        GTGREFCLK1                      =>      tied_to_ground_i,
        GTREFCLK0                       =>      GT0_GTREFCLK0_IN,
        GTREFCLK1                       =>      tied_to_ground_i,
        GTWESTREFCLK0                   =>      tied_to_ground_i,
        GTWESTREFCLK1                   =>      tied_to_ground_i,
        PLL0OUTCLK                      =>      gt0_pll0outclk_i,
        PLL0OUTREFCLK                   =>      gt0_pll0outrefclk_i,
        PLL1OUTCLK                      =>      gt0_pll1outclk_i,
        PLL1OUTREFCLK                   =>      gt0_pll1outrefclk_i,
        -------------------------- Common Block - PLL Ports ------------------------
        PLL0FBCLKLOST                   =>      open,
        PLL0LOCK                        =>      GT0_PLL0LOCK_OUT,
        PLL0LOCKDETCLK                  =>      GT0_PLL0LOCKDETCLK_IN,
        PLL0LOCKEN                      =>      tied_to_vcc_i,
        PLL0PD                          =>      tied_to_ground_i,
        PLL0REFCLKLOST                  =>      GT0_PLL0REFCLKLOST_OUT,
        PLL0REFCLKSEL                   =>      "001",
        PLL0RESET                       =>      GT0_PLL0RESET_IN,
        PLL1FBCLKLOST                   =>      open,
        PLL1LOCK                        =>      open,
        PLL1LOCKDETCLK                  =>      tied_to_ground_i,
        PLL1LOCKEN                      =>      tied_to_vcc_i,
        PLL1PD                          =>      '1',
        PLL1REFCLKLOST                  =>      open,
        PLL1REFCLKSEL                   =>      "001",
        PLL1RESET                       =>      tied_to_ground_i,
        ---------------------------- Common Block - Ports --------------------------
        BGRCALOVRDENB                   =>      tied_to_vcc_i,
        GTGREFCLK0                      =>      tied_to_ground_i,
        PLLRSVD1                        =>      "0000000000000000",
        PLLRSVD2                        =>      "00000",
        REFCLKOUTMONITOR0               =>      open,
        REFCLKOUTMONITOR1               =>      open,
        ------------------------ Common Block - RX AFE Ports -----------------------
        PMARSVDOUT                      =>      open,
        --------------------------------- QPLL Ports -------------------------------
        BGBYPASSB                       =>      tied_to_vcc_i,
        BGMONITORENB                    =>      tied_to_vcc_i,
        BGPDB                           =>      tied_to_vcc_i,
        BGRCALOVRD                      =>      "00000",
        PMARSVD                         =>      "00000000",
        RCALENB                         =>      tied_to_vcc_i

    );

     
end RTL;
