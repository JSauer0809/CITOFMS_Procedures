#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function/S CIMSLoad()
	Variable refNum
	String message = "Select one or more files"
	String outputPaths
	String fileFilters = "Data Files (*.txt,*.dat,*.csv):.txt,.dat,.csv;"
	fileFilters += "All Files:.*;"
 
	Open /D /R /MULT=1 /F=fileFilters /M=message refNum
	outputPaths = S_fileName
 
	if (strlen(outputPaths) == 0)
		Print "Cancelled"
	else
		Variable numFilesSelected = ItemsInList(outputPaths, "\r")
		Variable i
		for(i=0; i<numFilesSelected; i+=1)
			String path = StringFromList(i, outputPaths, "\r")
			String Name = ParseFilePath(3,path,":",0,0)
			Name="N="+Name+"x; N="+Name+"y;"
			LoadWave/D/G/A/J/D/K=0/B=Name path
			Print Name
		endfor
	endif
 
	return outputPaths		// Will be empty if user canceled
End