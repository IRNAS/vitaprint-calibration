;calibrating polymerization time
M83 ; set extruder to relative mode
G1 F100 X0 Y0 ; START 

;BASIC SQUARE

G1 X0 Y22.5 E0.03
G1 X22.5 Y22.5 E0.03
G1 X22.5 Y0 E0.03
G1 X2.5 Y0 E0.025

;TIME-TRACE
G1 X2.5 Y-2.5
G1 X5 Y-2.5
G1 X5 Y2.5 ; cuts at 10mm

G1 X7.5 Y2.5
G1 X7.5 Y-2.5 ; cuts at 20mm
G1 X10 Y-2.5

G1 X10 Y2.5 ; cuts at 30mm
G1 X12.5 Y2.5

G1 X12.5 Y-2.5 ; cuts at 40mm
G1 X15 Y-2.5

G1 X15 Y2.5 ; cuts at 50mm
G1 X17.5 Y2.5

G1 X17.5 Y-2.5 ; cuts at 60mm
G1 X20 Y-2.5

G1 X20 Y2.5 ; cuts at 70mm
G1 X25 Y2.5 ; cuts at 80mm

G1 X25 Y5
G1 X20 Y5 ; cuts at 90mm

G1 X20 Y7.5
G1 X25 Y7.5; cuts at 100mm

G1 X25 Y10
G1 X20 Y10 ; cuts at 110mm

G1 X20 Y12.5
G1 X25 Y12.5; cuts at 120mm

G1 X25 Y15
G1 X20 Y15 ; cuts at 130mm

G1 X20 Y17.5
G1 X25 Y17.5; cuts at 140mm

G1 X25 Y20
G1 X20 Y20 ; cuts at 150mm
G1 X20 Y25 ; cuts at 160mm

G1 X17.5 Y25
G1 X17.5 Y20 ; cuts at 170mm

G1 X15 Y20
G1 X15 Y25 ; cuts at 180mm

G1 X12.5 Y25
G1 X12.5 Y20 ; cuts at 190mm

G1 X10 Y20
G1 X10 Y25 ; cuts at 200mm

G1 X7.5 Y25
G1 X7.5 Y20 ; cuts at 210mm

G1 X5 Y20
G1 X5 Y25 ; cuts at 220mm

G1 X2.5 Y25
G1 X2.5 Y20 ; cuts at 230mm
G1 X-2.5 Y20 ; cuts at 240mm

G1 X-2.5 Y17.5
G1 X2.5 Y17.5 ; cuts at 250mm

G1 X2.5 Y15
G1 X-2.5 Y15 ; cuts at 260mm

G1 X-2.5 Y12.5
G1 X2.5 Y12.5 ; cuts at 270mm

G1 X2.5 Y10
G1 X-2.5 Y10 ; cuts at 280mm

G1 X-2.5 Y7.5
G1 X2.5 Y7.5 ; cuts at 290mm

G1 X2.5 Y5
G1 X-2.5 Y5 ; cuts at 300mm

G1 X-2.5 Y2.5
G1 X2.5 Y2.5 ; cuts at 310mm

G1 X0 Y0 Z0.085 ; START + NEW LAYER

;BASIC SQUARE

G1 X0 Y22.5 E0.03
G1 X22.5 Y22.5 E0.03
G1 X22.5 Y0 E0.03
G1 X2.5 Y0 E0.025

;TIME-TRACE
G1 X2.5 Y-2.5
G1 X5 Y-2.5
G1 X5 Y2.5 ; cuts at 10mm

G1 X7.5 Y2.5
G1 X7.5 Y-2.5 ; cuts at 20mm
G1 X10 Y-2.5

G1 X10 Y2.5 ; cuts at 30mm
G1 X12.5 Y2.5

G1 X12.5 Y-2.5 ; cuts at 40mm
G1 X15 Y-2.5

G1 X15 Y2.5 ; cuts at 50mm
G1 X17.5 Y2.5

G1 X17.5 Y-2.5 ; cuts at 60mm
G1 X20 Y-2.5

G1 X20 Y2.5 ; cuts at 70mm
G1 X25 Y2.5 ; cuts at 80mm

G1 X25 Y5
G1 X20 Y5 ; cuts at 90mm

G1 X20 Y7.5
G1 X25 Y7.5; cuts at 100mm

G1 X25 Y10
G1 X20 Y10 ; cuts at 110mm

G1 X20 Y12.5
G1 X25 Y12.5; cuts at 120mm

G1 X25 Y15
G1 X20 Y15 ; cuts at 130mm

G1 X20 Y17.5
G1 X25 Y17.5; cuts at 140mm

G1 X25 Y20
G1 X20 Y20 ; cuts at 150mm
G1 X20 Y25 ; cuts at 160mm

G1 X17.5 Y25
G1 X17.5 Y20 ; cuts at 170mm

G1 X15 Y20
G1 X15 Y25 ; cuts at 180mm

G1 X12.5 Y25
G1 X12.5 Y20 ; cuts at 190mm

