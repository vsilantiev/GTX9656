 
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 2.7
--  \   \         Application : 7 Series FPGAs Transceivers Wizard 
--  /   /         Filename : jesd204b_rx4_tb_imp.vhd
-- /___/   /\     
-- \   \  /  \ 
--  \___\/\___\ 
--
--
-- Module jesd204b_rx4_TB_IMP
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
library std;                  -- for Printing
use std.textio.all;

entity jesd204b_rx4_TB_IMP is
end jesd204b_rx4_TB_IMP;

architecture RTL of jesd204b_rx4_TB_IMP is

--*************************Parameter Declarations******************************

    constant   TX_REFCLK_PERIOD        :   time :=  8.138 ns;
    constant   RX_REFCLK_PERIOD        :   time :=  8.138 ns;   
    constant   SYSCLK_PERIOD           :   time := 10.0 ns;    
    constant   DCLK_PERIOD             :   time :=  10.0 ns;
  
--**************************** Component Declarations *************************

    component jesd204b_rx4_exdes 
    port
    (
        Q0_CLK1_GTREFCLK_PAD_N_IN   :   in std_logic;
        Q0_CLK1_GTREFCLK_PAD_P_IN   :   in std_logic;
        DRP_CLK_IN                        :   in std_logic;
        GTTX_RESET_IN                     :   in std_logic;
        GTRX_RESET_IN                     :   in std_logic;
        PLL0_RESET_IN                     :   in std_logic; 
        TRACK_DATA_OUT                    :   out std_logic;
        RXN_IN                            :   in std_logic_vector(2 downto 0);
        RXP_IN                            :   in std_logic_vector(2 downto 0);
        TXN_OUT                           :   out std_logic_vector(2 downto 0);
        TXP_OUT                           :   out std_logic_vector(2 downto 0)
    );
    end component;

    component tx_jesd204b_rx4_exdes 
    generic
    (
        EXAMPLE_CONFIG_INDEPENDENT_LANES: integer    := 1;
        EXAMPLE_LANE_WITH_START_CHAR    : integer    := 0;
        EXAMPLE_WORDS_IN_BRAM           : integer    := 512;
        EXAMPLE_SIM_GTRESET_SPEEDUP     : string     := "FALSE";
        EXAMPLE_USE_CHIPSCOPE           : integer    := 0     --0 - drive resets from top level ports
    );
    port
    (
        Q0_CLK1_GTREFCLK_PAD_N_IN   :   in std_logic;
        Q0_CLK1_GTREFCLK_PAD_P_IN   :   in std_logic;
        DRP_CLK_IN                        :   in std_logic;
        GTTX_RESET_IN                     :   in std_logic;
        GTRX_RESET_IN                     :   in std_logic;
        PLL0_RESET_IN                     :   in std_logic; 
        
        RXN_IN                            :   in std_logic_vector(2 downto 0);
        RXP_IN                            :   in std_logic_vector(2 downto 0);
        TXN_OUT                           :   out std_logic_vector(2 downto 0);
        TXP_OUT                           :   out std_logic_vector(2 downto 0)
    );
    end component;
    component SIM_RESET_GT_MODEL 
    port 
    (
        GSR_IN     : in std_logic
    );
    end component;

--************************Internal Register Declarations***********************

--************************** Register Declarations ****************************        

    signal  tx_refclk_n_r           :   std_logic;
    signal  rx_refclk_n_r           :   std_logic;
    signal  drp_clk_r               :   std_logic;
    signal  sysclk_r                :   std_logic;
    signal  tx_usrclk_r             :   std_logic;
    signal  rx_usrclk_r             :   std_logic;
    signal  gsr_r                   :   std_logic;
    signal  gts_r                   :   std_logic;
    signal  gttx_reset_i            :   std_logic;
    signal  gtrx_reset_i            :   std_logic;
    signal  pll0_reset_i            :   std_logic;
    
    signal  reset_i                 :   std_logic;
    signal  track_data_high_r       :   std_logic;
    signal  track_data_low_r        :   std_logic;    
--********************************Wire Declarations**********************************
    
    ----------------------------------- Global Signals ------------------------------
    signal  tx_refclk_p_r           :   std_logic;
    signal  rx_refclk_p_r           :   std_logic;    
    signal  tied_to_ground_i        :   std_logic;
    ---------------------------- Example Module Connections -------------------------
    signal  rxn_in_i                :   std_logic_vector(2 downto 0);
    signal  rxp_in_i                :   std_logic_vector(2 downto 0);
    signal  txn_out_i               :   std_logic_vector(2 downto 0);
    signal  txp_out_i               :   std_logic_vector(2 downto 0);
    
    signal  rxn_tie_i               :   std_logic_vector(2 downto 0);
    signal  rxp_tie_i               :   std_logic_vector(2 downto 0);

    signal  track_data_i            :   std_logic;

