
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name v6pcie -dir "/home/vladimir/SERGLAST/ad9656/cern/planAhead_run_3" -part xc7a200tfbg676-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ABB3_pcie_4_lane_Emu_FIFO_elink.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_sync_block.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_tx_startup_fsm.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pcie_bram_7x.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_rxeq_scan.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pcie_brams_7x.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_axi_basic_tx_thrtl_ctl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_axi_basic_tx_pipeline.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_axi_basic_rx_pipeline.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_axi_basic_rx_null_gen.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_qpll_wrapper.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_qpll_reset.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_qpll_drp.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pipe_user.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pipe_sync.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pipe_reset.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pipe_rate.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pipe_eq.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pipe_drp.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pipe_clock.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pcie_pipe_misc.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pcie_pipe_lane.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pcie_bram_top_7x.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_gt_wrapper.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_gtp_pipe_reset.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_gtp_pipe_rate.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_gtp_pipe_drp.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_axi_basic_tx.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_axi_basic_rx.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/v6abb64Package_efifo_elink.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pipe_wrapper.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pcie_pipe_pipeline.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pcie_7x.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_gt_rx_valid_filter_7x.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_axi_basic_top.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/FF_tagram64x36.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/DMA_FSM.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/DMA_Calculate.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir_ISE13.3/v6_sfifo_15x128.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_pcie_top.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie_gt_top.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/Tx_Output_Arbitor.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/tx_Mem_Reader.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/rx_usDMA_Channel.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/rx_MWr_Channel.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/rx_MRd_Channel.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/rx_dsDMA_Channel.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/rx_CplD_Channel.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/RxIn_Delays.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/Interrupts.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir_ISE13.3/v6_mBuf_128x72.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {v7_pcie.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/tx_Transact.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/rx_Transact.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/Registers.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir_ISE13.3/v6_eb_fifo_counted_resized.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {pcie_axi_trn_bridge.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/tlpControl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/FIFO_Wrapper.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {fmc_adc_100Ms_core.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MySource/v6eb_pcie.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_gt_usrclk_source.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_gtrxreset_seq.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_rxpmarst_seq.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_rxrate_seq.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_init.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_rx_startup_fsm.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_recclk_monitor.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_gt_frame_gen.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_gt_frame_check.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4_gt.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_exdes.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
add_files [list {ipcore_dir_ISE13.3/v6_eb_fifo_counted_resized.ngc}]
add_files [list {ipcore_dir_ISE13.3/v6_mBuf_128x72.ngc}]
add_files [list {ipcore_dir_ISE13.3/v6_sfifo_15x128.ngc}]
set_property top v6pcieDMA $srcset
add_files [list {ABB3_pcie_4_lane_Emu_FIFO_elink.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir_ISE13.3/v6_eb_fifo_counted_new.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir_ISE13.3/v6_bram4096x64.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir_ISE13.3/v6_mBuf_128x72.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir_ISE13.3/v6_prime_fifo_plain.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir_ISE13.3/v6_eb_fifo_counted_resized.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir_ISE13.3/v6_sfifo_15x128.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/fifomodule.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/jesd204b_rx4_TX_STARTUP_FSM.ncf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a200tfbg676-2
