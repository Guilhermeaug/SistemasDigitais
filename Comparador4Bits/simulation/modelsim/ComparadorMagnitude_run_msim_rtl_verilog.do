transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/guilh/Documents/QuartusProjects/Comparador4Bits {C:/Users/guilh/Documents/QuartusProjects/Comparador4Bits/ComparadorMagnitude.v}
vlog -vlog01compat -work work +incdir+C:/Users/guilh/Documents/QuartusProjects/Comparador4Bits {C:/Users/guilh/Documents/QuartusProjects/Comparador4Bits/ComparadorBit.v}

