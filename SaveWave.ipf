#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function SaveWave(List) //This function uses selectedwavelist to save all waves selected in the data browser
String List
variable k
string Path
NewPath/O Path, "C:Users:Jon:Desktop" //Here is where you enter the folder you want the file saved to. You must use colons!
for(k=0;k<itemsinlist(list);k+=1)
	Save /O/J/P=path $stringfromlist(k,list,";")
	endfor
end
