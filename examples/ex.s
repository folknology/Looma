.code
init:
	set ENABLEAXIS,ON 	#set RESOURCE,VALUE
	sor ENDTRIGGER,0XFE 	#set and or bits of reg
start:
	mva AXIS, 100,100,0 	# absolute move to X100,y100,Z0
	mvr EXTOOL, 2 		# pre extrude, load some filament
.sqmv:	mvr Z,1 		# Increment Z axis state
	wtu 2000		# Wait until 2000 ticks
	mvr E,5 		# extrude 5units filament
	mvr X,2 		# relative move +2x
	wtu 2000		# Wait until 2000 ticks
	mvr E,5 		# extrude 5units filament
	mvr Y,2 		# relative move +2y
	wtu 2000		# Wait until 2000 ticks
	mvr E,5 		# extrude 5units filament
	mvr X,-2 		# relative move -2x
	wtu 2000		# Wait until 2000 ticks
	mvr E,5 		# extrude 5units filament
	mvr Y,-2 		# relative move -2y
	bne Z,20,.sqmv		# Branch to square move, until cuboid height is 20 