#pragma TextEncoding = "UTF-8"
#pragma rtGlobals=3		// Use modern global access method and strict wave access.
function SolenoidMask(WriteTime,SolenoidTime,ValveState)

	wave WriteTime, SolenoidTime, ValveState
	variable WTpoints = numpnts(WriteTime)
	variable STpoints = numpnts(SolenoidTime)
	variable i
	variable k = 0
	Duplicate WriteTime, Carboy1
	Duplicate WriteTime, Carboy2
	Duplicate WriteTime, Carboy3
	Duplicate WriteTime, ZeroAir
	Carboy1 = 0
	Carboy2 = 0
	Carboy3 = 0
	ZeroAir = 0
	
	for (i = 0; i<(WTpoints); i+=1)
		variable q = WriteTime[i]
		variable j = 0
		for (j=0; j<(STpoints); j+=1)				
			if (abs(SolenoidTime[j] - q) < 1)
				if (ValveState[j] == 0)
					ZeroAir[i] = 1
					endif
				if (ValveState[j] == 2)
					Carboy2[i] = 1
					endif
				if (ValveState[j] == 4)
					Carboy1[i] = 1
					endif
				if (ValveState[j] == 6)
					Carboy3[i] = 1
					endif
				j = STpoints
			endif
		endfor
	endfor
end