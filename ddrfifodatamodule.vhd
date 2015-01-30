----------------------------------------------------------------------------------
-- Company:  ZITI
-- Engineer:  wgao
-- 
-- Create Date:    12:29:46 04/15/2008 
-- Design Name: 
-- Module Name:    bram_DDRs_Control - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;
use work.abb64Package.all;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adctofifo is
    Generic (
             C_ASYNFIFO_WIDTH  :  integer  :=  72 ;
             P_SIMULATION      :  boolean  :=  TRUE
            );
    Port ( 
 
			  --USER Logic Interface
			  user_wr_weA              : IN    std_logic_vector(7 downto 0);
			  user_wr_addrA            : IN    std_logic_vector(C_PRAM_AWIDTH-1 downto 0);
			  user_wr_dinA             : IN    std_logic_vector(C_DBUS_WIDTH-1 downto 0);
			  user_rd_addrB            : IN    std_logic_vector(C_PRAM_AWIDTH-1 downto 0);
			  user_rd_doutB            : OUT   std_logic_vector(C_DBUS_WIDTH-1 downto 0);
			  user_rd_clk              : IN    std_logic;
			  user_wr_clk              : IN    std_logic;

           -- DMA interface
           DDR_wr_sof               : IN    std_logic;
           DDR_wr_eof               : IN    std_logic;
           DDR_wr_v                 : IN    std_logic;
           DDR_wr_FA                : IN    std_logic;
           DDR_wr_Shift             : IN    std_logic;
           DDR_wr_Mask              : IN    std_logic_vector(2-1 downto 0);
           DDR_wr_din               : IN    std_logic_vector(C_DBUS_WIDTH-1 downto 0);
           DDR_wr_full              : OUT   std_logic;

           DDR_rdc_sof              : IN    std_logic;
           DDR_rdc_eof              : IN    std_logic;
           DDR_rdc_v                : IN    std_logic;
           DDR_rdc_FA               : IN    std_logic;
           DDR_rdc_Shift            : IN    std_logic;
           DDR_rdc_din              : IN    std_logic_vector(C_DBUS_WIDTH-1 downto 0);
           DDR_rdc_full             : OUT   std_logic;
 
           -- DDR payload FIFO Read Port
           DDR_FIFO_RdEn            : IN    std_logic; 
           DDR_FIFO_Empty           : OUT   std_logic;
           DDR_FIFO_RdQout          : OUT   std_logic_vector(C_DBUS_WIDTH-1 downto 0);

           -- Common interface
           DDR_Ready                : OUT   std_logic;
           DDR_blinker              : OUT   std_logic;
           Sim_Zeichen              : OUT   std_logic;

           mem_clk                  : IN    std_logic;
           trn_clk                  : IN    std_logic;
           trn_reset_n              : IN    std_logic;
			  strobe_adc					: IN    std_logic;
			  adcclock						: in 	  std_logic;
		fifowr_clk   : IN  std_logic;
      fifowr_en    : IN  std_logic;
      fifodin      : IN  std_logic_VECTOR(72-1 downto 0);
      fifofull     : OUT std_logic;
      fifoprog_full: OUT std_logic
	 
          );
end entity adctofifo;


architecture Behavioral of adctofifo is

  -- ----------------------------------------------------------------------------
  -- 
  -- ----------------------------------------------------------------------------
  COMPONENT DDR_ClkGen
    PORT(
         ddr_Clock              : OUT   std_logic;
         ddr_Clock_n            : OUT   std_logic;
         ddr_Clock90            : OUT   std_logic;
         ddr_Clock90_n          : OUT   std_logic;
         Clk_ddr_rddata         : OUT   std_logic;
         Clk_ddr_rddata_n       : OUT   std_logic;

         ddr_DCM_locked         : OUT   std_logic;

         clk_in                 : IN    std_logic;
         trn_reset_n            : IN    std_logic
        );
  END COMPONENT;


  -- ----------------------------------------------------------------------------
  -- 
  -- ----------------------------------------------------------------------------

  COMPONENT asyn_rw_FIFO72
--    GENERIC (
--             OUTPUT_REGISTERED  : BOOLEAN
--            );
    PORT(
        wClk                    : IN     std_logic;
        wEn                     : IN     std_logic;
        Din                     : IN     std_logic_vector(C_ASYNFIFO_WIDTH-1 downto 0);
        aFull                   : OUT    std_logic;
        Full                    : OUT    std_logic;

        rClk                    : IN     std_logic;
        rEn                     : IN     std_logic;
        Qout                    : OUT    std_logic_vector(C_ASYNFIFO_WIDTH-1 downto 0);
        aEmpty                  : OUT    std_logic;
        Empty                   : OUT    std_logic;

        Rst                     : IN     std_logic          
        );
  END COMPONENT;


  component v6_prime_FIFO_plain
      port (
      wr_clk   : IN  std_logic;
      wr_en    : IN  std_logic;
      din      : IN  std_logic_VECTOR(C_ASYNFIFO_WIDTH-1 downto 0);
      full     : OUT std_logic;
      prog_full: OUT std_logic;
      rd_clk   : IN  std_logic;
      rd_en    : IN  std_logic;
      dout     : OUT std_logic_VECTOR(C_ASYNFIFO_WIDTH-1 downto 0);
      empty    : OUT std_logic;
      rst      : IN  std_logic
      );
  end component;
  
    component fifomodule
      port (
      wr_clk   : IN  std_logic;
      wr_en    : IN  std_logic;
      din      : IN  std_logic_VECTOR(C_ASYNFIFO_WIDTH-1 downto 0);
      full     : OUT std_logic;
      prog_full: OUT std_logic;
      rd_clk   : IN  std_logic;
      rd_en    : IN  std_logic;
      dout     : OUT std_logic_VECTOR(C_ASYNFIFO_WIDTH-1 downto 0);
      empty    : OUT std_logic;
      rst      : IN  std_logic
      );
  end component;

