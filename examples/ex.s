.code
init:
	set ENABLEAXIS,ON #set RESOURCE,VALUE
	sor ENDTRIGGER,0XFE #set and or bits of reg
start:
	mva AXIS, 100,100,0 	# absolute move to X100,y100,Z0
	mvr EXTOOL, 2 		# pre extrude, load some filament
	wtu 2000		# Wait until 2000 ticks
	mvr EXTOOL, 5 		# extrude 5mm filament
	mvr AXIS ,2,0,0 	# relative move +2x
	wtu 2000		# Wait until 2000 ticks
	mvr EXTOOL, 5 		# extrude 5mm filament
	mvr AXIS, 0,2,0 	# relative move +2y
	wtu 2000		# Wait until 2000 ticks
	mvr EXTOOL, 5 		# extrude 5mm filament
	mvr AXIS, -2,0,0 	# relative move -2x
	wtu 2000		# Wait until 2000 ticks
	mvr EXTOOL, 5 		# extrude 5mm filament
	mvr AXIS, 0,-2,0 	# relative move -2y