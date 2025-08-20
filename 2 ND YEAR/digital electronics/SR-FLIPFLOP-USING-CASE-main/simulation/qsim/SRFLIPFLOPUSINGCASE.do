onerror {quit -f}
vlib work
vlog -work work SRFLIPFLOPUSINGCASE.vo
vlog -work work SRFLIPFLOPUSINGCASE.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SRFLIPFLOPUSINGCASE_vlg_vec_tst
vcd file -direction SRFLIPFLOPUSINGCASE.msim.vcd
vcd add -internal SRFLIPFLOPUSINGCASE_vlg_vec_tst/*
vcd add -internal SRFLIPFLOPUSINGCASE_vlg_vec_tst/i1/*
add wave /*
run -all
