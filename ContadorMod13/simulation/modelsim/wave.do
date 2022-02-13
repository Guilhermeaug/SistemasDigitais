onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Red -itemcolor Red -radix unsigned /TB_contadorMod13/TB_clock
add wave -noupdate -color Yellow -itemcolor Yellow -radix unsigned /TB_contadorMod13/TB_reset
add wave -noupdate -color Magenta -itemcolor Magenta -radix unsigned /TB_contadorMod13/TB_preset
add wave -noupdate -color Blue -itemcolor Blue -radix unsigned /TB_contadorMod13/TB_counter
add wave -noupdate -radix unsigned /TB_contadorMod13/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {58 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
