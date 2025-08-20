onerror {quit -f}
vlib work
vlog -work work UPCOUNTER.vo
vlog -work work UPCOUNTER.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.UPCOUNTER_vlg_vec_tst
vcd file -direction UPCOUNTER.msim.vcd
vcd add -internal UPCOUNTER_vlg_vec_tst/*
vcd add -internal UPCOUNTER_vlg_vec_tst/i1/*
add wave /*
run -all
