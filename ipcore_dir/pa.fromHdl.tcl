
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name jesd204b_rx4 -dir "/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir/planAhead_run_2" -part xc7a200tfbg676-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_exdes.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {jesd204b_rx4/example_design/jesd204b_rx4_sync_block.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {jesd204b_rx4/example_design/jesd204b_rx4_gtrxreset_seq.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {jesd204b_rx4_gt.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {jesd204b_rx4/example_design/jesd204b_rx4_rx_startup_fsm.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {jesd204b_rx4/example_design/jesd204b_rx4_clock_module.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {jesd204b_rx4.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {jesd204b_rx4/example_design/jesd204b_rx4_init.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {jesd204b_rx4/example_design/jesd204b_rx4_gt_usrclk_source.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {jesd204b_rx4/example_design/jesd204b_rx4_gt_frame_check.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
add_files [list {jesd204b_rx4/example_design/ila.ngc}]
add_files [list {jesd204b_rx4/example_design/icon.ngc}]
add_files [list {jesd204b_rx4/example_design/data_vio.ngc}]
set hdlfile [add_files [list {jesd204b_rx4/example_design/jesd204b_rx4_exdes.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top jesd204b_rx4_exdes $srcset
add_files [list {/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_exdes.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir/jesd204b_rx4_exdes.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir/fifomodule.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir/jesd204b_rx4_TX_STARTUP_FSM.ncf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a200tfbg676-2
