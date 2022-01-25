#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function MinMaxer(List)
string list
variable k
for(k=0; k<itemsinlist(list);k+=1)
	wave MinMaxer =$stringfromlist(k,list,";")
	Make/N=1/D TestWave
	TestWave = wavemax(MinMaxer)/wavemin(MinMaxer)
	rename TestWave, $(nameofWave(MinMaxer)+"_MinMax")
	endfor
end
	