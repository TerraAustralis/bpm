accessing
timeZone
	"Here we return a tiem zone string, e.g. 'Europe/Stockholm' or 'CET'"
	
	^self settings timeZone ifNil: ['CET']