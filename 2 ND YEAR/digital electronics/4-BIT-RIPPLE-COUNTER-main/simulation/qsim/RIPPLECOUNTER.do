onerror {quit -f}
vlib work
vlog -work work RIPPLECOUNTER.vo
vlog -work work RIPPLECOUNTER.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RIPPLECOUNTER_vlg_vec_tst
vcd file -direction RIPPLECOUNTER.msim.vcd
vcd add -internal RIPPLECOUNTER_vlg_vec_tst/*
vcd add -internal RIPPLECOUNTER_vlg_vec_tst/i1/*
add wave /*
run -all
