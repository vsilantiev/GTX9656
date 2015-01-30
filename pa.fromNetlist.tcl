
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name v6pcie -dir "/home/vladimir/SERGLAST/ad9656/cern/planAhead_run_2" -part xc7a200tfbg676-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/vladimir/SERGLAST/ad9656/cern/v6pcieDMA.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/vladimir/SERGLAST/ad9656/cern} {ipcore_dir/jesd204b_rx4/example_design} {ipcore_dir_ISE13.3} {ipcore_dir} }
add_files [list {ipcore_dir_ISE13.3/v6_eb_fifo_counted_new.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir_ISE13.3/v6_bram4096x64.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir_ISE13.3/v6_mBuf_128x72.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir_ISE13.3/v6_prime_fifo_plain.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir_ISE13.3/v6_eb_fifo_counted_resized.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir_ISE13.3/v6_sfifo_15x128.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/fifomodule.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/jesd204b_rx4_TX_STARTUP_FSM.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "ABB3_pcie_4_lane_Emu_FIFO_elink.ucf" [current_fileset -constrset]
add_files [list {ABB3_pcie_4_lane_Emu_FIFO_elink.ucf}] -fileset [get_property constrset [current_run]]
link_design
