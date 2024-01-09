# mergechannelsFIJI
Macro for merging up to 4 channels automatically in ImageJ (FIJI)

**Purpose:** to create a 4-channel image by merging individual channels in ImageJ to create an image that can be converted into an Imaris file for image analysis.

**Issue that this solved:** When taking 4-channel images on an EVOS microscope the output that can maintain the highest level of image data is a tiff file. However, when converting 4-channel tiff images taken on an EVOS to an Imaris file, the 4th channel is either lost or blended with one of the RGB channels. To solve this, one can save separate tiffs of each of the 4 channels and then combine them manually in ImageJ. It is crucial to save the merged image as an ome-tiff rather than just a tiff for the data of each channel to be saved appropriately in the metadata of the merged image (Check if Bio-Format exporter is installed in FIJI).

**Directions:**
-Separate images into separate folders (ie. "rfp", "gfp", "dapi", "cy5")
-Download the merge channels plug-in
-Open the macro on FIJI
-Set the appropriate directories for your 4 folder holding the individual channel images
-Set directory for output folder
-Run Macro

******* IMPORTANT NOTES *********
-When running the macro, depending on your device, you may be prompted with a pop-up window (THIS IS NORMAL). If this is the case, your device is asking you to manually set the folder for the rfp channel. You will then get a 2nd pop-up window. Your device is now asking you to set the gfp channel. Next you'll get 3 more pop-up windows in which you have to set your dapi, cy5, and output folder RESPECTIVELY. After this your device has now set the 5 directories required to run the merge channels functions and you should see your merged images in your output folder

-YOU MUST HAVE THE SAME NUMBER OF FILES IN EACH OF YOUR 4 FOLDERS

-This macro was created to merge red, green, blue, and magenta channel images. If you want to merge together other channel colors you will need to modify the macro. To modify this you will have to edit the **run("Merge Channels..."** line to set appropriate channel colors.