--*********************************Main Body of Code**********************************
begin

    -- ------------------------------- Tie offs ------------------------------- 
    
    tied_to_ground_i        <=  '0';
    
    -- ------------------------- GT Serial Connections -----------------------
    rxn_in_i                <=  txn_out_i;
    rxp_in_i                <=  txp_out_i;  
    rxn_tie_i               <= (others=>'0');
    rxp_tie_i               <= (others=>'0');

    ------- Instantiate the ROC module for resetting the VHDL GT Smart Model ------
    ------- Instantiate SIM_RESET_GT_MODEL module only for Functional simulation ------
    ------- For Timing simulation please comment out the instance of SIM_RESET_GT_MODEL ------

    sim_reset_mgt_model_i : SIM_RESET_GT_MODEL  
    port map    
    (
        GSR_IN           =>           reset_i
    );

    ---------------------- Generate Reference Clock input  --------------------
    
    process
    begin
        tx_refclk_n_r  <=  '1';
        wait for TX_REFCLK_PERIOD/2;
        tx_refclk_n_r  <=  '0';
        wait for TX_REFCLK_PERIOD/2;
    end process;

    tx_refclk_p_r <= not tx_refclk_n_r;
    
    process
    begin
        rx_refclk_n_r  <=  '1';
        wait for RX_REFCLK_PERIOD/2;
        rx_refclk_n_r  <=  '0';
        wait for RX_REFCLK_PERIOD/2;
    end process;

    rx_refclk_p_r <= not rx_refclk_n_r;
                 

 
    -------------------------- Generate DRP Clock ----------------------------
    
    process
    begin
        drp_clk_r  <=  '1';
        wait for DCLK_PERIOD/2;
        drp_clk_r  <=  '0';
        wait for DCLK_PERIOD/2;
    end process;

    -------------------------- Generate Free Running System Clock --------------
    
    process
    begin
        sysclk_r  <=  '1';
        wait for SYSCLK_PERIOD/2;
        sysclk_r  <=  '0';
        wait for SYSCLK_PERIOD/2;
    end process;
                
    ----------------------------------- Resets ---------------------------------
    
    process

    procedure tbprint (message : in string) is
      variable outline : line;
    begin
      write(outline, string'(message)); 
      writeline(output,outline);
    end tbprint;

    begin
        tbprint("Timing checks are not valid");
        gttx_reset_i   <= '0';
        gtrx_reset_i   <= '0';
        pll0_reset_i   <= '0';
        wait for 200 ns;
        gttx_reset_i   <= '1';
        gtrx_reset_i   <= '1';
        pll0_reset_i   <= '1';
        wait for 200 ns;
        gttx_reset_i   <= '0';
        gtrx_reset_i   <= '0';
        pll0_reset_i   <= '0';
        tbprint("Timing checks are valid");
        wait; 
    end process;

    -------------------------------- Track Data --------------------------------
    
    process

    procedure tbprint (message : in string) is
      variable outline : line;
    begin
      write(outline, string'("## Time: "));
      write(outline, NOW, RIGHT, 0, ps);
      write(outline, string'("  "));
      write(outline, string'(message)); 
      writeline(output,outline);
    end tbprint;

 
    begin
        track_data_high_r <= '0';
        wait for 297 us;
        if (track_data_i = '1') then
            track_data_high_r <= '1';
        end if;
        wait for 2 us;
        if ((track_data_high_r = '1') and (track_data_low_r = '0')) then
            tbprint("------- TEST PASSED -------");
        tbprint("------- TEST COMPLETED SUCCESSFULLY-------");
            assert false report "Simulation Stopped." severity failure;
        else
            tbprint("####### ERROR: TEST FAILED ! #######");
            assert false report "Test Failed." severity failure;
        end if;
    end process;
    
    process
    begin
        track_data_low_r <= '0';
        wait for 297 us;
        wait until track_data_i = '0';
        track_data_low_r <= '1';
        wait for 2 us;
    end process;
   

    ------------------- Instantiate an jesd204b_rx4_exdes module  -----------------

    jesd204b_rx4_exdes_i : jesd204b_rx4_exdes
    port map
    (
        Q0_CLK1_GTREFCLK_PAD_N_IN       =>  rx_refclk_n_r,
        Q0_CLK1_GTREFCLK_PAD_P_IN       =>  rx_refclk_p_r,
        DRP_CLK_IN                  =>  drp_clk_r,
        GTTX_RESET_IN               =>  gttx_reset_i,
        GTRX_RESET_IN               =>  gtrx_reset_i,
        PLL0_RESET_IN               =>  pll0_reset_i,
        TRACK_DATA_OUT              =>  track_data_i,
        RXN_IN                      =>  rxn_in_i,
        RXP_IN                      =>  rxp_in_i,
        TXN_OUT                     =>  open,
        TXP_OUT                     =>  open
    );

    tx_jesd204b_rx4_exdes_i : tx_jesd204b_rx4_exdes
    port map
    (
        Q0_CLK1_GTREFCLK_PAD_N_IN       =>  rx_refclk_n_r,
        Q0_CLK1_GTREFCLK_PAD_P_IN       =>  rx_refclk_p_r,
        DRP_CLK_IN                  =>  drp_clk_r,
        GTTX_RESET_IN               =>  gttx_reset_i,
        GTRX_RESET_IN               =>  gtrx_reset_i,
        PLL0_RESET_IN               =>  pll0_reset_i,
        RXN_IN                      =>  rxn_tie_i,
        RXP_IN                      =>  rxp_tie_i,
        TXN_OUT                     =>  txn_out_i,
        TXP_OUT                     =>  txp_out_i
    );

end RTL;

