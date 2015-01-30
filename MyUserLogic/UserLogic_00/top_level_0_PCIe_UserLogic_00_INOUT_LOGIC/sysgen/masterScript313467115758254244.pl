
open(PIDFILE, '> pidfile.txt') || die 'Couldn\'t write process ID to file.';
print PIDFILE "$$\n";
close(PIDFILE);

eval {
  # Call script(s).
  my $instrs;
  my $results = [];
$ENV{'SYSGEN'} = 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen';
  use Sg;
  $instrs = {
    'HDLCodeGenStatus' => 0.0,
    'HDL_PATH' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MySysGen',
    'Impl_file' => 'ISE Defaults',
    'Impl_file_sgadvanced' => '',
    'Synth_file' => 'XST Defaults',
    'Synth_file_sgadvanced' => '',
    'TEMP' => 'C:/DOCUME~1/root/IMPOST~1/Temp',
    'TMP' => 'C:/DOCUME~1/root/IMPOST~1/Temp',
    'Temp' => 'C:/DOCUME~1/root/IMPOST~1/Temp',
    'Tmp' => 'C:/DOCUME~1/root/IMPOST~1/Temp',
    'base_system_period_hardware' => 5.0,
    'base_system_period_simulink' => 8.0E-9,
    'block_icon_display' => 'Default',
    'block_type' => 'sysgen',
    'block_version' => '',
    'ce_clr' => 0.0,
    'clock_loc' => '',
    'clock_wrapper' => 'Clock Enables',
    'clock_wrapper_sgadvanced' => '',
    'compilation' => 'NGC Netlist',
    'compilation_lut' => {
      'keys' => [
        'HDL Netlist',
        'Bitstream',
        'NGC Netlist',
      ],
      'values' => [
        'target1',
        'target2',
        'target3',
      ],
    },
    'compilation_target' => 'NGC Netlist',
    'core_generation' => 1.0,
    'core_generation_sgadvanced' => '',
    'core_is_deployed' => 0.0,
    'coregen_core_generation_tmpdir' => 'C:/DOCUME~1/root/IMPOST~1/Temp/sysgentmp-root/cg_wk/c46e83d2645affbd5',
    'coregen_part_family' => 'virtex6',
    'createTestbench' => 0,
    'create_interface_document' => 'off',
    'dbl_ovrd' => -1.0,
    'dbl_ovrd_sgadvanced' => '',
    'dcm_input_clock_period' => 5.0,
    'deprecated_control' => 'off',
    'deprecated_control_sgadvanced' => '',
    'design' => 'PCIe_UserLogic_00',
    'design_full_path' => 'C:\\Temp\\Xilinx PCI Express\\ML605_ISE13.3\\MySysGen\\PCIe_UserLogic_00.mdl',
    'device' => 'xc6vlx240t-1ff1156',
    'device_speed' => '-1',
    'directory' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_0_PCIe_UserLogic_00_INOUT_LOGIC',
    'dsp_cache_root_path' => 'C:/DOCUME~1/root/IMPOST~1/Temp/sysgentmp-root',
    'eval_field' => '0',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_0_PCIe_UserLogic_00_INOUT_LOGIC/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_0_PCIe_UserLogic_00_INOUT_LOGIC/sysgen/perl_results.v', },
      ],
    ],
    'fxdptinstalled' => 1.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 2084.00048828125,
    'generating_subsystem_handle' => 2084.00048828125,
    'generation_directory' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_0_PCIe_UserLogic_00_INOUT_LOGIC',
    'has_advanced_control' => '0',
    'hdlDir' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl',
    'hdlKind' => 'vhdl',
    'hdl_path' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MySysGen',
    'impl_file' => 'ISE Defaults*',
    'incr_netlist' => 'off',
    'incr_netlist_sgadvanced' => '',
    'infoedit' => ' System Generator',
    'isdeployed' => 0,
    'ise_version' => '13.3i',
    'master_sysgen_token_handle' => 2085.00048828125,
    'matlab' => 'C:/Programmi/MATLAB/R2010b',
    'matlab_fixedpoint' => 1.0,
    'mdlHandle' => 2083.00048828125,
    'mdlPath' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MySysGen/PCIe_UserLogic_00.mdl',
    'modelDiagnostics' => [
      {
        'count' => 351.0,
        'isMask' => 0.0,
        'type' => 'PCIe_UserLogic_00 Total blocks',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 339.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 4.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx ChipScope Block',
      },
      {
        'count' => 23.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Counter Block',
      },
      {
        'count' => 44.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway In Block',
      },
      {
        'count' => 39.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway Out Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Inverter Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Logical Block Block',
      },
      {
        'count' => 89.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Register Block',
      },
      {
        'count' => 62.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Shared Memory Based From Register Block',
      },
      {
        'count' => 62.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Shared Memory Based To Register Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Subsystem Generator Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
      {
        'count' => 14.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Converter Block',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MySysGen/PCIe_UserLogic_00.mdl',
    'myxilinx' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE',
    'ngc_config' => {
      'include_cf' => 1,
      'include_clockwrapper' => 1.0,
    },
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '1250000000',
    'package' => 'ff1156',
    'part' => 'xc6vlx240t',
    'partFamily' => 'virtex6',
    'port_data_types_enabled' => 1.0,
    'postgeneration_fcn' => 'xlNGCPostGeneration',
    'preserve_hierarchy' => 0.0,
    'proj_type' => 'Project Navigator',
    'proj_type_sgadvanced' => '',
    'run_coregen' => 'off',
    'run_coregen_sgadvanced' => '',
    'sample_time_colors_enabled' => 1.0,
    'sampletimecolors' => 1.0,
    'settings_fcn' => 'xlngcsettings',
    'sg_blockgui_xml' => '',
    'sg_icon_stat' => '50,50,-1,-1,token,white,0,07734,right,,[ ],[ ]',
    'sg_list_contents' => '',
    'sg_mask_display' => 'fprintf(\'\',\'COMMENT: begin icon graphics\');
patch([0 50 50 0 0 ],[0 0 50 50 0 ],[1 1 1 ]);
patch([1.6375 16.81 27.31 37.81 48.31 27.31 12.1375 1.6375 ],[36.655 36.655 47.155 36.655 47.155 47.155 47.155 36.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 27.31 16.81 1.6375 12.1375 ],[26.155 26.155 36.655 36.655 26.155 ],[0.698039 0.0313725 0.219608 ]);
patch([1.6375 16.81 27.31 12.1375 1.6375 ],[15.655 15.655 26.155 26.155 15.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 48.31 37.81 27.31 16.81 1.6375 12.1375 ],[5.155 5.155 15.655 5.155 15.655 15.655 5.155 ],[0.698039 0.0313725 0.219608 ]);
fprintf(\'\',\'COMMENT: end icon graphics\');
fprintf(\'\',\'COMMENT: begin icon text\');
fprintf(\'\',\'COMMENT: end icon text\');',
    'sg_version' => '',
    'sggui_pos' => '-1,-1,-1,-1',
    'simulation_island_subsystem_handle' => 2084.00048828125,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 8.0E-9,
    'speed' => '-1',
    'synth_file' => 'XST Defaults*',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'vhdl',
    'synthesis_tool' => 'XST',
    'synthesis_tool_sgadvanced' => '',
    'sysclk_period' => 5.0,
    'sysgen' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen',
    'sysgenRoot' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen',
    'sysgenTokenSettings' => {
      'Impl_file' => 'ISE Defaults',
      'Impl_file_sgadvanced' => '',
      'Synth_file' => 'XST Defaults',
      'Synth_file_sgadvanced' => '',
      'base_system_period_hardware' => 5.0,
      'base_system_period_simulink' => 8.0E-9,
      'block_icon_display' => 'Default',
      'block_type' => 'sysgen',
      'block_version' => '',
      'ce_clr' => 0.0,
      'clock_loc' => '',
      'clock_wrapper' => 'Clock Enables',
      'clock_wrapper_sgadvanced' => '',
      'compilation' => 'NGC Netlist',
      'compilation_lut' => {
        'keys' => [
          'HDL Netlist',
          'Bitstream',
          'NGC Netlist',
        ],
        'values' => [
          'target1',
          'target2',
          'target3',
        ],
      },
      'core_generation' => 1.0,
      'core_generation_sgadvanced' => '',
      'coregen_part_family' => 'virtex6',
      'create_interface_document' => 'off',
      'dbl_ovrd' => -1.0,
      'dbl_ovrd_sgadvanced' => '',
      'dcm_input_clock_period' => 5.0,
      'deprecated_control' => 'off',
      'deprecated_control_sgadvanced' => '',
      'directory' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_0_PCIe_UserLogic_00_INOUT_LOGIC',
      'eval_field' => '0',
      'has_advanced_control' => '0',
      'impl_file' => 'ISE Defaults*',
      'incr_netlist' => 'off',
      'incr_netlist_sgadvanced' => '',
      'infoedit' => ' System Generator',
      'master_sysgen_token_handle' => 2085.00048828125,
      'ngc_config' => {
        'include_cf' => 1,
        'include_clockwrapper' => 1.0,
      },
      'package' => 'ff1156',
      'part' => 'xc6vlx240t',
      'postgeneration_fcn' => 'xlNGCPostGeneration',
      'preserve_hierarchy' => 0.0,
      'proj_type' => 'Project Navigator',
      'proj_type_sgadvanced' => '',
      'run_coregen' => 'off',
      'run_coregen_sgadvanced' => '',
      'settings_fcn' => 'xlngcsettings',
      'sg_blockgui_xml' => '',
      'sg_icon_stat' => '50,50,-1,-1,token,white,0,07734,right,,[ ],[ ]',
      'sg_list_contents' => '',
      'sg_mask_display' => 'fprintf(\'\',\'COMMENT: begin icon graphics\');
patch([0 50 50 0 0 ],[0 0 50 50 0 ],[1 1 1 ]);
patch([1.6375 16.81 27.31 37.81 48.31 27.31 12.1375 1.6375 ],[36.655 36.655 47.155 36.655 47.155 47.155 47.155 36.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 27.31 16.81 1.6375 12.1375 ],[26.155 26.155 36.655 36.655 26.155 ],[0.698039 0.0313725 0.219608 ]);
patch([1.6375 16.81 27.31 12.1375 1.6375 ],[15.655 15.655 26.155 26.155 15.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 48.31 37.81 27.31 16.81 1.6375 12.1375 ],[5.155 5.155 15.655 5.155 15.655 15.655 5.155 ],[0.698039 0.0313725 0.219608 ]);
fprintf(\'\',\'COMMENT: end icon graphics\');
fprintf(\'\',\'COMMENT: begin icon text\');
fprintf(\'\',\'COMMENT: end icon text\');',
      'sggui_pos' => '-1,-1,-1,-1',
      'simulation_island_subsystem_handle' => 2084.00048828125,
      'simulink_period' => 8.0E-9,
      'speed' => '-1',
      'synth_file' => 'XST Defaults*',
      'synthesis_language' => 'vhdl',
      'synthesis_tool' => 'XST',
      'synthesis_tool_sgadvanced' => '',
      'sysclk_period' => 5.0,
      'testbench' => 0,
      'testbench_sgadvanced' => '',
      'trim_vbits' => 1.0,
      'trim_vbits_sgadvanced' => '',
      'xilinx_device' => 'xc6vlx240t-1ff1156',
      'xilinxfamily' => 'virtex6',
    },
    'sysgen_Root' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen',
    'systemClockPeriod' => 5.0,
    'tempdir' => 'C:/DOCUME~1/root/IMPOST~1/Temp',
    'testbench' => 0,
    'testbench_sgadvanced' => '',
    'tmpDir' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_0_PCIe_UserLogic_00_INOUT_LOGIC/sysgen',
    'trim_vbits' => 1.0,
    'trim_vbits_sgadvanced' => '',
    'use_ce_syn_keep' => 1,
    'use_strict_names' => 1,
    'user_tips_enabled' => 0.0,
    'usertemp' => 'C:/DOCUME~1/root/IMPOST~1/Temp/sysgentmp-root',
    'using71Netlister' => 1,
    'verilog_files' => [
      'conv_pkg.v',
      'synth_reg.v',
      'synth_reg_w_init.v',
      'convert_type.v',
    ],
    'version' => '',
    'vhdl_files' => [
      'conv_pkg.vhd',
      'synth_reg.vhd',
      'synth_reg_w_init.vhd',
    ],
    'vsimtime' => '6875000275.000000 ns',
    'xilinx' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE',
    'xilinx_device' => 'xc6vlx240t-1ff1156',
    'xilinx_family' => 'virtex6',
    'xilinx_package' => 'ff1156',
    'xilinx_part' => 'xc6vlx240t',
    'xilinxdevice' => 'xc6vlx240t-1ff1156',
    'xilinxfamily' => 'virtex6',
    'xilinxpart' => 'xc6vlx240t',
  };
  push(@$results, &Sg::setAttributes($instrs));
  use SgDeliverFile;
  $instrs = {
    'collaborationName' => 'conv_pkg.vhd',
    'sourceFile' => 'hdl/conv_pkg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg.vhd',
    'sourceFile' => 'hdl/synth_reg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg_w_init.vhd',
    'sourceFile' => 'hdl/synth_reg_w_init.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'xlpersistentdff.ngc',
    'sourceFile' => 'hdl/xlpersistentdff.ngc',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '13366d021ddc9f5413827bc05cb9e24f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_6293007044',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen';
  open(RESULTS, '> C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_0_PCIe_UserLogic_00_INOUT_LOGIC/sysgen/script_results2004397686292478731') || 
    croak 'couldn\'t open C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_0_PCIe_UserLogic_00_INOUT_LOGIC/sysgen/script_results2004397686292478731';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_0_PCIe_UserLogic_00_INOUT_LOGIC/sysgen/script_results2004397686292478731';
};

if ($@) {
  open(RESULTS, '> C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_0_PCIe_UserLogic_00_INOUT_LOGIC/sysgen/script_results2004397686292478731') || 
    croak 'couldn\'t open C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_0_PCIe_UserLogic_00_INOUT_LOGIC/sysgen/script_results2004397686292478731';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_0_PCIe_UserLogic_00_INOUT_LOGIC/sysgen/script_results2004397686292478731';
  exit(1);
}

exit(0);
