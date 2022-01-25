#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function TimeSeriesIntegrate(List, StartTime)
	string list
	variable StartTime
	 //Specifies the integration time
	variable Integrand
	variable x
	variable IntTime
	IntTime = 300
	variable EndTime
	variable k
	EndTime = StartTime + IntTime
	for (k=0; k< itemsinlist(list);k+=1)
		Integrand = 0
		WAVE IntWave =$stringfromlist(k,list,";")
		for (x = StartTime; x<EndTime;x+=1)
			Integrand = Integrand + IntWave[x]
		endfor
	Print nameofwave(IntWave)
	Print Integrand
	endfor
end