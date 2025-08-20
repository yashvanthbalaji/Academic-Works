onerror {quit -f}
vlib work
vlog -work work TFLIPFLOPPOSEDGE.vo
vlog -work work TFLIPFLOPPOSEDGE.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.TFLIPFLOPPOSEDGE_vlg_vec_tst
vcd file -direction TFLIPFLOPPOSEDGE.msim.vcd
vcd add -internal TFLIPFLOPPOSEDGE_vlg_vec_tst/*
vcd add -internal TFLIPFLOPPOSEDGE_vlg_vec_tst/i1/*
add wave /*
run -all
