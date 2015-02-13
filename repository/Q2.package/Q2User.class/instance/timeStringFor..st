conversion
timeStringFor: timeStamp
	| timeString |
	timeStamp ifNil: [^'<none>'].
	timeString := self settings formatDateAndTime.
	timeString ifEmpty: [timeString := 'YYYY-MM-DD hh:mm:ss'].
	^timeStamp asFormattedString: timeString forTimeZone: self timeZone.