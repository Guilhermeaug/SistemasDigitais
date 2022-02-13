onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color {Medium Blue} -label A -radix binary /CircuitoComparador/A
add wave -noupdate -color Magenta -label B -radix binary /CircuitoComparador/B
add wave -noupdate -color White -label igual -radix binary /CircuitoComparador/igual
add wave -noupdate -color Red -label maior -radix binary /CircuitoComparador/maior
add wave -noupdate -color {Medium Spring Green} -label menor -radix binary /CircuitoComparador/menor
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {247 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 93
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
WaveRestoreZoom {0 ps} {1058 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/CircuitoComparador/A 
wave create -driver freeze -pattern clock -initialvalue 0 -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/CircuitoComparador/B 
WaveCollapseAll -1
wave clipboard restore
