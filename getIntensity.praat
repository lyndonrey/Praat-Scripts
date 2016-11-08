form Get Specified Formant
	positive Interval
	sentence inPath
endform

###############################################################################

writeInfoLine: "Beginning analysis of file ", inPath$

# Check if file is readable #

if fileReadable(inPath$)
	writeInfoLine: "File is readable"
else
	exitScript: "File not readable, exiting..."
endif

###############################################################################

# Reading file and getting info #

Read from file... 'inPath$'
Rename: "speechIn"
end = Get total duration
writeInfoLine: "File finished reading. Length: ", end, " seconds"

###############################################################################

# Getting formants #

selectObject: "Sound speechIn"

#Just the defaults for an adult woman
To Intensity... 75 0.001

i = 1 
for i to end*interval
	x = Get value at time... i/interval cubic
	writeInfoLine: i/interval, "s, ", x, " dB"
endfor
