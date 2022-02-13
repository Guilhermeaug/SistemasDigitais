onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned -childformat {{{/SomadorCompleto/a[3]} -radix unsigned} {{/SomadorCompleto/a[2]} -radix unsigned} {{/SomadorCompleto/a[1]} -radix unsigned} {{/SomadorCompleto/a[0]} -radix unsigned}} -subitemconfig {{/SomadorCompleto/a[3]} {-radix unsigned} {/SomadorCompleto/a[2]} {-radix unsigned} {/SomadorCompleto/a[1]} {-radix unsigned} {/SomadorCompleto/a[0]} {-radix unsigned}} /SomadorCompleto/a
add wave -noupdate -radix unsigned -childformat {{{/SomadorCompleto/b[3]} -radix unsigned} {{/SomadorCompleto/b[2]} -radix unsigned} {{/SomadorCompleto/b[1]} -radix unsigned} {{/SomadorCompleto/b[0]} -radix unsigned}} -subitemconfig {{/SomadorCompleto/b[3]} {-radix unsigned} {/SomadorCompleto/b[2]} {-radix unsigned} {/SomadorCompleto/b[1]} {-radix unsigned} {/SomadorCompleto/b[0]} {-radix unsigned}} /SomadorCompleto/b
add wave -noupdate -radix unsigned -childformat {{{/SomadorCompleto/soma[4]} -radix unsigned} {{/SomadorCompleto/soma[3]} -radix unsigned} {{/SomadorCompleto/soma[2]} -radix unsigned} {{/SomadorCompleto/soma[1]} -radix unsigned} {{/SomadorCompleto/soma[0]} -radix unsigned}} -expand -subitemconfig {{/SomadorCompleto/soma[4]} {-radix unsigned} {/SomadorCompleto/soma[3]} {-radix unsigned} {/SomadorCompleto/soma[2]} {-radix unsigned} {/SomadorCompleto/soma[1]} {-radix unsigned} {/SomadorCompleto/soma[0]} {-radix unsigned}} /SomadorCompleto/soma
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2094 ps} 0}
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
WaveRestoreZoom {0 ps} {10500 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Binary -direction Up -period 160ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 10000ps sim:/SomadorCompleto/a 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Binary -direction Up -period 10ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 10000ps sim:/SomadorCompleto/b 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
