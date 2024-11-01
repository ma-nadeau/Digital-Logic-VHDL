transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {P:/vhdl4/counter.vhd}
vcom -93 -work work {P:/vhdl4/FSM.vhd}
vcom -93 -work work {P:/vhdl4/sequence_detector.vhd}

vcom -93 -work work {P:/vhdl4/simulation/modelsim/sequence_detector.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  sequence_detector_testbench

add wave *
view structure
view signals
run -all