--  component fifo_512x36_v4_2
--    port (
--    wr_clk      : IN  std_logic;
--    wr_en       : IN  std_logic;
--    din         : IN  std_logic_VECTOR(35 downto 0);
--    prog_full   : OUT std_logic;
--    full        : OUT std_logic;
--
--    rd_clk      : IN  std_logic;
--    rd_en       : IN  std_logic;
--    dout        : OUT std_logic_VECTOR(35 downto 0);
--    prog_empty  : OUT std_logic;
--    empty       : OUT std_logic;
--
--    rst         : IN  std_logic
--    );
--  end component;

  component fifo_512x72_v4_4
    port (
    wr_clk      : IN  std_logic;
    wr_en       : IN  std_logic;
    din         : IN  std_logic_VECTOR(C_ASYNFIFO_WIDTH-1 downto 0);
    prog_full   : OUT std_logic;
    full        : OUT std_logic;

    rd_clk      : IN  std_logic;
    rd_en       : IN  std_logic;
    dout        : OUT std_logic_VECTOR(C_ASYNFIFO_WIDTH-1 downto 0);
--    prog_empty  : OUT std_logic;
    empty       : OUT std_logic;

    rst         : IN  std_logic
    );
  end component;


  ---- Dual-port block RAM for packets
  ---    Core output registered
  --
--  component v5bram4096x32
--    port (
--      clka           : IN  std_logic;
--      addra          : IN  std_logic_vector(C_PRAM_AWIDTH-1 downto 0);
--      wea            : IN  std_logic_vector(0 downto 0);
--      dina           : IN  std_logic_vector(C_DBUS_WIDTH-1 downto 0);
--      douta          : OUT std_logic_vector(C_DBUS_WIDTH-1 downto 0);
--
--      clkb           : IN  std_logic;
--      addrb          : IN  std_logic_vector(C_PRAM_AWIDTH-1 downto 0);
--      web            : IN  std_logic_vector(0 downto 0);
--      dinb           : IN  std_logic_vector(C_DBUS_WIDTH-1 downto 0);
--      doutb          : OUT std_logic_vector(C_DBUS_WIDTH-1 downto 0)
--    );
--  end component;

--SIMONE DEBUG
--component pcie_userlogic_02_cw
--  port (
--    addra: in std_logic_vector(11 downto 0); 
--    addrb: in std_logic_vector(11 downto 0); 
--    ce: in std_logic := '1'; 
--    clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
--    dina: in std_logic_vector(63 downto 0); 
--    dinb: in std_logic_vector(63 downto 0); 
--    douta: in std_logic_vector(63 downto 0); 
--    doutb: in std_logic_vector(63 downto 0); 
--    rst_i: in std_logic; 
--    wea: in std_logic_vector(7 downto 0); 
--    web: in std_logic_vector(7 downto 0); 
--    rst_o: out std_logic
--  );
--end component;


  component v6_bram4096x64
    port (
      clka           : IN  std_logic;
      addra          : IN  std_logic_vector(C_PRAM_AWIDTH-1 downto 0);
      wea            : IN  std_logic_vector(7 downto 0);
      dina           : IN  std_logic_vector(C_DBUS_WIDTH-1 downto 0);
      douta          : OUT std_logic_vector(C_DBUS_WIDTH-1 downto 0);
		ena				: IN  std_logic;

      clkb           : IN  std_logic;
      addrb          : IN  std_logic_vector(C_PRAM_AWIDTH-1 downto 0);
      web            : IN  std_logic_vector(7 downto 0);
      dinb           : IN  std_logic_vector(C_DBUS_WIDTH-1 downto 0);
      doutb          : OUT std_logic_vector(C_DBUS_WIDTH-1 downto 0);
		enb				: IN  std_logic
    );
  end component;

  -- Blinking  -_-_-_-_-_-_-_-_-_-_-_-_-_-_-
  COMPONENT DDR_Blink
    PORT(
           DDR_Blinker              : OUT   std_logic;

           DDR_Write                : IN    std_logic;
           DDR_Read                 : IN    std_logic;
           DDR_Both                 : IN    std_logic;

           ddr_Clock                : IN    std_logic;
           DDr_Rst_n                : IN    std_logic
          );
  END COMPONENT;

  -- ---------------------------------------------------------------------
  signal  ddr_DCM_locked        :  std_logic;
  --  -- ---------------------------------------------------------------------
  signal  Rst_i                 :  std_logic;
  --  -- ---------------------------------------------------------------------
  signal  DDR_Ready_i           :  std_logic;
  --  -- ---------------------------------------------------------------------
  signal  ddr_Clock             :  std_logic;
  signal  ddr_Clock_n           :  std_logic;
  signal  ddr_Clock90           :  std_logic;
  signal  ddr_Clock90_n         :  std_logic;

  signal  Clk_ddr_rddata        :  std_logic;
  signal  Clk_ddr_rddata_n      :  std_logic;

  -- -- --  Write Pipe Channel
  signal  wpipe_wEn             :  std_logic;
  signal  wpipe_Din             :  std_logic_vector(C_ASYNFIFO_WIDTH-1 downto 0);
  signal  wpipe_aFull           :  std_logic;
  signal  wpipe_Full            :  std_logic;
  --  Earlier calculate for better timing
  signal  DDR_wr_Cross_Row      :  std_logic;
  signal  DDR_wr_din_r1         :  std_logic_vector(C_DBUS_WIDTH-1 downto 0);
  signal  DDR_write_ALC         :  std_logic_vector(11-1 downto 0);

  signal  wpipe_rEn             :  std_logic;
  signal  wpipe_Qout            :  std_logic_vector(C_ASYNFIFO_WIDTH-1 downto 0);
