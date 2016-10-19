# GeologicAnalogModel_Heave

These programs perform map-view calculations of fault heave on geologic analog models. This works with physical experimental models comprised of sand, wet clay, and many other media that model plate tectonic processes (primarily rifting/extension).

### What does it do?
 1. <b>faultArea.m</b>: Calculates the total exposed fault heave on your model (in square centimeters) and the average heave across your model (in centimeters)
 2. <b>heaveProfile.m</b>: Produce a plot that shows the averaged fault intensity (as a percent) along a cross section of your model

### What do you need?
1. Image file of fault trace map, in RGB.
2. Width of the area in the image file, in centimeters.
3. Height of the area in the image file, in centimeters.

All of these programs require a fault trace map as an input. A fault trace map is a map-view image of an analog model where the faults have been colored black and all unfaulted area is white. You can make a fault trace map in Adobe Illustrator, Adobe Photoshop, CorelDraw, Paint, etc. There is a sample fault trace map that you can test the scripts with in the repository (sampleFTM.jpg).

### Instructions
Save .m files and your fault trace maps (or the sample) into the same directory. The files are already set up to run the sample file. If you want to run the code on your own fault trace maps, change the filename, fieldWidth, and fieldHeight values to match your own experiment. You can also adjust the spacing value in the heaveProfile script to average over larger or smaller intervals.
