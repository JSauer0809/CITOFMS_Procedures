#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function ConcatenateSelected(List)
string list
variable i	
Concatenate/W/DL/O(List),CombinedMatrix
//InsertPoints 0,1,CombinedMatrix
//num2str(CombinedMatrix) 
//for (i=0;i<itemsinlist(list);i+=1)
	//String PlaceWave = stringfromlist(i,list,"';")
	//CombinedMatrix[0][i] = PlaceWave
	//endfor
end