--  signal  wpipe_aEmpty          :  std_logic;
  signal  wpipe_Empty           :  std_logic;
  signal  wpipe_Qout_latch      :  std_logic_vector(C_ASYNFIFO_WIDTH-1 downto 0);

  -- -- --  Read Pipe Command Channel
  signal  rpipec_wEn            :  std_logic;
  signal  rpipec_Din            :  std_logic_vector(C_ASYNFIFO_WIDTH-1 downto 0);
  signal  rpipec_aFull          :  std_logic;
  signal  rpipec_Full           :  std_logic;
  --  Earlier calculate for better timing
  signal  DDR_rd_Cross_Row      :  std_logic;
  signal  DDR_rdc_din_r1        :  std_logic_vector(C_DBUS_WIDTH-1 downto 0);
  signal  DDR_read_ALC          :  std_logic_vector(11-1 downto 0);

  signal  rpipec_rEn            :  std_logic;
  signal  rpipec_Qout           :  std_logic_vector(C_ASYNFIFO_WIDTH-1 downto 0);
--  signal  rpipec_aEmpty         :  std_logic;
  signal  rpipec_Empty          :  std_logic;

  -- -- --  Read Pipe Data Channel
  signal  rpiped_wEn            :  std_logic;
  signal  rpiped_Din            :  std_logic_vector(C_ASYNFIFO_WIDTH-1 downto 0);
  signal  rpiped_aFull          :  std_logic;
  signal  rpiped_Full           :  std_logic;

--  signal  rpiped_rEn            :  std_logic;
  signal  rpiped_Qout           :  std_logic_vector(C_ASYNFIFO_WIDTH-1 downto 0);
--  signal  rpiped_aEmpty         :  std_logic;
--  signal  rpiped_Empty          :  std_logic;


  --   write State machine
  type bram_wrStates is          ( wrST_bram_RESET
                                 , wrST_bram_IDLE
--                                 , wrST_bram_Address
                                 , wrST_bram_1st_Data
                                 , wrST_bram_1st_Data_b2b
                                 , wrST_bram_more_Data
                                 , wrST_bram_last_DW
                                 );

  -- State variables
  signal pseudo_DDR_wr_State     : bram_wrStates;

  --       Block RAM
  signal   pRAM_weA              : std_logic_vector(7 downto 0);
  signal   pRAM_addrA            : std_logic_vector(C_PRAM_AWIDTH-1 downto 0);
  signal   pRAM_dinA             : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
  signal   pRAM_doutA            : std_logic_vector(C_DBUS_WIDTH-1 downto 0);

  signal   user_wr_doutA         : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
  signal   user_rd_weB           : std_logic_vector(7 downto 0);
  signal   user_rd_dinB          : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
  
  
  -----------
   

signal	user_wr_addrA1            : std_logic_vector(C_PRAM_AWIDTH-1 downto 0);
signal	user_wr_weA1              : std_logic_vector(7 downto 0);
signal	user_wr_dinA1             : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
signal   user_wr_doutA1            : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
signal   parta_clock_enableA1 	: std_logic;
signal   pRAM_weB1              : std_logic_vector(7 downto 0);		  
signal   pRAM_addrB1            : std_logic_vector(C_PRAM_AWIDTH-1 downto 0);		  
signal   pRAM_dinB1             : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
signal   pRAM_doutB1            : std_logic_vector(C_DBUS_WIDTH-1 downto 0);

signal	user_wr_addrA2            : std_logic_vector(C_PRAM_AWIDTH-1 downto 0);
signal	user_wr_weA2              : std_logic_vector(7 downto 0);
signal	user_wr_dinA2             : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
signal   user_wr_doutA2            : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
signal   parta_clock_enableA2 	: std_logic;
signal   pRAM_weB2              : std_logic_vector(7 downto 0);		  
signal   pRAM_addrB2            : std_logic_vector(C_PRAM_AWIDTH-1 downto 0);		  
signal   pRAM_dinB2             : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
signal   pRAM_doutB2            : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
        
        
  
