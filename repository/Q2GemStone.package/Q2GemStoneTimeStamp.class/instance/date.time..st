methods
date: date time: time
	| aDateAndTime |
	aDateAndTime :=  DateAndTime 
		year: date year 
		month: date month 
		day: date dayOfMonth 
		hour: time hour 
		minute: time minute 
		second: time second 
		offset: (Duration seconds: 0).
	posixSeconds := aDateAndTime asPosixSeconds asInteger.
	^self