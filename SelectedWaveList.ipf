#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function/S SelectedWaveList() //all selected waves...
	string SelectedWaves=""
	variable i
	do
		if(waveexists($(GetBrowserSelection(i))))
			SelectedWaves+=GetBrowserSelection(i)+";"
		endif
		i+=1
	while(strlen(GetBrowserSelection(i))>0)
	return SelectedWaves	
end