-----------------------

  signal   pRAM_weB              : std_logic_vector(7 downto 0);
  signal   pRAM_dinB             : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
  signal   pRAM_addrB            : std_logic_vector(C_PRAM_AWIDTH-1 downto 0);
  signal   pRAM_doutB            : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
  signal   pRAM_doutB_r1         : std_logic_vector(C_DBUS_WIDTH-1 downto 0);
  signal   pRAM_doutB_shifted    : std_logic_vector(C_DBUS_WIDTH-1 downto 0);

  signal   wpipe_qout_lo32b      : std_logic_vector(33-1 downto 0);
  signal   wpipe_QW_Aligned      : std_logic;
  signal   pRAM_AddrA_Inc        : std_logic;
  signal   wpipe_read_valid      : std_logic;


  --   read State machine
  type bram_rdStates is          ( rdST_bram_RESET
                                 , rdST_bram_IDLE
                                 , rdST_bram_b4_LA
                                 , rdST_bram_LA
--                                 , rdST_bram_b4_Length
--                                 , rdST_bram_Length
--                                 , rdST_bram_b4_Address
--                                 , rdST_bram_Address
                                 , rdST_bram_Data
--                                 , rdST_bram_Data_shift
                                 );

  -- State variables
  signal pseudo_DDR_rd_State     : bram_rdStates;

  signal rpiped_rd_counter       : std_logic_vector(10-1 downto 0);
  signal rpiped_wEn_b3           : std_logic;
  signal rpiped_wEn_b2           : std_logic;
  signal rpiped_wEn_b1           : std_logic;
  signal rpiped_wr_EOF           : std_logic;
  signal rpipec_read_valid       : std_logic;
  signal rpiped_wr_skew          : std_logic;
  signal rpiped_wr_postpone      : std_logic;

  signal simone_debug : std_logic;	



