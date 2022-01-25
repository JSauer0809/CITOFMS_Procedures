#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function HeaderWave2(List)
string List
variable length
length = itemsinlist(list)
print length
Make/N=(length) /O/T, Header
string headerstring
variable k
	for(k=0;k<itemsinlist(list);k+=1)
	headerstring = stringfromlist(k,list,";")
	headerstring = ReplaceString("root:",headerstring,"")
	headerstring = ReplaceString("_Exp",headerstring,"")
	Header[k] = headerstring
	print Header[k]
	endfor
//Save/O/J Header
End