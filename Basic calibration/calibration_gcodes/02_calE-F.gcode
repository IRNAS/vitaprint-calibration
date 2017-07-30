;fine extrusion calibration
M83 ; set extruder to relative mode
G1 X0 Y0 ; START

;1st series
G1 F100 X0 Y50 E0.01
G1 X2 Y50 ; X space

G1 X2 Y0 E0.01
G1 X4 Y0 ; X space

G1 X4 Y50 E0.01
G1 X6 Y50 ; X space

G1 F30 X9 Y0
G1 X10 Y0

;2nd series
G1 F100 X10 Y50 E0.02
G1 X12 Y50 ; X space

G1 X12 Y0 E0.02
G1 X14 Y0 ; X space

G1 X14 Y50 E0.02
G1 X16 Y50 ; X space

G1 F30 X19 Y0
G1 X20 Y0

;3rd series
G1 F100 X20 Y50 E0.03
G1 X22 Y50 ; X space

G1 X22 Y0 E0.03
G1 X24 Y0 ; X space

G1 X24 Y50 E0.03
G1 X26 Y50 ; X space

G1 F30 X29 Y0
G1 X30 Y0

;4th series
G1 F100 X30 Y50 E0.04
G1 X32 Y50 ; X space

G1 X32 Y0 E0.04
G1 X34 Y0 ; X space

G1 X34 Y50 E0.04
G1 X36 Y50 ; X space

G1 F30 X39 Y0
G1 X40 Y0
