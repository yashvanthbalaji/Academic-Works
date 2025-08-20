onerror {quit -f}
vlib work
vlog -work work DFLIPFLOPNEGEDGE.vo
vlog -work work DFLIPFLOPNEGEDGE.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DFLIPFLOPNEGEDGE_vlg_vec_tst
vcd file -direction DFLIPFLOPNEGEDGE.msim.vcd
vcd add -internal DFLIPFLOPNEGEDGE_vlg_vec_tst/*
vcd add -internal DFLIPFLOPNEGEDGE_vlg_vec_tst/i1/*
add wave /*
run -all
