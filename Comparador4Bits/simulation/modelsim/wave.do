onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Yellow -radix binary -subitemconfig {{/ComparadorMagnitude/A[3]} {-color Yellow} {/ComparadorMagnitude/A[2]} {-color Yellow} {/ComparadorMagnitude/A[1]} {-color Yellow} {/ComparadorMagnitude/A[0]} {-color Yellow}} /ComparadorMagnitude/A
add wave -noupdate -color Magenta -radix binary -subitemconfig {{/ComparadorMagnitude/B[3]} {-color Magenta} {/ComparadorMagnitude/B[2]} {-color Magenta} {/ComparadorMagnitude/B[1]} {-color Magenta} {/ComparadorMagnitude/B[0]} {-color Magenta}} /ComparadorMagnitude/B
add wave -noupdate -format Literal -radix binary /ComparadorMagnitude/igual
add wave -noupdate -format Literal -radix binary /ComparadorMagnitude/maior
add wave -noupdate -format Literal -radix binary /ComparadorMagnitude/menor
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {7520 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 81
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
WaveRestoreZoom {7305 ps} {8723 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Binary -direction Up -period 160ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 10000ps sim:/ComparadorMagnitude/A 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Binary -direction Up -period 10ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 10000ps sim:/ComparadorMagnitude/B 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
