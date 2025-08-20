onerror {quit -f}
vlib work
vlog -work work HALF_ADDSUB.vo
vlog -work work HALF_ADDSUB.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.HALF_ADDSUB_vlg_vec_tst
vcd file -direction HALF_ADDSUB.msim.vcd
vcd add -internal HALF_ADDSUB_vlg_vec_tst/*
vcd add -internal HALF_ADDSUB_vlg_vec_tst/i1/*
add wave /*
run -all
