onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /indicadorFarol/farol
add wave -noupdate -color Magenta -radix binary /indicadorFarol/porta
add wave -noupdate -color {Medium Blue} -radix binary /indicadorFarol/chave
add wave -noupdate -color Yellow -radix binary /indicadorFarol/sinalizador
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {681 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 117
configure wave -valuecolwidth 40
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
configure wave -timelineunits ns
update
WaveRestoreZoom {271 ps} {1039 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/indicadorFarol/farol 
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/indicadorFarol/porta 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/indicadorFarol/farol 
wave create -driver freeze -pattern clock -initialvalue 0 -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/indicadorFarol/porta 
wave create -driver freeze -pattern clock -initialvalue 0 -period 25ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/indicadorFarol/chave 
WaveCollapseAll -1
wave clipboard restore
