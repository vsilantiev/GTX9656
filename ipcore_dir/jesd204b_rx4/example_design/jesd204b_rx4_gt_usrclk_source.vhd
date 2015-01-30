------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 2.7
--  \   \         Application : 7 Series FPGAs Transceivers Wizard 
--  /   /         Filename : jesd204b_rx4_gt_usrclk_source.vhd
-- /___/   /\      
-- \   \  /  \ 
--  \___\/\___\ 
--
--
-- Module jesd204b_rx4_GT_USRCLK_SOURCE (for use with GTs)
-- Generated by Xilinx 7 Series FPGAs Transceivers 7 Series FPGAs Transceivers Wizard
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
use ieee.std_logic_unsigned.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

--***********************************Entity Declaration*******************************
entity jesd204b_rx4_GT_USRCLK_SOURCE is
port
(
    Q0_CLK0_GTREFCLK_PAD_N_IN               : in   std_logic;
    Q0_CLK0_GTREFCLK_PAD_P_IN               : in   std_logic;
    Q0_CLK0_GTREFCLK_OUT                    : out  std_logic;
 
    GT0_RXUSRCLK_OUT             : out std_logic;
    GT0_RXUSRCLK2_OUT            : out std_logic;
    GT0_RXOUTCLK_IN              : in  std_logic;
    GT0_RXCLK_LOCK_OUT           : out std_logic;
    GT0_RX_MMCM_RESET_IN         : in std_logic;
 
    GT1_RXUSRCLK_OUT             : out std_logic;
    GT1_RXUSRCLK2_OUT            : out std_logic;
    GT1_RXOUTCLK_IN              : in  std_logic;
    GT1_RXCLK_LOCK_OUT           : out std_logic;
    GT1_RX_MMCM_RESET_IN         : in std_logic;
 
    GT2_RXUSRCLK_OUT             : out std_logic;
    GT2_RXUSRCLK2_OUT            : out std_logic;
    GT2_RXOUTCLK_IN              : in  std_logic;
    GT2_RXCLK_LOCK_OUT           : out std_logic;
    GT2_RX_MMCM_RESET_IN         : in std_logic;
 
    GT3_RXUSRCLK_OUT             : out std_logic;
    GT3_RXUSRCLK2_OUT            : out std_logic;
    GT3_RXOUTCLK_IN              : in  std_logic;
    GT3_RXCLK_LOCK_OUT           : out std_logic;
    GT3_RX_MMCM_RESET_IN         : in std_logic;
    DRPCLK_IN                          : in  std_logic;
    DRPCLK_OUT                         : out std_logic
);


end jesd204b_rx4_GT_USRCLK_SOURCE;

architecture RTL of jesd204b_rx4_GT_USRCLK_SOURCE is

component JESD204B_RX4_CLOCK_MODULE is
generic
(
    MULT                : real              := 2.0;
    DIVIDE              : integer           := 2;    
    CLK_PERIOD          : real              := 6.4;    
    OUT0_DIVIDE         : real              := 2.0;
    OUT1_DIVIDE         : integer           := 2;
    OUT2_DIVIDE         : integer           := 2;
    OUT3_DIVIDE         : integer           := 2
);
port
 (-- Clock in ports
  CLK_IN           : in     std_logic;
  -- Clock out ports
  CLK0_OUT          : out    std_logic;
  CLK1_OUT          : out    std_logic;
  CLK2_OUT          : out    std_logic;
  CLK3_OUT          : out    std_logic;
  -- Status and control signals
  MMCM_RESET_IN     : in     std_logic;
  MMCM_LOCKED_OUT   : out    std_logic
 );
end component;

