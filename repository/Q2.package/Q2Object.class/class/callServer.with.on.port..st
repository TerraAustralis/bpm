soap
callServer: aSymbol with: parameterArrays on: host port: port
	^self 
		callServer: aSymbol 
		with: parameterArrays 
		on: host 
		port: port
		uri: nil