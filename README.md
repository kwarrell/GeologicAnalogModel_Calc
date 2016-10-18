# GeologicAnalogModel_Calc

These programs perform map-view calculations of fault heave on your geologic analog models.

### What does it do?
 1. <b>faultArea.m</b>: Calculates the total fault heave on your model (in square centimeters) and the average heave across your model (in centimeters)
 2. <b>heaveProfile.m</b>: Produce a plot that shows the averaged fault intensity (as a percent) along a cross section of your model

### What do you need?
1. Image file of fault trace map, in RGB.
2. Width of the area in the image file, in centimeters.
3. Height of the area in the image file, in centimeters.

All of these programs require a fault trace map as an input. A fault trace map is a map-view image of an analog model where the faults have been colored black and all unfaulted area is white. You can make a fault trace map in Adobe Illustrator, Adobe Photoshop, CorelDraw, Paint, etc. There is a sample fault trace map that you can test the scripts with in the repository (sampleFTM.jpg).
