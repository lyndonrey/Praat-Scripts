form Get Specified Formant
	positive Formant
	positive Interval
	sentence InPath
endform

###############################################################################

writeInfoLine: "Beginning analysis of file ", inPath$
writeInfoLine: "Getting formant ", formant

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
To Formant (burg)... 0.01 formant 5500 0.025 50

i = 1 
for i to end*interval
	x = Get value at time... formant i/interval Hertz Linear
	writeInfoLine: i/interval, "s, ", x, " Hz"
endfor
