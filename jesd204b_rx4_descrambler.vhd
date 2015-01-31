-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version : 2.7
--  \   \         Application : 7 Series FPGAs Transceivers Wizard
--  /   /         Filename : jesd204b_rx4_descrambler_64b66b.vhd
-- /___/   /\     
-- \   \  /  \ 
--  \___\/\___\
--
--
-- Module DESCRAMBLER_64B66B
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

--***********************************Entity Declaration*******************************

entity jesd204b_rx4_DESCRAMBLER is
generic
( 
    RX_DATA_WIDTH            : integer := 16
);
port
(
    -- User Interface
    SCRAMBLED_DATA_IN        : in  std_logic_vector((RX_DATA_WIDTH-1) downto 0); 
    UNSCRAMBLED_DATA_OUT     : out std_logic_vector((RX_DATA_WIDTH-1) downto 0); 
    DATA_VALID_IN            : in  std_logic;

    -- System Interface
    USER_CLK                 : in  std_logic;      
    SYSTEM_RESET             : in  std_logic
);


end jesd204b_rx4_DESCRAMBLER;

architecture RTL of jesd204b_rx4_DESCRAMBLER is


--***********************************Parameter Declarations********************

    constant DLY : time := 1 ns;

--***************************Internal Register Declarations******************** 

    signal   descrambler        :  std_logic_vector(57 downto 0);
    signal   poly               :  std_logic_vector(57 downto 0);
    signal   tempdata           :  std_logic_vector((RX_DATA_WIDTH-1) downto 0);
    signal   unscrambled_data_i :  std_logic_vector((RX_DATA_WIDTH-1) downto 0);

--*********************************Main Body of Code***************************
begin


    process( descrambler,SCRAMBLED_DATA_IN )
    variable   poly_i     :  std_logic_vector(57 downto 0);
    variable   tempData_i :  std_logic_vector((RX_DATA_WIDTH-1) downto 0);
    variable   xorBit     :  std_logic;
    variable   i          :  std_logic;
    begin
        poly_i := descrambler;
        for  i in 0 to (RX_DATA_WIDTH-1) loop
            xorBit := SCRAMBLED_DATA_IN(i) xor poly_i(38) xor poly_i(57);
            poly_i := (poly_i(56 downto 0) & SCRAMBLED_DATA_IN(i));
            tempData_i(i) := xorBit;
        end loop;
        poly          <=   poly_i;
        tempdata      <=   tempdata_i;
    end process;

    process( USER_CLK )
    begin
        if(USER_CLK'event and USER_CLK = '1') then
            if (SYSTEM_RESET = '1') then
                unscrambled_data_i <= (others => '0') after DLY;
                descrambler        <= "0101010101010101010101010101010101010101010101010101010101" after DLY;
            elsif (DATA_VALID_IN = '1') then 
                descrambler        <=   poly after DLY;
                unscrambled_data_i <=   tempdata after DLY;
            end if;
        end if;
    end process;

    --_______________ Unscrambled Data assignment to output port ______________    

    UNSCRAMBLED_DATA_OUT <= unscrambled_data_i;
         
end RTL;

