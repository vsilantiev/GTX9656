rem Clean up the results directory
rmdir /S /Q results
mkdir results

echo 'Synthesizing HDL example design with XST';
xst -ifn xilinx_pcie_2_1_ep_7x.xst -ofn xilinx_pcie_2_1_ep_7x.log
rem xst -ifn xst.scr

copy *.ngc .\results\

copy xilinx_pcie_2_1_ep_7x.log xst.srp

cd results

echo 'Running ngdbuild'
ngdbuild -verbose -uc ../../example_design/xilinx_pcie_2_1_ep_7x_04_lane_gen2_xc7a200t-fbg676-2-PCIE_X0Y0.ucf xilinx_pcie_2_1_ep_7x.ngc -sd .

echo 'Running map'
map -w -register_duplication on -ol high -o mapped.ncd xilinx_pcie_2_1_ep_7x.ngd mapped.pcf

echo 'Running par'
par -ol high -w mapped.ncd routed.ncd mapped.pcf

echo 'Running trce'
trce -u -e 100 routed.ncd mapped.pcf

echo 'Running design through netgen'
netgen -sim -ofmt vhdl -w -tm xilinx_pcie_2_1_ep_7x routed.ncd

# Uncomment to enable Bitgen.  To generate a bitfile, all I/O must be LOC'd to pin.
# Refer to AR 41615 for more information
#echo 'Running design through bitgen'
#bitgen -w routed.ncd

 
