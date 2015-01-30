    


------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 2.7
--  \   \         Application : 7 Series FPGAs Transceivers Wizard
--  /   /         Filename : jesd204b_rx4.vho
-- /___/   /\      
-- \   \  /  \ 
--  \___\/\___\
--
--
-- Instantiation Template
-- Generated by Xilinx 7 Series FPGAs Transceivers Wizard


--**************************Wrapper Component Declarations*****************************
    
component jesd204b_rx4 
generic
(
    -- Simulation attributes
    WRAPPER_SIM_GTRESET_SPEEDUP    : string   := "FALSE" -- Set to "TRUE" to speed up sim reset
);
port
(
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GT0  (X0Y0)
    --____________________________CHANNEL PORTS________________________________
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
    ---------------------------- Channel - DRP Ports  --------------------------
    GT3_DRPADDR_IN                          : in   std_logic_vector(8 downto 0);
    GT3_DRPCLK_IN                           : in   std_logic;
    GT3_DRPDI_IN                            : in   std_logic_vector(15 downto 0);
    GT3_DRPDO_OUT                           : out  std_logic_vector(15 downto 0);
    GT3_DRPEN_IN                            : in   std_logic;
    GT3_DRPRDY_OUT                          : out  std_logic;
    GT3_DRPWE_IN                            : in   std_logic;
    --------------------- RX Initialization and Reset Ports --------------------
    GT3_RXUSERRDY_IN                        : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    GT3_EYESCANDATAERROR_OUT                : out  std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    GT3_RXCDRLOCK_OUT                       : out  std_logic;
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    GT3_RXDATA_OUT                          : out  std_logic_vector(15 downto 0);
    GT3_RXUSRCLK_IN                         : in   std_logic;
    GT3_RXUSRCLK2_IN                        : in   std_logic;
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    GT3_RXCHARISCOMMA_OUT                   : out  std_logic_vector(1 downto 0);
    GT3_RXCHARISK_OUT                       : out  std_logic_vector(1 downto 0);
    GT3_RXDISPERR_OUT                       : out  std_logic_vector(1 downto 0);
    GT3_RXNOTINTABLE_OUT                    : out  std_logic_vector(1 downto 0);
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    GT3_GTPRXN_IN                           : in   std_logic;
    GT3_GTPRXP_IN                           : in   std_logic;
    -------------------- Receive Ports - RX Equailizer Ports -------------------
    GT3_RXLPMHFHOLD_IN                      : in   std_logic;
    GT3_RXLPMLFHOLD_IN                      : in   std_logic;
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    GT3_RXOUTCLK_OUT                        : out  std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    GT3_GTRXRESET_IN                        : in   std_logic;
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    GT3_RXRESETDONE_OUT                     : out  std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
    GT3_GTTXRESET_IN                        : in   std_logic;
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    GT3_TXPCSRESET_IN                       : in   std_logic;


    --____________________________COMMON PORTS________________________________
    ----------------- Common Block - GTPE2_COMMON Clocking Ports ---------------
    GT0_GTREFCLK0_IN                        : in   std_logic;
    -------------------------- Common Block - PLL Ports ------------------------
    GT0_PLL0LOCK_OUT                        : out  std_logic;
    GT0_PLL0LOCKDETCLK_IN                   : in   std_logic;
    GT0_PLL0REFCLKLOST_OUT                  : out  std_logic;
    GT0_PLL0RESET_IN                        : in   std_logic

);
end component;
    



    
    ----------------------------- The GTP Wrapper -----------------------------
    jesd204b_rx4_i : jesd204b_rx4
    generic map
    (
        -- Simulation attributes
        WRAPPER_SIM_GTRESET_SPEEDUP =>  "TRUE"         -- Speedup is turned on for simulation
    ) 
    port map
    (
     --_____________________________________________________________________
     --_____________________________________________________________________
          --____________________________CHANNEL PORTS________________________________
    ---------------------------- Channel - DRP Ports  --------------------------
        GT0_DRPADDR_IN                  =>      ,
        GT0_DRPCLK_IN                   =>      ,
        GT0_DRPDI_IN                    =>      ,
        GT0_DRPDO_OUT                   =>      ,
        GT0_DRPEN_IN                    =>      ,
        GT0_DRPRDY_OUT                  =>      ,
        GT0_DRPWE_IN                    =>      ,
    --------------------- RX Initialization and Reset Ports --------------------
        GT0_RXUSERRDY_IN                =>      ,
    -------------------------- RX Margin Analysis Ports ------------------------
        GT0_EYESCANDATAERROR_OUT        =>      ,
    ------------------------- Receive Ports - CDR Ports ------------------------
        GT0_RXCDRLOCK_OUT               =>      ,
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        GT0_RXDATA_OUT                  =>      ,
        GT0_RXUSRCLK_IN                 =>      ,
        GT0_RXUSRCLK2_IN                =>      ,
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
        GT0_RXCHARISCOMMA_OUT           =>      ,
        GT0_RXCHARISK_OUT               =>      ,
        GT0_RXDISPERR_OUT               =>      ,
        GT0_RXNOTINTABLE_OUT            =>      ,
    ------------------------ Receive Ports - RX AFE Ports ----------------------
        GT0_GTPRXN_IN                   =>      ,
        GT0_GTPRXP_IN                   =>      ,
    -------------------- Receive Ports - RX Equailizer Ports -------------------
        GT0_RXLPMHFHOLD_IN              =>      ,
        GT0_RXLPMLFHOLD_IN              =>      ,
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
        GT0_RXOUTCLK_OUT                =>      ,
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
        GT0_GTRXRESET_IN                =>      ,
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
        GT0_RXRESETDONE_OUT             =>      ,
    --------------------- TX Initialization and Reset Ports --------------------
        GT0_GTTXRESET_IN                =>      ,
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        GT0_TXPCSRESET_IN               =>      ,

     --_____________________________________________________________________
     --_____________________________________________________________________
          --____________________________CHANNEL PORTS________________________________
    ---------------------------- Channel - DRP Ports  --------------------------
        GT1_DRPADDR_IN                  =>      ,
        GT1_DRPCLK_IN                   =>      ,
        GT1_DRPDI_IN                    =>      ,
        GT1_DRPDO_OUT                   =>      ,
        GT1_DRPEN_IN                    =>      ,
        GT1_DRPRDY_OUT                  =>      ,
        GT1_DRPWE_IN                    =>      ,
    --------------------- RX Initialization and Reset Ports --------------------
        GT1_RXUSERRDY_IN                =>      ,
    -------------------------- RX Margin Analysis Ports ------------------------
        GT1_EYESCANDATAERROR_OUT        =>      ,
    ------------------------- Receive Ports - CDR Ports ------------------------
        GT1_RXCDRLOCK_OUT               =>      ,
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        GT1_RXDATA_OUT                  =>      ,
        GT1_RXUSRCLK_IN                 =>      ,
        GT1_RXUSRCLK2_IN                =>      ,
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
        GT1_RXCHARISCOMMA_OUT           =>      ,
        GT1_RXCHARISK_OUT               =>      ,
        GT1_RXDISPERR_OUT               =>      ,
        GT1_RXNOTINTABLE_OUT            =>      ,
    ------------------------ Receive Ports - RX AFE Ports ----------------------
        GT1_GTPRXN_IN                   =>      ,
        GT1_GTPRXP_IN                   =>      ,
    -------------------- Receive Ports - RX Equailizer Ports -------------------
        GT1_RXLPMHFHOLD_IN              =>      ,
        GT1_RXLPMLFHOLD_IN              =>      ,
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
        GT1_RXOUTCLK_OUT                =>      ,
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
        GT1_GTRXRESET_IN                =>      ,
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
        GT1_RXRESETDONE_OUT             =>      ,
    --------------------- TX Initialization and Reset Ports --------------------
        GT1_GTTXRESET_IN                =>      ,
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        GT1_TXPCSRESET_IN               =>      ,

     --_____________________________________________________________________
     --_____________________________________________________________________
          --____________________________CHANNEL PORTS________________________________
    ---------------------------- Channel - DRP Ports  --------------------------
        GT2_DRPADDR_IN                  =>      ,
        GT2_DRPCLK_IN                   =>      ,
        GT2_DRPDI_IN                    =>      ,
        GT2_DRPDO_OUT                   =>      ,
        GT2_DRPEN_IN                    =>      ,
        GT2_DRPRDY_OUT                  =>      ,
        GT2_DRPWE_IN                    =>      ,
    --------------------- RX Initialization and Reset Ports --------------------
        GT2_RXUSERRDY_IN                =>      ,
    -------------------------- RX Margin Analysis Ports ------------------------
        GT2_EYESCANDATAERROR_OUT        =>      ,
    ------------------------- Receive Ports - CDR Ports ------------------------
        GT2_RXCDRLOCK_OUT               =>      ,
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        GT2_RXDATA_OUT                  =>      ,
        GT2_RXUSRCLK_IN                 =>      ,
        GT2_RXUSRCLK2_IN                =>      ,
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
        GT2_RXCHARISCOMMA_OUT           =>      ,
        GT2_RXCHARISK_OUT               =>      ,
        GT2_RXDISPERR_OUT               =>      ,
        GT2_RXNOTINTABLE_OUT            =>      ,
    ------------------------ Receive Ports - RX AFE Ports ----------------------
        GT2_GTPRXN_IN                   =>      ,
        GT2_GTPRXP_IN                   =>      ,
    -------------------- Receive Ports - RX Equailizer Ports -------------------
        GT2_RXLPMHFHOLD_IN              =>      ,
        GT2_RXLPMLFHOLD_IN              =>      ,
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
        GT2_RXOUTCLK_OUT                =>      ,
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
        GT2_GTRXRESET_IN                =>      ,
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
        GT2_RXRESETDONE_OUT             =>      ,
    --------------------- TX Initialization and Reset Ports --------------------
        GT2_GTTXRESET_IN                =>      ,
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        GT2_TXPCSRESET_IN               =>      ,

     --_____________________________________________________________________
     --_____________________________________________________________________
          --____________________________CHANNEL PORTS________________________________
    ---------------------------- Channel - DRP Ports  --------------------------
        GT3_DRPADDR_IN                  =>      ,
        GT3_DRPCLK_IN                   =>      ,
        GT3_DRPDI_IN                    =>      ,
        GT3_DRPDO_OUT                   =>      ,
        GT3_DRPEN_IN                    =>      ,
        GT3_DRPRDY_OUT                  =>      ,
        GT3_DRPWE_IN                    =>      ,
    --------------------- RX Initialization and Reset Ports --------------------
        GT3_RXUSERRDY_IN                =>      ,
    -------------------------- RX Margin Analysis Ports ------------------------
        GT3_EYESCANDATAERROR_OUT        =>      ,
    ------------------------- Receive Ports - CDR Ports ------------------------
        GT3_RXCDRLOCK_OUT               =>      ,
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        GT3_RXDATA_OUT                  =>      ,
        GT3_RXUSRCLK_IN                 =>      ,
        GT3_RXUSRCLK2_IN                =>      ,
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
        GT3_RXCHARISCOMMA_OUT           =>      ,
        GT3_RXCHARISK_OUT               =>      ,
        GT3_RXDISPERR_OUT               =>      ,
        GT3_RXNOTINTABLE_OUT            =>      ,
    ------------------------ Receive Ports - RX AFE Ports ----------------------
        GT3_GTPRXN_IN                   =>      ,
        GT3_GTPRXP_IN                   =>      ,
    -------------------- Receive Ports - RX Equailizer Ports -------------------
        GT3_RXLPMHFHOLD_IN              =>      ,
        GT3_RXLPMLFHOLD_IN              =>      ,
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
        GT3_RXOUTCLK_OUT                =>      ,
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
        GT3_GTRXRESET_IN                =>      ,
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
        GT3_RXRESETDONE_OUT             =>      ,
    --------------------- TX Initialization and Reset Ports --------------------
        GT3_GTTXRESET_IN                =>      ,
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        GT3_TXPCSRESET_IN               =>      ,


    --____________________________COMMON PORTS________________________________
    ----------------- Common Block - GTPE2_COMMON Clocking Ports ---------------
        GT0_GTREFCLK0_IN                =>      ,
    -------------------------- Common Block - PLL Ports ------------------------
        GT0_PLL0LOCK_OUT                =>      ,
        GT0_PLL0LOCKDETCLK_IN           =>      ,
        GT0_PLL0REFCLKLOST_OUT          =>      ,
        GT0_PLL0RESET_IN                =>      

     
    );
    


