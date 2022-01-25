#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function WaveNormalize(List, NWave)
string list
wave NWave
variable k
for(k=0; k<itemsinlist(list);k+=1)
	WAVE NormWave=$stringfromlist(k,list,";")
	duplicate NormWave $(nameofWave(NormWave)+"_Dup")
	NormWave = (Normwave/NWave)*10^6
	endfor	
end
	
	