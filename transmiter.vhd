----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:51:40 10/24/2014 
-- Design Name: 
-- Module Name:    transmiter - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity transmiter is
  port (
    user_clk               : in  std_logic;
    user_reset             : in  std_logic;
    user_lnk_up            : in  std_logic;

    s_axis_tx_tdata        : out std_logic_vector(64-1 downto 0);
    s_axis_tx_tvalid       : out std_logic;
    s_axis_tx_tready       : in  std_logic;
    s_axis_tx_tkeep        : out std_logic_vector((64/8)-1 downto 0);
    s_axis_tx_tlast        : out std_logic;
    s_axis_tx_tuser        : out std_logic_vector( 3 downto 0);

    trn_td                 : in  std_logic_vector(64-1 downto 0);
    trn_tsof               : in  std_logic;
    trn_teof               : in  std_logic;
    trn_tsrc_rdy           : in  std_logic;
    trn_tdst_rdy           : out std_logic;
    trn_tsrc_dsc           : in  std_logic;
    trn_trem               : in  std_logic_vector(0 downto 0);
    trn_terrfwd            : in  std_logic;
    trn_tstr               : in  std_logic;
    trn_tecrc_gen          : in  std_logic

  );
end transmiter;

architecture Behavioral of transmiter is


  signal trn_tdst_rdy_int     : std_logic;
  signal trn_tsrc_rdy_derived : std_logic := '0';

  
begin
      s_axis_tx_tdata <= trn_td(31 downto 0) & trn_td(63 downto 32);

    CMB_STRB_MUX : process(trn_teof,trn_trem)
    begin
      if (trn_teof = '1' and trn_trem(0) = '0') then
        s_axis_tx_tkeep <= X"0F";
      else
        s_axis_tx_tkeep <= X"FF";
      end if;
    end process;

  --Connection of s_axis_tx_tuser with  trn_tsrc_dsc,trn_tstr,trn_terr_fwd and trn_terr_fwd
  s_axis_tx_tuser(3) <= trn_tsrc_dsc; 
  s_axis_tx_tuser(2) <= trn_tstr;
  s_axis_tx_tuser(1) <= trn_terrfwd;
  s_axis_tx_tuser(0) <= trn_tecrc_gen;
  
  --Constraint trn_tsrc_rdy. If constrained, testbench keep trn_tsrc_rdy constantly asserted. This makes axi bridge to generate trn_tsof immeditely after trn_teof of previous packet.--
  
 --  TRN_TSRC_RDY_DRVD : process(trn_tsof,trn_tsrc_rdy,trn_tdst_rdy_int,trn_teof,trn_tsrc_rdy_derived)
 --  begin
     
 --      if (trn_tsof  = '1' and trn_tsrc_rdy = '1' and trn_tdst_rdy_int = '1' and trn_teof = '0') then
 --        trn_tsrc_rdy_derived <= '1';
  --     elsif (trn_tsrc_rdy_derived = '1' and trn_teof = '1' and trn_tsrc_rdy = '1' and trn_tdst_rdy_int = '1') then 
  --       trn_tsrc_rdy_derived <= '0';
  --     end if;
  -- end process;

  
  s_axis_tx_tvalid 	  <= trn_tsrc_rdy;--trn_tsrc_rdy_derived or trn_tsof or trn_teof; 
  trn_tdst_rdy         <= s_axis_tx_tready; -- add _i
  --trn_tdst_rdy_int     <= s_axis_tx_tready; -- add _i
  s_axis_tx_tlast      <= trn_teof;

end Behavioral;

