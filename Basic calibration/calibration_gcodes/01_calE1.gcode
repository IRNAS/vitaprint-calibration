; rough extrusion (E) calibration
M83 ; set extruder to relative mode
G1 F100 X0 Y0 ; START

G1 E0.01; extrusion before movement
G1 X0 Y50 
G1 Y50 X2 ; X space

G1 E0.02
G1 X2 Y0 
G1 Y0 X4 ; X space

G1 E0.03
G1 X4 Y50 
G1 Y50 X6 ; X space

G1 E0.04
G1 X6 Y0 
G1 Y0 X8 ; X space

G1 E0.05
G1 X8 Y50 
G1 Y50 X10 ; X space

G1 E0.06
G1 X10 Y0 
G1 Y0 X12 ; X space

G1 E0.07
G1 X12 Y50 
G1 Y50 X14 ; X space

G1 E0.08
G1 X14 Y0 
G1 Y0 X16 ; X space

G1 E0.09
G1 X16 Y50 
G1 Y50 X18 ; X space

G1 E0.1
G1 X18 Y0 
G1 Y0 X20 ; X space

; rest, cleaning nozzle
G1 F30 X22 Y50 
G1 X24 Y0
G1 X26 Y50
G1 X28 Y0
G1 X30 Y50
G1 X32 Y0
G1 X34 Y0


G1 F100
G1 X34 Y50 E0.01; extrusion during movement
G1 Y50 X36 ; X space

G1 X36 Y0 E0.02
G1 Y0 X38 ; X space

G1 X38 Y50 E0.03
G1 Y50 X40 ; X space

G1 X40 Y0 E0.04
G1 Y0 X42 ; X space

G1 X42 Y50 E0.05
G1 Y50 X44 ; X space

G1 X44 Y0 E0.06
G1 Y0 X46 ; X space

G1 X46 Y50 E0.07
G1 Y50 X48 ; X space

G1 X48 Y0 E0.08
G1 Y0 X50 ; X space

G1 X50 Y50 E0.09
G1 Y50 X52 ; X space

G1 X52 Y0 E0.1
G1 Y0 X54 ; X space

; rest, cleaning nozzle
G1 F30 X56 Y50
G1 X58 Y0
G1 X60 Y50
G1 X62 Y0
G1 X64 Y50
G1 X66 Y0

