#pragma TextEncoding = "UTF-8"
#pragma rtGlobals=3		// Use modern global access method and strict wave access.
function MaskDilute(Mask)
	wave Mask
	duplicate Mask, MaskwaveDup
	variable i = 0
	variable Wavelength = numpnts(MaskwaveDup)
	for (i=0;i<Wavelength ; i+=1)
		MaskwaveDup[i] = 0
		MaskwaveDup[i+1] = 0
		MaskwaveDup[i+2] = 0
		MaskwaveDup[i+3] = 0
		i = i + 4
	endfor			
end	