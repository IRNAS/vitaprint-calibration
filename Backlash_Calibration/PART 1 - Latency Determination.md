# Latency Determination

## Introduction

When extruding materials with medium to high viscosity it can be observed that when the plunger movement is terminated the material still keeps flowing out of the syringe for some time. This happens due to mechanically elastic components in the system (air bubbles inside the material,  syringe seal, plunger deformation under higher forces etc.). 

The removal of this phenomenon is not very feasible therefore we can compensate it with backlash. Thereby, the plunger not only stops when it’s told to but instead it moves slightly backwards such that it pulls some of the material back into the syringe. The idea is to pull enough material back in that the outflow is stopped as soon as possible and yet, care must be taken not to pull the plunger so far back that the air comes into the syringe through the needle. 

<img src="https://user-images.githubusercontent.com/14543226/28709089-0618cc52-737f-11e7-99ce-4116df990e8d.png" alt="table" width="400" height="300">

Figure 1: showing the displacement step and the observed outflow as a function of time. System latency is shown in red.


## Table of Contents
- [Equipment](#EQUIP)
- [Data Acquisition](#DATA_ACQUISITION)
- [Data Processing](#DATA_PROCESSING)
- [Important Notes and Tips](#NOTES)


## Equipment <a id="EQUIP"></a>

- weighing scale with a serial output to PC
- a PC equipped with:
  - software for RS232 terminal reading (if it came with the weighing scale, use the original software. If not, several appropriate are available online like Termite, PuTTy etc.)
  - CNC control software
  - Python 3 environment (Spyder or similar) to run the g-code generator
- A glass vessel
- sunflower oil

## Data Acquisition <a id="DATA_ACQUISITION"></a>
1. Connect the serial output of the weighing scale to the computer USB port and get the communication working:
- run the serial read software 
- check the data sheet  of the weighing scale for baud rate, data bits, parity etc.)
- make sure all the settings in the software match the values in the data sheet. If they do, the values on the computer terminal monitor should match the one you can read on the weighing scale screen
- if the software enables it, select the option for the data be written into a .txt file 

2. Generate the testing protocol g-code:
- Download the file from GitHub and open it in the preferred Python PE environment
- read the instructions in the heading of the file to familiarise yourself with the parameters you can manipulate
- Run the programme. Now, a file named ‘[TODAYSDATE-your_specified_filename].gcode’ should be generated in your working directory.
- Open this file in your CNC control software and see if it is working

3. Prepare the apparatus
- Fill the glass vessel with sunflower oil
- place it onto the weighing scale and press “Tare”
- Mount your extruder over the vessel
- mount the syringe, filled with material with needle attached onto the extruder
- extrude some material so that it starts flowing out and wait for the outflow to stop

4. Start recording the mass
5. Run the g-code in your CNC controller

<img src="https://user-images.githubusercontent.com/14543226/28709225-bcf81004-737f-11e7-87f6-de00855973e0.png" alt="table" width="600" height="400">
Figure 2: The apparatus for latency measurement

## Data Processing <a id="DATA_PROCESSING"></a>
### How does it work?
It is important to understand the workflow of the data processing. The raw data may contain some high frequency noise usually originating from the building vibration (people walking, door closing etc.). The raw data are therefore first low-pass filtered. Then they are blocked up in cycles (each cycles contains a dataset of mass values associated to one displacement step). Then, an exponential fit of a form f = a*exp(-bx) + c*exp(-dx) is fitted to each dataset. At the end, a 95% point is found in every dataset and taken as the system latency.

<img src="https://user-images.githubusercontent.com/14543226/28709282-f95c79ea-737f-11e7-98ef-ab8b1ba6b248.png" alt="table" width="600" height="100">
* you can see the output signal after every stage in the [Appendix](#APPENDIX) for easier visualisation.

### Procedure

1. Download the data_processing.py file
2. Copy the .txt file with your acquired data into the same folder
3. Open the data_processin.py file in your Python environment and read the head of the file.
4. Change the file name in the code as it is suggested in the header
5. Run the code
6. the Latency values should appear in your python command prompt as the programme output
	
## Important Notes and Tips <a id="NOTES"></a>

In our setup this method proved to be repeatable and robust. However, depending on the hardware it may not be so. It is advisable to repeat this procedure several times to investigate whether you can rely on it.

## APENDIX <a id="APPENDIX"></a>
### Visualisation of the signal outputs
<img src="https://user-images.githubusercontent.com/14543226/28709489-ced8ae0e-7380-11e7-803d-e01f97767026.png" alt="table" width="400" height="300">
Figure 1: raw data


<img src="https://user-images.githubusercontent.com/14543226/28709513-e6787ad0-7380-11e7-9c51-c74d8d045cc0.png" alt="table" width="400" height="300">
Figure 2: Low-pass filtered data


<img src="https://user-images.githubusercontent.com/14543226/28709570-25460d2c-7381-11e7-8b38-caa05d4a9cc6.png" alt="table" width="400" height="300">
Figure 3: Aligned blocks of data

<img src="https://user-images.githubusercontent.com/14543226/28709600-3b892a2e-7381-11e7-80f3-782edbf2f10a.png" alt="table" width="400" height="300">
Figure 4: Exponential fit lines added.
