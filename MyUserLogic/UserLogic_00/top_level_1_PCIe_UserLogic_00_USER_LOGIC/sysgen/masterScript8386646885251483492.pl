
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
    'base_system_period_simulink' => 5.0E-9,
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
    'coregen_core_generation_tmpdir' => 'C:/DOCUME~1/root/IMPOST~1/Temp/sysgentmp-root/cg_wk/c1fefddc63a4b8747',
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
    'directory' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_1_PCIe_UserLogic_00_USER_LOGIC',
    'dsp_cache_root_path' => 'C:/DOCUME~1/root/IMPOST~1/Temp/sysgentmp-root',
    'eval_field' => '0',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_1_PCIe_UserLogic_00_USER_LOGIC/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_1_PCIe_UserLogic_00_USER_LOGIC/sysgen/perl_results.v', },
      ],
    ],
    'fxdptinstalled' => 1.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 2341.00048828125,
    'generating_subsystem_handle' => 2341.00048828125,
    'generation_directory' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_1_PCIe_UserLogic_00_USER_LOGIC',
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
    'master_sysgen_token_handle' => 2342.00048828125,
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
    'num_sim_cycles' => '2000000000',
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
    'simulation_island_subsystem_handle' => 2341.00048828125,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 5.0E-9,
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
      'base_system_period_simulink' => 5.0E-9,
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
      'directory' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_1_PCIe_UserLogic_00_USER_LOGIC',
      'eval_field' => '0',
      'has_advanced_control' => '0',
      'impl_file' => 'ISE Defaults*',
      'incr_netlist' => 'off',
      'incr_netlist_sgadvanced' => '',
      'infoedit' => ' System Generator',
      'master_sysgen_token_handle' => 2342.00048828125,
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
      'simulation_island_subsystem_handle' => 2341.00048828125,
      'simulink_period' => 5.0E-9,
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
    'tmpDir' => 'C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_1_PCIe_UserLogic_00_USER_LOGIC/sysgen',
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
    'vsimtime' => '11000000275.000000 ns',
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
    'entity_declaration_hash' => '26c90b101ce1ca8b2f28c242a8215ef7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_963ed6358a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
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
  $instrs = {
    'entity_declaration_hash' => '2ba5044b83e42ac193c1ef05b1f91478',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "11111111";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_19562ab42f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a6f102369ca1079b35bf60e21fd122ee',
    'sourceFile' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  use SgGenerateCores;
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 13.3_O.76xd',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 12',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_341fbb8cfa0e669e',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '08fd4e9d602c64ca00cf3724579c5ab2',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_341fbb8cfa0e669e',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b32a0080f8f47e0be7ec44c6ad81b20b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_22_20_push_front_pop_back_en = \'1\')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= \'0\';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'inverter_e5b38cca3b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '298203483c3de52896eed04fd75246a4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_80f90b97d0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e80fd0bc9c88351fdade399fbcd4158a',
    'sourceFile' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'db5c30f0988e09973658bcb504101422',
    'sourceFile' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bf46b70cf2b90b05e5d3f1fb7bea16d9',
    'sourceFile' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'be6f6c8a945a933a2801f0f4f7eba8ac',
    'sourceFile' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a522509641ca31da2ffb263fa3ca3c87',
    'sourceFile' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd5c981faf95794d3e3724fc7b1e657fe',
    'sourceFile' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e34f4091d55c2665d04daba7f7e96ab0',
    'sourceFile' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '1240425cba9ad7bd6399a70b90c219be',
    'sourceFile' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '1f061d40968f6bff078a4caa5f0072a3',
    'sourceFile' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b3210728de1a2642633da953faa71e3a',
    'sourceFile' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT ICON_(ChipScope_Pro_-_Integrated_Controller) virtex6 Xilinx,_Inc. 1.06.a',
    '# 13.3_O.76xd',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET enable_jtag_bufg = false',
    'CSET example_design = false',
    'CSET number_control_ports = 1',
    'CSET use_ext_bscan = false',
    'CSET use_softbscan = false',
    'CSET use_unused_bscan = false',
    'CSET user_scan_chain = USER1',
    'CSET component_name = icon_1_06_a_87e2f476e984e565',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = [
    'SELECT ILA_(ChipScope_Pro_-_Integrated_Logic_Analyzer) virtex6 Xilinx,_Inc. 1.05.a',
    '# 13.3_O.76xd',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET data_same_as_trigger = true',
    'CSET enable_storage_qualification = true',
    'CSET example_design = false',
    'CSET match_type_1 = basic',
    'CSET match_type_10 = basic',
    'CSET match_type_11 = basic',
    'CSET match_type_2 = basic',
    'CSET match_type_3 = basic',
    'CSET match_type_4 = basic',
    'CSET match_type_5 = basic',
    'CSET match_type_6 = basic',
    'CSET match_type_7 = basic',
    'CSET match_type_8 = basic',
    'CSET match_type_9 = basic',
    'CSET match_units_1 = 1',
    'CSET match_units_10 = 1',
    'CSET match_units_11 = 1',
    'CSET match_units_2 = 1',
    'CSET match_units_3 = 1',
    'CSET match_units_4 = 1',
    'CSET match_units_5 = 1',
    'CSET match_units_6 = 1',
    'CSET match_units_7 = 1',
    'CSET match_units_8 = 1',
    'CSET match_units_9 = 1',
    'CSET number_of_trigger_ports = 11',
    'CSET sample_data_depth = 1024',
    'CSET trigger_port_width_1 = 12',
    'CSET trigger_port_width_10 = 1',
    'CSET trigger_port_width_11 = 15',
    'CSET trigger_port_width_2 = 64',
    'CSET trigger_port_width_3 = 1',
    'CSET trigger_port_width_4 = 1',
    'CSET trigger_port_width_5 = 1',
    'CSET trigger_port_width_6 = 72',
    'CSET trigger_port_width_7 = 1',
    'CSET trigger_port_width_8 = 15',
    'CSET trigger_port_width_9 = 1',
    'CSET use_rpms = false',
    'CSET component_name = ila_1_05_a_b6735eb4b876dee5',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'sourceFile' => 'hdl/xlchipscope.vhd',
    'templateKeyValues' => {
      'c_data_width' => '184',
      'data_is_trigger' => '1',
      'data_port_declaration' => '',
      'data_port_info' => '',
      'data_port_interface' => '',
      'entity_name' => 'xlchipscope',
      'icon_core_name' => 'icon_1_06_a_87e2f476e984e565',
      'ila_core_name' => 'ila_1_05_a_b6735eb4b876dee5',
      'num_data_ports' => '0',
      'num_trig_ports' => '11',
      'trig_port_declaration' => 'input[11:0] trig0;
input[63:0] trig1;
input[0:0] trig2;
input[0:0] trig3;
input[0:0] trig4;
input[71:0] trig5;
input[0:0] trig6;
input[14:0] trig7;
input[0:0] trig8;
input[0:0] trig9;
input[14:0] trig10;
',
      'trig_port_info' => '	trig0 : in std_logic_vector(12-1 downto 0);
	trig1 : in std_logic_vector(64-1 downto 0);
	trig2 : in std_logic_vector(1-1 downto 0);
	trig3 : in std_logic_vector(1-1 downto 0);
	trig4 : in std_logic_vector(1-1 downto 0);
	trig5 : in std_logic_vector(72-1 downto 0);
	trig6 : in std_logic_vector(1-1 downto 0);
	trig7 : in std_logic_vector(15-1 downto 0);
	trig8 : in std_logic_vector(1-1 downto 0);
	trig9 : in std_logic_vector(1-1 downto 0);
	trig10 : in std_logic_vector(15-1 downto 0);
',
      'trig_port_interface' => ' trig0, trig1, trig2, trig3, trig4, trig5, trig6, trig7, trig8, trig9, trig10,',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a46098a678eecf32c50564a76d264038',
    'sourceFile' => 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = 'C:/Programmi/Xilinx/13.3/ISE_DS/ISE/sysgen';
  open(RESULTS, '> C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_1_PCIe_UserLogic_00_USER_LOGIC/sysgen/script_results9023964121776289521') || 
    croak 'couldn\'t open C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_1_PCIe_UserLogic_00_USER_LOGIC/sysgen/script_results9023964121776289521';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_1_PCIe_UserLogic_00_USER_LOGIC/sysgen/script_results9023964121776289521';
};

if ($@) {
  open(RESULTS, '> C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_1_PCIe_UserLogic_00_USER_LOGIC/sysgen/script_results9023964121776289521') || 
    croak 'couldn\'t open C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_1_PCIe_UserLogic_00_USER_LOGIC/sysgen/script_results9023964121776289521';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing C:/Temp/Xilinx PCI Express/ML605_ISE13.3/MyUserLogic/UserLogic_00/top_level_1_PCIe_UserLogic_00_USER_LOGIC/sysgen/script_results9023964121776289521';
  exit(1);
}

exit(0);
