# General calibration of the Vitaprint extruder

## Introduction
Being tansferrable, the Vitaprint extruder is capable of printing structures, sliced by various free and open software, such as Slic3r or Cura. To allow this, however, certain settings need to be adjusted.

## Table of Contents
- [Basic extrusion calculation](#CALC)
- [Extrusion adjustment by drawing](#DRAWING)
- [Important Notes and Tips](#NOTES)

## Basic extrusion calculation
The first approximation of extrusion settings can be calculated theoretically, based on some simple assumptions. Due to its mechanical, piston driven nature, extrusion can be precisely controlled by motorized displacement of the piston (rotation vs thread, both of which is specified) and depends on the difference between the inner diameters of the syringe r<sub>s</sub> and the nozzle r<sub>n</sub>. If we assume non-elastic behavior and laminar flow, the displaced volume in the syringe should equal the extruded volume through the nozzle. If the printed stroke takes the cross-sectional shape of the nozzle, the length of the printed path can be calculated as follows:

<img src="http://latex.codecogs.com/gif.latex?E%20%3D%20%5Cfrac%7Br_n%5E2%7D%7Br_s%5E2%7D%5Ccdot%20l_%7Bpath%7D" alt="table">


Where E equals the extrusion value (= displacement of the piston) and l<sub>path</sub> the length of the printed filament. This is useful for determining the amount of extrusion for custom designed geometries. When using slicing software Cura, the calculation differs somewhat, as certain parameters are calculated differently. We have determined an experimental nozzle width and correction factor for the use of a 5ml syringe with a G21 needle (inner diameter 0.4mm). The calculation can be found in the accompanied xls file titled "vitaprint_cura_filament_calc".
