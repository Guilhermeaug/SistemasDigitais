onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /SomadorSubtratorCompleto/A
add wave -noupdate -color Gold -radix binary /SomadorSubtratorCompleto/B
add wave -noupdate -color Sienna -radix binary /SomadorSubtratorCompleto/M
add wave -noupdate -color Magenta -radix binary -childformat {{{/SomadorSubtratorCompleto/resultado[4]} -radix binary} {{/SomadorSubtratorCompleto/resultado[3]} -radix binary} {{/SomadorSubtratorCompleto/resultado[2]} -radix binary} {{/SomadorSubtratorCompleto/resultado[1]} -radix binary} {{/SomadorSubtratorCompleto/resultado[0]} -radix binary}} -subitemconfig {{/SomadorSubtratorCompleto/resultado[4]} {-color Magenta -radix binary} {/SomadorSubtratorCompleto/resultado[3]} {-color Magenta -radix binary} {/SomadorSubtratorCompleto/resultado[2]} {-color Magenta -radix binary} {/SomadorSubtratorCompleto/resultado[1]} {-color Magenta -radix binary} {/SomadorSubtratorCompleto/resultado[0]} {-color Magenta -radix binary}} /SomadorSubtratorCompleto/resultado
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8 ps} 0}
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
WaveRestoreZoom {0 ps} {102 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Binary -direction Up -period 160ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 10000ps sim:/SomadorSubtratorCompleto/A 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Binary -direction Up -period 10ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 10000ps sim:/SomadorSubtratorCompleto/B 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Binary -direction Up -period 2560ps -step 1 -repeat forever -starttime 0ps -endtime 10000ps sim:/SomadorSubtratorCompleto/M 
WaveCollapseAll -1
wave clipboard restore
