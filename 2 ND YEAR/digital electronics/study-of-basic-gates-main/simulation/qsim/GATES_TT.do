onerror {quit -f}
vlib work
vlog -work work GATES_TT.vo
vlog -work work GATES_TT.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.GATES_TT_vlg_vec_tst
vcd file -direction GATES_TT.msim.vcd
vcd add -internal GATES_TT_vlg_vec_tst/*
vcd add -internal GATES_TT_vlg_vec_tst/i1/*
add wave /*
run -all
