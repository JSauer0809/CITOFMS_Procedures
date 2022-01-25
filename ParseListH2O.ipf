#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function ParseListH2O(List)
string list
variable count
	variable i
	for(i=0;i<itemsinlist(list);i+=1)
		WAVE Ywave=$stringfromlist(i,list,";")
		duplicate Ywave $(nameofWave(Ywave)+"_Dup")
		for (count = 2781; count< 2860; count+=1)
		Ywave[count] = ywave[25]
		endfor
		for(count = 2860; count< 2937; count+=1)
		Ywave[count] = ywave[25]
		endfor
		for (count = 4026; count< 4081; count+=1)
		Ywave[count] = ywave[25]
		endfor
		for (count = 4924; count< 4969; count+=1)
		Ywave[count] = ywave[25]
		endfor
		for (count = 5682; count<5721; count+=1)
		Ywave[count] = ywave[25]
		endfor
	endfor
end