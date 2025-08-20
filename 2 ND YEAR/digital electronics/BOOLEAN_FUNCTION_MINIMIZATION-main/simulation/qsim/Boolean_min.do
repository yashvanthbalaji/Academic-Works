onerror {quit -f}
vlib work
vlog -work work Boolean_min.vo
vlog -work work Boolean_min.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Boolean_min_vlg_vec_tst
vcd file -direction Boolean_min.msim.vcd
vcd add -internal Boolean_min_vlg_vec_tst/*
vcd add -internal Boolean_min_vlg_vec_tst/i1/*
add wave /*
run -all
