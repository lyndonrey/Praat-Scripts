# Praat-Scripts
A bunch of useful Praat scripts.

# Scripts

Get an individual formant and write it to the terminal
---
Parameters:
- positive formant: The formant to be analyzed
- positive interval: The analysis frame (i.e. 1 would be analyzing every second, 1/1=1 second)
- sentence inPath: The *full path* of the wav file to be analyzed

Running in terminal:
Use the following command:
	praat --run *formant interval inPath*

Get the intensity (dB) and write it to the terminal
---
Parameters:
- positive interval: The analysis frame (same as above)
- sentence inPath: The full path as well (same as above)

Running in terminal:
	praat --run *interval inPath* 
