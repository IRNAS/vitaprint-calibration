# General calibration of the Vitaprint extruder

## Introduction
Being tansferrable, the Vitaprint extruder is capable of printing structures, sliced by various free and open software, such as Slic3r or Cura. To allow this, however, certain settings need to be adjusted.

## Table of Contents
- [Basic extrusion calculation](#CALC)
- [Extrusion adjustment by drawing](#DRAWING)
-- [Introduction](#intro)

## Basic extrusion calculation
The first approximation of extrusion settings can be calculated theoretically, based on some simple assumptions. Due to its mechanical, piston driven nature, extrusion can be precisely controlled by motorized displacement of the piston (rotation vs thread, both of which is specified) and depends on the difference between the inner diameters of the syringe r<sub>s</sub> and the nozzle r<sub>n</sub>. If we assume non-elastic behavior and laminar flow, the displaced volume in the syringe should equal the extruded volume through the nozzle. If the printed stroke takes the cross-sectional shape of the nozzle, the length of the printed path can be calculated as follows:

<img src="http://latex.codecogs.com/gif.latex?E%20%3D%20%5Cfrac%7Br_n%5E2%7D%7Br_s%5E2%7D%5Ccdot%20l_%7Bpath%7D" alt="table">

Where E equals the extrusion value (= displacement of the piston) and l<sub>path</sub> the length of the printed filament. This is useful for determining the amount of extrusion for custom designed geometries. When using slicing software Cura, the calculation differs somewhat, as certain parameters are calculated differently. We have determined an experimental nozzle width and correction factor for the use of a 5ml syringe with a G21 needle (inner diameter 0.4mm). The calculation can be found in the accompanied xls file titled "vitaprint_cura_filament_calc".

## Extrusion adjustment by drawing

### Introduction
Certain simplifications in the calculation cause small, yet significant discrepancies between the theoretical and real system. Therefore additional tuning is required. To do this, we developed a simple "pen and paper" protocol, to evaluate the characteristics of the printed path. It can be used to adjust extrusion, feedrate, layer height and material polymerization time upon deposition.

![print_calibration](https://user-images.githubusercontent.com/17159617/28752839-159b8c72-7529-11e7-91ac-bfe860c75512.png)

### Materials
- Basic Vitaprint set-up
- 5ml syringe (optional with luer lock)
- blunt-end needle (e.g. G21 with 0.4mm inner diameter)
- printing material (e.g. gelatin-alginate composite, see Vitaprint_methods) with colored dye (e.g. Pelikan 4001 blue ink)
- sheet of thick white paper
- adhesive tape

### Procedure
A syringe containing the desired material with added coloring is mounted on the extruder.

#### Step 1 - Rough calibration of material extrusion, where E determines the position change of the piston in mm.
- RUN "01_calE1.gcode"
- EVALUATE created sample (Is it a full line? Is the line thickness even across the length? *optional - use stereomicroscope/magnifying glass*)
- MODIFY "01_calE1.gcode" and repeat
- CHOOSE the best value for E and 4 values for F and modify "02_calE-F.gcode"

#### Step 2 - Fine calibration F for optimum E+F properties
- RUN "02_calE-F.gcode"
- REPEAT "STEP 2", choose optimum value for F
- Choose best values for E + F and modify "03_cal_tdry.gcode"

#### Step 3 - Determining material polymerization time and rough layer height.
- RUN "03_cal_tdry.gcode"
- EVALUATE created mesh to evaluate line drying time. The line is well dry when the needle doesn't make a smear while crossing it. Use table to calculate polymerization time. A time unit is calculated from t=path_distance/Fx60 [seconds for 1mm of covered way]. The double line represents the extrusion step (phase 1), the single line represents the scratching step (phase 2). The numbers show the distance in mm from extrusion to scratch.

          --------      --------      --------      --------
          |      |      |      |      |      |      |      |
    ||== 230 == 220 == 210 == 200 == 190 == 180 == 170 == 160 ==||
    ||    |      |      |      |      |      |      |      |    ||
-- 240 ----      --------      --------      --------      ---- 150 --
|   ||                                                          ||   |
|   ||                                                          ||   |
-- 250 ----                                                ---- 140 --
    ||    |                                                |    ||
    ||    |                                                |    ||   
-- 260 ----                                                ---- 130 --
|   ||                                                          ||   |
|   ||                                                          ||   |
-- 270 ----                                                ---- 120 --
    ||    |                                                |    ||
    ||    |                                                |    ||
-- 280 ----                                                ---- 110 --
|   ||                                                          ||   |
|   ||                                                          ||   |
-- 290 ----                                                ---- 100 --
    ||    |                                                |    ||
    ||    |                                                |    ||
-- 300 ----                                                ---- 90 --
|   ||                                                          ||   |
|   ||                                                          ||   |
-- 310 ---/      --------      --------      --------      ---- 80 --
    ||   /       |      |      |      |      |      |      |    ||
    ||  /        |      |      |      |      |      |      |    ||
  |_00_|   ===== 10 === 20 === 30 === 40 === 50 === 60 === 70 ==||
           |     |      |      |      |      |      |      |
           |     |      |      |      |      |      |      |
           -------      --------      --------      --------
-	Calculate layer height (h = "z" shift), which is roughly approximated as follows: From evaluation in "step 2", measure line width (d), line length (l) equals 50mm, and the extrusion volume (V) is determined as: V=E*pi*r² (r = inner syringe radius = 6mm). This concludes h = 2.26E/d.
-	Move to layerS 2-4 and repeat (runs automatically)

#### Step 4 - Fine adjustment of h (the solidification process can alter the basic layer height)
- MODIFY "04_cal_h.gcode" using previous parameters and the calculated h from "STEP 3", and define 4 new height parameters which use old h +/- 0.005-0.01mm.
- RUN "04_cal_h.gcode"