begin


  Rst_i              <=  not trn_reset_n;
  DDR_Ready          <=  DDR_Ready_i;

  pRAM_doutB <= user_wr_dinA;
  pRAM_doutB_shifted  <= pRAM_doutB_r1(32-1 downto 0) & user_wr_dinA(64-1 downto 32);

  --  Delay
  Syn_Shifting_pRAM_doutB:
  process ( trn_clk)
  begin
     if trn_clk'event and trn_clk = '1' then
        pRAM_doutB_r1 <= user_wr_dinA;
     end if;
  end process;

  -- -----------------------------------------------
  --
  Syn_DDR_CKE:
  process (trn_clk, Rst_i)
  begin
    if Rst_i = '1' then
       DDR_Ready_i       <=  '0';
    elsif trn_clk'event and trn_clk = '1' then
       DDR_Ready_i       <=  '1';   -- ddr_DCM_locked;
    end if;
  end process;

        

  DDR_pipe_read_C_fifo:
  v6_prime_FIFO_plain
  PORT MAP(
    wr_clk       =>  trn_clk        , -- IN  std_logic;
    wr_en        =>  rpipec_wEn     , -- IN  std_logic;
    din          =>  rpipec_Din     , -- IN  std_logic_VECTOR(35 downto 0);
    prog_full    =>  rpipec_aFull   , -- OUT std_logic;
    full         =>  open,   --rpipec_Full    , -- OUT std_logic;

    rd_clk       =>  trn_clk      , -- IN  std_logic;
    rd_en        =>  rpipec_rEn     , -- IN  std_logic;
    dout         =>  rpipec_Qout    , -- OUT std_logic_VECTOR(35 downto 0);
    empty        =>  rpipec_Empty   , -- OUT std_logic;

    rst          =>  Rst_i            -- IN  std_logic
    );


  rpipec_wEn             <=  DDR_rdc_v;
  rpipec_Din             <=  "00" & DDR_rdc_Shift & '0' & DDR_rdc_sof & DDR_rdc_eof & DDR_rd_Cross_Row & DDR_rdc_FA & DDR_rdc_din;
  DDR_rdc_full           <=  rpipec_aFull;


  Syn_DDR_rdC_Cross_Row:
  process (trn_clk)
  begin
    if trn_clk'event and trn_clk = '1' then
       DDR_rdc_din_r1(64-1 downto 10)   <= (OTHERS=>'0');
       DDR_rdc_din_r1( 9 downto  0)     <= DDR_rdc_din(9 downto  0) - "100";
    end if;
  end process;

  DDR_read_ALC       <= (DDR_rdc_din_r1(10 downto 2) &"00") + ('0' & DDR_rdc_din(9 downto 2) &"00");
  DDR_rd_Cross_Row   <= '0';   -- DDR_read_ALC(10);

   
	
	
	--	fifowr_clk   : IN  std_logic;
     -- fifowr_en    : IN  std_logic;
     -- fifodin      : IN  std_logic_VECTOR(72-1 downto 0);
     -- fifofull     : OUT std_logic;
     -- fifoprog_full: OUT std_logic
		
	

  DDR_pipe_read_D_fifo:
  fifomodule
  PORT MAP(
    wr_clk       =>  fifowr_clk      , -- IN  std_logic;
    wr_en        =>  fifowr_en      , -- IN  std_logic;
    din          =>  fifodin      , -- IN  std_logic_VECTOR(35 downto 0);
    prog_full    =>  fifofull    , -- OUT std_logic;
    full         =>  open,    -- rpiped_Full     , -- OUT std_logic;

    rd_clk       =>  trn_clk         , -- IN  std_logic;
    rd_en        =>  DDR_FIFO_RdEn   , -- IN  std_logic;
    dout         =>  rpiped_Qout     , -- OUT std_logic_VECTOR(35 downto 0);
    empty        =>  DDR_FIFO_Empty  , -- OUT std_logic;

    rst          =>  Rst_i             -- IN  std_logic
    );


    DDR_FIFO_RdQout      <=  rpiped_Qout(C_DBUS_WIDTH-1 downto 0);


 
   Syn_Pseudo_DDR_wr_States:
   process ( trn_clk, trn_reset_n)
   begin
      if trn_reset_n = '0' then
         pseudo_DDR_wr_State   <= wrST_bram_RESET;
         pRAM_addrA            <= (OTHERS=>'1');
         pRAM_weA              <= (OTHERS=>'0');
         pRAM_dinA             <= (OTHERS=>'0');
         wpipe_qout_lo32b      <= (OTHERS=>'0');
         wpipe_QW_Aligned      <= '1';
         pRAM_AddrA_Inc        <= '1';

      elsif trn_clk'event and trn_clk = '1' then

        case pseudo_DDR_wr_State  is

          when wrST_bram_RESET =>
             pseudo_DDR_wr_State   <= wrST_bram_IDLE;
             pRAM_addrA            <= (OTHERS=>'1');
             wpipe_QW_Aligned      <= '1';
             wpipe_qout_lo32b      <= (OTHERS=>'0');
             pRAM_weA              <= (OTHERS=>'0');
             pRAM_dinA             <= (OTHERS=>'0');
             pRAM_AddrA_Inc        <= '1';

          when wrST_bram_IDLE =>
             pRAM_addrA            <= wpipe_Qout(14 downto 3);
             pRAM_AddrA_Inc        <= wpipe_Qout(2);
             wpipe_QW_Aligned      <= not wpipe_Qout(69);
             wpipe_qout_lo32b      <= (32=>'1', OTHERS=>'0');
             pRAM_weA              <= (OTHERS=>'0');
             pRAM_dinA             <= pRAM_dinA;
             if wpipe_read_valid = '1' then
               pseudo_DDR_wr_State   <= wrST_bram_1st_Data;  -- wrST_bram_Address;
             else
               pseudo_DDR_wr_State   <= wrST_bram_IDLE;
             end if;


          when wrST_bram_1st_Data =>
             pRAM_addrA          <= pRAM_addrA;
             if wpipe_read_valid = '0' then
               pseudo_DDR_wr_State <= wrST_bram_1st_Data;
               pRAM_weA            <= (OTHERS=>'0'); --pRAM_weA;
               pRAM_dinA           <= pRAM_dinA;
             elsif wpipe_Qout(66)='1' then   -- eof
                if wpipe_QW_Aligned='1' then
                  pseudo_DDR_wr_State <= wrST_bram_IDLE;
                  pRAM_weA            <= not ( wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) 
                                             & wpipe_Qout(70) & wpipe_Qout(70) & wpipe_Qout(70) & wpipe_Qout(70)
                                             );
                  pRAM_dinA           <= wpipe_Qout(C_DBUS_WIDTH-1 downto 0);
                elsif wpipe_Qout(70)='1' then     -- mask(0)
                  pseudo_DDR_wr_State <= wrST_bram_IDLE;
                  pRAM_weA            <= not ( wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32)
                                             & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71)
                                             );
                  pRAM_dinA           <= wpipe_qout_lo32b(32-1 downto 0) & wpipe_Qout(C_DBUS_WIDTH-1 downto 32);
                elsif wpipe_Qout(71)='1' then     -- mask(1)
                  pseudo_DDR_wr_State <= wrST_bram_IDLE;
                  pRAM_weA            <= X"F0";
                  pRAM_dinA           <= wpipe_Qout(C_DBUS_WIDTH-1-32 downto 0) & X"00000000";
                else
                  pseudo_DDR_wr_State <= wrST_bram_last_DW;
                  pRAM_weA            <= not ( wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32)
                                             & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71)
                                             );
                  pRAM_dinA           <= wpipe_qout_lo32b(32-1 downto 0) & wpipe_Qout(C_DBUS_WIDTH-1 downto 32);
                  wpipe_qout_lo32b    <= '0' & wpipe_Qout(32-1 downto 0);
                end if;
             else
                if wpipe_QW_Aligned='1' then
                  pseudo_DDR_wr_State <= wrST_bram_more_Data;
                  pRAM_weA            <= not ( wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) 
                                             & wpipe_Qout(70) & wpipe_Qout(70) & wpipe_Qout(70) & wpipe_Qout(70)
                                             );
                  pRAM_dinA           <= wpipe_Qout(C_DBUS_WIDTH-1 downto 0);
                elsif pRAM_AddrA_Inc='1' then
                  pseudo_DDR_wr_State <= wrST_bram_more_Data;
                  pRAM_weA            <= not ( wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32)
                                             & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71)
                                             );
                  pRAM_dinA           <= wpipe_qout_lo32b(32-1 downto 0) & wpipe_Qout(C_DBUS_WIDTH-1 downto 32);
                  wpipe_qout_lo32b    <= '0' & wpipe_Qout(32-1 downto 0);
                else
                  pseudo_DDR_wr_State <= wrST_bram_1st_Data;
                  pRAM_AddrA_Inc      <= '1';
                  pRAM_weA            <= X"00";
                  pRAM_dinA           <= pRAM_dinA;
                  wpipe_qout_lo32b    <= wpipe_Qout(70) & wpipe_Qout(32-1 downto 0);
                end if;
             end if;

          when wrST_bram_more_Data =>
             if wpipe_read_valid = '0' then
               pseudo_DDR_wr_State <= wrST_bram_more_Data;  -- wrST_bram_1st_Data;
               pRAM_weA            <= (OTHERS=>'0'); --pRAM_weA;
               pRAM_addrA          <= pRAM_addrA;
               pRAM_dinA           <= pRAM_dinA;
             elsif wpipe_Qout(66)='1' then   -- eof
                if wpipe_QW_Aligned='1' then
                  pseudo_DDR_wr_State <= wrST_bram_IDLE;
                  pRAM_weA            <= not ( wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) 
                                             & wpipe_Qout(70) & wpipe_Qout(70) & wpipe_Qout(70) & wpipe_Qout(70)
                                             );
                  pRAM_addrA          <= pRAM_addrA + '1';
                  pRAM_dinA           <= wpipe_Qout(C_DBUS_WIDTH-1 downto 0);
                elsif wpipe_Qout(70)='1' then  -- mask(0)
                  pseudo_DDR_wr_State <= wrST_bram_IDLE;
                  pRAM_weA            <= not ( wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32)
                                             & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71)
                                             );
                  pRAM_addrA          <= pRAM_addrA + '1';
                  pRAM_dinA           <= wpipe_qout_lo32b(32-1 downto 0) & wpipe_Qout(C_DBUS_WIDTH-1 downto 32);
                else
                  pseudo_DDR_wr_State <= wrST_bram_last_DW;
                  pRAM_weA            <= not ( wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32)
                                             & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71)
                                             );
                  pRAM_addrA          <= pRAM_addrA + '1';
                  pRAM_dinA           <= wpipe_qout_lo32b(32-1 downto 0) & wpipe_Qout(C_DBUS_WIDTH-1 downto 32);
                  wpipe_qout_lo32b    <= '0' & wpipe_Qout(32-1 downto 0);
                end if;
             else
                if wpipe_QW_Aligned='1' then
                  pseudo_DDR_wr_State <= wrST_bram_more_Data;
                  pRAM_weA            <= not ( wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) 
                                             & wpipe_Qout(70) & wpipe_Qout(70) & wpipe_Qout(70) & wpipe_Qout(70)
                                             );
                  pRAM_addrA          <= pRAM_addrA + '1';
                  pRAM_dinA           <= wpipe_Qout(C_DBUS_WIDTH-1 downto 0);
                else
                  pseudo_DDR_wr_State <= wrST_bram_more_Data;
                  pRAM_weA            <= not ( wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32) & wpipe_qout_lo32b(32)
                                             & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71)
                                             );
                  pRAM_addrA          <= pRAM_addrA + '1';
                  pRAM_dinA           <= wpipe_qout_lo32b(32-1 downto 0) & wpipe_Qout(C_DBUS_WIDTH-1 downto 32);
                  wpipe_qout_lo32b    <= '0' & wpipe_Qout(32-1 downto 0);
                end if;
             end if;


          when wrST_bram_last_DW =>
