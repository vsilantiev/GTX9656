#!/bin/sh
################################################################################
##   ____  ____ 
##  /   /\/   / 
## /___/  \  /    Vendor: Xilinx 
## \   \   \/     Version : 2.7
##  \   \         Application : 7 Series FPGAs Transceivers Wizard
##  /   /         Filename : simulate_vcs.sh
## /___/   /\     
## \   \  /  \ 
##  \___\/\___\ 
##
##
## Script SIMULATE_VCS.SH
## Generated by Xilinx 7 Series FPGAs Transceivers Wizard
##
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

##***************************** Beginning of Script ***************************


rm -rf simv* csrc DVEfiles AN.DB

    
cp $SIMPLEX_PARTNER/tx_jesd204b_rx4/simulation/functional/gt_rom_init_tx.dat .

vhdlan \
                    ../../example_design/jesd204b_rx4_init.vhd \
                    ../../example_design/jesd204b_rx4_sync_block.vhd \
                    ../../example_design/jesd204b_rx4_gtrxreset_seq.vhd \
                    ../../example_design/jesd204b_rx4_rxpmarst_seq.vhd \
                    ../../example_design/jesd204b_rx4_rxrate_seq.vhd \
                    ../../example_design/jesd204b_rx4_tx_startup_fsm.vhd \
                    ../../example_design/jesd204b_rx4_rx_startup_fsm.vhd \
                    ../../example_design/jesd204b_rx4_recclk_monitor.vhd \
                    $SIMPLEX_PARTNER/tx_jesd204b_rx4/example_design/tx_jesd204b_rx4_init.vhd \
                    $SIMPLEX_PARTNER/tx_jesd204b_rx4/example_design/tx_jesd204b_rx4_sync_block.vhd \
                    $SIMPLEX_PARTNER/tx_jesd204b_rx4/example_design/tx_jesd204b_rx4_tx_startup_fsm.vhd \
                    $SIMPLEX_PARTNER/tx_jesd204b_rx4/example_design/tx_jesd204b_rx4_rx_startup_fsm.vhd \
                    $SIMPLEX_PARTNER/tx_jesd204b_rx4/example_design/tx_jesd204b_rx4_recclk_monitor.vhd \
                 ../../../jesd204b_rx4.vhd \
                 ../../../jesd204b_rx4_gt.vhd \
                $SIMPLEX_PARTNER/tx_jesd204b_rx4.vhd \
                $SIMPLEX_PARTNER/tx_jesd204b_rx4_gt.vhd \
               ../../example_design/jesd204b_rx4_gt_usrclk_source.vhd \
               $SIMPLEX_PARTNER/tx_jesd204b_rx4/example_design/tx_jesd204b_rx4_gt_usrclk_source.vhd \
                $SIMPLEX_PARTNER/tx_jesd204b_rx4/example_design/tx_jesd204b_rx4_gt_frame_gen.vhd \
                ../../example_design/jesd204b_rx4_gt_frame_check.vhd \
                ../../example_design/jesd204b_rx4_exdes.vhd \
                $SIMPLEX_PARTNER/tx_jesd204b_rx4/example_design/tx_jesd204b_rx4_exdes.vhd \
            ../jesd204b_rx4_tb.vhd

vcs +vcs+lic+wait \
    -debug \
    jesd204b_rx4_TB 
./simv -ucli -i ucli_commands.key
dve -vpd vcdplus.vpd -session vcs_session.tcl

