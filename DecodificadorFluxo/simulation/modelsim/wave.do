onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /Decodificador/A
add wave -noupdate -radix binary /Decodificador/B
add wave -noupdate -radix binary /Decodificador/C
add wave -noupdate -radix binary /Decodificador/D
add wave -noupdate -color Magenta -itemcolor Magenta -radix binary /Decodificador/a
add wave -noupdate -color Magenta -itemcolor Magenta -radix binary /Decodificador/b
add wave -noupdate -color Magenta -itemcolor Magenta -radix binary /Decodificador/c
add wave -noupdate -color Magenta -itemcolor Magenta -radix binary /Decodificador/d
add wave -noupdate -color Magenta -itemcolor Magenta -radix binary /Decodificador/e
add wave -noupdate -color Magenta -itemcolor Magenta -radix binary /Decodificador/f
add wave -noupdate -color Magenta -itemcolor Magenta -radix binary /Decodificador/g
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 79
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
WaveRestoreZoom {0 ps} {512 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ps -dutycycle 50 -starttime 0ps -endtime 10000ps sim:/Decodificador/A 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 10000ps sim:/Decodificador/B 
wave create -driver freeze -pattern clock -initialvalue 0 -period 50ps -dutycycle 50 -starttime 0ps -endtime 10000ps sim:/Decodificador/C 
wave create -driver freeze -pattern clock -initialvalue 0 -period 25ps -dutycycle 50 -starttime 0ps -endtime 10000ps sim:/Decodificador/D 
WaveCollapseAll -1
wave clipboard restore
