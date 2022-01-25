#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function Cleanup (List, TimeWave, BufNum) //This function averages out all entries in each buf for all waves selected 
String List
Wave TimeWave
variable BufNum
variable k
variable j
string Path
NewPath/O Path,"C:Users:Jon:Desktop:DesktopIgorOutput:December2017"
variable wave_length
wave_length = (numpnts(TimeWave))/BufNum //Obtains length needed for output waves after averaging

for(k=0;k<itemsinlist(list);k+=1)
	Wave Tempwave = $stringfromlist(k,list,";") //Grabs the current wave from the list
	Make /O/N=(wave_length) NewWave //Makes the condensed wave 
		for(j=0;j<wave_length;j+=1) //Iterates until end of condensed wave, averaging the bufs in the BufNum section
		NewWave[j]=mean(Tempwave,(j*BufNum),(j*BufNum)+BufNum-1)
		endfor
	Rename NewWave, $(nameofWave(TempWave)+"_Exp")
endfor
Make /O/N =(wave_length) TimeSeries
for(j=0;j<wave_length;j+=1) //Produces time series wave
		TimeSeries[j]=TimeWave[j*BufNum]
endfor
end