--*********************************Wire Declarations**********************************

    signal   tied_to_ground_i     :   std_logic;
    signal   tied_to_vcc_i        :   std_logic;
 
    signal   gt0_txoutclk_i :   std_logic;
    signal   gt0_rxoutclk_i :   std_logic;
 
    signal   gt1_txoutclk_i :   std_logic;
    signal   gt1_rxoutclk_i :   std_logic;
 
    signal   gt2_txoutclk_i :   std_logic;
    signal   gt2_rxoutclk_i :   std_logic;
 
    signal   gt3_txoutclk_i :   std_logic;
    signal   gt3_rxoutclk_i :   std_logic;

    attribute syn_noclockbuf : boolean;
    
    signal   q0_clk0_gtrefclk :   std_logic;
    attribute syn_noclockbuf of q0_clk0_gtrefclk : signal is true;

    signal  gt0_rxusrclk_i                  : std_logic;
    signal  gt1_rxusrclk_i                  : std_logic;
    signal  gt2_rxusrclk_i                  : std_logic;
    signal  gt3_rxusrclk_i                  : std_logic;
    signal  rxoutclk_mmcm0_locked_i         : std_logic;
    signal  rxoutclk_mmcm0_reset_i          : std_logic;
    signal  gt0_rxoutclk_to_mmcm_i          : std_logic;
    signal  rxoutclk_mmcm1_locked_i         : std_logic;
    signal  rxoutclk_mmcm1_reset_i          : std_logic;
    signal  gt1_rxoutclk_to_mmcm_i          : std_logic;
    signal  rxoutclk_mmcm2_locked_i         : std_logic;
    signal  rxoutclk_mmcm2_reset_i          : std_logic;
    signal  gt2_rxoutclk_to_mmcm_i          : std_logic;
    signal  rxoutclk_mmcm3_locked_i         : std_logic;
    signal  rxoutclk_mmcm3_reset_i          : std_logic;
    signal  gt3_rxoutclk_to_mmcm_i          : std_logic;


begin

