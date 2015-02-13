private
privateAsFormattedString: format withTimeZoneOffset: offsetSeconds

	| aDateAndTime timeString |
	
	aDateAndTime := DateAndTime posixSeconds: posixSeconds offset: (Duration seconds: offsetSeconds).

	timeString := format.
	"Format should be: 'YYYY-MM-DD hh:mm:ss'
	YY/YYYY will be replaced with the current year with two or four digits, 06 or 2006.
	M/MM will be replaced with the current month (1-12) with one or two digits, 5 or 05 for May.
	D/DD will be replaced with the current day (1-31) with one or two digits, 9 or 09 for the 9th.
	h/hh, m/mm, s/ss, is replaced the same way for hours, minutes, and seconds.
	"
	timeString := timeString copyReplaceAll: 'YYYY' with: aDateAndTime year asString.
	timeString := timeString copyReplaceAll: 'YY' with: (((aDateAndTime year \\ 100) asString) padded: #left to: 2 with: $0).
	timeString := timeString copyReplaceAll: 'MM' with: ((aDateAndTime month asString) padded: #left to: 2 with: $0).
	timeString := timeString copyReplaceAll: 'M' with: aDateAndTime month asString.
	timeString := timeString copyReplaceAll: 'DD' with: ((aDateAndTime dayOfMonth asString) padded: #left to: 2 with: $0).
	timeString := timeString copyReplaceAll: 'D' with: aDateAndTime dayOfMonth asString.
	timeString := timeString copyReplaceAll: 'mm' with: ((aDateAndTime minute asString) padded: #left to: 2 with: $0).
	timeString := timeString copyReplaceAll: 'm' with: aDateAndTime minute asString.
	timeString := timeString copyReplaceAll: 'ss' with: ((aDateAndTime second asString) padded: #left to: 2 with: $0).
	timeString := timeString copyReplaceAll: 's' with: aDateAndTime second asString.
	timeString := timeString copyReplaceAll: 'hh' with: ((aDateAndTime hour24 asString) padded: #left to: 2 with: $0).
	timeString := timeString copyReplaceAll: 'h' with: aDateAndTime hour24 asString.
	
	^timeString