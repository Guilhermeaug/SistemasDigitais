onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Decodificador/bcd
add wave -noupdate /Decodificador/display
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {334 ps} 0}
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
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Binary -direction Up -period 50ps -step 1 -repeat never -range 3 0 -starttime 0ps -endtime 1000ps sim:/Decodificador/bcd 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
