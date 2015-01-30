
set device xc7a200t-fbg676-2
set projName v7_pcie
set design v7_pcie
set projDir  [file dirname [info script]]

set projDir [file dirname [info script]]
create_project $projName $projDir/results/$projName -part $device -force
set_property design_mode RTL [current_fileset -srcset]


set top_module xilinx_pcie_2_1_ep_7x
set_property top xilinx_pcie_2_1_ep_7x [get_property srcset [current_run]]

add_files -norecurse {../../source/v7_pcie_gt_rx_valid_filter_7x.vhd}
add_files -norecurse {../../source/v7_pcie_gt_top.vhd}
add_files -norecurse {../../source/v7_pcie_pcie_bram_top_7x.vhd}
add_files -norecurse {../../source/v7_pcie_pcie_brams_7x.vhd}
add_files -norecurse {../../source/v7_pcie_pcie_bram_7x.vhd}
add_files -norecurse {../../source/v7_pcie_pcie_7x.vhd}
add_files -norecurse {../../source/v7_pcie_pcie_pipe_pipeline.vhd}
add_files -norecurse {../../source/v7_pcie_pcie_pipe_lane.vhd}
add_files -norecurse {../../source/v7_pcie_pcie_pipe_misc.vhd}
add_files -norecurse {../../source/v7_pcie_axi_basic_tx_thrtl_ctl.vhd}
add_files -norecurse {../../source/v7_pcie_axi_basic_rx.vhd}
add_files -norecurse {../../source/v7_pcie_axi_basic_rx_null_gen.vhd}
add_files -norecurse {../../source/v7_pcie_axi_basic_rx_pipeline.vhd}
add_files -norecurse {../../source/v7_pcie_axi_basic_tx_pipeline.vhd}
add_files -norecurse {../../source/v7_pcie_axi_basic_tx.vhd}
add_files -norecurse {../../source/v7_pcie_axi_basic_top.vhd}
add_files -norecurse {../../source/v7_pcie_pcie_top.vhd}
add_files -norecurse {../../source/v7_pcie.vhd}
add_files -norecurse {../../source/v7_pcie_gt_wrapper.v}
add_files -norecurse {../../source/v7_pcie_gtp_pipe_reset.v}
add_files -norecurse {../../source/v7_pcie_gtp_pipe_rate.v}
add_files -norecurse {../../source/v7_pcie_qpll_wrapper.v}
add_files -norecurse {../../source/v7_pcie_qpll_drp.v}
add_files -norecurse {../../source/v7_pcie_qpll_reset.v}
add_files -norecurse {../../source/v7_pcie_rxeq_scan.v}
add_files -norecurse {../../source/v7_pcie_pipe_eq.v}
add_files -norecurse {../../source/v7_pcie_pipe_clock.v}
add_files -norecurse {../../source/v7_pcie_pipe_drp.v}
add_files -norecurse {../../source/v7_pcie_pipe_rate.v}
add_files -norecurse {../../source/v7_pcie_pipe_reset.v}
add_files -norecurse {../../source/v7_pcie_pipe_user.v}
add_files -norecurse {../../source/v7_pcie_pipe_sync.v}
add_files -norecurse {../../source/v7_pcie_pipe_wrapper.v}
	add_files -norecurse {../../example_design/xilinx_pcie_2_1_ep_7x.vhd}
add_files -norecurse {../../example_design/pcie_app_7x.vhd}
add_files -norecurse {../../example_design/PIO.vhd}
add_files -norecurse {../../example_design/PIO_EP.vhd}
add_files -norecurse {../../example_design/PIO_EP_MEM_ACCESS.vhd}
add_files -norecurse {../../example_design/EP_MEM.vhd}
add_files -norecurse {../../example_design/PIO_TO_CTRL.vhd}
add_files -norecurse {../../example_design/PIO_RX_ENGINE.vhd}
add_files -norecurse {../../example_design/PIO_TX_ENGINE.vhd}
read_xdc ../../example_design/xilinx_pcie_2_1_ep_7x_04_lane_gen2_xc7a200t-fbg676-2-PCIE_X0Y0.xdc
synth_design -flatten_hierarchy none
opt_design
place_design
route_design
set_param sta.dlyMediator true
write_sdf -rename_top_module xilinx_pcie_2_1_ep_7x -file routed.sdf
write_vhdl -nolib -mode sim -file routed.vhd
report_timing -nworst 30 -path_type full -file routed.twr
report_drc
