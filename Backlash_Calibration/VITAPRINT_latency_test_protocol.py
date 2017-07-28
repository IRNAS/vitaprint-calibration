# -*- coding: utf-8 -*-
"""
Created on Thu Mar 30 08:37:55 2017

Published on Thu Jul 19 2017

================== LATENCY MEASUREMENT G-CODE GENERATOR ================


INPUT: 
- displacement step (mm)*
- velocity (mm/min)*
- pause length (ms)
- N_meas - number of cycles

    *velocity and displacement vectors can also contain more than value.
    Each displacement will be undergone N_meas times at each velocity.

OUTPUT:
- G-code file of the test protocol with upper parameters.


INSTRUTIONS FOR USE:
1. Edit the SECTION below as instructed and run the script.
        
         displacement = .....
         velocity = .....
         pause_length =  .....
         N_meas = .....
    
    EXAMPLE
        These parameters will generate a .gcode file that will move the plunger
        by 0.1mm steps at 50 mm/min. It will do 6 such movements and rest
        between the cycles for 3 min.
    
        displacement = [0.1]
        velocity = [50]
        pause_length =  180000
        N_meas = 6

2. A .gcode file with the specified filename should appear in your working directory.
    The file name also includes today's date.



author: Luka Banovic
contact: banovic@irnas.eu

"""
import datetime


def gen_test_prot(displacement, velocity, pause_length, N_meas):
    """
    This function creates lines of g-code
    """
    for j in displacement:
        for i in velocity:
            file.write("\n G92 A0")
            N = 0
            while N < N_meas:
                file.write("\n G01 A{0} F{1}".format(round(((N+1)*j),3), i))
                file.write("\n G04 P{0}".format(pause_length))
                N = N+1
            file.write("\n")
        
    



if __name__=="__main__":
    
    # START OF THE EDIT SECTION  
    displacement = [0.1]
    velocity = [50]
    pause_length =  180000
    N_meas = 6
    # END OF THE EDIT SECTION
    
    fn = input("FILENAME: ")
    date = datetime.datetime.now()
    filename = "{0}-{1}-{2}-".format(date.year,date.month,date.day) + fn
    substring = ".gcode"
    if substring in filename:
        fullfilename = filename
    else:
        fullfilename = filename + ".gcode"

    file = open(fullfilename,"w")
    
    file.write("%")
    file.write("\n G04 P{0}".format(pause_length))
    gen_test_prot(displacement, velocity, pause_length, N_meas)
    file.write("%")


file.close()

    