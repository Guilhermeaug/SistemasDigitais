transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/guilh/Documents/QuartusProjects/mux_41 {C:/Users/guilh/Documents/QuartusProjects/mux_41/mux_41.v}
vlog -vlog01compat -work work +incdir+C:/Users/guilh/Documents/QuartusProjects/mux_41 {C:/Users/guilh/Documents/QuartusProjects/mux_41/mux_21.v}

