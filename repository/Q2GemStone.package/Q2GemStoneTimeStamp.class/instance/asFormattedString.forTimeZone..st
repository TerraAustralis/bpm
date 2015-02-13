methods
asFormattedString: timeFormatString forTimeZone: timeZoneString

	^ self 
		privateAsFormattedString: timeFormatString
		withTimeZoneOffset: 0 "Add code to compute the time zone offset"