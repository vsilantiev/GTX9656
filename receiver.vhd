----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:14:41 10/25/2014 
-- Design Name: 
-- Module Name:    receiver - Behavioral 
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

entity receiver is
  port (
    user_clk               : in  std_logic;
    user_reset             : in  std_logic;
    user_lnk_up            : in  std_logic;

    m_axis_rx_tdata        : in  std_logic_vector(64-1 downto 0);
    m_axis_rx_tvalid       : in  std_logic;
    m_axis_rx_tready       : out std_logic;
    m_axis_rx_tkeep        : in  std_logic_vector((64/8)-1 downto 0);
    m_axis_rx_tlast        : in  std_logic;
    m_axis_rx_tuser        : in  std_logic_vector(21 downto 0);

    trn_rd                 : out std_logic_vector(64-1 downto 0);
    trn_rsof               : out std_logic;
    trn_reof               : out std_logic;
    trn_rsrc_rdy           : out std_logic;
    trn_rdst_rdy           : in  std_logic;
    trn_rsrc_dsc           : out std_logic;
    trn_rrem               : out std_logic_vector(0 downto 0);
    trn_rerrfwd            : out std_logic;
	 trn_rbar_hit           : out std_logic_vector(6 downto 0)
	 );
end receiver;

architecture Behavioral of receiver is
  signal is_sof : std_logic_vector(4 downto 0);
  signal is_eof : std_logic_vector(4 downto 0);
  signal in_packet_reg        : std_logic;
  signal m_axis_rx_tready_int : std_logic;
  
begin
  m_axis_rx_tready     <= trn_rdst_rdy;--POHOGE ZADERGKA
  m_axis_rx_tready_int <= trn_rdst_rdy;
  trn_rd <= m_axis_rx_tdata( 31 downto  0) & m_axis_rx_tdata( 63 downto 32);

  --Regenerate trn_rsof
  --Used clock. Latency may have been added

    in_pckt_register : process(user_clk)
    begin
      if rising_edge(user_clk) then
        if user_reset = '1' then -- Add user_reset (_q)
          in_packet_reg <= '0';
        elsif (m_axis_rx_tvalid = '1' and m_axis_rx_tready_int = '1') then -- DOBAVIL m_axis_rx_tready
          in_packet_reg <= not(m_axis_rx_tlast);
        end if;
      end if;
    end process;
  
    trn_rsof <= m_axis_rx_tvalid and not(in_packet_reg);  
    trn_reof <= m_axis_rx_tlast;  
    trn_rsrc_rdy <= m_axis_rx_tvalid;
  --Regenerate trn_rsrc_dsc
  --Used clock. Latency may have been added
  trn_rsrc_dsc_reg : process(user_clk)
  begin
  
    if rising_edge(user_clk) then
      if user_reset = '1' then -- add _q
        trn_rsrc_dsc <= '1';     
      else
        trn_rsrc_dsc <= not(user_lnk_up); -- add _q
      end if;
    end if;
  end process;
    
  
  is_sof <= m_axis_rx_tuser(14 downto 10);
  is_eof <= m_axis_rx_tuser(21 downto 17);
  
     
    CMB_TRN_RREM : process(m_axis_rx_tlast,m_axis_rx_tkeep)
    begin
      if (m_axis_rx_tlast = '1') then
        if ( m_axis_rx_tkeep = X"FF") then
          trn_rrem(0) <= '1';
        else
          trn_rrem(0) <= '0';
        end if;
      else
       trn_rrem(0) <= '1';
      end if;
    end process;                

trn_rerrfwd <= m_axis_rx_tuser(1);
trn_rbar_hit <= m_axis_rx_tuser(8 downto 2);

end Behavioral;