--             pseudo_DDR_wr_State   <= wrST_bram_IDLE;
             pRAM_weA              <= X"F0";
             pRAM_addrA            <= pRAM_addrA + '1';
             pRAM_dinA             <= wpipe_qout_lo32b(32-1 downto 0) & X"00000000";
             if wpipe_read_valid = '1' then
               pseudo_DDR_wr_State         <= wrST_bram_1st_Data_b2b;  -- wrST_bram_Address;
               wpipe_Qout_latch            <= wpipe_Qout;
             else
               pseudo_DDR_wr_State         <= wrST_bram_IDLE;
               wpipe_Qout_latch            <= wpipe_Qout;
             end if;


          when wrST_bram_1st_Data_b2b =>
             pRAM_addrA            <= wpipe_Qout_latch(14 downto 3);
             wpipe_QW_Aligned      <= not wpipe_Qout_latch(69);
             if wpipe_read_valid = '0' then
               pseudo_DDR_wr_State <= wrST_bram_1st_Data;
               pRAM_weA            <= (OTHERS=>'0'); --pRAM_weA;
               pRAM_dinA           <= pRAM_dinA;
               pRAM_AddrA_Inc      <= wpipe_Qout_latch(2);
               wpipe_qout_lo32b    <= (32=>'1', OTHERS=>'0');
             elsif wpipe_Qout(66)='1' then   -- eof
                if wpipe_Qout_latch(69)='0' then   -- wpipe_QW_Aligned
                  pseudo_DDR_wr_State <= wrST_bram_IDLE;
                  pRAM_weA            <= not ( wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) 
                                             & wpipe_Qout(70) & wpipe_Qout(70) & wpipe_Qout(70) & wpipe_Qout(70)
                                             );
                  pRAM_dinA           <= wpipe_Qout(C_DBUS_WIDTH-1 downto 0);
                  pRAM_AddrA_Inc      <= wpipe_Qout_latch(2);
                  wpipe_qout_lo32b    <= (32=>'1', OTHERS=>'0');
                elsif wpipe_Qout(70)='1' then     -- mask(0)
                  pseudo_DDR_wr_State <= wrST_bram_IDLE;
                  pRAM_weA            <= not ( X"f"
                                             & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71)
                                             );
                  pRAM_dinA           <= X"00000000" & wpipe_Qout(C_DBUS_WIDTH-1 downto 32);
                  pRAM_AddrA_Inc      <= wpipe_Qout_latch(2);
                  wpipe_qout_lo32b    <= (32=>'1', OTHERS=>'0');
                elsif wpipe_Qout(71)='1' then     -- mask(1)
                  pseudo_DDR_wr_State <= wrST_bram_IDLE;
                  pRAM_weA            <= X"F0";
                  pRAM_dinA           <= wpipe_Qout(C_DBUS_WIDTH-1-32 downto 0) & X"00000000";
                  pRAM_AddrA_Inc      <= wpipe_Qout_latch(2);
                  wpipe_qout_lo32b    <= (32=>'1', OTHERS=>'0');
                else
                  pseudo_DDR_wr_State <= wrST_bram_last_DW;
                  pRAM_weA            <= not ( X"f"
                                             & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71)
                                             );
                  pRAM_dinA           <= X"00000000" & wpipe_Qout(C_DBUS_WIDTH-1 downto 32);
                  pRAM_AddrA_Inc      <= wpipe_Qout_latch(2);
                  wpipe_qout_lo32b    <= '0' & wpipe_Qout(32-1 downto 0);
                end if;
             else
                if wpipe_Qout_latch(69)='0' then    -- wpipe_QW_Aligned
                  pseudo_DDR_wr_State <= wrST_bram_more_Data;
                  pRAM_weA            <= not ( wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) 
                                             & wpipe_Qout(70) & wpipe_Qout(70) & wpipe_Qout(70) & wpipe_Qout(70)
                                             );
                  pRAM_dinA           <= wpipe_Qout(C_DBUS_WIDTH-1 downto 0);
                  pRAM_AddrA_Inc      <= wpipe_Qout_latch(2);
                  wpipe_qout_lo32b    <= (32=>'1', OTHERS=>'0');
                elsif wpipe_Qout_latch(2)='1' then   -- pRAM_AddrA_Inc
                  pseudo_DDR_wr_State <= wrST_bram_more_Data;
                  pRAM_weA            <= not ( X"f"
                                             & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71) & wpipe_Qout(71)
                                             );
                  pRAM_dinA           <= X"00000000" & wpipe_Qout(C_DBUS_WIDTH-1 downto 32);
                  pRAM_AddrA_Inc      <= wpipe_Qout_latch(2);
                  wpipe_qout_lo32b    <= '0' & wpipe_Qout(32-1 downto 0);
                else
                  pseudo_DDR_wr_State <= wrST_bram_1st_Data;
                  pRAM_AddrA_Inc      <= '1';
                  pRAM_weA            <= X"00";
                  pRAM_dinA           <= pRAM_dinA;
                  wpipe_qout_lo32b    <= wpipe_Qout(70) & wpipe_Qout(32-1 downto 0);
                end if;
             end if;


          when OTHERS =>
             pseudo_DDR_wr_State   <= wrST_bram_RESET;
             pRAM_addrA            <= (OTHERS=>'1');
             pRAM_weA              <= (OTHERS=>'0');
             pRAM_dinA             <= (OTHERS=>'0');
             wpipe_qout_lo32b      <= (OTHERS=>'0');
             wpipe_QW_Aligned      <= '1';
             pRAM_AddrA_Inc        <= '1';

        end case;

      end if;
   end process;


   -- 
   Syn_wPipe_read:
   process ( trn_clk, DDR_Ready_i)
   begin
      if DDR_Ready_i = '0' then
         wpipe_rEn         <= '0';
         wpipe_read_valid  <= '0';

      elsif trn_clk'event and trn_clk = '1' then

         wpipe_rEn         <= '1';
         wpipe_read_valid  <= wpipe_rEn and not wpipe_Empty;

      end if;
   end process;



   -- 
   Syn_rPipeC_read:
   process ( trn_clk, DDR_Ready_i)
   begin
      if DDR_Ready_i = '0' then
         rpipec_read_valid    <= '0';
         rpiped_wr_postpone   <= '0';
         rpiped_wr_skew       <= '0';

      elsif trn_clk'event and trn_clk = '1' then

         rpipec_read_valid  <= rpipec_rEn and not rpipec_Empty;
         if rpipec_read_valid='1' then
            rpiped_wr_postpone  <= rpipec_Qout(2) and not rpipec_Qout(69);
            rpiped_wr_skew      <= rpipec_Qout(69) xor rpipec_Qout(2);
         else
            rpiped_wr_postpone  <= rpiped_wr_postpone;
            rpiped_wr_skew      <= rpiped_wr_skew;
         end if;

      end if;
   end process;

