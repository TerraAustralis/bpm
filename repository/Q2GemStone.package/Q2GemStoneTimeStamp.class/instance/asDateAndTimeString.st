methods
asDateAndTimeString

	^ self 
		privateAsFormattedString: 'YYYY-MM-DD hh:mm:ss' 
		withTimeZoneOffset: 0