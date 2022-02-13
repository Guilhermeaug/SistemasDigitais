onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /mux_41/I0
add wave -noupdate -radix binary /mux_41/I1
add wave -noupdate -radix binary /mux_41/I2
add wave -noupdate -radix binary /mux_41/I3
add wave -noupdate -color Yellow -radix binary /mux_41/A
add wave -noupdate -color Yellow -radix binary /mux_41/B
add wave -noupdate -radix binary /mux_41/S
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {634 ps} 0}
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
WaveRestoreZoom {0 ps} {412 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 1 -period 88ps -dutycycle 60 -starttime 0ps -endtime 1000ps sim:/mux_41/I0 
wave create -driver freeze -pattern clock -initialvalue 1 -period 88ps -dutycycle 60 -starttime 0ps -endtime 1000ps sim:/mux_41/I1 
wave create -driver freeze -pattern clock -initialvalue 1 -period 5ps -dutycycle 70 -starttime 0ps -endtime 1000ps sim:/mux_41/I2 
wave create -driver freeze -pattern clock -initialvalue 0 -period 300ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/mux_41/I3 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 300ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/mux_41/I3 
wave create -driver freeze -pattern clock -initialvalue 1 -period 88ps -dutycycle 60 -starttime 0ps -endtime 10000ps sim:/mux_41/I0 
wave create -driver freeze -pattern clock -initialvalue 1 -period 88ps -dutycycle 60 -starttime 0ps -endtime 10000ps sim:/mux_41/I1 
wave create -driver freeze -pattern clock -initialvalue 1 -period 5ps -dutycycle 70 -starttime 0ps -endtime 10000ps sim:/mux_41/I2 
wave create -driver freeze -pattern clock -initialvalue 0 -period 300ps -dutycycle 50 -starttime 0ps -endtime 10000ps sim:/mux_41/I3 
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ps -dutycycle 50 -starttime 0ps -endtime 10000ps sim:/mux_41/A 
wave create -driver freeze -pattern clock -initialvalue 1 -period 75ps -dutycycle 40 -starttime 0ps -endtime 10000ps sim:/mux_41/B 
WaveCollapseAll -1
wave clipboard restore