-- ------------------------------------------------
-- Read States synchronous
--
   Syn_Pseudo_DDR_rd_States:
   process ( trn_clk, DDR_Ready_i)
   begin
      if DDR_Ready_i = '0' then
         pseudo_DDR_rd_State   <= rdST_bram_RESET;
         rpipec_rEn            <= '0';
         pRAM_addrB            <= (OTHERS=>'1');
         rpiped_rd_counter     <= (OTHERS=>'0');
         rpiped_wEn_b3         <= '0';
         rpiped_wr_EOF         <= '0';

      elsif trn_clk'event and trn_clk = '1' then

        case pseudo_DDR_rd_State  is

          when rdST_bram_RESET =>
             pseudo_DDR_rd_State   <= rdST_bram_IDLE;
             rpipec_rEn            <= '0';
             pRAM_addrB            <= (OTHERS=>'1');
             rpiped_rd_counter     <= (OTHERS=>'0');
             rpiped_wEn_b3         <= '0';
             rpiped_wr_EOF         <= '0';

          when rdST_bram_IDLE =>
             pRAM_addrB            <= pRAM_addrB;
             rpiped_rd_counter     <= (OTHERS=>'0');
             rpiped_wEn_b3         <= '0';
             rpiped_wr_EOF         <= '0';
             if rpipec_Empty = '0' then
               rpipec_rEn          <= '1';
               pseudo_DDR_rd_State <= rdST_bram_b4_LA;  --rdST_bram_b4_Length;
             else
               rpipec_rEn          <= '0';
               pseudo_DDR_rd_State <= rdST_bram_IDLE;
             end if;

          when rdST_bram_b4_LA =>
             pRAM_addrB            <= pRAM_addrB;
             rpiped_rd_counter     <= (OTHERS=>'0');
             rpiped_wEn_b3         <= '0';
             rpiped_wr_EOF         <= '0';
             rpipec_rEn            <= '0';
             pseudo_DDR_rd_State   <= rdST_bram_LA;

          when rdST_bram_LA =>
             rpipec_rEn            <= '0';
             pRAM_addrB            <= rpipec_Qout(14 downto 3);
             rpiped_wr_EOF         <= '0';
             rpiped_wEn_b3         <= '0';
             if rpipec_Qout(2+32)='1' then
               rpiped_rd_counter     <= rpipec_Qout(11+32 downto 2+32) + '1';
             elsif rpipec_Qout(2)='1' and rpipec_Qout(69)='1' then
               rpiped_rd_counter     <= rpipec_Qout(11+32 downto 2+32) + "10";
             elsif rpipec_Qout(2)='0' and rpipec_Qout(69)='1' then
               rpiped_rd_counter     <= rpipec_Qout(11+32 downto 2+32) + "10";
             elsif rpipec_Qout(2)='1' and rpipec_Qout(69)='0' then
               rpiped_rd_counter     <= rpipec_Qout(11+32 downto 2+32);
             else
               rpiped_rd_counter     <= rpipec_Qout(11+32 downto 2+32);
             end if;

