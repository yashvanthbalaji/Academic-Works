onerror {quit -f}
vlib work
vlog -work work JKFLIPFLOPUSINGIFELSE.vo
vlog -work work JKFLIPFLOPUSINGIFELSE.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.JKFLIPFLOPUSINGIFELSE_vlg_vec_tst
vcd file -direction JKFLIPFLOPUSINGIFELSE.msim.vcd
vcd add -internal JKFLIPFLOPUSINGIFELSE_vlg_vec_tst/*
vcd add -internal JKFLIPFLOPUSINGIFELSE_vlg_vec_tst/i1/*
add wave /*
run -all
