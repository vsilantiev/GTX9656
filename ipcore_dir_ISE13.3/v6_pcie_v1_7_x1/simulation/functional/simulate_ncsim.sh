#!/bin/sh

#
# PCI Express Endpoint NC VHDL Run Script
#

rm -rf INCA* work

mkdir work

# Needed for LMC Smartmodel simulation - setenv LMC_TIMEUNIT -12

ncvhdl -v93 -work work -update -linedebug -status -file board.f

ncelab -work work -logfile ncelab.log -access +rwc -status \
  -VHdl_time_precision 1ps work.board

# set BATCH_MODE=0 to run simulation in GUI mode
BATCH_MODE=1

if [ $BATCH_MODE == 1 ]; then

  # run the simulation in batch mode
  ncsim work.board

else

  # run the simulation in GUI mode
  ncsim -gui work.board -input @"simvision -input wave.sv"

fi