--             elsif rpipec_Qout(2)='1' then
--               rpiped_rd_counter     <= rpipec_Qout(11+32 downto 2+32) + "10";
--             elsif rpipec_Qout(69)='1' then
--               rpiped_rd_counter     <= rpipec_Qout(11+32 downto 2+32) + "10";
--             else
--               rpiped_rd_counter     <= rpipec_Qout(11+32 downto 2+32);
--             end if;
             pseudo_DDR_rd_State   <= rdST_bram_Data;


          when rdST_bram_Data =>
             rpipec_rEn            <= '0';
             if rpiped_rd_counter = CONV_STD_LOGIC_VECTOR(2, 10) then
               pRAM_addrB            <= pRAM_addrB + '1';
               rpiped_rd_counter     <= rpiped_rd_counter;
               rpiped_wEn_b3         <= '1';
               rpiped_wr_EOF         <= '1';
               pseudo_DDR_rd_State   <= rdST_bram_IDLE;
             elsif rpiped_aFull = '1' then
               pRAM_addrB            <= pRAM_addrB;
               rpiped_rd_counter     <= rpiped_rd_counter;
               rpiped_wEn_b3         <= '0';
               rpiped_wr_EOF         <= '0';
               pseudo_DDR_rd_State   <= rdST_bram_Data;
             else
               pRAM_addrB            <= pRAM_addrB + '1';
               rpiped_rd_counter     <= rpiped_rd_counter - "10";
               rpiped_wEn_b3         <= '1';
               rpiped_wr_EOF         <= '0';
               pseudo_DDR_rd_State   <= rdST_bram_Data;
             end if;


          when OTHERS =>
               rpipec_rEn            <= '0';
               pRAM_addrB            <= pRAM_addrB;
               rpiped_rd_counter     <= rpiped_rd_counter;
               rpiped_wEn_b3         <= '0';
               rpiped_wr_EOF         <= '0';
               pseudo_DDR_rd_State   <= rdST_bram_RESET;

        end case;

      end if;
   end process;



   Syn_Pseudo_DDR_rdd_write:
   process ( trn_clk, DDR_Ready_i)
   begin
      if DDR_Ready_i = '0' then
         rpiped_wEn_b1      <= '0';
         rpiped_wEn_b2      <= '0';
         rpiped_wEn         <= '0';
         rpiped_Din         <= (OTHERS=>'0');

      elsif trn_clk'event and trn_clk = '1' then

         rpiped_wEn_b2      <= rpiped_wEn_b3;
         rpiped_wEn_b1      <= rpiped_wEn_b2;
         if rpiped_wr_skew='1' then
--           rpiped_wEn         <= rpiped_wEn_b2;
           rpiped_wEn         <= (rpiped_wEn_b2 and not rpiped_wr_postpone)
                              or (rpiped_wEn_b1 and rpiped_wr_postpone);
           rpiped_Din         <= "0000" & '0' & rpiped_wr_EOF & "00" & pRAM_doutB_shifted;
         else
--           rpiped_wEn         <= rpiped_wEn_b2;
           rpiped_wEn         <= (rpiped_wEn_b2 and not rpiped_wr_postpone)
                              or (rpiped_wEn_b1 and rpiped_wr_postpone);
           rpiped_Din         <= "0000" & '0' & rpiped_wr_EOF & "00" & pRAM_doutB;
         end if;

      end if;
   end process;


  -- 
  DDR_Blinker_Module:
  DDR_Blink
  PORT MAP(
           DDR_Blinker          =>  DDR_Blinker    ,

           DDR_Write            =>  wpipe_rEn      ,
           DDR_Read             =>  rpiped_wEn     ,
           DDR_Both             =>  '0'            ,

           ddr_Clock            =>  trn_clk      ,
           DDr_Rst_n            =>  DDR_Ready_i      -- DDR_CKE_i      
          );


end architecture Behavioral;
