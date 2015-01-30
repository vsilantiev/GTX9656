#
# Created by System Generator     Mon Mar 26 15:54:18 2012
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set Compilation {HDL Netlist}
    set Project {PCIe_UserLogic_00}
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
    set Frequency {10}
    set NewXSTParser {1}
    set ProjectFiles {
        {{PCIe_UserLogic_00.vhd} -view All}
        {{C:\Temp\Xilinx PCI Express\ML605_ISE13.3\MySysGen\PCIe_UserLogic_00.mdl}}
    }
    set TopLevelModule {PCIe_UserLogic_00}
    set SynthesisConstraintsFile {PCIe_UserLogic_00.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
