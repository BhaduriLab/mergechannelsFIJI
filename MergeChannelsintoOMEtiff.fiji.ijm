macro "batch_merge_channels"{
    count = 1;
    setBatchMode(true);
    //  set directory for rfp folder
    file1= getDirectory("/Users/jasoto/Library/CloudStorage/OneDrive-UCLAITServices/Bhaduri_Lab/Metabolic_Atlas_IF_Images/Mouse/E13/");
    list1= getFileList(file1); 
    n1=lengthOf(list1);
    //  set directory for gfp folder
    file2= getDirectory("/Users/jasoto/Library/CloudStorage/OneDrive-UCLAITServices/Bhaduri_Lab/Metabolic_Atlas_IF_Images/Mouse/E13/gfp");
    list2= getFileList(file2); 
    n2=lengthOf(list2);
    //  set directory for dapi folder
    file3= getDirectory("/Users/jasoto/Library/CloudStorage/OneDrive-UCLAITServices/Bhaduri_Lab/Metabolic_Atlas_IF_Images/Mouse/E13/dapi");
    list3= getFileList(file3); 
    n3=lengthOf(list3);
    //  set directory for cy5 folder
    file4= getDirectory("/Users/jasoto/Library/CloudStorage/OneDrive-UCLAITServices/Bhaduri_Lab/Metabolic_Atlas_IF_Images/Mouse/E13/cy5");
    list4= getFileList(file4); 
    n4=lengthOf(list4);
    //  set directory for output folder
    file5= getDirectory("/Users/jasoto/Library/CloudStorage/OneDrive-UCLAITServices/Bhaduri_Lab/Metabolic_Atlas_IF_Images/Mouse/E13/output");
    list5= getFileList(file5); 
    n5=lengthOf(list5);
   quantitytomerge = n1;

    for(i=0;i< quantitytomerge ;i++)
    {
    	 open(file1+list1[i]);
    open(file2+list2[i]);
    open(file3+list3[i]);
    open(file4+list4[i]);
      name = list1[i];
      //  channels are set to merge red, green, blue, and magenta, respectively
      run("Merge Channels...", "c1=" + list1[i] + " c2=" + list2[i] + " c3=" + list3[i] + " c6=" + list4[i] + " create keep");
      //  merged image is set to be saved as an OME-TIFF file
      run("OME-TIFF...", "save=" + file5+name + ".ome.tif export compression=Uncompressed");
      count++;
    }
}


