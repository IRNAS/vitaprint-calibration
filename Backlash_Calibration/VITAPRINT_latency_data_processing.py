# -*- coding: utf-8 -*-
"""
Please read the code and follow all instructions. General notes are marked
with '#' where no action is required. Your action is required wherever you 
see """""" under if __name__ = "__main__" section.

1. Choose the parameters wherever noified with """ """

2. Run the script.



Created by: 

    Luka Banovic
    banovic@irnas.eu
    Date created: 27 Jul 2017


"""

import os

"""CHANGE '...' into your working directory. """

os.chdir(r'...')

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import scipy.signal as sig
from scipy.signal import butter, filtfilt
from scipy.signal import freqz
from scipy.optimize import curve_fit

#####################################################################

def read_data(filename):    
    """

    This function reads the acquired data from the file "filename" (.txt)
    and writes them in a numpy array.
    
    """
    data = pd.read_table(filename)
    data = np.array([x[0] for x in data.values])
    return data

#####################################################################

def butter_lowpass(cutoff, fs, order=5):
    """
    Lowpass filter generation. This function accepts the cutoff frequency,
    sampling frequency and the filter order and generates filter parameters
    for a digital low-pass filter.
    """
    nyq = 0.5 * fs
    normal_cutoff = cutoff / nyq
    b, a = butter(order, normal_cutoff, btype='low', analog=False)
    return b, a

#####################################################################

def butter_lowpass_filter(data, cutoff, fs, order=5):
    """
    This function generates the low pass filter parameters and filters
    the input signal "data".
    
    """
    b, a = butter_lowpass(cutoff, fs, order=order)
    y = filtfilt(b, a, data)
    return y

#####################################################################
    
def data_block(signal, datapoints):
    """
    This function cuts the input signal 'signal' into blocks
    split at 'datapoints'.
    """    
    
    block_length = min(np.diff(datapoints))
    data_matrix = np.zeros((block_length,len(datapoints)-1))
    
    for z in np.arange(len(datapoints)-1):
        data_matrix[:,z] = signal[datapoints[z]:datapoints[z]+block_length]
        data_matrix[:,z] = data_matrix[:,z]-data_matrix[1,z]
    
    return data_matrix

#####################################################################

def func(x, a, b, c, d):
    """
    This function generates the fit line with the equation specified.
    
    """
    return a*np.exp(-b*x)+c*np.exp(-d*x)

    
#####################################################################
    
def find_latencies(data_matrix):
    """
    This function takes the data matrix and calculates latency in each
    dataset.
    """
    lats = []
    for g in np.arange(0,data_matrix.shape[1]):
        a = data_matrix[:,g]
        l_val = 0.95*max(a)
        
        b = min(range(len(a)), key=lambda i: abs(a[i]-l_val))
        
        lats.append(b)
    return lats

#####################################################################
#####################################################################

if __name__=="__main__":
    
    """SPECIFY SAPMPLING FREQUENCY OF YOUR WEIGHING SCALE"""    
        
    fs = 2.6       # sampling frequency, Hz
    
    """replace '...' with the .txt file with your data. """
    
    filename = "..."


    
    # data read-in
    data = read_data(filename)
    
    # LOW PASS FILTERRING
    order = 7       # order 7 gives sufficient result, you can play around and change it.
    cutoff = 0.025  # desired cutoff frequency of the filter, Hz
    b, a = butter_lowpass(cutoff, fs, order)
    w, h = freqz(b, a, worN=8000)
    data_LP = butter_lowpass_filter(data,cutoff,fs,order)
    
    # time step
    dt = 1/fs
    # time axis
    time = np.linspace(0,len(data_LP)*dt,len(data_LP))
    
    # d/dt - first derivative of mass against time
    der1 = np.diff(data_LP)/(time[2]-time[1])
   
    # FIND PEAKS
    pks = sig.find_peaks_cwt(der1,np.arange(10,300))
    for val in pks:
        if der1[val] < np.mean(der1):
            pks.remove(val)
       
   
    """
    UNCOMMENT THE FOLLOWING SECTION IF YOU WANT TO SEE THE PLOTS OF
    
    - filter frequency response
    - raw data
    - low-pass filtered data
    - first derivative
    - data breakpoints for blocking    
    
    """
#    plt.subplot(4, 1, 1)
#    plt.plot(0.5*fs*w/np.pi, np.abs(h), 'b')
#    plt.plot(cutoff, 0.5*np.sqrt(2), 'ko')
#    plt.axvline(cutoff, color='k')
#    plt.xlim(0, 0.5*fs)
#    plt.title("Lowpass Filter Frequency Response")
#    plt.xlabel('Frequency [Hz]')
#    plt.grid()
#    
#    plt.subplot(4,1,2)
#    plt.plot(time,data)
#    plt.subplot(4,1,3)
#    plt.plot(time,data_LP)
#    plt.subplot(4,1,4)
#    plt.plot(time[1::],der1)
#    
#    plt.subplot(4,1,4)
#    plt.plot(time[pks], der1[pks],'rx')
    
    # BLOCKING
    d_matrix = data_block(data_LP, pks)
    
    t_matrix = np.linspace(0,len(d_matrix[:,0])*dt,len(d_matrix[:,0]))

    """
    UNCOMMENT THE FOLLOWING TWO LINES TO SEE BLOCKS OF DATA ALIGNED
    """
#    plt.figure(2)
#    plt.plot(t_matrix,d_matrix)
    
#    exponential fit
    f_matrix = np.zeros([d_matrix.shape[0],d_matrix.shape[1]])
    
    for k in np.arange(0,d_matrix.shape[1]):
        popt, pcov = curve_fit(func, t_matrix, d_matrix[:,k])
        fit_l = func(t_matrix,*popt)
        f_matrix[:,k] = fit_l

#   latency
    lat_samples = find_latencies(f_matrix)
    lat_seconds = time[lat_samples]
    LATENCY = np.mean(lat_seconds)
    print("==========================================\n")    
    print("==== Average latency is {0:.2f} s. ==== \n".format(LATENCY))
    print("==========================================\n")    
    
    