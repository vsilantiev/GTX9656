###############################################################################
##
## (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
## 
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.



create_wave_config new
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt0_frame_check/begin_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt0_frame_check/track_data_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt0_frame_check/data_error_detected_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt0_frame_check/start_of_packet_detected_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt0_frame_check/RX_DATA_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt0_frame_check/ERROR_COUNT_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt1_frame_check/begin_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt1_frame_check/track_data_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt1_frame_check/data_error_detected_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt1_frame_check/start_of_packet_detected_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt1_frame_check/RX_DATA_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt1_frame_check/ERROR_COUNT_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt2_frame_check/begin_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt2_frame_check/track_data_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt2_frame_check/data_error_detected_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt2_frame_check/start_of_packet_detected_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt2_frame_check/RX_DATA_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt2_frame_check/ERROR_COUNT_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt3_frame_check/begin_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt3_frame_check/track_data_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt3_frame_check/data_error_detected_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt3_frame_check/start_of_packet_detected_r
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt3_frame_check/RX_DATA_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/gt3_frame_check/ERROR_COUNT_OUT
add_wave_divider "Channel - DRP Ports "
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/DRPADDR_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/DRPCLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/DRPDI_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/DRPDO_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/DRPEN_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/DRPRDY_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/DRPWE_IN
add_wave_divider "GTPE2_CHANNEL Clocking Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/PLL0CLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/PLL0REFCLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/PLL1CLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/PLL1REFCLK_IN
add_wave_divider "RX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXUSERRDY_IN
add_wave_divider "RX Margin Analysis Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/EYESCANDATAERROR_OUT
add_wave_divider "Receive Ports - CDR Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXCDRLOCK_OUT
add_wave_divider "Receive Ports - FPGA RX Interface Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXDATA_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXUSRCLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXUSRCLK2_IN
add_wave_divider "Receive Ports - RX 8B/10B Decoder Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXCHARISCOMMA_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXCHARISK_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXDISPERR_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXNOTINTABLE_OUT
add_wave_divider "Receive Ports - RX AFE Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/GTPRXN_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/GTPRXP_IN
add_wave_divider "Receive Ports - RX Equailizer Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXLPMHFHOLD_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXLPMLFHOLD_IN
add_wave_divider "Receive Ports - RX Fabric Output Control Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXOUTCLK_OUT
add_wave_divider "Receive Ports - RX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/GTRXRESET_IN
add_wave_divider "Receive Ports -RX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/RXRESETDONE_OUT
add_wave_divider "TX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/GTTXRESET_IN
add_wave_divider "Transmit Ports - TX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt0_jesd204b_rx4_i/TXPCSRESET_IN

add_wave_divider "Channel - DRP Ports "
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/DRPADDR_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/DRPCLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/DRPDI_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/DRPDO_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/DRPEN_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/DRPRDY_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/DRPWE_IN
add_wave_divider "GTPE2_CHANNEL Clocking Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/PLL0CLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/PLL0REFCLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/PLL1CLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/PLL1REFCLK_IN
add_wave_divider "RX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXUSERRDY_IN
add_wave_divider "RX Margin Analysis Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/EYESCANDATAERROR_OUT
add_wave_divider "Receive Ports - CDR Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXCDRLOCK_OUT
add_wave_divider "Receive Ports - FPGA RX Interface Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXDATA_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXUSRCLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXUSRCLK2_IN
add_wave_divider "Receive Ports - RX 8B/10B Decoder Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXCHARISCOMMA_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXCHARISK_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXDISPERR_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXNOTINTABLE_OUT
add_wave_divider "Receive Ports - RX AFE Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/GTPRXN_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/GTPRXP_IN
add_wave_divider "Receive Ports - RX Equailizer Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXLPMHFHOLD_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXLPMLFHOLD_IN
add_wave_divider "Receive Ports - RX Fabric Output Control Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXOUTCLK_OUT
add_wave_divider "Receive Ports - RX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/GTRXRESET_IN
add_wave_divider "Receive Ports -RX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/RXRESETDONE_OUT
add_wave_divider "TX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/GTTXRESET_IN
add_wave_divider "Transmit Ports - TX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt1_jesd204b_rx4_i/TXPCSRESET_IN

add_wave_divider "Channel - DRP Ports "
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/DRPADDR_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/DRPCLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/DRPDI_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/DRPDO_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/DRPEN_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/DRPRDY_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/DRPWE_IN
add_wave_divider "GTPE2_CHANNEL Clocking Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/PLL0CLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/PLL0REFCLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/PLL1CLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/PLL1REFCLK_IN
add_wave_divider "RX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXUSERRDY_IN
add_wave_divider "RX Margin Analysis Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/EYESCANDATAERROR_OUT
add_wave_divider "Receive Ports - CDR Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXCDRLOCK_OUT
add_wave_divider "Receive Ports - FPGA RX Interface Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXDATA_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXUSRCLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXUSRCLK2_IN
add_wave_divider "Receive Ports - RX 8B/10B Decoder Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXCHARISCOMMA_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXCHARISK_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXDISPERR_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXNOTINTABLE_OUT
add_wave_divider "Receive Ports - RX AFE Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/GTPRXN_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/GTPRXP_IN
add_wave_divider "Receive Ports - RX Equailizer Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXLPMHFHOLD_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXLPMLFHOLD_IN
add_wave_divider "Receive Ports - RX Fabric Output Control Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXOUTCLK_OUT
add_wave_divider "Receive Ports - RX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/GTRXRESET_IN
add_wave_divider "Receive Ports -RX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/RXRESETDONE_OUT
add_wave_divider "TX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/GTTXRESET_IN
add_wave_divider "Transmit Ports - TX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt2_jesd204b_rx4_i/TXPCSRESET_IN

add_wave_divider "Channel - DRP Ports "
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/DRPADDR_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/DRPCLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/DRPDI_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/DRPDO_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/DRPEN_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/DRPRDY_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/DRPWE_IN
add_wave_divider "GTPE2_CHANNEL Clocking Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/PLL0CLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/PLL0REFCLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/PLL1CLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/PLL1REFCLK_IN
add_wave_divider "RX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXUSERRDY_IN
add_wave_divider "RX Margin Analysis Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/EYESCANDATAERROR_OUT
add_wave_divider "Receive Ports - CDR Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXCDRLOCK_OUT
add_wave_divider "Receive Ports - FPGA RX Interface Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXDATA_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXUSRCLK_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXUSRCLK2_IN
add_wave_divider "Receive Ports - RX 8B/10B Decoder Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXCHARISCOMMA_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXCHARISK_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXDISPERR_OUT
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXNOTINTABLE_OUT
add_wave_divider "Receive Ports - RX AFE Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/GTPRXN_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/GTPRXP_IN
add_wave_divider "Receive Ports - RX Equailizer Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXLPMHFHOLD_IN
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXLPMLFHOLD_IN
add_wave_divider "Receive Ports - RX Fabric Output Control Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXOUTCLK_OUT
add_wave_divider "Receive Ports - RX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/GTRXRESET_IN
add_wave_divider "Receive Ports -RX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/RXRESETDONE_OUT
add_wave_divider "TX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/GTTXRESET_IN
add_wave_divider "Transmit Ports - TX Initialization and Reset Ports"
add_wave /jesd204b_rx4_TB/jesd204b_rx4_exdes_i/jesd204b_rx4_init_i/jesd204b_rx4_i/gt3_jesd204b_rx4_i/TXPCSRESET_IN

run 300 us
quit