--*********************************** Beginning of Code *******************************

    --  Static signal Assigments    
    tied_to_ground_i         <= '0';
    tied_to_vcc_i            <= '1';
    gt0_rxoutclk_i                               <= GT0_RXOUTCLK_IN;
    gt1_rxoutclk_i                               <= GT1_RXOUTCLK_IN;
    gt2_rxoutclk_i                               <= GT2_RXOUTCLK_IN;
    gt3_rxoutclk_i                               <= GT3_RXOUTCLK_IN;

    
    Q0_CLK0_GTREFCLK_OUT                         <= q0_clk0_gtrefclk;

    --IBUFDS_GTE2
    ibufds_instq0_clk0 : IBUFDS_GTE2  
    port map
    (
        O               => 	q0_clk0_gtrefclk,
        ODIV2           =>    open,
        CEB             => 	tied_to_ground_i,
        I               => 	Q0_CLK0_GTREFCLK_PAD_P_IN,
        IB              => 	Q0_CLK0_GTREFCLK_PAD_N_IN
    );

    
    --BUFG
    bufg_inst : BUFG 
    port map 
    (
        I               =>	DRPCLK_IN,
        O               =>	DRPCLK_OUT 
    );
    
    -- Instantiate a MMCM module to divide the reference clock. Uses internal feedback
    -- for improved jitter performance, and to avoid consuming an additional BUFG

    rxoutclk_mmcm0_reset_i                       <= GT0_RX_MMCM_RESET_IN;
    rxoutclk_mmcm0_i : JESD204B_RX4_CLOCK_MODULE
    generic map
    (
        MULT                            =>      5.0,
        DIVIDE                          =>      1,
        CLK_PERIOD                      =>      8.138,
        OUT0_DIVIDE                     =>      4.0,
        OUT1_DIVIDE                     =>      1,
        OUT2_DIVIDE                     =>      1,
        OUT3_DIVIDE                     =>      1
    )
    port map
    (
        CLK0_OUT                        =>      gt0_rxusrclk_i,
        CLK1_OUT                        =>      open,
        CLK2_OUT                        =>      open,
        CLK3_OUT                        =>      open,
        CLK_IN                          =>      gt0_rxoutclk_i,
        MMCM_LOCKED_OUT                 =>      rxoutclk_mmcm0_locked_i,
        MMCM_RESET_IN                   =>      rxoutclk_mmcm0_reset_i
    );


    rxoutclk_mmcm1_reset_i                       <= GT1_RX_MMCM_RESET_IN;
    rxoutclk_mmcm1_i : JESD204B_RX4_CLOCK_MODULE
    generic map
    (
        MULT                            =>      5.0,
        DIVIDE                          =>      1,
        CLK_PERIOD                      =>      8.138,
        OUT0_DIVIDE                     =>      4.0,
        OUT1_DIVIDE                     =>      1,
        OUT2_DIVIDE                     =>      1,
        OUT3_DIVIDE                     =>      1
    )
    port map
    (
        CLK0_OUT                        =>      gt1_rxusrclk_i,
        CLK1_OUT                        =>      open,
        CLK2_OUT                        =>      open,
        CLK3_OUT                        =>      open,
        CLK_IN                          =>      gt1_rxoutclk_i,
        MMCM_LOCKED_OUT                 =>      rxoutclk_mmcm1_locked_i,
        MMCM_RESET_IN                   =>      rxoutclk_mmcm1_reset_i
    );


    rxoutclk_mmcm2_reset_i                       <= GT2_RX_MMCM_RESET_IN;
    rxoutclk_mmcm2_i : JESD204B_RX4_CLOCK_MODULE
    generic map
    (
        MULT                            =>      5.0,
        DIVIDE                          =>      1,
        CLK_PERIOD                      =>      8.138,
        OUT0_DIVIDE                     =>      4.0,
        OUT1_DIVIDE                     =>      1,
        OUT2_DIVIDE                     =>      1,
        OUT3_DIVIDE                     =>      1
    )
    port map
    (
        CLK0_OUT                        =>      gt2_rxusrclk_i,
        CLK1_OUT                        =>      open,
        CLK2_OUT                        =>      open,
        CLK3_OUT                        =>      open,
        CLK_IN                          =>      gt2_rxoutclk_i,
        MMCM_LOCKED_OUT                 =>      rxoutclk_mmcm2_locked_i,
        MMCM_RESET_IN                   =>      rxoutclk_mmcm2_reset_i
    );


    rxoutclk_mmcm3_reset_i                       <= GT3_RX_MMCM_RESET_IN;
    rxoutclk_mmcm3_i : JESD204B_RX4_CLOCK_MODULE
    generic map
    (
        MULT                            =>      5.0,
        DIVIDE                          =>      1,
        CLK_PERIOD                      =>      8.138,
        OUT0_DIVIDE                     =>      4.0,
        OUT1_DIVIDE                     =>      1,
        OUT2_DIVIDE                     =>      1,
        OUT3_DIVIDE                     =>      1
    )
    port map
    (
        CLK0_OUT                        =>      gt3_rxusrclk_i,
        CLK1_OUT                        =>      open,
        CLK2_OUT                        =>      open,
        CLK3_OUT                        =>      open,
        CLK_IN                          =>      gt3_rxoutclk_i,
        MMCM_LOCKED_OUT                 =>      rxoutclk_mmcm3_locked_i,
        MMCM_RESET_IN                   =>      rxoutclk_mmcm3_reset_i
    );



 
GT0_RXUSRCLK_OUT                             <= gt0_rxusrclk_i;
GT0_RXUSRCLK2_OUT                            <= gt0_rxusrclk_i;
GT0_RXCLK_LOCK_OUT                           <= rxoutclk_mmcm0_locked_i;
 
GT1_RXUSRCLK_OUT                             <= gt1_rxusrclk_i;
GT1_RXUSRCLK2_OUT                            <= gt1_rxusrclk_i;
GT1_RXCLK_LOCK_OUT                           <= rxoutclk_mmcm1_locked_i;
 
GT2_RXUSRCLK_OUT                             <= gt2_rxusrclk_i;
GT2_RXUSRCLK2_OUT                            <= gt2_rxusrclk_i;
GT2_RXCLK_LOCK_OUT                           <= rxoutclk_mmcm2_locked_i;
 
GT3_RXUSRCLK_OUT                             <= gt3_rxusrclk_i;
GT3_RXUSRCLK2_OUT                            <= gt3_rxusrclk_i;
GT3_RXCLK_LOCK_OUT                           <= rxoutclk_mmcm3_locked_i;
end RTL;
 
