#pragma TextEncoding = "UTF-8"
#pragma rtGlobals=3		// Use modern global access method and strict wave access.
function AreaRemove(Mask)
	wave Mask
	duplicate Mask, MaskwaveDup
	variable i = 0
	variable Wavelength = numpnts(MaskwaveDup)
	for (i=3630;i<7596 ; i+=1)
		MaskwaveDup[i] = 0
	endfor			
end	