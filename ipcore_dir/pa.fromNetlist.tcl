
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name jesd204b_rx4 -dir "/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir/planAhead_run_2" -part xc7a200tfbg676-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir/jesd204b_rx4_exdes.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir} {jesd204b_rx4/example_design} }
add_files [list {/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir/fifomodule.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir/jesd204b_rx4_TX_STARTUP_FSM.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_exdes.ucf" [current_fileset -constrset]
add_files [list {/home/vladimir/SERGLAST/ad9656/cern/ipcore_dir/jesd204b_rx4/example_design/jesd204b_rx4_exdes.ucf}] -fileset [get_property constrset [current_run]]
link_design
