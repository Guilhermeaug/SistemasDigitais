transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/guilh/Documents/QuartusProjects/SomadorUmBit {C:/Users/guilh/Documents/QuartusProjects/SomadorUmBit/SomadorUmBit.v}

