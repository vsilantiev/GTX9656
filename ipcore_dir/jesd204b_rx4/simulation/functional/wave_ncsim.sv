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

  window new WaveWindow  -name  "Waves for 7 Series FPGAs Transceivers Wizard Example Design"
  waveform  using  "Waves for 7 Series FPGAs Transceivers Wizard Example Design"
   waveform  add  -label FRAME_CHECK_MODULE -comment gt0_frame_check
  waveform  add  -signals  :jesd204b_rx4_exdes_i:gt0_frame_check:begin_r
  waveform  add  -signals  :jesd204b_rx4_exdes_i:gt0_frame_check:track_data_r
  waveform  add  -siganls  :jesd204b_rx4_exdes_i:gt0_frame_check:data_error_detected_r
  wavefrom  add  -siganls  :jesd204b_rx4_exdes_i:gt0_frame_check:start_of_packet_detected_r
  waveform  add  -signals  :jesd204b_rx4_exdes_i:gt0_frame_check:RX_DATA
  waveform  add  -signals  :jesd204b_rx4_exdes_i:gt0_frame_check:ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gt1_frame_check
  waveform  add  -signals  :jesd204b_rx4_exdes_i:gt1_frame_check:begin_r
  waveform  add  -signals  :jesd204b_rx4_exdes_i:gt1_frame_check:track_data_r
  waveform  add  -siganls  :jesd204b_rx4_exdes_i:gt1_frame_check:data_error_detected_r
  wavefrom  add  -siganls  :jesd204b_rx4_exdes_i:gt1_frame_check:start_of_packet_detected_r
  waveform  add  -signals  :jesd204b_rx4_exdes_i:gt1_frame_check:RX_DATA
  waveform  add  -signals  :jesd204b_rx4_exdes_i:gt1_frame_check:ERROR_COUNT
  waveform  add  -label FRAME_CHECK_MODULE -comment gt2_frame_check
  waveform  add  -signals  :jesd204b_rx4_exdes_i:gt2_frame_check:begin_r
  waveform  add  -signals  :jesd204b_rx4_exdes_i:gt2_frame_check:track_data_r
  waveform  add  -siganls  :jesd204b_rx4_exdes_i:gt2_frame_check:data_error_detected_r
  wavefrom  add  -siganls  :jesd204b_rx4_exdes_i:gt2_frame_check:start_of_packet_detected_r
  waveform  add  -signals  :jesd204b_rx4_exdes_i:gt2_frame_check:RX_DATA
  waveform  add  -signals  :jesd204b_rx4_exdes_i:gt2_frame_check:ERROR_COUNT
  waveform  add  -label GT0_jesd204b_rx4 -comment GT0_jesd204b_rx4
  waveform  add  -label Channel_-_DRP_Ports_  -comment  Channel_-_DRP_Ports_
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.DRPADDR_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.DRPCLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.DRPDI_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.DRPDO_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.DRPEN_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.DRPRDY_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.DRPWE_IN
  waveform  add  -label GTPE2_CHANNEL_Clocking_Ports  -comment  GTPE2_CHANNEL_Clocking_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.PLL0CLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.PLL0REFCLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.PLL1CLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.PLL1REFCLK_IN
  waveform  add  -label RX_Initialization_and_Reset_Ports  -comment  RX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXUSERRDY_IN
  waveform  add  -label RX_Margin_Analysis_Ports  -comment  RX_Margin_Analysis_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.EYESCANDATAERROR_OUT
  waveform  add  -label Receive_Ports_-_CDR_Ports  -comment  Receive_Ports_-_CDR_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXCDRLOCK_OUT
  waveform  add  -label Receive_Ports_-_FPGA_RX_Interface_Ports  -comment  Receive_Ports_-_FPGA_RX_Interface_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXDATA_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXUSRCLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_8B/10B_Decoder_Ports  -comment  Receive_Ports_-_RX_8B/10B_Decoder_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXCHARISCOMMA_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXCHARISK_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXDISPERR_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXNOTINTABLE_OUT
  waveform  add  -label Receive_Ports_-_RX_AFE_Ports  -comment  Receive_Ports_-_RX_AFE_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.GTPRXN_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.GTPRXP_IN
  waveform  add  -label Receive_Ports_-_RX_Byte_and_Word_Alignment_Ports  -comment  Receive_Ports_-_RX_Byte_and_Word_Alignment_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXMCOMMAALIGNEN_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXPCOMMAALIGNEN_IN
  waveform  add  -label Receive_Ports_-_RX_Equailizer_Ports  -comment  Receive_Ports_-_RX_Equailizer_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXLPMHFHOLD_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXLPMLFHOLD_IN
  waveform  add  -label Receive_Ports_-_RX_Fabric_Output_Control_Ports  -comment  Receive_Ports_-_RX_Fabric_Output_Control_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXOUTCLK_OUT
  waveform  add  -label Receive_Ports_-_RX_Initialization_and_Reset_Ports  -comment  Receive_Ports_-_RX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.GTRXRESET_IN
  waveform  add  -label Receive_Ports_-RX_Initialization_and_Reset_Ports  -comment  Receive_Ports_-RX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.RXRESETDONE_OUT
  waveform  add  -label TX_Initialization_and_Reset_Ports  -comment  TX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.GTTXRESET_IN
  waveform  add  -label Transmit_Ports_-_TX_Initialization_and_Reset_Ports  -comment  Transmit_Ports_-_TX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt0_jesd204b_rx4_i.TXPCSRESET_IN

  waveform  add  -label GT1_jesd204b_rx4 -comment GT1_jesd204b_rx4
  waveform  add  -label Channel_-_DRP_Ports_  -comment  Channel_-_DRP_Ports_
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.DRPADDR_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.DRPCLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.DRPDI_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.DRPDO_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.DRPEN_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.DRPRDY_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.DRPWE_IN
  waveform  add  -label GTPE2_CHANNEL_Clocking_Ports  -comment  GTPE2_CHANNEL_Clocking_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.PLL0CLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.PLL0REFCLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.PLL1CLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.PLL1REFCLK_IN
  waveform  add  -label RX_Initialization_and_Reset_Ports  -comment  RX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXUSERRDY_IN
  waveform  add  -label RX_Margin_Analysis_Ports  -comment  RX_Margin_Analysis_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.EYESCANDATAERROR_OUT
  waveform  add  -label Receive_Ports_-_CDR_Ports  -comment  Receive_Ports_-_CDR_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXCDRLOCK_OUT
  waveform  add  -label Receive_Ports_-_FPGA_RX_Interface_Ports  -comment  Receive_Ports_-_FPGA_RX_Interface_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXDATA_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXUSRCLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_8B/10B_Decoder_Ports  -comment  Receive_Ports_-_RX_8B/10B_Decoder_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXCHARISCOMMA_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXCHARISK_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXDISPERR_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXNOTINTABLE_OUT
  waveform  add  -label Receive_Ports_-_RX_AFE_Ports  -comment  Receive_Ports_-_RX_AFE_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.GTPRXN_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.GTPRXP_IN
  waveform  add  -label Receive_Ports_-_RX_Byte_and_Word_Alignment_Ports  -comment  Receive_Ports_-_RX_Byte_and_Word_Alignment_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXMCOMMAALIGNEN_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXPCOMMAALIGNEN_IN
  waveform  add  -label Receive_Ports_-_RX_Equailizer_Ports  -comment  Receive_Ports_-_RX_Equailizer_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXLPMHFHOLD_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXLPMLFHOLD_IN
  waveform  add  -label Receive_Ports_-_RX_Fabric_Output_Control_Ports  -comment  Receive_Ports_-_RX_Fabric_Output_Control_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXOUTCLK_OUT
  waveform  add  -label Receive_Ports_-_RX_Initialization_and_Reset_Ports  -comment  Receive_Ports_-_RX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.GTRXRESET_IN
  waveform  add  -label Receive_Ports_-RX_Initialization_and_Reset_Ports  -comment  Receive_Ports_-RX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.RXRESETDONE_OUT
  waveform  add  -label TX_Initialization_and_Reset_Ports  -comment  TX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.GTTXRESET_IN
  waveform  add  -label Transmit_Ports_-_TX_Initialization_and_Reset_Ports  -comment  Transmit_Ports_-_TX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt1_jesd204b_rx4_i.TXPCSRESET_IN

  waveform  add  -label GT2_jesd204b_rx4 -comment GT2_jesd204b_rx4
  waveform  add  -label Channel_-_DRP_Ports_  -comment  Channel_-_DRP_Ports_
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.DRPADDR_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.DRPCLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.DRPDI_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.DRPDO_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.DRPEN_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.DRPRDY_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.DRPWE_IN
  waveform  add  -label GTPE2_CHANNEL_Clocking_Ports  -comment  GTPE2_CHANNEL_Clocking_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.PLL0CLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.PLL0REFCLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.PLL1CLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.PLL1REFCLK_IN
  waveform  add  -label RX_Initialization_and_Reset_Ports  -comment  RX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXUSERRDY_IN
  waveform  add  -label RX_Margin_Analysis_Ports  -comment  RX_Margin_Analysis_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.EYESCANDATAERROR_OUT
  waveform  add  -label Receive_Ports_-_CDR_Ports  -comment  Receive_Ports_-_CDR_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXCDRLOCK_OUT
  waveform  add  -label Receive_Ports_-_FPGA_RX_Interface_Ports  -comment  Receive_Ports_-_FPGA_RX_Interface_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXDATA_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXUSRCLK_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXUSRCLK2_IN
  waveform  add  -label Receive_Ports_-_RX_8B/10B_Decoder_Ports  -comment  Receive_Ports_-_RX_8B/10B_Decoder_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXCHARISCOMMA_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXCHARISK_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXDISPERR_OUT
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXNOTINTABLE_OUT
  waveform  add  -label Receive_Ports_-_RX_AFE_Ports  -comment  Receive_Ports_-_RX_AFE_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.GTPRXN_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.GTPRXP_IN
  waveform  add  -label Receive_Ports_-_RX_Byte_and_Word_Alignment_Ports  -comment  Receive_Ports_-_RX_Byte_and_Word_Alignment_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXMCOMMAALIGNEN_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXPCOMMAALIGNEN_IN
  waveform  add  -label Receive_Ports_-_RX_Equailizer_Ports  -comment  Receive_Ports_-_RX_Equailizer_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXLPMHFHOLD_IN
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXLPMLFHOLD_IN
  waveform  add  -label Receive_Ports_-_RX_Fabric_Output_Control_Ports  -comment  Receive_Ports_-_RX_Fabric_Output_Control_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXOUTCLK_OUT
  waveform  add  -label Receive_Ports_-_RX_Initialization_and_Reset_Ports  -comment  Receive_Ports_-_RX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.GTRXRESET_IN
  waveform  add  -label Receive_Ports_-RX_Initialization_and_Reset_Ports  -comment  Receive_Ports_-RX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.RXRESETDONE_OUT
  waveform  add  -label TX_Initialization_and_Reset_Ports  -comment  TX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.GTTXRESET_IN
  waveform  add  -label Transmit_Ports_-_TX_Initialization_and_Reset_Ports  -comment  Transmit_Ports_-_TX_Initialization_and_Reset_Ports
  waveform  add  -signals  jesd204b_rx4_TB.jesd204b_rx4_exdes_i.jesd204b_rx4_init_i.jesd204b_rx4_i.gt2_jesd204b_rx4_i.TXPCSRESET_IN


  console submit -using simulator -wait no "run 300 us"