G1 X10 Y20
G1 X10 Y25 ; cuts at 200mm

G1 X7.5 Y25
G1 X7.5 Y20 ; cuts at 210mm

G1 X5 Y20
G1 X5 Y25 ; cuts at 220mm

G1 X2.5 Y25
G1 X2.5 Y20 ; cuts at 230mm
G1 X-2.5 Y20 ; cuts at 240mm

G1 X-2.5 Y17.5
G1 X2.5 Y17.5 ; cuts at 250mm

G1 X2.5 Y15
G1 X-2.5 Y15 ; cuts at 260mm

G1 X-2.5 Y12.5
G1 X2.5 Y12.5 ; cuts at 270mm

G1 X2.5 Y10
G1 X-2.5 Y10 ; cuts at 280mm

G1 X-2.5 Y7.5
G1 X2.5 Y7.5 ; cuts at 290mm

G1 X2.5 Y5
G1 X-2.5 Y5 ; cuts at 300mm

G1 X-2.5 Y2.5
G1 X2.5 Y2.5 ; cuts at 310mm

G1 X0 Y0 Z0.17 ; START + NEW LAYER

;BASIC SQUARE

G1 X0 Y22.5 E0.03
G1 X22.5 Y22.5 E0.03
G1 X22.5 Y0 E0.03
G1 X2.5 Y0 E0.025

;TIME-TRACE
G1 X2.5 Y-2.5
G1 X5 Y-2.5
G1 X5 Y2.5 ; cuts at 10mm

G1 X7.5 Y2.5
G1 X7.5 Y-2.5 ; cuts at 20mm
G1 X10 Y-2.5

G1 X10 Y2.5 ; cuts at 30mm
G1 X12.5 Y2.5

G1 X12.5 Y-2.5 ; cuts at 40mm
G1 X15 Y-2.5

G1 X15 Y2.5 ; cuts at 50mm
G1 X17.5 Y2.5

G1 X17.5 Y-2.5 ; cuts at 60mm
G1 X20 Y-2.5

G1 X20 Y2.5 ; cuts at 70mm
G1 X25 Y2.5 ; cuts at 80mm

G1 X25 Y5
G1 X20 Y5 ; cuts at 90mm

G1 X20 Y7.5
G1 X25 Y7.5; cuts at 100mm

G1 X25 Y10
G1 X20 Y10 ; cuts at 110mm

G1 X20 Y12.5
G1 X25 Y12.5; cuts at 120mm

G1 X25 Y15
G1 X20 Y15 ; cuts at 130mm

G1 X20 Y17.5
G1 X25 Y17.5; cuts at 140mm

G1 X25 Y20
G1 X20 Y20 ; cuts at 150mm
G1 X20 Y25 ; cuts at 160mm

G1 X17.5 Y25
G1 X17.5 Y20 ; cuts at 170mm

G1 X15 Y20
G1 X15 Y25 ; cuts at 180mm

G1 X12.5 Y25
G1 X12.5 Y20 ; cuts at 190mm

G1 X10 Y20
G1 X10 Y25 ; cuts at 200mm

G1 X7.5 Y25
G1 X7.5 Y20 ; cuts at 210mm

G1 X5 Y20
G1 X5 Y25 ; cuts at 220mm

G1 X2.5 Y25
G1 X2.5 Y20 ; cuts at 230mm
G1 X-2.5 Y20 ; cuts at 240mm

G1 X-2.5 Y17.5
G1 X2.5 Y17.5 ; cuts at 250mm

G1 X2.5 Y15
G1 X-2.5 Y15 ; cuts at 260mm

G1 X-2.5 Y12.5
G1 X2.5 Y12.5 ; cuts at 270mm

G1 X2.5 Y10
G1 X-2.5 Y10 ; cuts at 280mm

G1 X-2.5 Y7.5
G1 X2.5 Y7.5 ; cuts at 290mm

G1 X2.5 Y5
G1 X-2.5 Y5 ; cuts at 300mm

G1 X-2.5 Y2.5
G1 X2.5 Y2.5 ; cuts at 310mm

G1 X0 Y0 Z0.255 ; START + NEW LAYER

;BASIC SQUARE

G1 X0 Y22.5 E0.03
G1 X22.5 Y22.5 E0.03
G1 X22.5 Y0 E0.03
G1 X2.5 Y0 E0.025

;TIME-TRACE
G1 X2.5 Y-2.5
G1 X5 Y-2.5
G1 X5 Y2.5 ; cuts at 10mm

G1 X7.5 Y2.5
G1 X7.5 Y-2.5 ; cuts at 20mm
G1 X10 Y-2.5

G1 X10 Y2.5 ; cuts at 30mm
G1 X12.5 Y2.5

G1 X12.5 Y-2.5 ; cuts at 40mm
G1 X15 Y-2.5

G1 X15 Y2.5 ; cuts at 50mm
G1 X17.5 Y2.5

G1 X17.5 Y-2.5 ; cuts at 60mm
G1 X20 Y-2.5

