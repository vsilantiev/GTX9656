#
# Created by System Generator     Mon Mar 26 15:50:26 2012
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {user_logic_cw}
    set Family {Virtex6}
    set Device {xc6vlx240t}
    set Package {ff1156}
    set Speed {-1}
    set HDLLanguage {vhdl}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores {False}
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {200}
    set NewXSTParser {1}
    set ProjectFiles {
        {{user_logic_cw.vhd} -view All}
        {{user_logic.vhd} -view All}
        {{user_logic_cw.ucf}}
        {{C:\Temp\Xilinx PCI Express\ML605_ISE13.3\MySysGen\PCIe_UserLogic_00.mdl}}
    }
    set TopLevelModule {user_logic_cw}
    set SynthesisConstraintsFile {user_logic_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
