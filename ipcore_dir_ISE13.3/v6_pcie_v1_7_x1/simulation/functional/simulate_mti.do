vlib work
vmap work
vcom -work work -f board.f

vsim -voptargs="+acc" +notimingchecks -L work -L secureip \
      -L unisim -t "1ps" \
      work.board

run -all