G1 X20 Y2.5 ; cuts at 70mm
G1 X25 Y2.5 ; cuts at 80mm

G1 X25 Y5
G1 X20 Y5 ; cuts at 90mm

G1 X20 Y7.5
G1 X25 Y7.5; cuts at 100mm

G1 X25 Y10
G1 X20 Y10 ; cuts at 110mm

G1 X20 Y12.5
G1 X25 Y12.5; cuts at 120mm

G1 X25 Y15
G1 X20 Y15 ; cuts at 130mm

G1 X20 Y17.5
G1 X25 Y17.5; cuts at 140mm

G1 X25 Y20
G1 X20 Y20 ; cuts at 150mm
G1 X20 Y25 ; cuts at 160mm

G1 X17.5 Y25
G1 X17.5 Y20 ; cuts at 170mm

G1 X15 Y20
G1 X15 Y25 ; cuts at 180mm

G1 X12.5 Y25
G1 X12.5 Y20 ; cuts at 190mm

G1 X10 Y20
G1 X10 Y25 ; cuts at 200mm

G1 X7.5 Y25
G1 X7.5 Y20 ; cuts at 210mm

G1 X5 Y20
G1 X5 Y25 ; cuts at 220mm

G1 X2.5 Y25
G1 X2.5 Y20 ; cuts at 230mm
G1 X-2.5 Y20 ; cuts at 240mm

G1 X-2.5 Y17.5
G1 X2.5 Y17.5 ; cuts at 250mm

G1 X2.5 Y15
G1 X-2.5 Y15 ; cuts at 260mm

G1 X-2.5 Y12.5
G1 X2.5 Y12.5 ; cuts at 270mm

G1 X2.5 Y10
G1 X-2.5 Y10 ; cuts at 280mm

G1 X-2.5 Y7.5
G1 X2.5 Y7.5 ; cuts at 290mm

G1 X2.5 Y5
G1 X-2.5 Y5 ; cuts at 300mm

G1 X-2.5 Y2.5
G1 X2.5 Y2.5 ; cuts at 310mm

G1 X0 Y0 Z0.340 ; START + NEW LAYER

;BASIC SQUARE

G1 X0 Y22.5 E0.03
G1 X22.5 Y22.5 E0.03
G1 X22.5 Y0 E0.03
G1 X2.5 Y0 E0.025

;TIME-TRACE
G1 X2.5 Y-2.5
G1 X5 Y-2.5
G1 X5 Y2.5 ; cuts at 10mm

G1 X7.5 Y2.5
G1 X7.5 Y-2.5 ; cuts at 20mm
G1 X10 Y-2.5

G1 X10 Y2.5 ; cuts at 30mm
G1 X12.5 Y2.5

G1 X12.5 Y-2.5 ; cuts at 40mm
G1 X15 Y-2.5

G1 X15 Y2.5 ; cuts at 50mm
G1 X17.5 Y2.5

G1 X17.5 Y-2.5 ; cuts at 60mm
G1 X20 Y-2.5

G1 X20 Y2.5 ; cuts at 70mm
G1 X25 Y2.5 ; cuts at 80mm

G1 X25 Y5
G1 X20 Y5 ; cuts at 90mm

G1 X20 Y7.5
G1 X25 Y7.5; cuts at 100mm

G1 X25 Y10
G1 X20 Y10 ; cuts at 110mm

G1 X20 Y12.5
G1 X25 Y12.5; cuts at 120mm

G1 X25 Y15
G1 X20 Y15 ; cuts at 130mm

G1 X20 Y17.5
G1 X25 Y17.5; cuts at 140mm

G1 X25 Y20
G1 X20 Y20 ; cuts at 150mm
G1 X20 Y25 ; cuts at 160mm

G1 X17.5 Y25
G1 X17.5 Y20 ; cuts at 170mm

G1 X15 Y20
G1 X15 Y25 ; cuts at 180mm

G1 X12.5 Y25
G1 X12.5 Y20 ; cuts at 190mm

G1 X10 Y20
G1 X10 Y25 ; cuts at 200mm

G1 X7.5 Y25
G1 X7.5 Y20 ; cuts at 210mm

G1 X5 Y20
G1 X5 Y25 ; cuts at 220mm

G1 X2.5 Y25
G1 X2.5 Y20 ; cuts at 230mm
G1 X-2.5 Y20 ; cuts at 240mm

G1 X-2.5 Y17.5
G1 X2.5 Y17.5 ; cuts at 250mm

G1 X2.5 Y15
G1 X-2.5 Y15 ; cuts at 260mm

G1 X-2.5 Y12.5
G1 X2.5 Y12.5 ; cuts at 270mm

G1 X2.5 Y10
G1 X-2.5 Y10 ; cuts at 280mm

G1 X-2.5 Y7.5
G1 X2.5 Y7.5 ; cuts at 290mm

G1 X2.5 Y5
G1 X-2.5 Y5 ; cuts at 300mm

G1 X-2.5 Y2.5
G1 X2.5 Y2.5 ; cuts at 310mm

G1 X0 Y0 Z5 ; END

